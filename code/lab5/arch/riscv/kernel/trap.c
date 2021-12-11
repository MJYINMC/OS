#include "printk.h"
#include "clock.h"
#include "proc.h"
#include "string.h"
struct pt_regs
{
    unsigned long zero;
    unsigned long ra;
    unsigned long sp;
    unsigned long gp;
    unsigned long tp;
    unsigned long t0;
    unsigned long t1;
    unsigned long t2;
    unsigned long fp;
    unsigned long s1;
    unsigned long a0;
    unsigned long a1; 
    unsigned long a2;
    unsigned long a3; 
    unsigned long a4;
    unsigned long a5;
    unsigned long a6;
    unsigned long a7;
    unsigned long s2; 
    unsigned long s3;
    unsigned long s4;
    unsigned long s5;
    unsigned long s6;  
    unsigned long s7; 
    unsigned long s8; 
    unsigned long s9;  
    unsigned long s10; 
    unsigned long s11;
    unsigned long t3;
    unsigned long t4;
    unsigned long t5;
    unsigned long t6;
    unsigned long sepc;
};
extern struct task_struct* current;

void trap_handler(unsigned long scause, unsigned long sepc, struct pt_regs * regs) {
    // 通过 `scause` 判断trap类型
    // 如果是interrupt 判断是否是timer interrupt
    // 如果是timer interrupt 则打印输出相关信息, 并通过 `clock_set_next_event()` 设置下一次时钟中断
    // `clock_set_next_event()` 见 4.5 节
    // 其他interrupt / exception 可以直接忽略
    unsigned long int_bit = 0x8000000000000000;
    if(scause & int_bit){
        switch (scause & ~int_bit){
            case 0x5:
                do_timer();
                break;
            default:
                printk("Int scause:%d\n", scause);
                break;
        }
    }else{
        switch (scause){
            case 0x8:
                switch (regs->a7){
                    case 64:
                        if(regs -> a0 == 1){
                            char buf[1000] = {0};
                            memcpy(buf, (void *)regs -> a1, regs -> a2);
                            regs -> a0 = printk(buf);
                        }
                        break;
                    case 172:
                        regs -> a0 = current -> pid;
                        break;
                }
                regs->sepc+=4;
                break;
            default:
                printk("Exception scause:%d\n", scause);
                regs->sepc+=4;
                break;
        }
    }
}