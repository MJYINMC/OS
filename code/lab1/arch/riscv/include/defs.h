#ifndef _DEFS_H
#define _DEFS_H

#include "types.h"

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
