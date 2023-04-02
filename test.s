leaq -8200(%rbp, 1), %r10


0(%r10, %rax, 8)
leaq -8200(%rbp, 1), %r10


0(%r10, %rax, 8)
leaq -16445(%rbp, 1), %r10


0(%r10, %rax, 8)
movq -16530(%rbp, 1), %r10


movq -16538(%rbp, 1), %r11




0(%r11, %rax, 8)
movq -16530(%rbp, 1), %r10


movq -16538(%rbp, 1), %r11




0(%r11, %rax, 8)
leaq -8200(%rbp, 1), %r10


0(%r10, %rax, 8)
movq -16530(%rbp, 1), %r10


movq -16538(%rbp, 1), %r11




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

subq $16800, %rsp






movq $0, %rbx



movq %rbx, -8208(%rbp, 1)




.L1:

movq $20, %r12



movq -8208(%rbp, 1), %r13


xorb %r14b, %r14b

cmpq %r12, %r13

setl %r14b



andb %r14b, %r14b

jz .L2


movq $4, %r12



movq -8208(%rbp, 1), %r15


movq %r15, %rax


imulq %r12

movq %rax, %r15






movq -8208(%rbp, 1), %rax


leaq -8200(%rbp, 1), %r10



movq %r15, 0(%r10, %rax, 8)





movq $1, %r12



movq -8208(%rbp, 1), %r13


addq %r12, %r13




movq %r13, -8208(%rbp, 1)




jmp .L1

.L2:


movq $0, %r12



movq %r12, -8216(%rbp, 1)




.L4:

pushq %rbx
movq $20, %rbx


movq %rbx, -8224(%rbp, 1)

popq %rbx


pushq %rbx
movq -8216(%rbp, 1), %rbx


movq %rbx, -8232(%rbp, 1)
popq %rbx


pushq %rbx
movb -8233(%rbp, 1), %bl


xorb %bl, -8233(%rbp, 1)
popq %rbx

pushq %rbx
movq -8224(%rbp, 1), %rbx


cmpq %rbx, -8232(%rbp, 1)
popq %rbx

setl -8233(%rbp, 1)



pushq %rbx
movb -8233(%rbp, 1), %bl


andb %bl, -8233(%rbp, 1)
popq %rbx

jz .L5





movq -8216(%rbp, 1), %rax


leaq -8200(%rbp, 1), %r10



movq $.L3, %rdi


movq -8216(%rbp, 1), %rsi


movq 0(%r10, %rax, 8), %rdx



call printf

movl %eax, -8253(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -8241(%rbp, 1)

popq %rbx


pushq %rbx
movq -8216(%rbp, 1), %rbx


movq %rbx, -8249(%rbp, 1)
popq %rbx


pushq %rbx
movq -8241(%rbp, 1), %rbx


addq %rbx, -8249(%rbp, 1)
popq %rbx




pushq %rbx
movq -8249(%rbp, 1), %rbx


movq %rbx, -8216(%rbp, 1)
popq %rbx




jmp .L4

.L5:




// copying array
leaq -8200(%rbp, 1), %rsi

leaq -16445(%rbp, 1), %rdi

movq $8192, %rcx


cld

rep movsb



pushq %rbx
movq $0, %rbx


movq %rbx, -16453(%rbp, 1)

popq %rbx


pushq %rbx
movq -16453(%rbp, 1), %rbx


movq %rbx, -16461(%rbp, 1)
popq %rbx




.L7:

pushq %rbx
movq $20, %rbx


movq %rbx, -16469(%rbp, 1)

popq %rbx


pushq %rbx
movq -16461(%rbp, 1), %rbx


movq %rbx, -16477(%rbp, 1)
popq %rbx


pushq %rbx
movb -16478(%rbp, 1), %bl


xorb %bl, -16478(%rbp, 1)
popq %rbx

pushq %rbx
movq -16469(%rbp, 1), %rbx


cmpq %rbx, -16477(%rbp, 1)
popq %rbx

setl -16478(%rbp, 1)



pushq %rbx
movb -16478(%rbp, 1), %bl


andb %bl, -16478(%rbp, 1)
popq %rbx

jz .L8





movq -16461(%rbp, 1), %rax


leaq -16445(%rbp, 1), %r10



movq $.L6, %rdi


movq -16461(%rbp, 1), %rsi


movq 0(%r10, %rax, 8), %rdx



call printf

movl %eax, -16498(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -16486(%rbp, 1)

popq %rbx


pushq %rbx
movq -16461(%rbp, 1), %rbx


movq %rbx, -16494(%rbp, 1)
popq %rbx


pushq %rbx
movq -16486(%rbp, 1), %rbx


addq %rbx, -16494(%rbp, 1)
popq %rbx




pushq %rbx
movq -16494(%rbp, 1), %rbx


movq %rbx, -16461(%rbp, 1)
popq %rbx




jmp .L7

.L8:



pushq %rbx
movq $1024, %rbx


movq %rbx, -16506(%rbp, 1)

popq %rbx


movq -16506(%rbp, 1), %rdi



call allocate

movq %rdx, -16514(%rbp, 1)


movq %rax, -16522(%rbp, 1)





pushq %rbx
movq -16514(%rbp, 1), %rbx


movq %rbx, -16530(%rbp, 1)
popq %rbx


pushq %rbx
movq -16522(%rbp, 1), %rbx


movq %rbx, -16538(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -16546(%rbp, 1)

popq %rbx


pushq %rbx
movq -16546(%rbp, 1), %rbx


movq %rbx, -16554(%rbp, 1)
popq %rbx




.L9:

pushq %rbx
movq $20, %rbx


movq %rbx, -16562(%rbp, 1)

popq %rbx


pushq %rbx
movq -16554(%rbp, 1), %rbx


movq %rbx, -16570(%rbp, 1)
popq %rbx


pushq %rbx
movb -16571(%rbp, 1), %bl


xorb %bl, -16571(%rbp, 1)
popq %rbx

pushq %rbx
movq -16562(%rbp, 1), %rbx


cmpq %rbx, -16570(%rbp, 1)
popq %rbx

setl -16571(%rbp, 1)



pushq %rbx
movb -16571(%rbp, 1), %bl


andb %bl, -16571(%rbp, 1)
popq %rbx

jz .L10


pushq %rbx
movq $4, %rbx


movq %rbx, -16595(%rbp, 1)

popq %rbx


pushq %rbx
movq -16554(%rbp, 1), %rbx


movq %rbx, -16603(%rbp, 1)
popq %rbx


movq -16603(%rbp, 1), %rax


imulq -16595(%rbp, 1)

movq %rax, -16603(%rbp, 1)






movq -16554(%rbp, 1), %rax


movq -16530(%rbp, 1), %r10


movq -16538(%rbp, 1), %r11





pushq %rbx
movq -16603(%rbp, 1), %rbx


movq %rbx, 0(%r11, %rax, 8)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -16579(%rbp, 1)

popq %rbx


pushq %rbx
movq -16554(%rbp, 1), %rbx


movq %rbx, -16587(%rbp, 1)
popq %rbx


pushq %rbx
movq -16579(%rbp, 1), %rbx


addq %rbx, -16587(%rbp, 1)
popq %rbx




pushq %rbx
movq -16587(%rbp, 1), %rbx


movq %rbx, -16554(%rbp, 1)
popq %rbx




jmp .L9

.L10:


pushq %rbx
movq $0, %rbx


movq %rbx, -16611(%rbp, 1)

popq %rbx


pushq %rbx
movq -16611(%rbp, 1), %rbx


movq %rbx, -16619(%rbp, 1)
popq %rbx




.L12:

pushq %rbx
movq $20, %rbx


movq %rbx, -16627(%rbp, 1)

popq %rbx


pushq %rbx
movq -16619(%rbp, 1), %rbx


movq %rbx, -16635(%rbp, 1)
popq %rbx


pushq %rbx
movb -16636(%rbp, 1), %bl


xorb %bl, -16636(%rbp, 1)
popq %rbx

pushq %rbx
movq -16627(%rbp, 1), %rbx


cmpq %rbx, -16635(%rbp, 1)
popq %rbx

setl -16636(%rbp, 1)



pushq %rbx
movb -16636(%rbp, 1), %bl


andb %bl, -16636(%rbp, 1)
popq %rbx

jz .L13





movq -16619(%rbp, 1), %rax


movq -16530(%rbp, 1), %r10


movq -16538(%rbp, 1), %r11





movq $.L11, %rdi


movq -16619(%rbp, 1), %rsi


movq 0(%r11, %rax, 8), %rdx



call printf

movl %eax, -16656(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -16644(%rbp, 1)

popq %rbx


pushq %rbx
movq -16619(%rbp, 1), %rbx


movq %rbx, -16652(%rbp, 1)
popq %rbx


pushq %rbx
movq -16644(%rbp, 1), %rbx


addq %rbx, -16652(%rbp, 1)
popq %rbx




pushq %rbx
movq -16652(%rbp, 1), %rbx


movq %rbx, -16619(%rbp, 1)
popq %rbx




jmp .L12

.L13:





movq $.L14, %rdi


movq -16538(%rbp, 1), %rsi



call printf

movl %eax, -16660(%rbp, 1)






pushq %rbx

leaq -8200(%rbp, 1), %rbx

movq %rbx, -16668(%rbp, 1)


popq %rbx


pushq %rbx
movq -16668(%rbp, 1), %rbx


movq %rbx, -16538(%rbp, 1)
popq %rbx


pushq %rbx
movq $8192, %rbx


movq %rbx, -16530(%rbp, 1)

popq %rbx





movq $.L15, %rdi


movq -16538(%rbp, 1), %rsi



call printf

movl %eax, -16672(%rbp, 1)




pushq %rbx
movq $0, %rbx


movq %rbx, -16680(%rbp, 1)

popq %rbx


pushq %rbx
movq -16680(%rbp, 1), %rbx


movq %rbx, -16688(%rbp, 1)
popq %rbx




.L16:

pushq %rbx
movq $20, %rbx


movq %rbx, -16696(%rbp, 1)

popq %rbx


pushq %rbx
movq -16688(%rbp, 1), %rbx


movq %rbx, -16704(%rbp, 1)
popq %rbx


pushq %rbx
movb -16705(%rbp, 1), %bl


xorb %bl, -16705(%rbp, 1)
popq %rbx

pushq %rbx
movq -16696(%rbp, 1), %rbx


cmpq %rbx, -16704(%rbp, 1)
popq %rbx

setl -16705(%rbp, 1)



pushq %rbx
movb -16705(%rbp, 1), %bl


andb %bl, -16705(%rbp, 1)
popq %rbx

jz .L17


pushq %rbx
movq $2456, %rbx


movq %rbx, -16729(%rbp, 1)

popq %rbx


pushq %rbx
movq -16688(%rbp, 1), %rbx


movq %rbx, -16737(%rbp, 1)
popq %rbx


pushq %rbx
movq -16729(%rbp, 1), %rbx


addq %rbx, -16737(%rbp, 1)
popq %rbx





movq -16688(%rbp, 1), %rax


leaq -8200(%rbp, 1), %r10



pushq %rbx
movq -16737(%rbp, 1), %rbx


movq %rbx, 0(%r10, %rax, 8)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -16713(%rbp, 1)

popq %rbx


pushq %rbx
movq -16688(%rbp, 1), %rbx


movq %rbx, -16721(%rbp, 1)
popq %rbx


pushq %rbx
movq -16713(%rbp, 1), %rbx


addq %rbx, -16721(%rbp, 1)
popq %rbx




pushq %rbx
movq -16721(%rbp, 1), %rbx


movq %rbx, -16688(%rbp, 1)
popq %rbx




jmp .L16

.L17:


pushq %rbx
movq $0, %rbx


movq %rbx, -16745(%rbp, 1)

popq %rbx


pushq %rbx
movq -16745(%rbp, 1), %rbx


movq %rbx, -16753(%rbp, 1)
popq %rbx




.L19:

pushq %rbx
movq $20, %rbx


movq %rbx, -16761(%rbp, 1)

popq %rbx


pushq %rbx
movq -16753(%rbp, 1), %rbx


movq %rbx, -16769(%rbp, 1)
popq %rbx


pushq %rbx
movb -16770(%rbp, 1), %bl


xorb %bl, -16770(%rbp, 1)
popq %rbx

pushq %rbx
movq -16761(%rbp, 1), %rbx


cmpq %rbx, -16769(%rbp, 1)
popq %rbx

setl -16770(%rbp, 1)



pushq %rbx
movb -16770(%rbp, 1), %bl


andb %bl, -16770(%rbp, 1)
popq %rbx

jz .L20





movq -16753(%rbp, 1), %rax


movq -16530(%rbp, 1), %r10


movq -16538(%rbp, 1), %r11





movq $.L18, %rdi


movq -16753(%rbp, 1), %rsi


movq 0(%r11, %rax, 8), %rdx



call printf

movl %eax, -16790(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -16778(%rbp, 1)

popq %rbx


pushq %rbx
movq -16753(%rbp, 1), %rbx


movq %rbx, -16786(%rbp, 1)
popq %rbx


pushq %rbx
movq -16778(%rbp, 1), %rbx


addq %rbx, -16786(%rbp, 1)
popq %rbx




pushq %rbx
movq -16786(%rbp, 1), %rbx


movq %rbx, -16753(%rbp, 1)
popq %rbx




jmp .L19

.L20:




._main:
movq %rbp, %rsp

popq %rbp

ret




.data











































































































































































.L3: .string "%d : %d\n"














































.L6: .string "%d : %d\n"






































































































.L11: .string "%d : %d\n"
































.L14: .string "old .data -> %d\n"

















.L15: .string "new .data -> %d\n"






























































.L18: .string "asdas %d : %d\n"




































