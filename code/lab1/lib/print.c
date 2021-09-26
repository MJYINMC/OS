#include "print.h"
#include "sbi.h"

void putchar(char c){
    sbi_ecall(c, 0, 0, 0, 0, 0, 0x0, 0x1);
}

void puts(char *s) {
    while(*s!=0){
        putchar(*s);
        s++;
    }
}

void puti(int x) {
    if(x<10){
        putchar(x+'0');
    }else{
        puti(x/10);
        putchar(x%10 + '0');
    }
}