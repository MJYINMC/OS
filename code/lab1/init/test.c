#include "print.h"
#include "defs.h"

// Please do not modify

void test() {
    csr_write(stval, 123456);
    puti(csr_read(stval));
    while (1);
}
