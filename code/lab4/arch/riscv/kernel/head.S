.extern start_kernel
    .section .text.init
    .globl _start
_start:
    # set stvec = _traps
    la t0, _traps
    csrw stvec, t0
    # set sie[STIE] = 1
    csrr t0, sie
    ori t0, t0, 0x20
    csrw sie, t0
    # set first time interrupt
    rdtime t0
    li a0, 10000000
    add a0, a0, t0
    li a1, 0
    li a2, 0
    li a3, 0
    li a4, 0
    li a5, 0
    li a6, 0
    li a7, 0
    call sbi_ecall
    # set sstatus[SIE] = 1
    csrr t0, sstatus
    ori t0, t0, 0x2
    csrw sstatus, t0

    la sp, boot_stack_top
    call mm_init
    call task_init
    call start_kernel

    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 4096 # 
    .globl boot_stack_top
boot_stack_top: