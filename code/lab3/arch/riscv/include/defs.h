#ifndef _DEFS_H
#define _DEFS_H

#include "types.h"
#define PHY_START 0x0000000080000000
#define PHY_SIZE  128 * 1024 * 1024 // 128MB�� QEMU Ĭ���ڴ��С
#define PHY_END   (PHY_START + PHY_SIZE)

#define PGSIZE 0x1000 // 4KB
#define PGROUNDUP(addr) ((addr + PGSIZE - 1) & (~(PGSIZE - 1)))
#define PGROUNDDOWN(addr) (addr & (~(PGSIZE - 1)))

#define csr_read(csr)                       \
({                                          \
    register uint64 val;                    \
    asm volatile ("csrr %[val]," #csr            \
                    : [val]"=r" (val)           \
                 );                         \
    val;                                    \
})

#define csr_write(csr, val)                         \
({                                                  \
    asm volatile ("csrw " #csr ", %[__v]"               \
                    :                              \
                    : [__v]"r"(val)                   \
                    : "memory");                    \
})

#endif
