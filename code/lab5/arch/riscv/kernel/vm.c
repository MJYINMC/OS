#include "defs.h"
#include "types.h"
#include "printk.h"
#include "string.h"
#include "mm.h"
extern char _stext[];
extern char _etext[];
extern char _srodata[];
extern char _erodata[];
extern char _sdata[];
extern void test();
/* early_pgtbl: 用于 setup_vm 进行 1GB 的 映射。 */
uint64 early_pgtbl[512] __attribute__((__aligned__(0x1000)));
/* swapper_pg_dir: kernel pagetable 根目录， 在 setup_vm_final 进行映射。 */
uint64 swapper_pg_dir[512] __attribute__((__aligned__(0x1000)));

/*
 63      54 53        28 27        19 18        10 9   8 7 6 5 4 3 2 1 0
 -----------------------------------------------------------------------
| Reserved |   PPN[2]   |   PPN[1]   |   PPN[0]   | RSW |D|A|G|U|X|W|R|V|
 -----------------------------------------------------------------------
*/
#define VPN0MASK ((uint64) 0x1FF << 12)
#define VPN1MASK ((uint64) 0x1FF << 21)
#define VPN2MASK ((uint64) 0x1FF << 30)

#define PPN0MASK ((uint64) 0x1FF << 12)
#define PPN1MASK ((uint64) 0x1FF << 21)
#define PPN2MASK ((uint64) 0x3FFFFFF << 30)

#define PTEMASK (((uint64) 0xFFFFFFFFFFF) << 10)

void setup_vm(void) {
    /* 
    1. 由于是进行 1GB 的映射 这里不需要使用多级页表 
    2. 将 va 的 64bit 作为如下划分： | high bit | 9 bit | 30 bit |
        high bit 可以忽略
        中间9 bit 作为 early_pgtbl 的 index
        低 30 bit 作为 页内偏移 这里注意到 30 = 9 + 9 + 12， 即我们只使用根页表， 根页表的每个 entry 都对应 1GB 的区域。 
    3. Page Table Entry 的权限 V | R | W | X 位设置为 1
    */
    memset(early_pgtbl, 0x0, PGSIZE);
    uint64 addr = PHY_START;
    uint64 phy_index = (addr & PPN2MASK) >> 30;
    uint64 index = phy_index;
    early_pgtbl[index] = (phy_index << 28) | 0xF;
    addr = VM_START;
    index = (addr & VPN2MASK) >> 30;
    early_pgtbl[index] = (phy_index << 28) | 0xF;
}

/* 创建多级页表映射关系 */
void create_mapping(uint64 *pgtbl, uint64 va, uint64 pa, uint64 sz, int perm, int user) {
    /*
    pgtbl 为根页表的基地址
    va, pa 为需要映射的虚拟地址、物理地址
    sz 为映射的大小
    perm 为映射的读写权限

    创建多级页表的时候可以使用 kalloc() 来获取一页作为页表目录
    可以使用 V bit 来判断页表项是否存在
    */
    printk("va=%lx pa=%lx sz=%lx perm=%lx user=%lx\n", va, pa, sz, perm, user);
    uint64 sec_idx, addr, fir_idx, zero_idx;
    uint64 * fir_pgtbl, * zero_pgtbl;
    for(uint64 offset = 0; offset < sz; offset += PGSIZE){
        addr =  va + offset;
        sec_idx = (addr & VPN2MASK) >> 30;
        fir_idx = (addr & VPN1MASK) >> 21;
        zero_idx = (addr & VPN0MASK) >> 12;
        if(pgtbl[sec_idx] & 0x1){
            fir_pgtbl = (uint64*) (((uint64)(pgtbl[sec_idx] & PTEMASK) >> 10 << 12) + PA2VA_OFFSET);
            if(fir_pgtbl[fir_idx] & 0x1){
                zero_pgtbl = (uint64*) (((uint64)(fir_pgtbl[fir_idx] & PTEMASK) >> 10 << 12) + PA2VA_OFFSET);
                if((zero_pgtbl[zero_idx] & 0x1)){
                    continue;
                }else{
                    zero_pgtbl[zero_idx] = (((pa + offset) >> 12) << 10) | (user << 4) | (perm << 1) | 0x1;
                }
            }else{
                zero_pgtbl = (uint64 *)kalloc(); 
                fir_pgtbl[fir_idx] = ((((uint64)zero_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
                zero_pgtbl[zero_idx] = (((pa + offset) >> 12) << 10) | (user << 4) | (perm << 1) | 0x1;
            }
        }else{
            fir_pgtbl = (uint64 *)kalloc();
            zero_pgtbl = (uint64 *)kalloc();
            // 设置第2级页表
            pgtbl[sec_idx] = ((((uint64)fir_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
            // 设置第1级页表
            fir_pgtbl[fir_idx] = ((((uint64)zero_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
            // 设置第0级页表
            zero_pgtbl[zero_idx] = (((pa + offset) >> 12) << 10) | (user << 4) | (perm << 1) | 0x1;
        }
    }
}

void setup_vm_final(void) {
    memset(swapper_pg_dir, 0x0, PGSIZE);
    uint64 start;
    uint64 end;
    // No OpenSBI mapping required  

    // mapping kernel text X|-|R|V
    start = (uint64)_stext;
    end = (uint64)_etext;
    create_mapping(swapper_pg_dir, start, start - PA2VA_OFFSET, end - start, 5, 0);

    // mapping kernel rodata -|-|R|V
    start = (uint64)_srodata;
    end = (uint64)_erodata;
    create_mapping(swapper_pg_dir, start, start - PA2VA_OFFSET, end - start, 1, 0);

    // mapping other memory -|W|R|V
    start = (uint64)_sdata;
    end = (uint64)(VM_START + PHY_SIZE);
    create_mapping(swapper_pg_dir, start, start - PA2VA_OFFSET, end - start, 3, 0);
    
    // set satp with swapper_pg_dir
    csr_write(satp, ((((uint64)(swapper_pg_dir) - PA2VA_OFFSET) >> 12) | ((uint64) 0x8 << 60)));
    // flush TLB
    asm volatile("sfence.vma zero, zero");
    return;
}

