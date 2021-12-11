#include "types.h"

#define NR_TASKS  (1 + 4) // ���ڿ��� ����߳����� ��idle �߳� + 31 �ں��̣߳�

#define TASK_RUNNING    0 // Ϊ�˼�ʵ�飬���е��̶߳�ֻ��һ��״̬

#define PRIORITY_MIN 1
#define PRIORITY_MAX 10

typedef unsigned long * pagetable_t;


/* ���ڼ�¼ `�߳�` �� `�ں�ջ���û�ջָ��` */
struct thread_info {
    uint64 kernel_sp;
    uint64 user_sp;
};

/* �߳�״̬�����ݽṹ */
struct thread_struct {
    uint64_t ra;
    uint64_t sp;                     
    uint64_t s[12];
    uint64_t sepc, sstatus, sscratch; 
};

/* �߳����ݽṹ */
struct task_struct {
    struct thread_info* thread_info;
    uint64_t state;
    uint64_t counter;
    uint64_t priority;
    uint64_t pid;

    struct thread_struct thread;
    
    pagetable_t pgd;
};

/* �̳߳�ʼ�� ���� NR_TASKS ���߳� */
void task_init();

/* ��ʱ���жϴ����б����� �����ж��Ƿ���Ҫ���е��� */
void do_timer();

/* ���ȳ��� ѡ�����һ�����е��߳� */
void schedule();

/* �߳��л���ں���*/
void switch_to(struct task_struct* next);

/* dummy funciton: һ��ѭ������ѭ������Լ��� pid �Լ�һ�������ľֲ�����*/
void dummy();