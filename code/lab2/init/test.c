#include "printk.h"
#include "defs.h"
#include "clock.h"

void test() {
    unsigned long ptime = get_cycles();
    unsigned long ctime;
    while (1){
        ctime = get_cycles();
        if(ctime - ptime >= 5000000){
            printk("Kernel is running!\n");
            ptime =  ctime;
        }
    };
}
