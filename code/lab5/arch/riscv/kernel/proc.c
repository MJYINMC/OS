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
    task[0] -> thread.sp = (uint64)task[0] + PGSIZE;
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
        task[i] -> thread.sepc = USER_START;
        // SPP=0 SPIE=1 SUM=1
        task[i] -> thread.sstatus = (csr_read(sstatus)) | (1<<5) | (1<<18) & 0xFFFFFFFFFFFFFEFF;
        task[i] -> thread.sscratch = USER_END;
        // ҳ��
        pagetable_t pgtbl = (pagetable_t)kalloc(); 
        memcpy(pgtbl, swapper_pg_dir, sizeof(swapper_pg_dir)/sizeof(char));
        // ӳ��uapp������
        create_mapping(pgtbl, 0, U64(uapp_start) - PA2VA_OFFSET, U64(uapp_end) - U64(uapp_start), 7, 1);
        // ӳ���û�ջ
        create_mapping(pgtbl, USER_END - PGSIZE, kalloc() - PA2VA_OFFSET, PGSIZE, 3, 1);
        // Ϊ�˼򵥣���������ֱ�Ӱ�page number����pgd
        task[i] -> pgd = (pagetable_t) ((U64(pgtbl) - PA2VA_OFFSET) >> 12);
    }
    printk("...proc_init done!\n");
}


/* ��ʱ���жϴ����б����� �����ж��Ƿ���Ҫ���е��� */
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
            if(task[i] -> counter > 0 && task[i] -> counter <= next -> counter){
                next = task[i];
            }
        }
    }
    
    /*��������״̬�µ��߳�����ʣ��ʱ�䶼Ϊ0*/
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

/* �߳��л���ں���*/
void switch_to(struct task_struct * next){
    struct task_struct * prev = current;
    current = next;
    __switch_to(prev, next);
};