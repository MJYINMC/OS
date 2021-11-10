#include "proc.h"
#include "mm.h"
#include "clock.h"
#include "printk.h"
#include "rand.h"
#include "defs.h"
extern void __dummy();
extern void __switch_to(struct task_struct* prev, struct task_struct* next);

struct task_struct* idle;           // idle process
struct task_struct* current;        // ָ��ǰ�����̵߳� `task_struct`
struct task_struct* task[NR_TASKS]; // �߳����飬���е��̶߳������ڴ�

void task_init() {
    // 1. ���� kalloc() Ϊ idle ����һ������ҳ
    // 2. ���� state Ϊ TASK_RUNNING;
    // 3. ���� idle ��������� ���Խ��� counter / priority ����Ϊ 0
    // 4. ���� idle �� pid Ϊ 0
    // 5. �� current �� task[0] ָ�� idle

    idle = (struct task_struct *)kalloc();
    idle -> state = TASK_RUNNING;
    idle -> counter = 0xFFFFFFFFFFFFFFFF;
    idle -> priority = 0;
    idle -> pid = 0;
    current = idle;
    task[0] = idle;
    // 1. �ο� idle ������, Ϊ task[1] ~ task[NR_TASKS - 1] ���г�ʼ��
    // 2. ����ÿ���̵߳� state Ϊ TASK_RUNNING, counter Ϊ 0, priority ʹ�� rand() ������, pid Ϊ���߳����߳������е��±ꡣ
    // 3. Ϊ task[1] ~ task[NR_TASKS - 1] ���� `thread_struct` �е� `ra` �� `sp`,
    // 4. ���� `ra` ����Ϊ __dummy ���� 4.3.2���ĵ�ַ�� `sp` ����Ϊ ���߳����������ҳ�ĸߵ�ַ

    for(int i = 1; i < NR_TASKS; i++){
        task[i] = (struct task_struct *)kalloc();
        task[i] -> state = TASK_RUNNING;
        task[i] -> counter = 0;
        task[i] -> priority = rand();
        task[i] -> pid = i;
        task[i] -> thread.ra = (uint64)__dummy;
        task[i] -> thread.sp = (uint64)task[i] + PGSIZE;
    }

    printk("...proc_init done!\n");
}

void dummy(){
    uint64 MOD = 1000000007;
    uint64 auto_inc_local_var = 0;
    int last_counter = -1;
    while(1) {
        if (last_counter == -1 || current->counter != last_counter) {
            last_counter = current->counter;
            auto_inc_local_var = (auto_inc_local_var + 1) % MOD;
            printk("[PID = %d] is running. auto_inc_local_var = %d\n", current->pid, auto_inc_local_var);
        }
    }
}

/* ��ʱ���жϴ����б����� �����ж��Ƿ���Ҫ���е��� */
void do_timer(){
    clock_set_next_event();
    if(current == idle){
        printk("initial state!\n");
        schedule();
    }else{
        current -> counter--;
        if(current -> counter <= 0){
            schedule();
        }
    }
};

/* ���ȳ��� ѡ�����һ�����е��߳� */
void schedule(){
    struct task_struct* next = task[0];
    #ifdef SJF
    /*
    ����Ҫ���е���ʱ����һ�¹�����е��ȣ�
    �����߳�ָ������task(������ idle ���� task[0] )��
    ����������״̬ (TASK_RUNNING) �µ��߳�����ʣ��ʱ�����ٵ��߳���Ϊ��һ��ִ�е��̡߳�
    �����������״̬�µ��߳�����ʣ��ʱ�䶼Ϊ0��
    ��� task[1] ~ task[NR_TASKS-1] ������ʣ��ʱ�����¸�ֵ (ʹ�� rand()) ��֮�������½��е��ȡ�
    */
    select:
    for(int i = 1; i < NR_TASKS; i++){
        if(task[i] -> state == TASK_RUNNING){
            if(task[i] -> counter > 0 && task[i] -> counter < next -> counter){
                next = task[i];
            }
        }
    }
    
    /*��������״̬�µ��߳�����ʣ��ʱ�䶼Ϊ0*/
    if(next -> counter == 0xFFFFFFFFFFFFFFFF){
        for(int i = 1; i < NR_TASKS; i++){
            task[i] -> counter = rand();
            printk("SET [PID = %d COUNTER = %d]\n", task[i] -> pid, task[i] -> counter);
        }
        goto select;
    }
    printk("switch to [PID = %d COUNTER = %d]\n", next -> pid, next -> counter);
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
    printk("switch to [PID = %d PRIORITY = %d COUNTER = %d]\n", next -> pid, next -> priority, next -> counter);
    #endif
    switch_to(next);
};

/* �߳��л���ں���*/
void switch_to(struct task_struct * next){
    struct task_struct * prev = current;
    current = next;
    __switch_to(prev, next);
};