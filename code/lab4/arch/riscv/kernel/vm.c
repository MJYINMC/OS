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

/* early_pgtbl: ���� setup_vm ���� 1GB �� ӳ�䡣 */
uint64 early_pgtbl[512] __attribute__((__aligned__(0x1000)));
/* swapper_pg_dir: kernel pagetable ��Ŀ¼�� �� setup_vm_final ����ӳ�䡣 */
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
    1. �����ǽ��� 1GB ��ӳ�� ���ﲻ��Ҫʹ�ö༶ҳ�� 
    2. �� va �� 64bit ��Ϊ���»��֣� | high bit | 9 bit | 30 bit |
        high bit ���Ժ���
        �м�9 bit ��Ϊ early_pgtbl �� index
        �� 30 bit ��Ϊ ҳ��ƫ�� ����ע�⵽ 30 = 9 + 9 + 12�� ������ֻʹ�ø�ҳ�� ��ҳ���ÿ�� entry ����Ӧ 1GB ������ 
    3. Page Table Entry ��Ȩ�� V | R | W | X λ����Ϊ 1
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

/* �����༶ҳ��ӳ���ϵ */
void create_mapping(uint64 *pgtbl, uint64 va, uint64 pa, uint64 sz, int perm) {
    /*
    pgtbl Ϊ��ҳ��Ļ���ַ
    va, pa Ϊ��Ҫӳ��������ַ�������ַ
    sz Ϊӳ��Ĵ�С
    perm Ϊӳ��Ķ�дȨ��

    �����༶ҳ���ʱ�����ʹ�� kalloc() ����ȡһҳ��Ϊҳ��Ŀ¼
    ����ʹ�� V bit ���ж�ҳ�����Ƿ����
    */
    printk("va=%lx pa=%lx sz=%lx\n", va, pa, sz);
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
                    zero_pgtbl[zero_idx] = (((pa + offset) >> 12) << 10) | (perm << 1) | 0x1;
                }
            }else{
                zero_pgtbl = (uint64 *)kalloc(); 
                fir_pgtbl[fir_idx] = ((((uint64)zero_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
                zero_pgtbl[zero_idx] = (((pa + offset) >> 12) << 10) | (perm << 1) | 0x1;
            }
        }else{
            fir_pgtbl = (uint64 *)kalloc();
            zero_pgtbl = (uint64 *)kalloc();
            // ���õ�2��ҳ��
            pgtbl[sec_idx] = ((((uint64)fir_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
            // ���õ�1��ҳ��
            fir_pgtbl[fir_idx] = ((((uint64)zero_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
            // ���õ�0��ҳ��
            zero_pgtbl[zero_idx] = (((pa + offset) >> 12) << 10) | (perm << 1) | 0x1;
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
    create_mapping(swapper_pg_dir, start, start - PA2VA_OFFSET, end - start, 5);

    // mapping kernel rodata -|-|R|V
    start = (uint64)_srodata;
    end = (uint64)_erodata;
    create_mapping(swapper_pg_dir, start, start - PA2VA_OFFSET, end - start, 1);

    // mapping other memory -|W|R|V
    start = (uint64)_sdata;
    end = (uint64)(VM_START + PHY_SIZE);
    create_mapping(swapper_pg_dir, start, start - PA2VA_OFFSET, end - start, 3);
    
    // create_mapping(swapper_pg_dir, PHY_START, PHY_START, PHY_SIZE, 7);

    // set satp with swapper_pg_dir
    csr_write(satp, ((((uint64)(swapper_pg_dir) - PA2VA_OFFSET) >> 12) | ((uint64) 0x8 << 60)));
    // flush TLB
    asm volatile("sfence.vma zero, zero");
    return;
}

