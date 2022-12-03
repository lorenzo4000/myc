.text
.global foo
foo:
push %rbp
mov %rsp, %rbp
sub $112, %rsp
mov $0, -8(%rbp, 1)

mov $0, -16(%rbp, 1)

mov $0, -24(%rbp, 1)

mov $0, -32(%rbp, 1)

mov $0, -40(%rbp, 1)

mov $0, -48(%rbp, 1)

mov $0, -56(%rbp, 1)

mov %rdi, -8(%rbp, 1)
mov %rsi, -16(%rbp, 1)
mov %rdx, -24(%rbp, 1)
mov %rcx, -32(%rbp, 1)
mov %r8, -40(%rbp, 1)
mov %r9, -48(%rbp, 1)
mov 16(%rbp, 1), %rbx
mov %rbx, -56(%rbp, 1)



mov -56(%rbp, 1), %r12

mov %r12, %rsi
mov $L1, %rdi
call printf
mov %rax, %r13
mov $0, %r14

mov $0, %r15

mov $0, -64(%rbp, 1)

mov $0, -72(%rbp, 1)

mov $0, -80(%rbp, 1)

mov $0, -88(%rbp, 1)

push %rbx
mov -56(%rbp, 1), %rbx
mov %rbx, -96(%rbp, 1)
pop %rbx


mov $1, -104(%rbp, 1)

push %rbx
mov -104(%rbp, 1), %rbx
add %rbx, -96(%rbp, 1)
pop %rbx


pushq -96(%rbp, 1)
pushq $0
mov -88(%rbp, 1), %r9
mov -80(%rbp, 1), %r8
mov -72(%rbp, 1), %rcx
mov -64(%rbp, 1), %rdx
mov %r15, %rsi
mov %r14, %rdi
call foo
mov %rax, -112(%rbp, 1)

mov %rbp, %rsp
pop %rbp
ret

.global main
main:
push %rbp
mov %rsp, %rbp
sub $64, %rsp

mov $0, -8(%rbp, 1)

mov $0, -16(%rbp, 1)

mov $0, -24(%rbp, 1)

mov $0, -32(%rbp, 1)

mov $0, -40(%rbp, 1)

mov $0, -48(%rbp, 1)

mov $42, -56(%rbp, 1)

pushq $0
pushq -56(%rbp, 1)
mov -48(%rbp, 1), %r9
mov -40(%rbp, 1), %r8
mov -32(%rbp, 1), %rcx
mov -24(%rbp, 1), %rdx
mov -16(%rbp, 1), %rsi
mov -8(%rbp, 1), %rdi
call foo
mov %rax, -64(%rbp, 1)

mov %rbp, %rsp
pop %rbp
ret


.data








L1: .string "%d!\n"
