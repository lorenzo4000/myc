pushq %rbp

pushq %rax

movabsq $-8000000008, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %r10
popq %rbp



0(%r10, %rax, 8)
pushq %rbp

pushq %rax

movabsq $-8000000008, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %r10
popq %rbp



0(%r10, %rax, 8)
pushq %rbp

pushq %rax

movabsq $-16000000061, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %r10
popq %rbp



0(%r10, %rax, 8)
pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r10
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r11
popq %rbp





0(%r11, %rax, 8)
pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r10
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r11
popq %rbp





0(%r11, %rax, 8)
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
























.global main
main:
pushq %rbp

movq %rsp, %rbp

pushq %rax

movabsq $16000000320, %rax


subq %rax, %rsp

popq %rax






movq $0, %rbx



pushq %rbp

pushq %rax

movabsq $-8000000016, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp





.L1:

movq $20, %r12



pushq %rbp

pushq %rax

movabsq $-8000000016, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r13
popq %rbp



xorb %r14b, %r14b

cmpq %r12, %r13

setl %r14b



andb %r14b, %r14b

jz .L2


movq $4, %r12



pushq %rbp

pushq %rax

movabsq $-8000000016, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r15
popq %rbp



movq %r15, %rax


imulq %r12

movq %rax, %r15






pushq %rbp

pushq %rax

movabsq $-8000000016, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-8000000008, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %r10
popq %rbp




movq %r15, 0(%r10, %rax, 8)





movq $1, %r12



pushq %rbp

pushq %rax

movabsq $-8000000016, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r13
popq %rbp



addq %r12, %r13




pushq %rbp

pushq %rax

movabsq $-8000000016, %rax


addq %rax, %rbp

popq %rax


movq %r13, 0(%rbp, 1)
popq %rbp





jmp .L1

.L2:


movq $0, %r12



pushq %rbp

pushq %rax

movabsq $-8000000024, %rax


addq %rax, %rbp

popq %rax


movq %r12, 0(%rbp, 1)
popq %rbp





.L4:

pushq %rbx
movq $20, %rbx


pushq %rbp

pushq %rax

movabsq $-8000000032, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-8000000040, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-8000000041, %rax


addq %rax, %rbp

popq %rax


xorb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-8000000040, %rax


addq %rax, %rbp

popq %rax


cmpq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbp

pushq %rax

movabsq $-8000000041, %rax


addq %rax, %rbp

popq %rax


setl 0(%rbp, 1)
popq %rbp




pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-8000000041, %rax


addq %rax, %rbp

popq %rax


andb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

jz .L5





pushq %rbp

pushq %rax

movabsq $-8000000024, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-8000000008, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %r10
popq %rbp




movq $.L3, %rdi


pushq %rbp

pushq %rax

movabsq $-8000000024, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rsi
popq %rbp



movq 0(%r10, %rax, 8), %rdx



call printf

pushq %rbp

pushq %rax

movabsq $-8000000061, %rax


addq %rax, %rbp

popq %rax


movl %eax, 0(%rbp, 1)
popq %rbp







pushq %rbx
movq $1, %rbx


pushq %rbp

pushq %rax

movabsq $-8000000049, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-8000000057, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-8000000057, %rax


addq %rax, %rbp

popq %rax


addq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-8000000024, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




jmp .L4

.L5:




// copying array
pushq %rbp

pushq %rax

movabsq $-8000000008, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %rsi
popq %rbp


pushq %rbp

pushq %rax

movabsq $-16000000061, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %rdi
popq %rbp


movabsq $8000000000, %rcx


cld

rep movsb



pushq %rbx
movq $0, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000069, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000077, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




.L7:

pushq %rbx
movq $20, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000085, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000093, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-16000000094, %rax


addq %rax, %rbp

popq %rax


xorb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000093, %rax


addq %rax, %rbp

popq %rax


cmpq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbp

pushq %rax

movabsq $-16000000094, %rax


addq %rax, %rbp

popq %rax


setl 0(%rbp, 1)
popq %rbp




pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-16000000094, %rax


addq %rax, %rbp

popq %rax


andb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

jz .L8





pushq %rbp

pushq %rax

movabsq $-16000000077, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000061, %rax


addq %rax, %rbp

popq %rax


leaq 0(%rbp, 1), %r10
popq %rbp




movq $.L6, %rdi


pushq %rbp

pushq %rax

movabsq $-16000000077, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rsi
popq %rbp



movq 0(%r10, %rax, 8), %rdx



call printf

pushq %rbp

pushq %rax

movabsq $-16000000114, %rax


addq %rax, %rbp

popq %rax


movl %eax, 0(%rbp, 1)
popq %rbp







pushq %rbx
movq $1, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000102, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000110, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000110, %rax


addq %rax, %rbp

popq %rax


addq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000077, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




jmp .L7

.L8:



pushq %rbx
movq $1024, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000122, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq $1024, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000130, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbp

pushq %rax

movabsq $-16000000122, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000130, %rax


addq %rax, %rbp

popq %rax


imulq 0(%rbp, 1)
popq %rbp


pushq %rbp

pushq %rax

movabsq $-16000000122, %rax


addq %rax, %rbp

popq %rax


movq %rax, 0(%rbp, 1)
popq %rbp





pushq %rbp

pushq %rax

movabsq $-16000000122, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rdi
popq %rbp




call allocate

pushq %rbp

pushq %rax

movabsq $-16000000138, %rax


addq %rax, %rbp

popq %rax


movq %rdx, 0(%rbp, 1)
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000146, %rax


addq %rax, %rbp

popq %rax


movq %rax, 0(%rbp, 1)
popq %rbp






pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx





pushq %rbx
movq $1024, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000170, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq $1050, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000178, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbp

pushq %rax

movabsq $-16000000170, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000178, %rax


addq %rax, %rbp

popq %rax


imulq 0(%rbp, 1)
popq %rbp


pushq %rbp

pushq %rax

movabsq $-16000000170, %rax


addq %rax, %rbp

popq %rax


movq %rax, 0(%rbp, 1)
popq %rbp





pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rsi
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rdi
popq %rbp




pushq %rbp

pushq %rax

movabsq $-16000000170, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rdx
popq %rbp




call resize

pushq %rbp

pushq %rax

movabsq $-16000000186, %rax


addq %rax, %rbp

popq %rax


movq %rdx, 0(%rbp, 1)
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000194, %rax


addq %rax, %rbp

popq %rax


movq %rax, 0(%rbp, 1)
popq %rbp







pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




pushq %rbx
movq $0, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000202, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000210, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




.L9:

pushq %rbx
movq $20, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000218, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000226, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-16000000227, %rax


addq %rax, %rbp

popq %rax


xorb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000226, %rax


addq %rax, %rbp

popq %rax


cmpq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbp

pushq %rax

movabsq $-16000000227, %rax


addq %rax, %rbp

popq %rax


setl 0(%rbp, 1)
popq %rbp




pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-16000000227, %rax


addq %rax, %rbp

popq %rax


andb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

jz .L10


pushq %rbx
movq $4, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000251, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000259, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbp

pushq %rax

movabsq $-16000000259, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000251, %rax


addq %rax, %rbp

popq %rax


imulq 0(%rbp, 1)
popq %rbp


pushq %rbp

pushq %rax

movabsq $-16000000259, %rax


addq %rax, %rbp

popq %rax


movq %rax, 0(%rbp, 1)
popq %rbp







pushq %rbp

pushq %rax

movabsq $-16000000210, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r10
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r11
popq %rbp






pushq %rbx
movq 0(%rbp, 1), %rbx


movq %rbx, 0(%r11, %rax, 8)
popq %rbx





pushq %rbx
movq $1, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000235, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000243, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000243, %rax


addq %rax, %rbp

popq %rax


addq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000210, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




jmp .L9

.L10:


pushq %rbx
movq $0, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000267, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000275, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




.L12:

pushq %rbx
movq $20, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000283, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000291, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-16000000292, %rax


addq %rax, %rbp

popq %rax


xorb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000291, %rax


addq %rax, %rbp

popq %rax


cmpq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx

pushq %rbp

pushq %rax

movabsq $-16000000292, %rax


addq %rax, %rbp

popq %rax


setl 0(%rbp, 1)
popq %rbp




pushq %rbx
movb 0(%rbp, 1), %bl


pushq %rbp

pushq %rax

movabsq $-16000000292, %rax


addq %rax, %rbp

popq %rax


andb %bl, 0(%rbp, 1)
popq %rbp

popq %rbx

jz .L13





pushq %rbp

pushq %rax

movabsq $-16000000275, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rax
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000154, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r10
popq %rbp



pushq %rbp

pushq %rax

movabsq $-16000000162, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %r11
popq %rbp






movq $.L11, %rdi


pushq %rbp

pushq %rax

movabsq $-16000000275, %rax


addq %rax, %rbp

popq %rax


movq 0(%rbp, 1), %rsi
popq %rbp



movq 0(%r11, %rax, 8), %rdx



call printf

pushq %rbp

pushq %rax

movabsq $-16000000312, %rax


addq %rax, %rbp

popq %rax


movl %eax, 0(%rbp, 1)
popq %rbp







pushq %rbx
movq $1, %rbx


pushq %rbp

pushq %rax

movabsq $-16000000300, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp


popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000308, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx


pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000308, %rax


addq %rax, %rbp

popq %rax


addq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




pushq %rbx
movq 0(%rbp, 1), %rbx


pushq %rbp

pushq %rax

movabsq $-16000000275, %rax


addq %rax, %rbp

popq %rax


movq %rbx, 0(%rbp, 1)
popq %rbp

popq %rbx




jmp .L12

.L13:




._main:
movq %rbp, %rsp

popq %rbp

ret




.data












































































































































































.L3: .string "%d : %d\n"














































.L6: .string "%d : %d\n"







































































































































.L11: .string "%d : %d\n"




































