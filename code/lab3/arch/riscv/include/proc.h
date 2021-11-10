// arch/riscv/include/proc.h

#include "types.h"

#define NR_TASKS  (1 + 4) // ���ڿ��� ����߳����� ��idle �߳� + 31 �ں��̣߳�

#define TASK_RUNNING    0 // Ϊ�˼�ʵ�飬���е��̶߳�ֻ��һ��״̬

#define PRIORITY_MIN 1
#define PRIORITY_MAX 10

/* ���ڼ�¼ `�߳�` �� `�ں�ջ���û�ջָ��` */
/* (lab3�����迼�ǣ�������������Ϊ��֮��ʵ���ʹ��) */
struct thread_info {
    uint64 kernel_sp;
    uint64 user_sp;
};

/* �߳�״̬�����ݽṹ */
struct thread_struct {
    uint64 ra;
    uint64 sp;
    uint64 s[12];
};

/* �߳����ݽṹ */
struct task_struct {
    struct thread_info* thread_info;
    uint64 state;    // �߳�״̬
    uint64 counter;  // ����ʣ��ʱ��
    uint64 priority; // �������ȼ� 1��� 10���
    uint64 pid;      // �߳�id

    struct thread_struct thread;
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