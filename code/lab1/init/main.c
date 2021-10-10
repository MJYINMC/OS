#include "print.h"
#include "defs.h"
#include "sbi.h"

extern void test();

int start_kernel(){
    puti(2021);
    puts(" Hello RISC-V\n");
    csr_read(sstatus);
    test(); // DO NOT DELETE !!!
	return 0;
}
