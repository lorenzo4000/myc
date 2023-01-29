.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp

movq $0, -8(%rbp, 1)


movb $0, -9(%rbp, 1)


movq %rdi, -8(%rbp, 1)

movb %sil, -9(%rbp, 1)



movq -8(%rbp, 1), %rbx


movq $0, %r12


cmpq %rbx, %r12
xorb %r13b, %r13b
setl %r13b


and %r13b, %r13b
jz .L1
movb $1, %r12b


movb %r12b, %al

jmp ._print_line



.L1:


.L3:
movq -8(%rbp, 1), %r14


movq $0, %r15


cmpq %r14, %r15
pushq %rbx
movb -10(%rbp, 1), %bl

xorb %bl, -10(%rbp, 1)
popq %rbx

setg -10(%rbp, 1)


pushq %rbx
movb -10(%rbp, 1), %bl

and %bl, -10(%rbp, 1)
popq %rbx

jz .L4

movq $.L2, %rdi

call printf

movq %rax, %r15


pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -26(%rbp, 1)
popq %rbx



movq $1, -34(%rbp, 1)


pushq %rbx
movq -26(%rbp, 1), %rbx

subq %rbx, -34(%rbp, 1)
popq %rbx



pushq %rbx
movq -26(%rbp, 1), %rbx

movq %rbx, -8(%rbp, 1)
popq %rbx


pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -18(%rbp, 1)
popq %rbx





jmp .L3
.L4:



movq $.L5, %rdi

call printf

movq %rax, -35(%rbp, 1)


movb $0, -36(%rbp, 1)



movb -36(%rbp, 1), %al

._print_line:
movq %rbp, %rsp
popq %rbp
ret


.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $224, %rsp



movq $30, -8(%rbp, 1)


pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -16(%rbp, 1)
popq %rbx



movq $2, -24(%rbp, 1)


pushq %rbx
movq -24(%rbp, 1), %rbx

movq %rbx, -32(%rbp, 1)
popq %rbx



movq $0, -40(%rbp, 1)


pushq %rbx
movq -40(%rbp, 1), %rbx

movq %rbx, -48(%rbp, 1)
popq %rbx



movq $1, -56(%rbp, 1)


pushq %rbx
movq -56(%rbp, 1), %rbx

movq %rbx, -64(%rbp, 1)
popq %rbx



.L12:
movb $1, -65(%rbp, 1)


pushq %rbx
movb -65(%rbp, 1), %bl

and %bl, -65(%rbp, 1)
popq %rbx

jz .L13
pushq %rbx
movq -64(%rbp, 1), %rbx

movq %rbx, -73(%rbp, 1)
popq %rbx



movq $0, -81(%rbp, 1)


pushq %rbx
movq -73(%rbp, 1), %rbx

cmpq %rbx, -81(%rbp, 1)
popq %rbx

pushq %rbx
movb -82(%rbp, 1), %bl

xorb %bl, -82(%rbp, 1)
popq %rbx

setg -82(%rbp, 1)


pushq %rbx
movb -82(%rbp, 1), %bl

and %bl, -82(%rbp, 1)
popq %rbx

jz .L6
pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -98(%rbp, 1)
popq %rbx



pushq %rbx
movq -32(%rbp, 1), %rbx

movq %rbx, -106(%rbp, 1)
popq %rbx



pushq %rbx
movq -98(%rbp, 1), %rbx

addq %rbx, -106(%rbp, 1)
popq %rbx



pushq %rbx
movq -98(%rbp, 1), %rbx

movq %rbx, -48(%rbp, 1)
popq %rbx


pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -90(%rbp, 1)
popq %rbx





jmp .L7

.L6:
pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -122(%rbp, 1)
popq %rbx



pushq %rbx
movq -32(%rbp, 1), %rbx

movq %rbx, -130(%rbp, 1)
popq %rbx



pushq %rbx
movq -122(%rbp, 1), %rbx

subq %rbx, -130(%rbp, 1)
popq %rbx



pushq %rbx
movq -122(%rbp, 1), %rbx

movq %rbx, -48(%rbp, 1)
popq %rbx


pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -114(%rbp, 1)
popq %rbx





.L7:


pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -138(%rbp, 1)
popq %rbx



pushq %rbx
movq -16(%rbp, 1), %rbx

movq %rbx, -146(%rbp, 1)
popq %rbx



pushq %rbx
movq -138(%rbp, 1), %rbx

cmpq %rbx, -146(%rbp, 1)
popq %rbx

pushq %rbx
movb -147(%rbp, 1), %bl

xorb %bl, -147(%rbp, 1)
popq %rbx

setge -147(%rbp, 1)


pushq %rbx
movb -147(%rbp, 1), %bl

and %bl, -147(%rbp, 1)
popq %rbx

jz .L8
movq $0, -163(%rbp, 1)


pushq %rbx
movq -163(%rbp, 1), %rbx

movq %rbx, -64(%rbp, 1)
popq %rbx


pushq %rbx
movq -64(%rbp, 1), %rbx

movq %rbx, -155(%rbp, 1)
popq %rbx





.L8:


pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -171(%rbp, 1)
popq %rbx



movq $0, -179(%rbp, 1)


pushq %rbx
movq -171(%rbp, 1), %rbx

cmpq %rbx, -179(%rbp, 1)
popq %rbx

pushq %rbx
movb -180(%rbp, 1), %bl

xorb %bl, -180(%rbp, 1)
popq %rbx

setle -180(%rbp, 1)


pushq %rbx
movb -180(%rbp, 1), %bl

and %bl, -180(%rbp, 1)
popq %rbx

jz .L9
movq $1, -196(%rbp, 1)


pushq %rbx
movq -196(%rbp, 1), %rbx

movq %rbx, -64(%rbp, 1)
popq %rbx


pushq %rbx
movq -64(%rbp, 1), %rbx

movq %rbx, -188(%rbp, 1)
popq %rbx





.L9:


pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, -204(%rbp, 1)
popq %rbx



movb $1, -205(%rbp, 1)


movq -205(%rbp, 1), %rsi
movq -204(%rbp, 1), %rdi

call print_line

movq %rax, -206(%rbp, 1)


movb $0, -207(%rbp, 1)


pushq %rbx
movb -206(%rbp, 1), %bl

cmpb %bl, -207(%rbp, 1)
popq %rbx

pushq %rbx
movb -208(%rbp, 1), %bl

xorb %bl, -208(%rbp, 1)
popq %rbx

setne -208(%rbp, 1)


pushq %rbx
movb -208(%rbp, 1), %bl

and %bl, -208(%rbp, 1)
popq %rbx

jz .L11

movq $.L10, %rdi

call printf

movq %rax, -209(%rbp, 1)


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
