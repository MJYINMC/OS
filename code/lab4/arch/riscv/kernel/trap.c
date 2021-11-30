#include "printk.h"
#include "clock.h"
void trap_handler(unsigned long scause, unsigned long sepc) {
    // ͨ�� `scause` �ж�trap����
    // �����interrupt �ж��Ƿ���timer interrupt
    // �����timer interrupt ���ӡ��������Ϣ, ��ͨ�� `clock_set_next_event()` ������һ��ʱ���ж�
    // `clock_set_next_event()` �� 4.5 ��
    // ����interrupt / exception ����ֱ�Ӻ���
    unsigned long int_bit = 0x8000000000000000;
    if(scause & int_bit){
        switch (scause & ~int_bit){
            case 0x5:
                do_timer();
                break;
            default:
                break;
        }
    }
}