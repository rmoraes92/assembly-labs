# 1 byte = 1bytes =  8bits
# 1 word = 2bytes = 16bits
# 1 long = 4bytes = 32bits
# 1 quad = 8bytes = 64bits

.section .data

data_items:
    .quad 3,67,34,222,45,75,54,34,44,33,22,11,66,0

.section .text

.globl _start

_start:
    mov $0, %rbx
    mov data_items(,%rbx,8), %rax
    mov %rax, %rdi

start_loop:
    cmp $0, %rax # presume this checks IF rax is bigger than zero
    je loop_exit # IF TRUE goto loop_exit

    inc %rbx # increment idx
    mov data_items(,%rbx,8), %rax # copy next Nth item in the list to rax
    cmp %rdi, %rax # checks if eax/rdi is bigger than ebx/rax
    jle start_loop # IF FALSE restart the loop

    mov %rax, %rdi # ELSE replace EBX (biggest val) with new one (EAX)
    jmp start_loop

loop_exit:
    mov $60, %rax
    syscall
    # TODO why is it return 0 only?
