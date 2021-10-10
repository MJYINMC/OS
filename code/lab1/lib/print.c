#include "print.h"
#include "sbi.h"

void putchar(char c){
    sbi_ecall(c, 0, 0, 0, 0, 0, 0, SBI_PUTCHAR);
}

void puts(char *s) {
    while(*s!=0){
        putchar(*s);
        s++;
    }
}

void puti(int x) {
    if(x < 0){
        putchar('-');
        x *= -1;
    }
    char buf[20];
    int loc = 0;
    while(x > 0){
        buf[loc++] = x%10 + '0';
        x /= 10;
    }
    while(loc > 0){
        putchar(buf[--loc]);
    }
}