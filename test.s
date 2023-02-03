.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp

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



.L3:

movq -8(%rbp, 1), %r12


movabsq $0, %r14


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



pushq %rbx

movabsq $1, %rbx

movq %rbx, -25(%rbp, 1)
popq %rbx



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
subq $176, %rsp



movabsq $0x7FFFFFFFFFFFFFFF, %rbx

movq %rbx, %rax
movabsq $4, %rbx
imul %rbx

jno NO_CARRY

// CARRY:
movq %rax, %rsi
movq $.L61, %rdi
call printf

movq $0, %rax
jmp ._main

NO_CARRY:
//movq %rax, %rbx

movq %rbx, %rsi
movq $.L60, %rdi
call printf

movq $0, %rax
jmp ._main

movq %rbx, -8(%rbp, 1)


movabsq $2, %r12


movq %r12, -16(%rbp, 1)


movabsq $0, %r13


movq %r13, -24(%rbp, 1)


movabsq $1, %r14


movq %r14, -32(%rbp, 1)


.L12:

movb $1, %r15b


andb %r15b, %r15b
jz .L13
pushq %rbx
movq -32(%rbp, 1), %rbx

movq %rbx, -40(%rbp, 1)
popq %rbx



pushq %rbx

movabsq $0, %rbx

movq %rbx, -48(%rbp, 1)
popq %rbx



pushq %rbx
movb -49(%rbp, 1), %bl

xorb %bl, -49(%rbp, 1)
popq %rbx

pushq %rbx
movq -48(%rbp, 1), %rbx

cmpq %rbx, -40(%rbp, 1)
popq %rbx



setg -49(%rbp, 1)


pushq %rbx
movb -49(%rbp, 1), %bl

andb %bl, -49(%rbp, 1)
popq %rbx

jz .L6
pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -65(%rbp, 1)
popq %rbx



pushq %rbx
movq -16(%rbp, 1), %rbx

movq %rbx, -73(%rbp, 1)
popq %rbx



pushq %rbx
movq -73(%rbp, 1), %rbx

addq %rbx, -65(%rbp, 1)
popq %rbx





pushq %rbx
movq -65(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)
popq %rbx


pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -57(%rbp, 1)
popq %rbx





jmp .L7

.L6:

pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -89(%rbp, 1)
popq %rbx



pushq %rbx
movq -16(%rbp, 1), %rbx

movq %rbx, -97(%rbp, 1)
popq %rbx



pushq %rbx
movq -97(%rbp, 1), %rbx

subq %rbx, -89(%rbp, 1)
popq %rbx





pushq %rbx
movq -89(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)
popq %rbx


pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -81(%rbp, 1)
popq %rbx





.L7:



pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -105(%rbp, 1)
popq %rbx



pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -113(%rbp, 1)
popq %rbx



pushq %rbx
movb -114(%rbp, 1), %bl

xorb %bl, -114(%rbp, 1)
popq %rbx

pushq %rbx
movq -113(%rbp, 1), %rbx

cmpq %rbx, -105(%rbp, 1)
popq %rbx



setge -114(%rbp, 1)


pushq %rbx
movb -114(%rbp, 1), %bl

andb %bl, -114(%rbp, 1)
popq %rbx

jz .L8
pushq %rbx

movabsq $0, %rbx

movq %rbx, -130(%rbp, 1)
popq %rbx



pushq %rbx
movq -130(%rbp, 1), %rbx

movq %rbx, -32(%rbp, 1)
popq %rbx


pushq %rbx
movq -32(%rbp, 1), %rbx

movq %rbx, -122(%rbp, 1)
popq %rbx





.L8:



pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -138(%rbp, 1)
popq %rbx



pushq %rbx

movabsq $0, %rbx

movq %rbx, -146(%rbp, 1)
popq %rbx



pushq %rbx
movb -147(%rbp, 1), %bl

xorb %bl, -147(%rbp, 1)
popq %rbx

pushq %rbx
movq -146(%rbp, 1), %rbx

cmpq %rbx, -138(%rbp, 1)
popq %rbx



setle -147(%rbp, 1)


pushq %rbx
movb -147(%rbp, 1), %bl

andb %bl, -147(%rbp, 1)
popq %rbx

jz .L9
pushq %rbx

movabsq $1, %rbx

movq %rbx, -163(%rbp, 1)
popq %rbx



pushq %rbx
movq -163(%rbp, 1), %rbx

movq %rbx, -32(%rbp, 1)
popq %rbx


pushq %rbx
movq -32(%rbp, 1), %rbx

movq %rbx, -155(%rbp, 1)
popq %rbx





.L9:



pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -171(%rbp, 1)
popq %rbx



movb $1, -172(%rbp, 1)


movb -172(%rbp, 1), %sil

movq -171(%rbp, 1), %rdi


call print_line

movb %al, -173(%rbp, 1)


movb $0, -174(%rbp, 1)


pushq %rbx
movb -175(%rbp, 1), %bl

xorb %bl, -175(%rbp, 1)
popq %rbx

pushq %rbx
movb -174(%rbp, 1), %bl

cmpb %bl, -173(%rbp, 1)
popq %rbx



setne -175(%rbp, 1)


pushq %rbx
movb -175(%rbp, 1), %bl

andb %bl, -175(%rbp, 1)
popq %rbx

jz .L11

movq $.L10, %rdi


call printf

movq %rax, -176(%rbp, 1)


jmp ._main



.L11:




jmp .L12
.L13:




._main:
movq %rbp, %rsp
popq %rbp
ret



.data






























.L2: .string "@"




















.L5: .string "\n"
















































































































.L10: .string "error: negative length for the line is illegal\n"



.L60: .string "NO_CARRY!!: %lld\n"
.L61: .string "CARRY!!: %lld, %lld\n"
















