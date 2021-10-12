#include "sbi.h"
// QEMU��ʱ�ӵ�Ƶ����10MHz, Ҳ����1�����൱��10000000��ʱ�����ڡ�
unsigned long TIMECLOCK = 10000000;

unsigned long get_cycles() {
    // ʹ�� rdtime ��д������࣬��ȡ time �Ĵ����� (Ҳ����mtime �Ĵ��� )��ֵ������
    unsigned long time;
    __asm__ volatile (
            "rdtime %[time]\n"
            : [time] "=r" (time)
    );
    return time;
}

void clock_set_next_event() {
    // ��һ�� ʱ���ж� ��ʱ���
    unsigned long next = get_cycles() + TIMECLOCK;

    // ʹ�� sbi_ecall ����ɶ���һ��ʱ���жϵ�����
    sbi_ecall(next, 0, 0, 0, 0, 0, 0, 0);
} 