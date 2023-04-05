.text

























.global allocate
allocate:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp



pushq %rbx
movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx


movq %rdi, -8(%rbp, 1)






movq -8(%rbp, 1), %rdi



call malloc

movq %rax, %rbx





movq %rbx, -24(%rbp, 1)





movq -8(%rbp, 1), %r12


movq %r12, -16(%rbp, 1)




movq -16(%rbp, 1), %rdx


movq -24(%rbp, 1), %rax



jmp ._allocate





._allocate:
movq %rbp, %rsp

popq %rbp

ret



.global resize
resize:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp




pushq %rbx
movq $0, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx


movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movq %rdx, -24(%rbp, 1)






movq -16(%rbp, 1), %rdi


movq -24(%rbp, 1), %rsi



call realloc

movq %rax, %rbx





movq %rbx, -16(%rbp, 1)





movq -24(%rbp, 1), %r12


movq %r12, -8(%rbp, 1)




movq -8(%rbp, 1), %rdx


movq -16(%rbp, 1), %rax



jmp ._resize





._resize:
movq %rbp, %rsp

popq %rbp

ret























.global sum
sum:
pushq %rbp

movq %rsp, %rbp

subq $64, %rsp




movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)





movq $0, %rbx



movq %rbx, -24(%rbp, 1)





movq -8(%rbp, 1), %r12


movq $-1, %rax


andq %rax, %r12


movq $8, %r13



xorq %rdx, %rdx

xorq %rax, %rax

movq %r12, %rax


idivq %r13

movq %rax, %r12




movq %r12, -32(%rbp, 1)



movq $0, %r13



movq %r13, -40(%rbp, 1)




.L2:


movq -40(%rbp, 1), %r14


xorb %r15b, %r15b

cmpq -32(%rbp, 1), %r14

setl %r15b



andb %r15b, %r15b

jz .L3




movq -40(%rbp, 1), %rax


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11





movq $.L1, %rdi


movq 0(%r11, %rax, 8), %rsi



call printf

movl %eax, %r14d







movq -40(%rbp, 1), %rax


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11





pushq %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -56(%rbp, 1)
popq %rbx


pushq %rbx
movq 0(%r11, %rax, 8), %rbx


addq %rbx, -56(%rbp, 1)
popq %rbx




pushq %rbx
movq -56(%rbp, 1), %rbx


movq %rbx, -24(%rbp, 1)
popq %rbx





movq $1, %r14



pushq %rbx
movq -40(%rbp, 1), %rbx


movq %rbx, -48(%rbp, 1)
popq %rbx


addq %r14, -48(%rbp, 1)




movq -48(%rbp, 1), %r14


movq %r14, -40(%rbp, 1)




jmp .L2

.L3:



movq -24(%rbp, 1), %rax


jmp ._sum





._sum:
movq %rbp, %rsp

popq %rbp

ret



.global sum_20
sum_20:
pushq %rbp

movq %rsp, %rbp

subq $208, %rsp




leaq 16(%rbp, 1), %rsi

leaq -160(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb




movq $0, %rbx



movq %rbx, -168(%rbp, 1)



movq $20, %r12



movq %r12, -176(%rbp, 1)



movq $0, %r13



movq %r13, -184(%rbp, 1)




.L5:


movq -184(%rbp, 1), %r14


xorb %r15b, %r15b

cmpq -176(%rbp, 1), %r14

setl %r15b



andb %r15b, %r15b

jz .L6




movq -184(%rbp, 1), %rax


leaq -160(%rbp, 1), %r10



movq $.L4, %rdi


movq 0(%r10, %rax, 8), %rsi



call printf

movl %eax, %r14d







movq -184(%rbp, 1), %rax


leaq -160(%rbp, 1), %r10



pushq %rbx
movq -168(%rbp, 1), %rbx


movq %rbx, -200(%rbp, 1)
popq %rbx


pushq %rbx
movq 0(%r10, %rax, 8), %rbx


addq %rbx, -200(%rbp, 1)
popq %rbx




pushq %rbx
movq -200(%rbp, 1), %rbx


movq %rbx, -168(%rbp, 1)
popq %rbx





movq $1, %r14



pushq %rbx
movq -184(%rbp, 1), %rbx


movq %rbx, -192(%rbp, 1)
popq %rbx


addq %r14, -192(%rbp, 1)




movq -192(%rbp, 1), %r14


movq %r14, -184(%rbp, 1)




jmp .L5

.L6:



movq -168(%rbp, 1), %rax


jmp ._sum_20





._sum_20:
movq %rbp, %rsp

popq %rbp

ret



.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $480, %rsp







movq $160, %rbx



movq $.L7, %rdi


movq %rbx, %rsi



call printf

movl %eax, %r12d




jmp ._main




movq $0, %r13



movq %r13, -168(%rbp, 1)




.L8:

movq $20, %r14



movq -168(%rbp, 1), %r15


pushq %rbx
movb -169(%rbp, 1), %bl


xorb %bl, -169(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setl -169(%rbp, 1)



movb -169(%rbp, 1), %r14b


andb %r14b, -169(%rbp, 1)

jz .L9




movq -168(%rbp, 1), %rax


leaq -160(%rbp, 1), %r10



movq -168(%rbp, 1), %r14


movq %r14, 0(%r10, %rax, 8)





movq $1, %r14



movq -168(%rbp, 1), %r15


addq %r14, %r15




movq %r15, -168(%rbp, 1)




jmp .L8

.L9:


movq $0, %r14



movq %r14, -177(%rbp, 1)




.L11:

pushq %rbx
movq $20, %rbx


movq %rbx, -185(%rbp, 1)

popq %rbx


pushq %rbx
movq -177(%rbp, 1), %rbx


movq %rbx, -193(%rbp, 1)
popq %rbx


pushq %rbx
movb -194(%rbp, 1), %bl


xorb %bl, -194(%rbp, 1)
popq %rbx

pushq %rbx
movq -185(%rbp, 1), %rbx


cmpq %rbx, -193(%rbp, 1)
popq %rbx

setl -194(%rbp, 1)



pushq %rbx
movb -194(%rbp, 1), %bl


andb %bl, -194(%rbp, 1)
popq %rbx

jz .L12





movq -177(%rbp, 1), %rax


leaq -160(%rbp, 1), %r10



movq $.L10, %rdi


movq -177(%rbp, 1), %rsi


movq 0(%r10, %rax, 8), %rdx



call printf

movl %eax, -214(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -202(%rbp, 1)

popq %rbx


pushq %rbx
movq -177(%rbp, 1), %rbx


movq %rbx, -210(%rbp, 1)
popq %rbx


pushq %rbx
movq -202(%rbp, 1), %rbx


addq %rbx, -210(%rbp, 1)
popq %rbx




pushq %rbx
movq -210(%rbp, 1), %rbx


movq %rbx, -177(%rbp, 1)
popq %rbx




jmp .L11

.L12:






pushq %rbx

leaq -160(%rbp, 1), %rbx

movq %rbx, -238(%rbp, 1)


popq %rbx


pushq %rbx
movq -238(%rbp, 1), %rbx


movq %rbx, -230(%rbp, 1)
popq %rbx


pushq %rbx
movq $160, %rbx


movq %rbx, -222(%rbp, 1)

popq %rbx





movq $.L13, %rdi


movq -230(%rbp, 1), %rsi



call printf

movl %eax, -242(%rbp, 1)






movq $.L14, %rdi


movq -222(%rbp, 1), %rsi



call printf

movl %eax, -246(%rbp, 1)




pushq %rbx
movq $0, %rbx


movq %rbx, -254(%rbp, 1)

popq %rbx


pushq %rbx
movq -254(%rbp, 1), %rbx


movq %rbx, -262(%rbp, 1)
popq %rbx




.L15:

pushq %rbx
movq $20, %rbx


movq %rbx, -270(%rbp, 1)

popq %rbx


pushq %rbx
movq -262(%rbp, 1), %rbx


movq %rbx, -278(%rbp, 1)
popq %rbx


pushq %rbx
movb -279(%rbp, 1), %bl


xorb %bl, -279(%rbp, 1)
popq %rbx

pushq %rbx
movq -270(%rbp, 1), %rbx


cmpq %rbx, -278(%rbp, 1)
popq %rbx

setl -279(%rbp, 1)



pushq %rbx
movb -279(%rbp, 1), %bl


andb %bl, -279(%rbp, 1)
popq %rbx

jz .L16


pushq %rbx
movq $2456, %rbx


movq %rbx, -303(%rbp, 1)

popq %rbx


pushq %rbx
movq -262(%rbp, 1), %rbx


movq %rbx, -311(%rbp, 1)
popq %rbx


pushq %rbx
movq -303(%rbp, 1), %rbx


addq %rbx, -311(%rbp, 1)
popq %rbx





movq -262(%rbp, 1), %rax


leaq -160(%rbp, 1), %r10



pushq %rbx
movq -311(%rbp, 1), %rbx


movq %rbx, 0(%r10, %rax, 8)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -287(%rbp, 1)

popq %rbx


pushq %rbx
movq -262(%rbp, 1), %rbx


movq %rbx, -295(%rbp, 1)
popq %rbx


pushq %rbx
movq -287(%rbp, 1), %rbx


addq %rbx, -295(%rbp, 1)
popq %rbx




pushq %rbx
movq -295(%rbp, 1), %rbx


movq %rbx, -262(%rbp, 1)
popq %rbx




jmp .L15

.L16:


pushq %rbx
movq $0, %rbx


movq %rbx, -319(%rbp, 1)

popq %rbx


pushq %rbx
movq -319(%rbp, 1), %rbx


movq %rbx, -327(%rbp, 1)
popq %rbx




.L18:

pushq %rbx
movq $20, %rbx


movq %rbx, -335(%rbp, 1)

popq %rbx


pushq %rbx
movq -327(%rbp, 1), %rbx


movq %rbx, -343(%rbp, 1)
popq %rbx


pushq %rbx
movb -344(%rbp, 1), %bl


xorb %bl, -344(%rbp, 1)
popq %rbx

pushq %rbx
movq -335(%rbp, 1), %rbx


cmpq %rbx, -343(%rbp, 1)
popq %rbx

setl -344(%rbp, 1)



pushq %rbx
movb -344(%rbp, 1), %bl


andb %bl, -344(%rbp, 1)
popq %rbx

jz .L19





movq -327(%rbp, 1), %rax


leaq -160(%rbp, 1), %r10



movq $.L17, %rdi


movq -327(%rbp, 1), %rsi


movq 0(%r10, %rax, 8), %rdx



call printf

movl %eax, -364(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -352(%rbp, 1)

popq %rbx


pushq %rbx
movq -327(%rbp, 1), %rbx


movq %rbx, -360(%rbp, 1)
popq %rbx


pushq %rbx
movq -352(%rbp, 1), %rbx


addq %rbx, -360(%rbp, 1)
popq %rbx




pushq %rbx
movq -360(%rbp, 1), %rbx


movq %rbx, -327(%rbp, 1)
popq %rbx




jmp .L18

.L19:


pushq %rbx
movq $0, %rbx


movq %rbx, -372(%rbp, 1)

popq %rbx


pushq %rbx
movq -372(%rbp, 1), %rbx


movq %rbx, -380(%rbp, 1)
popq %rbx




.L21:

pushq %rbx
movq $20, %rbx


movq %rbx, -388(%rbp, 1)

popq %rbx


pushq %rbx
movq -380(%rbp, 1), %rbx


movq %rbx, -396(%rbp, 1)
popq %rbx


pushq %rbx
movb -397(%rbp, 1), %bl


xorb %bl, -397(%rbp, 1)
popq %rbx

pushq %rbx
movq -388(%rbp, 1), %rbx


cmpq %rbx, -396(%rbp, 1)
popq %rbx

setl -397(%rbp, 1)



pushq %rbx
movb -397(%rbp, 1), %bl


andb %bl, -397(%rbp, 1)
popq %rbx

jz .L22





movq -380(%rbp, 1), %rax


movq -222(%rbp, 1), %r10


movq -230(%rbp, 1), %r11





movq $.L20, %rdi


movq -380(%rbp, 1), %rsi


movq 0(%r11, %rax, 8), %rdx



call printf

movl %eax, -417(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -405(%rbp, 1)

popq %rbx


pushq %rbx
movq -380(%rbp, 1), %rbx


movq %rbx, -413(%rbp, 1)
popq %rbx


pushq %rbx
movq -405(%rbp, 1), %rbx


addq %rbx, -413(%rbp, 1)
popq %rbx




pushq %rbx
movq -413(%rbp, 1), %rbx


movq %rbx, -380(%rbp, 1)
popq %rbx




jmp .L21

.L22:




movq $.L23, %rdi



call printf

movl %eax, -421(%rbp, 1)






pushq %rbx

leaq -160(%rbp, 1), %rbx

movq %rbx, -429(%rbp, 1)


popq %rbx


movq -429(%rbp, 1), %rdi


movq $160, %rsi




call sum

movq %rax, -437(%rbp, 1)




movq $.L24, %rdi


movq -437(%rbp, 1), %rsi



call printf

movl %eax, -441(%rbp, 1)






movq -222(%rbp, 1), %rsi


movq -230(%rbp, 1), %rdi




call sum

movq %rax, -449(%rbp, 1)




movq $.L25, %rdi


movq -449(%rbp, 1), %rsi



call printf

movl %eax, -453(%rbp, 1)






subq $160, %rsp

movq %rsp, %rax


leaq -160(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $160, %rcx


cld

rep movsb



call sum_20

addq $160, %rsp

movq %rax, -461(%rbp, 1)




movq $.L26, %rdi


movq -461(%rbp, 1), %rsi



call printf

movl %eax, -465(%rbp, 1)





._main:
movq %rbp, %rsp

popq %rbp

ret




.data





















































































































































.L1: .string "heeeyy  : %d\n"












































































.L4: .string "heeeyy  : %d\n"


















































.L7: .string "%d\n"
























































.L10: .string "asdas %d : %d\n"







































.L13: .string "new .data -> %d\n"








.L14: .string "new .len -> %d\n"






























































.L17: .string "STATIC %d : %d\n"









































.L20: .string "DYNAMIC asdas %d : %d\n"
































.L23: .string "----------------------------------\n"






.L24: .string "sum(static_array) = %d\n"

















.L25: .string "sum(dynamic_array) = %d\n"















.L26: .string "sum_20(static_array) = %d\n"



















