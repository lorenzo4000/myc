.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp

movq $0, -8(%rbp, 1)


movb $0, -9(%rbp, 1)


movq %rdi, -8(%rbp, 1)

movb %sil, -9(%rbp, 1)



movq -8(%rbp, 1), %rbx


movq $0, %r12


xorb %r13b, %r13b
cmpq %r12, %rbx


setl %r13b


andb %r13b, %r13b
jz .L1
movb $1, %bl


movb %bl, %al

jmp ._print_line



.L1:



.L3:

movq -8(%rbp, 1), %r12


movq $0, %r14


xorb %r15b, %r15b
cmpq %r14, %r12


setg %r15b


andb %r15b, %r15b
jz .L4

movq $.L2, %rdi


call printf

movq %rax, %r12


pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -17(%rbp, 1)
popq %rbx



movq $1, -25(%rbp, 1)


pushq %rbx
movq -25(%rbp, 1), %rbx

subq %rbx, -17(%rbp, 1)
popq %rbx





pushq %rbx
movq -17(%rbp, 1), %rbx

movq %rbx, -8(%rbp, 1)
popq %rbx


movq -8(%rbp, 1), %r14




jmp .L3
.L4:




movq $.L5, %rdi


call printf

movq %rax, -26(%rbp, 1)


movb $0, -27(%rbp, 1)



movb -27(%rbp, 1), %al

._print_line:
movq %rbp, %rsp
popq %rbp
ret


.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $192, %rsp



movabsq $0x7FFFFFFFFFFFFFF8, %rbx

movq %rbx, %rax


movq %rax, -8(%rbp, 1)



movq -8(%rbp, 1), %r12


movq %r12, %rsi

movq $.L6, %rdi


call printf

movq %rax, %r13


jmp ._main


movq $2, %r14


movq %r14, -16(%rbp, 1)


movq $0, %r15


movq %r15, -24(%rbp, 1)


movq $1, -32(%rbp, 1)


pushq %rbx
movq -32(%rbp, 1), %rbx

movq %rbx, -40(%rbp, 1)
popq %rbx



.L13:

movb $1, -41(%rbp, 1)


pushq %rbx
movb -41(%rbp, 1), %bl

andb %bl, -41(%rbp, 1)
popq %rbx

jz .L14
pushq %rbx
movq -40(%rbp, 1), %rbx

movq %rbx, -49(%rbp, 1)
popq %rbx



movq $0, -57(%rbp, 1)


pushq %rbx
movb -58(%rbp, 1), %bl

xorb %bl, -58(%rbp, 1)
popq %rbx

pushq %rbx
movq -57(%rbp, 1), %rbx

cmpq %rbx, -49(%rbp, 1)
popq %rbx



setg -58(%rbp, 1)


pushq %rbx
movb -58(%rbp, 1), %bl

andb %bl, -58(%rbp, 1)
popq %rbx

jz .L7
pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -74(%rbp, 1)
popq %rbx



pushq %rbx
movq -16(%rbp, 1), %rbx

movq %rbx, -82(%rbp, 1)
popq %rbx



pushq %rbx
movq -82(%rbp, 1), %rbx

addq %rbx, -74(%rbp, 1)
popq %rbx





pushq %rbx
movq -74(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)
popq %rbx


pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -66(%rbp, 1)
popq %rbx





jmp .L8

.L7:

pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -98(%rbp, 1)
popq %rbx



pushq %rbx
movq -16(%rbp, 1), %rbx

movq %rbx, -106(%rbp, 1)
popq %rbx



pushq %rbx
movq -106(%rbp, 1), %rbx

subq %rbx, -98(%rbp, 1)
popq %rbx





pushq %rbx
movq -98(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)
popq %rbx


pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -90(%rbp, 1)
popq %rbx





.L8:



pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -114(%rbp, 1)
popq %rbx



pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -122(%rbp, 1)
popq %rbx



pushq %rbx
movb -123(%rbp, 1), %bl

xorb %bl, -123(%rbp, 1)
popq %rbx

pushq %rbx
movq -122(%rbp, 1), %rbx

cmpq %rbx, -114(%rbp, 1)
popq %rbx



setge -123(%rbp, 1)


pushq %rbx
movb -123(%rbp, 1), %bl

andb %bl, -123(%rbp, 1)
popq %rbx

jz .L9
movq $0, -139(%rbp, 1)


pushq %rbx
movq -139(%rbp, 1), %rbx

movq %rbx, -40(%rbp, 1)
popq %rbx


pushq %rbx
movq -40(%rbp, 1), %rbx

movq %rbx, -131(%rbp, 1)
popq %rbx





.L9:



pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -147(%rbp, 1)
popq %rbx



movq $0, -155(%rbp, 1)


pushq %rbx
movb -156(%rbp, 1), %bl

xorb %bl, -156(%rbp, 1)
popq %rbx

pushq %rbx
movq -155(%rbp, 1), %rbx

cmpq %rbx, -147(%rbp, 1)
popq %rbx



setle -156(%rbp, 1)


pushq %rbx
movb -156(%rbp, 1), %bl

andb %bl, -156(%rbp, 1)
popq %rbx

jz .L10
movq $1, -172(%rbp, 1)


pushq %rbx
movq -172(%rbp, 1), %rbx

movq %rbx, -40(%rbp, 1)
popq %rbx


pushq %rbx
movq -40(%rbp, 1), %rbx

movq %rbx, -164(%rbp, 1)
popq %rbx





.L10:



pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -180(%rbp, 1)
popq %rbx



movb $1, -181(%rbp, 1)


movb -181(%rbp, 1), %sil

movq -180(%rbp, 1), %rdi


call print_line

movb %al, -182(%rbp, 1)


movb $0, -183(%rbp, 1)


pushq %rbx
movb -184(%rbp, 1), %bl

xorb %bl, -184(%rbp, 1)
popq %rbx

pushq %rbx
movb -183(%rbp, 1), %bl

cmpb %bl, -182(%rbp, 1)
popq %rbx



setne -184(%rbp, 1)


pushq %rbx
movb -184(%rbp, 1), %bl

andb %bl, -184(%rbp, 1)
popq %rbx

jz .L12

movq $.L11, %rdi


call printf

movq %rax, -185(%rbp, 1)


jmp ._main



.L12:




jmp .L13
.L14:




._main:
movq %rbp, %rsp
popq %rbp
ret



.data





























.L2: .string "@"



















.L5: .string "\n"



















.L6: .string "%lld"




































































































.L11: .string "error: negative length for the line is illegal\n"



















