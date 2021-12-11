#include "printk.h"
#include "defs.h"
#include "sbi.h"
#include "mm.h"
#include "proc.h"

extern void test();

int start_kernel(){
    printk("%d", 2021);
    printk(" Hello RISC-V\n");
    schedule();
    test(); // DO NOT DELETE !!!
	return 0;
}
