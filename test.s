leaq -168(%rbp, 1), %r10

0(%r10, %rax, 8)
leaq -168(%rbp, 1), %r10

0(%r10, %rax, 8)
movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11



0(%r11, %rax, 1)
movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11



0(%r11, %rax, 1)
movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11



0(%r11, %rax, 1)
movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11



0(%r11, %rax, 1)
.text

























.global allocate
allocate:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp

pushq %rbx
movabsq $0, %rbx

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
movabsq $0, %rbx

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
subq $496, %rsp




movabsq $0, %rbx


movq %rbx, -176(%rbp, 1)



.L1:

movabsq $20, %r12


movq -176(%rbp, 1), %r13

xorb %r14b, %r14b
cmpq %r12, %r13
setl %r14b


andb %r14b, %r14b
jz .L2

movabsq $4, %r12


movq -176(%rbp, 1), %r15

movq %r15, %rax

imulq %r12
movq %rax, %r15





movq -176(%rbp, 1), %rax

leaq -168(%rbp, 1), %r10


movq %r15, 0(%r10, %rax, 8)




movabsq $1, %r12


movq -176(%rbp, 1), %r13

addq %r12, %r13



movq %r13, -176(%rbp, 1)



jmp .L1
.L2:


movabsq $0, %r12


movq %r12, -184(%rbp, 1)



.L4:

pushq %rbx
movabsq $20, %rbx

movq %rbx, -192(%rbp, 1)
popq %rbx


pushq %rbx
movq -184(%rbp, 1), %rbx

movq %rbx, -200(%rbp, 1)
popq %rbx


pushq %rbx
movb -201(%rbp, 1), %bl

xorb %bl, -201(%rbp, 1)
popq %rbx

pushq %rbx
movq -192(%rbp, 1), %rbx

cmpq %rbx, -200(%rbp, 1)
popq %rbx

setl -201(%rbp, 1)


pushq %rbx
movb -201(%rbp, 1), %bl

andb %bl, -201(%rbp, 1)
popq %rbx

jz .L5




movq -184(%rbp, 1), %rax

leaq -168(%rbp, 1), %r10


movq $.L3, %rdi

movq -184(%rbp, 1), %rsi

movq 0(%r10, %rax, 8), %rdx


call printf
movl %eax, -221(%rbp, 1)





pushq %rbx
movabsq $1, %rbx

movq %rbx, -209(%rbp, 1)
popq %rbx


pushq %rbx
movq -184(%rbp, 1), %rbx

movq %rbx, -217(%rbp, 1)
popq %rbx


pushq %rbx
movq -209(%rbp, 1), %rbx

addq %rbx, -217(%rbp, 1)
popq %rbx




pushq %rbx
movq -217(%rbp, 1), %rbx

movq %rbx, -184(%rbp, 1)
popq %rbx




jmp .L4
.L5:



pushq %rbx
movabsq $1024, %rbx

movq %rbx, -229(%rbp, 1)
popq %rbx


pushq %rbx
movabsq $1024, %rbx

movq %rbx, -237(%rbp, 1)
popq %rbx


movq -229(%rbp, 1), %rax

imulq -237(%rbp, 1)
movq %rax, -229(%rbp, 1)



movq -229(%rbp, 1), %rdi


call allocate
movq %rdx, -245(%rbp, 1)

movq %rax, -253(%rbp, 1)




pushq %rbx
movq -245(%rbp, 1), %rbx

movq %rbx, -261(%rbp, 1)
popq %rbx


pushq %rbx
movq -253(%rbp, 1), %rbx

movq %rbx, -269(%rbp, 1)
popq %rbx







pushq %rbx
movabsq $64, %rbx

movq %rbx, -277(%rbp, 1)
popq %rbx


pushq %rbx
movq -277(%rbp, 1), %rbx

movq %rbx, -285(%rbp, 1)
popq %rbx


movabsq $-1, %rax

andq %rax, -285(%rbp, 1)

pushq %rbx
movq -261(%rbp, 1), %rbx

movq %rbx, -293(%rbp, 1)
popq %rbx


xorq %rdx, %rdx
xorq %rax, %rax
movq -293(%rbp, 1), %rax

idivq -285(%rbp, 1)
movq %rax, -293(%rbp, 1)



movq $.L6, %rdi

movq -293(%rbp, 1), %rsi


call printf
movl %eax, -297(%rbp, 1)



pushq %rbx
movabsq $64, %rbx

movq %rbx, -313(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $0, %rbx

movq %rbx, -305(%rbp, 1)
popq %rbx


movq -305(%rbp, 1), %rax

movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11




pushq %rbx
movq -313(%rbp, 1), %rbx

movq %rbx, 0(%r11, %rax, 1)
popq %rbx




pushq %rbx
movabsq $1024, %rbx

movq %rbx, -321(%rbp, 1)
popq %rbx


pushq %rbx
movabsq $1050, %rbx

movq %rbx, -329(%rbp, 1)
popq %rbx


movq -321(%rbp, 1), %rax

imulq -329(%rbp, 1)
movq %rax, -321(%rbp, 1)



movq -261(%rbp, 1), %rsi

movq -269(%rbp, 1), %rdi


movq -321(%rbp, 1), %rdx


call resize
movq %rdx, -337(%rbp, 1)

movq %rax, -345(%rbp, 1)





pushq %rbx
movq -337(%rbp, 1), %rbx

movq %rbx, -261(%rbp, 1)
popq %rbx


pushq %rbx
movq -345(%rbp, 1), %rbx

movq %rbx, -269(%rbp, 1)
popq %rbx







pushq %rbx
movabsq $64, %rbx

movq %rbx, -353(%rbp, 1)
popq %rbx


pushq %rbx
movq -353(%rbp, 1), %rbx

movq %rbx, -361(%rbp, 1)
popq %rbx


movabsq $-1, %rax

andq %rax, -361(%rbp, 1)

pushq %rbx
movq -261(%rbp, 1), %rbx

movq %rbx, -369(%rbp, 1)
popq %rbx


xorq %rdx, %rdx
xorq %rax, %rax
movq -369(%rbp, 1), %rax

idivq -361(%rbp, 1)
movq %rax, -369(%rbp, 1)



movq $.L7, %rdi

movq -369(%rbp, 1), %rsi


call printf
movl %eax, -373(%rbp, 1)





pushq %rbx
movabsq $0, %rbx

movq %rbx, -381(%rbp, 1)
popq %rbx


movq -381(%rbp, 1), %rax

movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11




movq $.L8, %rdi

movq 0(%r11, %rax, 1), %rsi


call printf
movl %eax, -385(%rbp, 1)



pushq %rbx
movabsq $0, %rbx

movq %rbx, -393(%rbp, 1)
popq %rbx


pushq %rbx
movq -393(%rbp, 1), %rbx

movq %rbx, -401(%rbp, 1)
popq %rbx




.L9:

pushq %rbx
movabsq $20, %rbx

movq %rbx, -409(%rbp, 1)
popq %rbx


pushq %rbx
movq -401(%rbp, 1), %rbx

movq %rbx, -417(%rbp, 1)
popq %rbx


pushq %rbx
movb -418(%rbp, 1), %bl

xorb %bl, -418(%rbp, 1)
popq %rbx

pushq %rbx
movq -409(%rbp, 1), %rbx

cmpq %rbx, -417(%rbp, 1)
popq %rbx

setl -418(%rbp, 1)


pushq %rbx
movb -418(%rbp, 1), %bl

andb %bl, -418(%rbp, 1)
popq %rbx

jz .L10
pushq %rbx
movabsq $69, %rbx

movq %rbx, -442(%rbp, 1)
popq %rbx




movq -401(%rbp, 1), %rax

movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11




pushq %rbx
movq -442(%rbp, 1), %rbx

movq %rbx, 0(%r11, %rax, 1)
popq %rbx





pushq %rbx
movabsq $1, %rbx

movq %rbx, -426(%rbp, 1)
popq %rbx


pushq %rbx
movq -401(%rbp, 1), %rbx

movq %rbx, -434(%rbp, 1)
popq %rbx


pushq %rbx
movq -426(%rbp, 1), %rbx

addq %rbx, -434(%rbp, 1)
popq %rbx




pushq %rbx
movq -434(%rbp, 1), %rbx

movq %rbx, -401(%rbp, 1)
popq %rbx




jmp .L9
.L10:


pushq %rbx
movabsq $0, %rbx

movq %rbx, -450(%rbp, 1)
popq %rbx


pushq %rbx
movq -450(%rbp, 1), %rbx

movq %rbx, -458(%rbp, 1)
popq %rbx




.L12:

pushq %rbx
movabsq $20, %rbx

movq %rbx, -466(%rbp, 1)
popq %rbx


pushq %rbx
movq -458(%rbp, 1), %rbx

movq %rbx, -474(%rbp, 1)
popq %rbx


pushq %rbx
movb -475(%rbp, 1), %bl

xorb %bl, -475(%rbp, 1)
popq %rbx

pushq %rbx
movq -466(%rbp, 1), %rbx

cmpq %rbx, -474(%rbp, 1)
popq %rbx

setl -475(%rbp, 1)


pushq %rbx
movb -475(%rbp, 1), %bl

andb %bl, -475(%rbp, 1)
popq %rbx

jz .L13




movq -458(%rbp, 1), %rax

movq -261(%rbp, 1), %r10

movq -269(%rbp, 1), %r11




movq $.L11, %rdi

movq -458(%rbp, 1), %rsi

movq 0(%r11, %rax, 1), %rdx


call printf
movl %eax, -495(%rbp, 1)





pushq %rbx
movabsq $1, %rbx

movq %rbx, -483(%rbp, 1)
popq %rbx


pushq %rbx
movq -458(%rbp, 1), %rbx

movq %rbx, -491(%rbp, 1)
popq %rbx


pushq %rbx
movq -483(%rbp, 1), %rbx

addq %rbx, -491(%rbp, 1)
popq %rbx




pushq %rbx
movq -491(%rbp, 1), %rbx

movq %rbx, -458(%rbp, 1)
popq %rbx




jmp .L12
.L13:




._main:
movq %rbp, %rsp
popq %rbp
ret



.data








































































































































































.L3: .string "%d : %d\n"


















































.L6: .string "%d\n"





























































.L7: .string "%d\n"




















.L8: .string "%d\n"






































































.L11: .string "%d : %d\n"




































