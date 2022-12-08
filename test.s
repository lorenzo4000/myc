.text
.global main
main:
push %rbp
mov %rsp, %rbp
sub $16, %rsp

mov $64, %rbx

mov %rbx, -8(%rbp, 1)

mov -8(%rbp, 1), %r12

.L2:
and %r12, %r12
jz .L3

jmp .L2
.L3:


mov %rbp, %rsp
pop %rbp
ret


.data

