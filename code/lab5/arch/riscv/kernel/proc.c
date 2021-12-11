#include "proc.h"
#include "mm.h"
#include "clock.h"
#include "printk.h"
#include "rand.h"
#include "defs.h"
#include "vm.h"
#include "string.h"

extern void __dummy();
extern void __switch_to(struct task_struct* prev, struct task_struct* next);
extern char uapp_start[];
extern char uapp_end[];
extern uint64 swapper_pg_dir[512];

struct task_struct* idle;           // idle process
struct task_struct* current;        // 指向当前运行线程的 `task_struct`
struct task_struct* task[NR_TASKS]; // 线程数组，所有的线程都保存在此

void task_init() {
    // 1. 调用 kalloc() 为 idle 分配一个物理页
    // 2. 设置 state 为 TASK_RUNNING;
    // 3. 由于 idle 不参与调度 可以将其 counter / priority 设置为 0
    // 4. 设置 idle 的 pid 为 0
    // 5. 将 current 和 task[0] 指向 idle
    idle = (struct task_struct *)kalloc();
    idle -> state = TASK_RUNNING;
    idle -> counter = 0xFFFFFFFFFFFFFFFF;
    idle -> priority = 0;
    idle -> pid = 0;
    current = idle;
    task[0] = idle;
    task[0] -> thread.sp = (uint64)task[0] + PGSIZE;
    // 1. 参考 idle 的设置, 为 task[1] ~ task[NR_TASKS - 1] 进行初始化
    // 2. 其中每个线程的 state 为 TASK_RUNNING, counter 为 0, priority 使用 rand() 来设置, pid 为该线程在线程数组中的下标。
    // 3. 为 task[1] ~ task[NR_TASKS - 1] 设置 `thread_struct` 中的 `ra` 和 `sp`,
    // 4. 其中 `ra` 设置为 __dummy （见 4.3.2）的地址， `sp` 设置为 该线程申请的物理页的高地址

    for(int i = 1; i < NR_TASKS; i++){
        task[i] = (struct task_struct *)kalloc();
        task[i] -> state = TASK_RUNNING;
        task[i] -> counter = 0;
        task[i] -> priority = rand();
        task[i] -> pid = i;
        task[i] -> thread.ra = (uint64)__dummy;
        task[i] -> thread.sp = (uint64)task[i] + PGSIZE;
        task[i] -> thread.sepc = USER_START;
        // SPP=0 SPIE=1 SUM=1
        task[i] -> thread.sstatus = (csr_read(sstatus)) | (1<<5) | (1<<18) & 0xFFFFFFFFFFFFFEFF;
        task[i] -> thread.sscratch = USER_END;
        // 页表
        pagetable_t pgtbl = (pagetable_t)kalloc(); 
        memcpy(pgtbl, swapper_pg_dir, sizeof(swapper_pg_dir)/sizeof(char));
        // 映射uapp的内容
        create_mapping(pgtbl, 0, U64(uapp_start) - PA2VA_OFFSET, U64(uapp_end) - U64(uapp_start), 7, 1);
        // 映射用户栈
        create_mapping(pgtbl, USER_END - PGSIZE, kalloc() - PA2VA_OFFSET, PGSIZE, 3, 1);
        // 为了简单，这里我们直接把page number存入pgd
        task[i] -> pgd = (pagetable_t) ((U64(pgtbl) - PA2VA_OFFSET) >> 12);
    }
    printk("...proc_init done!\n");
}


/* 在时钟中断处理中被调用 用于判断是否需要进行调度 */
void do_timer(){
    clock_set_next_event();
    if(current == idle){
        schedule();
    }else{
        current -> counter--;
        if(current -> counter <= 0){
            schedule();
        }
    }
};

/* 调度程序 选择出下一个运行的线程 */
void schedule(){
    struct task_struct* next = task[0];
    #ifdef SJF
    /*
    当需要进行调度时按照一下规则进行调度：
    遍历线程指针数组task(不包括 idle ，即 task[0] )，
    在所有运行状态 (TASK_RUNNING) 下的线程运行剩余时间最少的线程作为下一个执行的线程。
    如果所有运行状态下的线程运行剩余时间都为0，
    则对 task[1] ~ task[NR_TASKS-1] 的运行剩余时间重新赋值 (使用 rand()) ，之后再重新进行调度。
    */
    select:
    for(int i = 1; i < NR_TASKS; i++){
        if(task[i] -> state == TASK_RUNNING){
            if(task[i] -> counter > 0 && task[i] -> counter <= next -> counter){
                next = task[i];
            }
        }
    }
    
    /*所有运行状态下的线程运行剩余时间都为0*/
    if(next -> counter == 0xFFFFFFFFFFFFFFFF){
        for(int i = 1; i < NR_TASKS; i++){
            task[i] -> counter = 2;
            printk("SET [PID = %d COUNTER = %d]\n", task[i] -> pid, task[i] -> counter);
        }
        goto select;
    }
    printk("\nswitch to [PID = %d COUNTER = %d]\n\n", next -> pid, next -> counter);
    #elif PRIORITY
    while (1) {
		int c = 0;
        for(int i = 1; i < NR_TASKS; i++){
            if(task[i] -> state == TASK_RUNNING && task[i] -> counter > c){
                next = task[i];
                c = task[i] -> counter;
            }
        }
		if(c) break;
        for(int i = 1; i < NR_TASKS; i++){
            task[i] -> counter = (task[i] -> counter >> 1) + task[i] -> priority;
            printk("SET [PID = %d PRIORITY = %d COUNTER = %d]\n", task[i] -> pid, task[i] -> priority,task[i] -> counter);
        }
	}
    printk("\nswitch to [PID = %d PRIORITY = %d COUNTER = %d]\n\n", next -> pid, next -> priority, next -> counter);
    #endif
    switch_to(next);
};

/* 线程切换入口函数*/
void switch_to(struct task_struct * next){
    struct task_struct * prev = current;
    current = next;
    __switch_to(prev, next);
};