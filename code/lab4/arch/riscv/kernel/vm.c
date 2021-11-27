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
    uint64 index, addr, sec_index, thi_index;
    uint64 * sec_pgtbl, * thi_pgtbl;
    for(uint64 offset = 0; offset <= sz; offset += PGSIZE){
        addr =  va + offset;
        index = (addr & VPN2MASK) >> 30;
        sec_index = (addr & VPN1MASK) >> 21;
        thi_index = (addr & VPN0MASK) >> 12;
        if(pgtbl[index] & 0x1){
            sec_pgtbl = (uint64*) (((uint64)(pgtbl[index] & PTEMASK) >> 10 << 12) + PA2VA_OFFSET);
            // printk("%lx\n", sec_pgtbl);
            if(sec_pgtbl[sec_index] & 0x1){
                thi_pgtbl = (uint64*) (((uint64)(sec_pgtbl[sec_index] & PTEMASK) >> 10 << 12) + PA2VA_OFFSET);
                // printk("%lx\n", thi_pgtbl);
                if((thi_pgtbl[thi_index] & 0x1)){
                    continue;
                }else{
                    thi_pgtbl[thi_index] = (((pa + offset) >> 12) << 10) | (perm << 1) | 0x1;
                }
            }else{
                thi_pgtbl = (uint64 *)kalloc(); 
                sec_pgtbl[sec_index] = ((((uint64)thi_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
                thi_pgtbl[thi_index] = (((pa + offset) >> 12) << 10) | (perm << 1) | 0x1;
            }
        }else{
            sec_pgtbl = (uint64 *)kalloc();
            thi_pgtbl = (uint64 *)kalloc();
            // printk("sec_pgtbl = %lx\n", sec_pgtbl);
            // printk("physical page num = %lx\n", ((uint64)sec_pgtbl - PA2VA_OFFSET) >> 12);
            // ���õ�2��ҳ��
            pgtbl[index] = ((((uint64)sec_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
            // ���õ�1��ҳ��
            sec_pgtbl[sec_index] = ((((uint64)thi_pgtbl - PA2VA_OFFSET) >> 12) << 10) | 0x1;
            // ���õ�0��ҳ��
            thi_pgtbl[thi_index] = (((pa + offset) >> 12) << 10) | (perm << 1) | 0x1;
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

