# x64
.section .data

yes DB 'y'  # invalid data assignment

.section .text

.globl _start

_start:
        mov $41, %rax
        add $1, %rax
#        call print

#print:
        mov $1, %rax    # syscal write
        mov $1, %rdi    # fd: file descriptor - (stdout)
        mov yes, %rsi  # buf: bytes to print - number 2
        mov $4, %rdx    # count: length of msg - 1 byte
        syscall
#        call exit

#exit:
        mov $60, %rax # syscal for exit program
        mov $0, %rdi # return code value
        syscall
