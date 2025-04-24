# x86
.section .data

.section .text

.globl _start

_start:
        mov $1, %eax
        add $1, %eax
        call print

print:
        mov $1, %rax  # syscal write
        mov $1, %rdi    # fd: file descriptor - (stdout)
        mov %eax, %rsi  # buf: bytes to print - number 2
        mov $1, %edx  # count: length of msg - 1 byte
        syscall
        call exit

exit:
        mov $60, %rax # syscal for exit program
        mov $0, %rdi # return code value
        syscall
