.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp

pushq %rbx
movabsq $0, %rbx

movq %rbx, -8(%rbp, 1)
popq %rbx


movb $0, -9(%rbp, 1)


movq %rdi, -8(%rbp, 1)

movb %sil, -9(%rbp, 1)



movq -8(%rbp, 1), %rbx


movabsq $0, %r12


xorb %r13b, %r13b
cmpq %r12, %rbx
setl %r13b


andb %r13b, %r13b
jz .L1
movb $1, %bl


movb %bl, %al

jmp ._print_line



.L1:


movabsq $1, %r12


movq %r12, -17(%rbp, 1)



.L3:
movq -17(%rbp, 1), %r14


movq -8(%rbp, 1), %r15


xorb %bh, %bh
cmpq %r15, %r14
setl %bh


andb %bh, %bh
jz .L4

movq $.L2, %rdi


call printf

movq %rax, %r15



movq -17(%rbp, 1), %r15


pushq %rbx
movabsq $1, %rbx

movq %rbx, -25(%rbp, 1)
popq %rbx


addq -25(%rbp, 1), %r15


movq %r15, -17(%rbp, 1)

movq -17(%rbp, 1), %r14




jmp .L3
.L4:



movq $.L5, %rdi


call printf

movq %rax, -33(%rbp, 1)


movb $0, -34(%rbp, 1)



movb -34(%rbp, 1), %al

._print_line:
movq %rbp, %rsp
popq %rbp
ret


.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $240, %rsp




movabsq $133, %r12


movb %r12b, %bl

andq $-1, %rbx

movb %bl, -1(%rbp, 1)


movb -1(%rbp, 1), %r13b



movabsq $2, %r14


movb %r14b, %r15b

andq $-1, %r15

xorq %rdx, %rdx
xorq %rax, %rax
movb %r13b, %al

idivb %r15b
movb %ah, %al



movb %r13b, -2(%rbp, 1)



movb -2(%rbp, 1), %r15b


movb %r15b, %sil

movq $.L6, %rdi


call printf

movq %rax, -10(%rbp, 1)


jmp ._main


pushq %rbx
movabsq $100, %rbx

movq %rbx, -18(%rbp, 1)
popq %rbx


pushq %rbx
movabsq $2, %rbx

movq %rbx, -26(%rbp, 1)
popq %rbx


xorq %rdx, %rdx
xorq %rax, %rax
movq -18(%rbp, 1), %rax

idivq -26(%rbp, 1)
movq %rax, -18(%rbp, 1)



pushq %rbx
movq -18(%rbp, 1), %rbx

movq %rbx, -34(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $2, %rbx

movq %rbx, -42(%rbp, 1)
popq %rbx


pushq %rbx
movq -42(%rbp, 1), %rbx

movq %rbx, -50(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $0, %rbx

movq %rbx, -58(%rbp, 1)
popq %rbx


pushq %rbx
movq -58(%rbp, 1), %rbx

movq %rbx, -66(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $1, %rbx

movq %rbx, -74(%rbp, 1)
popq %rbx


pushq %rbx
movq -74(%rbp, 1), %rbx

movq %rbx, -82(%rbp, 1)
popq %rbx



.L13:
movb $1, -83(%rbp, 1)


pushq %rbx
movb -83(%rbp, 1), %bl

andb %bl, -83(%rbp, 1)
popq %rbx

jz .L14
pushq %rbx
movq -82(%rbp, 1), %rbx

movq %rbx, -91(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $0, %rbx

movq %rbx, -99(%rbp, 1)
popq %rbx


pushq %rbx
movb -100(%rbp, 1), %bl

xorb %bl, -100(%rbp, 1)
popq %rbx

pushq %rbx
movq -99(%rbp, 1), %rbx

cmpq %rbx, -91(%rbp, 1)
popq %rbx

setg -100(%rbp, 1)


pushq %rbx
movb -100(%rbp, 1), %bl

andb %bl, -100(%rbp, 1)
popq %rbx

jz .L7
pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -116(%rbp, 1)
popq %rbx



pushq %rbx
movq -50(%rbp, 1), %rbx

movq %rbx, -124(%rbp, 1)
popq %rbx



pushq %rbx
movq -124(%rbp, 1), %rbx

addq %rbx, -116(%rbp, 1)
popq %rbx



pushq %rbx
movq -116(%rbp, 1), %rbx

movq %rbx, -66(%rbp, 1)
popq %rbx


pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -108(%rbp, 1)
popq %rbx





jmp .L8

.L7:
pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -140(%rbp, 1)
popq %rbx



pushq %rbx
movq -50(%rbp, 1), %rbx

movq %rbx, -148(%rbp, 1)
popq %rbx



pushq %rbx
movq -148(%rbp, 1), %rbx

subq %rbx, -140(%rbp, 1)
popq %rbx



pushq %rbx
movq -140(%rbp, 1), %rbx

movq %rbx, -66(%rbp, 1)
popq %rbx


pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -132(%rbp, 1)
popq %rbx





.L8:


pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -156(%rbp, 1)
popq %rbx



pushq %rbx
movq -34(%rbp, 1), %rbx

movq %rbx, -164(%rbp, 1)
popq %rbx



pushq %rbx
movb -165(%rbp, 1), %bl

xorb %bl, -165(%rbp, 1)
popq %rbx

pushq %rbx
movq -164(%rbp, 1), %rbx

cmpq %rbx, -156(%rbp, 1)
popq %rbx

setge -165(%rbp, 1)


pushq %rbx
movb -165(%rbp, 1), %bl

andb %bl, -165(%rbp, 1)
popq %rbx

jz .L9
pushq %rbx
movabsq $0, %rbx

movq %rbx, -181(%rbp, 1)
popq %rbx


pushq %rbx
movq -181(%rbp, 1), %rbx

movq %rbx, -82(%rbp, 1)
popq %rbx


pushq %rbx
movq -82(%rbp, 1), %rbx

movq %rbx, -173(%rbp, 1)
popq %rbx





.L9:


pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -189(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $0, %rbx

movq %rbx, -197(%rbp, 1)
popq %rbx


pushq %rbx
movb -198(%rbp, 1), %bl

xorb %bl, -198(%rbp, 1)
popq %rbx

pushq %rbx
movq -197(%rbp, 1), %rbx

cmpq %rbx, -189(%rbp, 1)
popq %rbx

setle -198(%rbp, 1)


pushq %rbx
movb -198(%rbp, 1), %bl

andb %bl, -198(%rbp, 1)
popq %rbx

jz .L10
pushq %rbx
movabsq $1, %rbx

movq %rbx, -214(%rbp, 1)
popq %rbx


pushq %rbx
movq -214(%rbp, 1), %rbx

movq %rbx, -82(%rbp, 1)
popq %rbx


pushq %rbx
movq -82(%rbp, 1), %rbx

movq %rbx, -206(%rbp, 1)
popq %rbx





.L10:


pushq %rbx
movq -66(%rbp, 1), %rbx

movq %rbx, -222(%rbp, 1)
popq %rbx



movb $1, -223(%rbp, 1)


movb -223(%rbp, 1), %sil

movq -222(%rbp, 1), %rdi


call print_line

movb %al, -224(%rbp, 1)


movb $0, -225(%rbp, 1)


pushq %rbx
movb -226(%rbp, 1), %bl

xorb %bl, -226(%rbp, 1)
popq %rbx

pushq %rbx
movb -225(%rbp, 1), %bl

cmpb %bl, -224(%rbp, 1)
popq %rbx

setne -226(%rbp, 1)


pushq %rbx
movb -226(%rbp, 1), %bl

andb %bl, -226(%rbp, 1)
popq %rbx

jz .L12

movq $.L11, %rdi


call printf

movq %rax, -234(%rbp, 1)


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



































.L6: .string "%hhd"























































































































.L11: .string "error: negative length for the line is illegal\n"
















