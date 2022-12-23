// ---=== WORKS! ===---

/*
.text
.global main
main:
push %rbp
mov %rsp, %rbp
sub $32, %rsp

mov $456, %rbx

mov %rbx, -8(%rbp, 1)

.L2:
mov -8(%rbp, 1), %r12

mov $0, %r13

xor %r14b, %r14b
cmp %r13, %r12
setg %r14b

and %r14b, %r14b
jz .L3

mov $.L1, %rdi
call printf
mov %rax, %r15

push %rbx
mov -8(%rbp, 1), %rbx
mov %rbx, -24(%rbp, 1)
pop %rbx


mov $1, -32(%rbp, 1)

push %rbx
mov -32(%rbp, 1), %rbx
sub %rbx, -24(%rbp, 1)
pop %rbx


push %rbx
mov -24(%rbp, 1), %rbx
mov %rbx, -8(%rbp, 1)
pop %rbx

push %rbx
mov -8(%rbp, 1), %rbx
mov %rbx, -16(%rbp, 1)
pop %rbx




jmp .L2
.L3:


mov %rbp, %rsp
pop %rbp
ret

.data

.L1: .string "sesso\n"
*/

// ---==== DOESN'T WORK! ===---


.text
.global main
main:
push %rbp
mov %rsp, %rbp
sub $32, %rsp

mov $456, %rbx

mov %rbx, -8(%rbp, 1)

.L2:
mov -8(%rbp, 1), %r12

mov $0, %r13

xor %r14b, %r14b
cmp %r13, %r12
setg %r14b

and %r14b, %r14b
jz .L3
push %rbx
mov -8(%rbp, 1), %rbx
mov %rbx, -16(%rbp, 1)
pop %rbx


movq $1, -24(%rbp, 1)

push %rbx
movq -24(%rbp, 1), %rbx
subq %rbx, -16(%rbp, 1)
pop %rbx


push %rbx
movq -16(%rbp, 1), %rbx
mov %rbx, -8(%rbp, 1)
pop %rbx

movq -8(%rbp, 1), %r15



mov $.L1, %rdi
call printf
mov %rax, -32(%rbp, 1)


jmp .L2
.L3:


mov %rbp, %rsp
pop %rbp
ret

.data

.L1: .string "sesso\n"
