struct    has padding of  0
struct    has padding of  0
[[false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false true false false false] [false false false false false false] [false true false false false false] [false false true false false false] [false true false false false false] [false false true false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false]]
.text













































.string "\0allocate"
.global allocate
allocate:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -233(%rbp, 1)

popq %rbx




movq %rdi, -233(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -249(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





movq -233(%rbp, 1), %rdi



movq $0, %rax


call malloc

movq %rax, %rbx







movq %rbx, -249(%rbp, 1)




movq -233(%rbp, 1), %r12





movq %r12, -241(%rbp, 1)




movq -241(%rbp, 1), %rdx


movq -249(%rbp, 1), %rax



jmp ._allocate





._allocate:
movq %rbp, %rsp

popq %rbp

ret



.string "\0resize"
.global resize
resize:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $0, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx




movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movq %rdx, -24(%rbp, 1)








movq -16(%rbp, 1), %rdi


movq -24(%rbp, 1), %rsi



movq $0, %rax


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





.string "\0flip32"
.global flip32
flip32:
pushq %rbp

movq %rsp, %rbp

subq $48, %rsp



movl $0, -40(%rbp, 1)



movl %edi, -40(%rbp, 1)




movl $0, %ebx



movl %ebx, -44(%rbp, 1)





movl $255, %r12d



movl $0, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -40(%rbp, 1), %r13d


andl %r12d, %r13d



movl $24, %r12d



movl %r12d, %ecx


shll %cl, %r13d



orl %r13d, -44(%rbp, 1)





movl $255, %r12d



movl $8, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -40(%rbp, 1), %r13d


andl %r12d, %r13d



movl $8, %r12d



movl %r12d, %ecx


shll %cl, %r13d



orl %r13d, -44(%rbp, 1)





movl $255, %r12d



movl $16, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -40(%rbp, 1), %r13d


andl %r12d, %r13d



movl $8, %r12d



movl %r12d, %ecx


shrl %cl, %r13d



orl %r13d, -44(%rbp, 1)





movl $255, %r12d



movl $24, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -40(%rbp, 1), %r13d


andl %r12d, %r13d



movl $24, %r12d



movl %r12d, %ecx


shrl %cl, %r13d



orl %r13d, -44(%rbp, 1)




movl -44(%rbp, 1), %eax


jmp ._flip32





._flip32:
movq %rbp, %rsp

popq %rbp

ret



.string "\0read_dataset_image"
.global read_dataset_image
read_dataset_image:
pushq %rbp

movq %rsp, %rbp

subq $480, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx



movq $0, %rax


call open

movl %eax, %r13d




movl %r13d, -20(%rbp, 1)




movl $0, %r14d



movl -20(%rbp, 1), %r15d


pushq %rbx

xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


xorb %bl, -21(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setl -21(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


andb %bl, -21(%rbp, 1)
popq %rbx



jz .L2





movq $.L1, %rdi


movq -16(%rbp, 1), %rsi



movq $0, %rax


call printf

movl %eax, %r14d




jmp ._read_dataset_image





.L2:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx


movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -41(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -41(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -57(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -65(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -57(%rbp, 1), %rbx


cmpq %rbx, -65(%rbp, 1)
popq %rbx



setb -66(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx



jz .L4



movq $.L3, %rdi



movq $0, %rax


call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_image





.L4:



movl -25(%rbp, 1), %edi



movq $0, %rax


call flip32

movl %eax, -74(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -74(%rbp, 1), %ebx


movl %ebx, -78(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -78(%rbp, 1), %ebx


movl %ebx, -25(%rbp, 1)
popq %rbx








movq $.L5, %rdi


movl -25(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -82(%rbp, 1)




movl $0, -86(%rbp, 1)




pushq %rbx


leaq -86(%rbp, 1), %rbx

movq %rbx, -94(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -102(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq -94(%rbp, 1), %rsi


movq -102(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -110(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -110(%rbp, 1), %rbx


movq %rbx, -118(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -118(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -126(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -134(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


xorb %bl, -135(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -126(%rbp, 1), %rbx


cmpq %rbx, -134(%rbp, 1)
popq %rbx



setb -135(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


andb %bl, -135(%rbp, 1)
popq %rbx



jz .L7



movq $.L6, %rdi



movq $0, %rax


call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_image





.L7:



movl -86(%rbp, 1), %edi



movq $0, %rax


call flip32

movl %eax, -143(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -143(%rbp, 1), %ebx


movl %ebx, -147(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -147(%rbp, 1), %ebx


movl %ebx, -86(%rbp, 1)
popq %rbx








movq $.L8, %rdi


movl -86(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -151(%rbp, 1)




movl $0, -155(%rbp, 1)




pushq %rbx


leaq -155(%rbp, 1), %rbx

movq %rbx, -163(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -171(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq -163(%rbp, 1), %rsi


movq -171(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -179(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -179(%rbp, 1), %rbx


movq %rbx, -187(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -187(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -195(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -203(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -204(%rbp, 1), %bl


xorb %bl, -204(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -195(%rbp, 1), %rbx


cmpq %rbx, -203(%rbp, 1)
popq %rbx



setb -204(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -204(%rbp, 1), %bl


andb %bl, -204(%rbp, 1)
popq %rbx



jz .L10



movq $.L9, %rdi



movq $0, %rax


call printf

movl %eax, -208(%rbp, 1)




jmp ._read_dataset_image





.L10:



movl -155(%rbp, 1), %edi



movq $0, %rax


call flip32

movl %eax, -212(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -212(%rbp, 1), %ebx


movl %ebx, -216(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -216(%rbp, 1), %ebx


movl %ebx, -155(%rbp, 1)
popq %rbx








movq $.L11, %rdi


movl -155(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -220(%rbp, 1)




movl $0, -224(%rbp, 1)




pushq %rbx


leaq -224(%rbp, 1), %rbx

movq %rbx, -232(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -240(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq -232(%rbp, 1), %rsi


movq -240(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -248(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -248(%rbp, 1), %rbx


movq %rbx, -256(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -256(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -264(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -272(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -273(%rbp, 1), %bl


xorb %bl, -273(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -264(%rbp, 1), %rbx


cmpq %rbx, -272(%rbp, 1)
popq %rbx



setb -273(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -273(%rbp, 1), %bl


andb %bl, -273(%rbp, 1)
popq %rbx



jz .L13



movq $.L12, %rdi



movq $0, %rax


call printf

movl %eax, -277(%rbp, 1)




jmp ._read_dataset_image





.L13:



movl -224(%rbp, 1), %edi



movq $0, %rax


call flip32

movl %eax, -281(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -281(%rbp, 1), %ebx


movl %ebx, -285(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -285(%rbp, 1), %ebx


movl %ebx, -224(%rbp, 1)
popq %rbx








movq $.L14, %rdi


movl -224(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -289(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -155(%rbp, 1), %ebx


movl %ebx, -293(%rbp, 1)
popq %rbx




movl -293(%rbp, 1), %eax


imull -224(%rbp, 1), %eax

movl %eax, -293(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -86(%rbp, 1), %ebx


movl %ebx, -297(%rbp, 1)
popq %rbx




movl -297(%rbp, 1), %eax


imull -293(%rbp, 1), %eax

movl %eax, -297(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -297(%rbp, 1), %ebx


movl %ebx, -301(%rbp, 1)
popq %rbx








movq $.L15, %rdi


movl -301(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -305(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -345(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





pushq %rbx

xorq %rbx, %rbx
movq -301(%rbp, 1), %rbx


movq %rbx, -313(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -313(%rbp, 1)


movq -313(%rbp, 1), %rdi



movq $0, %rax


call allocate

movq %rdx, -321(%rbp, 1)


movq %rax, -329(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -321(%rbp, 1), %rbx


movq %rbx, -337(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -329(%rbp, 1), %rbx


movq %rbx, -345(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -337(%rbp, 1), %rax


pushq %rbx


movq $784, %rbx


movq %rbx, -353(%rbp, 1)

popq %rbx



idivq -353(%rbp, 1)

movq %rax, -337(%rbp, 1)





movl $0, -357(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -357(%rbp, 1), %ebx


movl %ebx, -361(%rbp, 1)
popq %rbx






.L19:


pushq %rbx

xorq %rbx, %rbx
movl -361(%rbp, 1), %ebx


movl %ebx, -365(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -366(%rbp, 1), %bl


xorb %bl, -366(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -86(%rbp, 1), %ebx


cmpl %ebx, -365(%rbp, 1)
popq %rbx



setb -366(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -366(%rbp, 1), %bl


andb %bl, -366(%rbp, 1)
popq %rbx



jz .L20




pushq %rbx

xorq %rbx, %rbx
movl -361(%rbp, 1), %ebx


movl %ebx, -374(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -374(%rbp, 1)

pushq %r10


pushq %r11


movq -337(%rbp, 1), %r10


movq -345(%rbp, 1), %r11



movq %r11, -382(%rbp, 1)


movq %r10, -390(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -390(%rbp, 1), %rbx


cmpq %rbx, -374(%rbp, 1)
popq %rbx



jl .L16

movq -374(%rbp, 1), %rsi


movq -390(%rbp, 1), %rdx


call err_oob

.L16:
pushq %rbx

xorq %rbx, %rbx
movq -374(%rbp, 1), %rbx


movq %rbx, -398(%rbp, 1)
popq %rbx




movq -398(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -398(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


pushq %r12


xorq %r12, %r12

movq -382(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -398(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -406(%rbp, 1)


popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -414(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -414(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -224(%rbp, 1), %rbx


movq %rbx, -422(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -422(%rbp, 1)


movq -414(%rbp, 1), %rax


imulq -422(%rbp, 1), %rax

movq %rax, -414(%rbp, 1)




movl -20(%rbp, 1), %edi


movq -406(%rbp, 1), %rsi


movq -414(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -430(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -430(%rbp, 1), %rbx


movq %rbx, -438(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -438(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -446(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -446(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -224(%rbp, 1), %rbx


movq %rbx, -454(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -454(%rbp, 1)


movq -446(%rbp, 1), %rax


imulq -454(%rbp, 1), %rax

movq %rax, -446(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -462(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -463(%rbp, 1), %bl


xorb %bl, -463(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -446(%rbp, 1), %rbx


cmpq %rbx, -462(%rbp, 1)
popq %rbx



setb -463(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -463(%rbp, 1), %bl


andb %bl, -463(%rbp, 1)
popq %rbx



jz .L18



movq $.L17, %rdi



movq $0, %rax


call printf

movl %eax, -467(%rbp, 1)




jmp ._read_dataset_image





.L18:




incl -361(%rbp, 1)




jmp .L19

.L20:



movq -337(%rbp, 1), %rdx


movq -345(%rbp, 1), %rax



jmp ._read_dataset_image





._read_dataset_image:
movq %rbp, %rsp

popq %rbp

ret



.string "\0read_dataset_label"
.global read_dataset_label
read_dataset_label:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx



movq $0, %rax


call open

movl %eax, %r13d




movl %r13d, -20(%rbp, 1)




movl $0, %r14d



movl -20(%rbp, 1), %r15d


pushq %rbx

xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


xorb %bl, -21(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setl -21(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


andb %bl, -21(%rbp, 1)
popq %rbx



jz .L22





movq $.L21, %rdi


movq -16(%rbp, 1), %rsi



movq $0, %rax


call printf

movl %eax, %r14d




jmp ._read_dataset_label





.L22:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx


movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -41(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -41(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -57(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -65(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -57(%rbp, 1), %rbx


cmpq %rbx, -65(%rbp, 1)
popq %rbx



setb -66(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx



jz .L24



movq $.L23, %rdi



movq $0, %rax


call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_label





.L24:



movl -25(%rbp, 1), %edi



movq $0, %rax


call flip32

movl %eax, -74(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -74(%rbp, 1), %ebx


movl %ebx, -78(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -78(%rbp, 1), %ebx


movl %ebx, -25(%rbp, 1)
popq %rbx








movq $.L25, %rdi


movl -25(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -82(%rbp, 1)




movl $0, -86(%rbp, 1)




pushq %rbx


leaq -86(%rbp, 1), %rbx

movq %rbx, -94(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -102(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq -94(%rbp, 1), %rsi


movq -102(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -110(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -110(%rbp, 1), %rbx


movq %rbx, -118(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -118(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -126(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -134(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


xorb %bl, -135(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -126(%rbp, 1), %rbx


cmpq %rbx, -134(%rbp, 1)
popq %rbx



setb -135(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


andb %bl, -135(%rbp, 1)
popq %rbx



jz .L27



movq $.L26, %rdi



movq $0, %rax


call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_label





.L27:



movl -86(%rbp, 1), %edi



movq $0, %rax


call flip32

movl %eax, -143(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -143(%rbp, 1), %ebx


movl %ebx, -147(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -147(%rbp, 1), %ebx


movl %ebx, -86(%rbp, 1)
popq %rbx








movq $.L28, %rdi


movl -86(%rbp, 1), %esi



movq $0, %rax


call printf

movl %eax, -151(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -191(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





pushq %rbx

xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -159(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -159(%rbp, 1)


movq -159(%rbp, 1), %rdi



movq $0, %rax


call allocate

movq %rdx, -167(%rbp, 1)


movq %rax, -175(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -167(%rbp, 1), %rbx


movq %rbx, -183(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -175(%rbp, 1), %rbx


movq %rbx, -191(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -183(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -199(%rbp, 1)

popq %rbx



idivq -199(%rbp, 1)

movq %rax, -183(%rbp, 1)











pushq %rbx

xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -207(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -207(%rbp, 1)


movl -20(%rbp, 1), %edi


movq -191(%rbp, 1), %rsi


movq -207(%rbp, 1), %rdx



movq $0, %rax


call read

movq %rax, -215(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -215(%rbp, 1), %rbx


movq %rbx, -223(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -223(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -231(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -231(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -239(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -240(%rbp, 1), %bl


xorb %bl, -240(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -231(%rbp, 1), %rbx


cmpq %rbx, -239(%rbp, 1)
popq %rbx



setb -240(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -240(%rbp, 1), %bl


andb %bl, -240(%rbp, 1)
popq %rbx



jz .L30



movq $.L29, %rdi



movq $0, %rax


call printf

movl %eax, -244(%rbp, 1)




jmp ._read_dataset_label





.L30:



movq -183(%rbp, 1), %rdx


movq -191(%rbp, 1), %rax



jmp ._read_dataset_label





._read_dataset_label:
movq %rbp, %rsp

popq %rbp

ret



.string "\0vecmul"
.global vecmul
vecmul:
pushq %rbp

movq %rsp, %rbp

subq $80, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movq %rcx, -24(%rbp, 1)


movq %rdx, -32(%rbp, 1)











movq -8(%rbp, 1), %rbx


xorb %r12b, %r12b

cmpq -24(%rbp, 1), %rbx

sete %r12b


xorb $1, %r12b



andb %r12b, %r12b

jz .L31

jmp ._vecmul





.L31:


movl $0, -36(%rbp, 1)



movl $0, %ebx



movl %ebx, -40(%rbp, 1)




.L34:





movl -8(%rbp, 1), %r13d


movq $-1, %rax


andq %rax, %r13


movl -40(%rbp, 1), %r14d


xorb %r15b, %r15b

cmpl %r13d, %r14d

setl %r15b



andb %r15b, %r15b

jz .L35




movl -40(%rbp, 1), %r13d


movq $4294967295, %rax


andq %rax, %r13

pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -48(%rbp, 1)


movq %r10, -56(%rbp, 1)


popq %r11


popq %r10


cmpq -56(%rbp, 1), %r13

jl .L32

movq %r13, %rsi


movq -56(%rbp, 1), %rdx


call err_oob

.L32:




movl -40(%rbp, 1), %r14d


movq $4294967295, %rax


andq %rax, %r14

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -64(%rbp, 1)


movq %r10, -72(%rbp, 1)


popq %r11


popq %r10


cmpq -72(%rbp, 1), %r14

jl .L33

movq %r14, %rsi


movq -72(%rbp, 1), %rdx


call err_oob

.L33:


pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -48(%rbp, 1), %rbx


movl 0(%rbx, %r13, 4), %r12d


popq %rbx

movl %r12d, -76(%rbp, 1)
popq %r12




movl -76(%rbp, 1), %eax


movss -76(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -64(%rbp, 1), %rbx


mulss 0(%rbx, %r14, 4), %xmm0
popq %rbx


movss %xmm0, -76(%rbp, 1)




movss -36(%rbp, 1), %xmm1


addss -76(%rbp, 1), %xmm1

movss %xmm1, -36(%rbp, 1)






incl -40(%rbp, 1)




jmp .L34

.L35:




movss -36(%rbp, 1), %xmm0


._vecmul:
movq %rbp, %rsp

popq %rbp

ret




.string "\0nn"
.global nn
nn:
pushq %rbp

movq %rsp, %rbp

subq $480, %rsp





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -52(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movq $2, %rbx



movq $10, %r12



movq $20, %r13



movq %r12, %rax


imulq %r13, %rax

movq %rax, %r12




movq %rbx, %rax


imulq %r12, %rax

movq %rax, %rbx




movq %rbx, %rdi



movq $0, %rax


call allocate

movq %rdx, -28(%rbp, 1)


movq %rax, -36(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -28(%rbp, 1), %rbx


movq %rbx, -44(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -36(%rbp, 1), %rbx


movq %rbx, -52(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -44(%rbp, 1), %rax


movq $200, %r12


idivq %r12

movq %rax, -44(%rbp, 1)










movq $.L36, %rdi


movq -44(%rbp, 1), %rsi



movq $0, %rax


call printf

movl %eax, %r12d




movq $0, %r13



movq %r13, -60(%rbp, 1)




.L40:


movq $0, %r14



pushq %r10


pushq %r11


movq -44(%rbp, 1), %r10


movq -52(%rbp, 1), %r11



movq %r11, -68(%rbp, 1)


movq %r10, -76(%rbp, 1)


popq %r11


popq %r10


cmpq -76(%rbp, 1), %r14

jl .L37

movq %r14, %rsi


movq -76(%rbp, 1), %rdx


call err_oob

.L37:
movq %r14, %rax


imulq $200, %rax

movq %rax, %r14





movq $10, %r15



pushq %rbx

xorq %rbx, %rbx
movq -60(%rbp, 1), %rbx


movq %rbx, -84(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -85(%rbp, 1), %bl


xorb %bl, -85(%rbp, 1)
popq %rbx



cmpq %r15, -84(%rbp, 1)

setb -85(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -85(%rbp, 1), %bl


andb %bl, -85(%rbp, 1)
popq %rbx



jz .L41

pushq %rbx


movq $784, %rbx


movq %rbx, -125(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -133(%rbp, 1)

popq %rbx




movq -125(%rbp, 1), %rax


imulq -133(%rbp, 1), %rax

movq %rax, -125(%rbp, 1)




movq -125(%rbp, 1), %rdi



movq $0, %rax


call allocate

movq %rdx, -141(%rbp, 1)


movq %rax, -149(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -141(%rbp, 1), %rbx


movq %rbx, -157(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -149(%rbp, 1), %rbx


movq %rbx, -165(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -157(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -173(%rbp, 1)

popq %rbx



idivq -173(%rbp, 1)

movq %rax, -157(%rbp, 1)





movq $0, %r15



pushq %r10


pushq %r11


movq -44(%rbp, 1), %r10


movq -52(%rbp, 1), %r11



movq %r11, -93(%rbp, 1)


movq %r10, -101(%rbp, 1)


popq %r11


popq %r10


cmpq -101(%rbp, 1), %r15

jl .L38

movq %r15, %rsi


movq -101(%rbp, 1), %rdx


call err_oob

.L38:
movq %r15, %rax


imulq $200, %rax

movq %rax, %r15






cmpq $10, -60(%rbp, 1)

jl .L39

movq -60(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L39:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -93(%rbp, 1), %rbx


leaq 0(%rbx, %r15, 1), %r10
popq %rbx


movq %r10, -109(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -60(%rbp, 1), %rbx


movq %rbx, -117(%rbp, 1)
popq %rbx




movq -117(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -117(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -109(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -117(%rbp, 1), %r12


movq -157(%rbp, 1), %r13


movq %r13, 8(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -109(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -117(%rbp, 1), %r12


movq -165(%rbp, 1), %r13


movq %r13, 0(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13





xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -109(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -117(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -181(%rbp, 1)

popq %rbx



idivq -181(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -109(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -117(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx








incq -60(%rbp, 1)




jmp .L40

.L41:





pushq %rbx


movq $0, %rbx


movq %rbx, -189(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -44(%rbp, 1), %r10


movq -52(%rbp, 1), %r11



movq %r11, -197(%rbp, 1)


movq %r10, -205(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -205(%rbp, 1), %rbx


cmpq %rbx, -189(%rbp, 1)
popq %rbx



jl .L43

movq -189(%rbp, 1), %rsi


movq -205(%rbp, 1), %rdx


call err_oob

.L43:
pushq %rbx

xorq %rbx, %rbx
movq -189(%rbp, 1), %rbx


movq %rbx, -213(%rbp, 1)
popq %rbx




movq -213(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -213(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $0, %rbx


movq %rbx, -221(%rbp, 1)

popq %rbx




cmpq $10, -221(%rbp, 1)

jl .L44

movq -221(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L44:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -197(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -213(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -229(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -221(%rbp, 1), %rbx


movq %rbx, -237(%rbp, 1)
popq %rbx




movq -237(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -237(%rbp, 1)



// mul on the CPU up here ^







movq $.L42, %rdi


pushq %rbx


xorq %rbx, %rbx

movq -229(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -237(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx




movq $0, %rax


call printf

movl %eax, -241(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -249(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -249(%rbp, 1), %rbx


movq %rbx, -257(%rbp, 1)
popq %rbx






.L48:


pushq %rbx


movq $1, %rbx


movq %rbx, -265(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -44(%rbp, 1), %r10


movq -52(%rbp, 1), %r11



movq %r11, -273(%rbp, 1)


movq %r10, -281(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -281(%rbp, 1), %rbx


cmpq %rbx, -265(%rbp, 1)
popq %rbx



jl .L45

movq -265(%rbp, 1), %rsi


movq -281(%rbp, 1), %rdx


call err_oob

.L45:
pushq %rbx

xorq %rbx, %rbx
movq -265(%rbp, 1), %rbx


movq %rbx, -289(%rbp, 1)
popq %rbx




movq -289(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -289(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -297(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -257(%rbp, 1), %rbx


movq %rbx, -305(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -306(%rbp, 1), %bl


xorb %bl, -306(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -297(%rbp, 1), %rbx


cmpq %rbx, -305(%rbp, 1)
popq %rbx



setb -306(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -306(%rbp, 1), %bl


andb %bl, -306(%rbp, 1)
popq %rbx



jz .L49

pushq %rbx


movq $10, %rbx


movq %rbx, -362(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -370(%rbp, 1)

popq %rbx




movq -362(%rbp, 1), %rax


imulq -370(%rbp, 1), %rax

movq %rax, -362(%rbp, 1)




movq -362(%rbp, 1), %rdi



movq $0, %rax


call allocate

movq %rdx, -378(%rbp, 1)


movq %rax, -386(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -378(%rbp, 1), %rbx


movq %rbx, -394(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -386(%rbp, 1), %rbx


movq %rbx, -402(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -394(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -410(%rbp, 1)

popq %rbx



idivq -410(%rbp, 1)

movq %rax, -394(%rbp, 1)





pushq %rbx


movq $1, %rbx


movq %rbx, -314(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -44(%rbp, 1), %r10


movq -52(%rbp, 1), %r11



movq %r11, -322(%rbp, 1)


movq %r10, -330(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -330(%rbp, 1), %rbx


cmpq %rbx, -314(%rbp, 1)
popq %rbx



jl .L46

movq -314(%rbp, 1), %rsi


movq -330(%rbp, 1), %rdx


call err_oob

.L46:
pushq %rbx

xorq %rbx, %rbx
movq -314(%rbp, 1), %rbx


movq %rbx, -338(%rbp, 1)
popq %rbx




movq -338(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -338(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -257(%rbp, 1)

jl .L47

movq -257(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L47:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -322(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -338(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -346(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -257(%rbp, 1), %rbx


movq %rbx, -354(%rbp, 1)
popq %rbx




movq -354(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -354(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -346(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -354(%rbp, 1), %r12


movq -394(%rbp, 1), %r13


movq %r13, 8(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -346(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -354(%rbp, 1), %r12


movq -402(%rbp, 1), %r13


movq %r13, 0(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13





xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -346(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -354(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -418(%rbp, 1)

popq %rbx



idivq -418(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -346(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -354(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx








incq -257(%rbp, 1)




jmp .L48

.L49:





pushq %rbx


movq $1, %rbx


movq %rbx, -426(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -44(%rbp, 1), %r10


movq -52(%rbp, 1), %r11



movq %r11, -434(%rbp, 1)


movq %r10, -442(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -442(%rbp, 1), %rbx


cmpq %rbx, -426(%rbp, 1)
popq %rbx



jl .L51

movq -426(%rbp, 1), %rsi


movq -442(%rbp, 1), %rdx


call err_oob

.L51:
pushq %rbx

xorq %rbx, %rbx
movq -426(%rbp, 1), %rbx


movq %rbx, -450(%rbp, 1)
popq %rbx




movq -450(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -450(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $0, %rbx


movq %rbx, -458(%rbp, 1)

popq %rbx




cmpq $10, -458(%rbp, 1)

jl .L52

movq -458(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L52:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -434(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -450(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -466(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -458(%rbp, 1), %rbx


movq %rbx, -474(%rbp, 1)
popq %rbx




movq -474(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -474(%rbp, 1)



// mul on the CPU up here ^







movq $.L50, %rdi


pushq %rbx


xorq %rbx, %rbx

movq -466(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -474(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx




movq $0, %rax


call printf

movl %eax, -478(%rbp, 1)





movq -44(%rbp, 1), %rdx


movq -52(%rbp, 1), %rax



jmp ._nn





._nn:
movq %rbp, %rsp

popq %rbp

ret





.string "\0logistic"
.global logistic
logistic:
pushq %rbp

movq %rsp, %rbp

subq $80, %rsp



movl $0, -12(%rbp, 1)



movss %xmm0, -12(%rbp, 1)








cvtss2sd -12(%rbp, 1), %xmm0

movq %xmm0, %rbx



movq $.L53, %rdi


movq %rbx, %r12


movq %r12, %xmm0



movq $1, %rax


call printf

movl %eax, %r13d




movq $1065353216, %r14



movl %r14d, -16(%rbp, 1)



movq $1065353216, %r15




pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -20(%rbp, 1)
popq %rbx




movl $0, -24(%rbp, 1)


movss -24(%rbp, 1), %xmm0


subss -20(%rbp, 1), %xmm0

movss %xmm0, -24(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -20(%rbp, 1)
popq %rbx






movss -20(%rbp, 1), %xmm0



movq $1, %rax


call expf

movss %xmm0, -28(%rbp, 1)




movl %r15d, -32(%rbp, 1)


movss -32(%rbp, 1), %xmm0


addss -28(%rbp, 1), %xmm0

movq %xmm0, %r15




movl %r15d, -36(%rbp, 1)







cvtss2sd -16(%rbp, 1), %xmm1

movsd %xmm1, -44(%rbp, 1)



movq $.L54, %rdi


movsd -44(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -48(%rbp, 1)








cvtss2sd -36(%rbp, 1), %xmm0

movsd %xmm0, -56(%rbp, 1)



movq $.L55, %rdi


movsd -56(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -60(%rbp, 1)






pushq %rbx

xorq %rbx, %rbx
movl -16(%rbp, 1), %ebx


movl %ebx, -64(%rbp, 1)
popq %rbx




movss -64(%rbp, 1), %xmm0


divss -36(%rbp, 1), %xmm0

movss %xmm0, -64(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -64(%rbp, 1), %ebx


movl %ebx, -68(%rbp, 1)
popq %rbx






movss -68(%rbp, 1), %xmm0


jmp ._logistic





._logistic:
movq %rbp, %rsp

popq %rbp

ret



.string "\0softmax"
.global softmax
softmax:
pushq %rbp

movq %rsp, %rbp

subq $144, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -20(%rbp, 1)



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movl %edx, -20(%rbp, 1)




movq $0, %rbx



movl %ebx, -24(%rbp, 1)



movq $0, %r12



movq %r12, -32(%rbp, 1)




.L59:




movq -32(%rbp, 1), %r13


xorb %r14b, %r14b

cmpq -8(%rbp, 1), %r13

setb %r14b



andb %r14b, %r14b

jz .L60







pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -40(%rbp, 1)


movq %r10, -48(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


cmpq %rbx, -32(%rbp, 1)
popq %rbx



jl .L57

movq -32(%rbp, 1), %rsi


movq -48(%rbp, 1), %rdx


call err_oob

.L57:


pushq %rbx


xorq %rbx, %rbx

movq -40(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movq %xmm0, %r13



movq $.L56, %rdi


movq -32(%rbp, 1), %rsi


movq %r13, %r15


movq %r15, %xmm0



movq $1, %rax


call printf

movl %eax, -52(%rbp, 1)







pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -60(%rbp, 1)


movq %r10, -68(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -68(%rbp, 1), %rbx


cmpq %rbx, -32(%rbp, 1)
popq %rbx



jl .L58

movq -32(%rbp, 1), %rsi


movq -68(%rbp, 1), %rdx


call err_oob

.L58:


movss -24(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -60(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32(%rbp, 1), %r12


addss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movss %xmm0, -24(%rbp, 1)






incq -32(%rbp, 1)




jmp .L59

.L60:







pushq %rbx

xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -76(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -76(%rbp, 1)

pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -84(%rbp, 1)


movq %r10, -92(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


cmpq %rbx, -76(%rbp, 1)
popq %rbx



jl .L62

movq -76(%rbp, 1), %rsi


movq -92(%rbp, 1), %rdx


call err_oob

.L62:


pushq %rbx


xorq %rbx, %rbx

movq -84(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -76(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm1
popq %r12

popq %rbx


movsd %xmm1, -100(%rbp, 1)



movq $.L61, %rdi


movsd -100(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -104(%rbp, 1)








cvtss2sd -24(%rbp, 1), %xmm0

movsd %xmm0, -112(%rbp, 1)



movq $.L63, %rdi


movsd -112(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -116(%rbp, 1)






pushq %rbx

xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -124(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -124(%rbp, 1)

pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -132(%rbp, 1)


movq %r10, -140(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


cmpq %rbx, -124(%rbp, 1)
popq %rbx



jl .L64

movq -124(%rbp, 1), %rsi


movq -140(%rbp, 1), %rdx


call err_oob

.L64:



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -132(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -124(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -144(%rbp, 1)
popq %r13




movss -144(%rbp, 1), %xmm0


divss -24(%rbp, 1), %xmm0

movss %xmm0, -144(%rbp, 1)





movss -144(%rbp, 1), %xmm0


._softmax:
movq %rbp, %rsp

popq %rbp

ret



.string "\0forward"
.global forward
forward:
pushq %rbp

movq %rsp, %rbp

subq $4352, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3152(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $0, %rbx


movq %rbx, -3160(%rbp, 1)

popq %rbx



movq %rdi, -3160(%rbp, 1)


movq %rdx, -8(%rbp, 1)


movq %rsi, -16(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -3152(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi







movq $.L65, %rdi



movq $0, %rax


call printf

movl %eax, %ebx




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3200(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, %r12d



movl %r12d, -3204(%rbp, 1)




.L95:



movq $0, %r13



pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3212(%rbp, 1)


movq %r10, -3220(%rbp, 1)


popq %r11


popq %r10


cmpq -3220(%rbp, 1), %r13

jl .L66

movq %r13, %rsi


movq -3220(%rbp, 1), %rdx


call err_oob

.L66:
movq %r13, %rax


imulq $200, %rax

movq %rax, %r13





movq $10, %r14



movl %r14d, %r15d


movq $-1, %rax


andq %rax, %r15


pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3224(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3225(%rbp, 1), %bl


xorb %bl, -3225(%rbp, 1)
popq %rbx



cmpl %r15d, -3224(%rbp, 1)

setl -3225(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3225(%rbp, 1), %bl


andb %bl, -3225(%rbp, 1)
popq %rbx



jz .L96



movq $.L67, %rdi



movq $0, %rax


call printf

movl %eax, %r15d




movl $0, -3229(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3229(%rbp, 1), %ebx


movl %ebx, -3233(%rbp, 1)
popq %rbx






.L75:

movl $28, -3237(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3233(%rbp, 1), %ebx


movl %ebx, -3241(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3242(%rbp, 1), %bl


xorb %bl, -3242(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3237(%rbp, 1), %ebx


cmpl %ebx, -3241(%rbp, 1)
popq %rbx



setb -3242(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3242(%rbp, 1), %bl


andb %bl, -3242(%rbp, 1)
popq %rbx



jz .L76

movl $0, -3246(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3246(%rbp, 1), %ebx


movl %ebx, -3250(%rbp, 1)
popq %rbx






.L72:

movl $28, -3254(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3250(%rbp, 1), %ebx


movl %ebx, -3258(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3259(%rbp, 1), %bl


xorb %bl, -3259(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3254(%rbp, 1), %ebx


cmpl %ebx, -3258(%rbp, 1)
popq %rbx



setb -3259(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3259(%rbp, 1), %bl


andb %bl, -3259(%rbp, 1)
popq %rbx



jz .L73





pushq %rbx


movq $0, %rbx


movq %rbx, -3267(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3275(%rbp, 1)


movq %r10, -3283(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3283(%rbp, 1), %rbx


cmpq %rbx, -3267(%rbp, 1)
popq %rbx



jl .L69

movq -3267(%rbp, 1), %rsi


movq -3283(%rbp, 1), %rdx


call err_oob

.L69:
pushq %rbx

xorq %rbx, %rbx
movq -3267(%rbp, 1), %rbx


movq %rbx, -3291(%rbp, 1)
popq %rbx




movq -3291(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3291(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3299(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3299(%rbp, 1)

cmpq $10, -3299(%rbp, 1)

jl .L70

movq -3299(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L70:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3275(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3291(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3307(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3299(%rbp, 1), %rbx


movq %rbx, -3315(%rbp, 1)
popq %rbx




movq -3315(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3315(%rbp, 1)



// mul on the CPU up here ^






movl $28, -3319(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3233(%rbp, 1), %ebx


movl %ebx, -3323(%rbp, 1)
popq %rbx




movl -3323(%rbp, 1), %eax


imull -3319(%rbp, 1), %eax

movl %eax, -3323(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3250(%rbp, 1), %ebx


addl %ebx, -3323(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -3323(%rbp, 1), %ebx


movl %ebx, -3331(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3331(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3307(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3315(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -3307(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3315(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -3339(%rbp, 1)


movq %r10, -3347(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3347(%rbp, 1), %rbx


cmpq %rbx, -3331(%rbp, 1)
popq %rbx



jl .L71

movq -3331(%rbp, 1), %rsi


movq -3347(%rbp, 1), %rdx


call err_oob

.L71:


pushq %rbx


xorq %rbx, %rbx

movq -3339(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3331(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3355(%rbp, 1)



movq $.L68, %rdi


movsd -3355(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -3359(%rbp, 1)






incl -3250(%rbp, 1)




jmp .L72

.L73:




movq $.L74, %rdi



movq $0, %rax


call printf

movl %eax, -3363(%rbp, 1)






incl -3233(%rbp, 1)




jmp .L75

.L76:




movq $.L77, %rdi



movq $0, %rax


call printf

movl %eax, -3367(%rbp, 1)




movl $0, -3371(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3371(%rbp, 1), %ebx


movl %ebx, -3375(%rbp, 1)
popq %rbx






.L83:

movl $28, -3379(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3375(%rbp, 1), %ebx


movl %ebx, -3383(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3384(%rbp, 1), %bl


xorb %bl, -3384(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3379(%rbp, 1), %ebx


cmpl %ebx, -3383(%rbp, 1)
popq %rbx



setb -3384(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3384(%rbp, 1), %bl


andb %bl, -3384(%rbp, 1)
popq %rbx



jz .L84

movl $0, -3388(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3388(%rbp, 1), %ebx


movl %ebx, -3392(%rbp, 1)
popq %rbx






.L80:

movl $28, -3396(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3392(%rbp, 1), %ebx


movl %ebx, -3400(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3401(%rbp, 1), %bl


xorb %bl, -3401(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3396(%rbp, 1), %ebx


cmpl %ebx, -3400(%rbp, 1)
popq %rbx



setb -3401(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3401(%rbp, 1), %bl


andb %bl, -3401(%rbp, 1)
popq %rbx



jz .L81






movl $28, -3405(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3375(%rbp, 1), %ebx


movl %ebx, -3409(%rbp, 1)
popq %rbx




movl -3409(%rbp, 1), %eax


imull -3405(%rbp, 1), %eax

movl %eax, -3409(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3392(%rbp, 1), %ebx


addl %ebx, -3409(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -3409(%rbp, 1), %ebx


movl %ebx, -3417(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3417(%rbp, 1)

cmpq $784, -3417(%rbp, 1)

jl .L79

movq -3417(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L79:
pushq %r10


leaq -3152(%rbp, 1), %r10

movq %r10, -3425(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -3425(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3417(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3433(%rbp, 1)



movq $.L78, %rdi


movsd -3433(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -3437(%rbp, 1)






incl -3392(%rbp, 1)




jmp .L80

.L81:




movq $.L82, %rdi



movq $0, %rax


call printf

movl %eax, -3441(%rbp, 1)






incl -3375(%rbp, 1)




jmp .L83

.L84:






pushq %rbx


movq $0, %rbx


movq %rbx, -3449(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3457(%rbp, 1)


movq %r10, -3465(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3465(%rbp, 1), %rbx


cmpq %rbx, -3449(%rbp, 1)
popq %rbx



jl .L86

movq -3449(%rbp, 1), %rsi


movq -3465(%rbp, 1), %rdx


call err_oob

.L86:
pushq %rbx

xorq %rbx, %rbx
movq -3449(%rbp, 1), %rbx


movq %rbx, -3473(%rbp, 1)
popq %rbx




movq -3473(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3473(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3481(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3481(%rbp, 1)

cmpq $10, -3481(%rbp, 1)

jl .L87

movq -3481(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L87:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3457(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3473(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3489(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3481(%rbp, 1), %rbx


movq %rbx, -3497(%rbp, 1)
popq %rbx




movq -3497(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3497(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


xorq %rbx, %rbx

movq -3489(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3497(%rbp, 1), %r12


cvtss2sd 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3505(%rbp, 1)



movq $.L85, %rdi


movsd -3505(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -3509(%rbp, 1)





pushq %rbx


movq $0, %rbx


movq %rbx, -3517(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3525(%rbp, 1)


movq %r10, -3533(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3533(%rbp, 1), %rbx


cmpq %rbx, -3517(%rbp, 1)
popq %rbx



jl .L88

movq -3517(%rbp, 1), %rsi


movq -3533(%rbp, 1), %rdx


call err_oob

.L88:
pushq %rbx

xorq %rbx, %rbx
movq -3517(%rbp, 1), %rbx


movq %rbx, -3541(%rbp, 1)
popq %rbx




movq -3541(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3541(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3549(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3549(%rbp, 1)

cmpq $10, -3549(%rbp, 1)

jl .L89

movq -3549(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L89:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3525(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3541(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3557(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3549(%rbp, 1), %rbx


movq %rbx, -3565(%rbp, 1)
popq %rbx




movq -3565(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3565(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx


xorq %rbx, %rbx

movq -3557(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3565(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -3557(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3565(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx





pushq %rbx


leaq -3152(%rbp, 1), %rbx

movq %rbx, -3573(%rbp, 1)


popq %rbx



movq -3573(%rbp, 1), %rdx


movq $784, %rcx




movq $0, %rax


call vecmul

movss %xmm0, -3577(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3577(%rbp, 1), %ebx


movl %ebx, -3581(%rbp, 1)
popq %rbx







pushq %rbx


movq $0, %rbx


movq %rbx, -3589(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3597(%rbp, 1)


movq %r10, -3605(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3605(%rbp, 1), %rbx


cmpq %rbx, -3589(%rbp, 1)
popq %rbx



jl .L90

movq -3589(%rbp, 1), %rsi


movq -3605(%rbp, 1), %rdx


call err_oob

.L90:
pushq %rbx

xorq %rbx, %rbx
movq -3589(%rbp, 1), %rbx


movq %rbx, -3613(%rbp, 1)
popq %rbx




movq -3613(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3613(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3621(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3621(%rbp, 1)

cmpq $10, -3621(%rbp, 1)

jl .L91

movq -3621(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L91:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3597(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3613(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3629(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3621(%rbp, 1), %rbx


movq %rbx, -3637(%rbp, 1)
popq %rbx




movq -3637(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3637(%rbp, 1)



// mul on the CPU up here ^





movss -3581(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -3629(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3637(%rbp, 1), %r12


addss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movss %xmm0, -3581(%rbp, 1)





movss -3581(%rbp, 1), %xmm0



movq $1, %rax


call logistic

movss %xmm0, -3641(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3641(%rbp, 1), %ebx


movl %ebx, -3645(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3645(%rbp, 1), %ebx


movl %ebx, -3665(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3653(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3653(%rbp, 1)

cmpq $10, -3653(%rbp, 1)

jl .L92

movq -3653(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L92:
pushq %r10


leaq -3200(%rbp, 1), %r10

movq %r10, -3661(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3661(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3653(%rbp, 1), %r12


movl -3665(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13










pushq %rbx

xorq %rbx, %rbx
movl -3204(%rbp, 1), %ebx


movl %ebx, -3673(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3673(%rbp, 1)

cmpq $10, -3673(%rbp, 1)

jl .L94

movq -3673(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L94:
pushq %r10


leaq -3200(%rbp, 1), %r10

movq %r10, -3681(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -3681(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3673(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3689(%rbp, 1)



movq $.L93, %rdi


movsd -3689(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -3693(%rbp, 1)






incl -3204(%rbp, 1)




jmp .L95

.L96:




movq $.L97, %rdi



movq $0, %rax


call printf

movl %eax, -3697(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3737(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -3741(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3741(%rbp, 1), %ebx


movl %ebx, -3745(%rbp, 1)
popq %rbx






.L119:



pushq %rbx


movq $1, %rbx


movq %rbx, -3753(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3761(%rbp, 1)


movq %r10, -3769(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3769(%rbp, 1), %rbx


cmpq %rbx, -3753(%rbp, 1)
popq %rbx



jl .L98

movq -3753(%rbp, 1), %rsi


movq -3769(%rbp, 1), %rdx


call err_oob

.L98:
pushq %rbx

xorq %rbx, %rbx
movq -3753(%rbp, 1), %rbx


movq %rbx, -3777(%rbp, 1)
popq %rbx




movq -3777(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3777(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -3785(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -3785(%rbp, 1), %ebx


movl %ebx, -3789(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -3789(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3745(%rbp, 1), %ebx


movl %ebx, -3793(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3794(%rbp, 1), %bl


xorb %bl, -3794(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3789(%rbp, 1), %ebx


cmpl %ebx, -3793(%rbp, 1)
popq %rbx



setl -3794(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3794(%rbp, 1), %bl


andb %bl, -3794(%rbp, 1)
popq %rbx



jz .L120



movq $.L99, %rdi



movq $0, %rax


call printf

movl %eax, -3798(%rbp, 1)




movl $0, -3802(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3802(%rbp, 1), %ebx


movl %ebx, -3806(%rbp, 1)
popq %rbx






.L104:

movl $10, -3810(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3806(%rbp, 1), %ebx


movl %ebx, -3814(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3815(%rbp, 1), %bl


xorb %bl, -3815(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3810(%rbp, 1), %ebx


cmpl %ebx, -3814(%rbp, 1)
popq %rbx



setb -3815(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3815(%rbp, 1), %bl


andb %bl, -3815(%rbp, 1)
popq %rbx



jz .L105





pushq %rbx


movq $1, %rbx


movq %rbx, -3823(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3831(%rbp, 1)


movq %r10, -3839(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3839(%rbp, 1), %rbx


cmpq %rbx, -3823(%rbp, 1)
popq %rbx



jl .L101

movq -3823(%rbp, 1), %rsi


movq -3839(%rbp, 1), %rdx


call err_oob

.L101:
pushq %rbx

xorq %rbx, %rbx
movq -3823(%rbp, 1), %rbx


movq %rbx, -3847(%rbp, 1)
popq %rbx




movq -3847(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3847(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3745(%rbp, 1), %ebx


movl %ebx, -3855(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3855(%rbp, 1)

cmpq $10, -3855(%rbp, 1)

jl .L102

movq -3855(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L102:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3831(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3847(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3863(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3855(%rbp, 1), %rbx


movq %rbx, -3871(%rbp, 1)
popq %rbx




movq -3871(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3871(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

xorq %rbx, %rbx
movl -3806(%rbp, 1), %ebx


movl %ebx, -3879(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3879(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3863(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3871(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -3863(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3871(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -3887(%rbp, 1)


movq %r10, -3895(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3895(%rbp, 1), %rbx


cmpq %rbx, -3879(%rbp, 1)
popq %rbx



jl .L103

movq -3879(%rbp, 1), %rsi


movq -3895(%rbp, 1), %rdx


call err_oob

.L103:


pushq %rbx


xorq %rbx, %rbx

movq -3887(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3879(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3903(%rbp, 1)



movq $.L100, %rdi


movsd -3903(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -3907(%rbp, 1)






incl -3806(%rbp, 1)




jmp .L104

.L105:


movb $10, -3908(%rbp, 1)



movb -3908(%rbp, 1), %dil



movq $0, %rax


call putchar

movl %eax, -3912(%rbp, 1)






movq $.L106, %rdi



movq $0, %rax


call printf

movl %eax, -3916(%rbp, 1)




movl $0, -3920(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3920(%rbp, 1), %ebx


movl %ebx, -3924(%rbp, 1)
popq %rbx






.L109:

movl $10, -3928(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3924(%rbp, 1), %ebx


movl %ebx, -3932(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3933(%rbp, 1), %bl


xorb %bl, -3933(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3928(%rbp, 1), %ebx


cmpl %ebx, -3932(%rbp, 1)
popq %rbx



setb -3933(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3933(%rbp, 1), %bl


andb %bl, -3933(%rbp, 1)
popq %rbx



jz .L110






pushq %rbx

xorq %rbx, %rbx
movl -3924(%rbp, 1), %ebx


movl %ebx, -3941(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3941(%rbp, 1)

cmpq $10, -3941(%rbp, 1)

jl .L108

movq -3941(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L108:
pushq %r10


leaq -3200(%rbp, 1), %r10

movq %r10, -3949(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -3949(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3941(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3957(%rbp, 1)



movq $.L107, %rdi


movsd -3957(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -3961(%rbp, 1)






incl -3924(%rbp, 1)




jmp .L109

.L110:


movb $10, -3962(%rbp, 1)



movb -3962(%rbp, 1), %dil



movq $0, %rax


call putchar

movl %eax, -3966(%rbp, 1)








pushq %rbx


movq $1, %rbx


movq %rbx, -3974(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3982(%rbp, 1)


movq %r10, -3990(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3990(%rbp, 1), %rbx


cmpq %rbx, -3974(%rbp, 1)
popq %rbx



jl .L112

movq -3974(%rbp, 1), %rsi


movq -3990(%rbp, 1), %rdx


call err_oob

.L112:
pushq %rbx

xorq %rbx, %rbx
movq -3974(%rbp, 1), %rbx


movq %rbx, -3998(%rbp, 1)
popq %rbx




movq -3998(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3998(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3745(%rbp, 1), %ebx


movl %ebx, -4006(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4006(%rbp, 1)

cmpq $10, -4006(%rbp, 1)

jl .L113

movq -4006(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L113:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3982(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3998(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4014(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4006(%rbp, 1), %rbx


movq %rbx, -4022(%rbp, 1)
popq %rbx




movq -4022(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4022(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


xorq %rbx, %rbx

movq -4014(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4022(%rbp, 1), %r12


cvtss2sd 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -4030(%rbp, 1)



movq $.L111, %rdi


movsd -4030(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -4034(%rbp, 1)





pushq %rbx


movq $1, %rbx


movq %rbx, -4042(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4050(%rbp, 1)


movq %r10, -4058(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4058(%rbp, 1), %rbx


cmpq %rbx, -4042(%rbp, 1)
popq %rbx



jl .L114

movq -4042(%rbp, 1), %rsi


movq -4058(%rbp, 1), %rdx


call err_oob

.L114:
pushq %rbx

xorq %rbx, %rbx
movq -4042(%rbp, 1), %rbx


movq %rbx, -4066(%rbp, 1)
popq %rbx




movq -4066(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4066(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3745(%rbp, 1), %ebx


movl %ebx, -4074(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4074(%rbp, 1)

cmpq $10, -4074(%rbp, 1)

jl .L115

movq -4074(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L115:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4050(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4066(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4082(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4074(%rbp, 1), %rbx


movq %rbx, -4090(%rbp, 1)
popq %rbx




movq -4090(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4090(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx


xorq %rbx, %rbx

movq -4082(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4090(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -4082(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4090(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx





pushq %rbx


leaq -3200(%rbp, 1), %rbx

movq %rbx, -4098(%rbp, 1)


popq %rbx



movq -4098(%rbp, 1), %rdx


movq $10, %rcx




movq $0, %rax


call vecmul

movss %xmm0, -4102(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -4102(%rbp, 1), %ebx


movl %ebx, -4106(%rbp, 1)
popq %rbx







pushq %rbx


movq $1, %rbx


movq %rbx, -4114(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4122(%rbp, 1)


movq %r10, -4130(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4130(%rbp, 1), %rbx


cmpq %rbx, -4114(%rbp, 1)
popq %rbx



jl .L116

movq -4114(%rbp, 1), %rsi


movq -4130(%rbp, 1), %rdx


call err_oob

.L116:
pushq %rbx

xorq %rbx, %rbx
movq -4114(%rbp, 1), %rbx


movq %rbx, -4138(%rbp, 1)
popq %rbx




movq -4138(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4138(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3745(%rbp, 1), %ebx


movl %ebx, -4146(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4146(%rbp, 1)

cmpq $10, -4146(%rbp, 1)

jl .L117

movq -4146(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L117:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4122(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4138(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4154(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4146(%rbp, 1), %rbx


movq %rbx, -4162(%rbp, 1)
popq %rbx




movq -4162(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4162(%rbp, 1)



// mul on the CPU up here ^





movss -4106(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -4154(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4162(%rbp, 1), %r12


addss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movss %xmm0, -4106(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -4106(%rbp, 1), %ebx


movl %ebx, -4182(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3745(%rbp, 1), %ebx


movl %ebx, -4170(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4170(%rbp, 1)

cmpq $10, -4170(%rbp, 1)

jl .L118

movq -4170(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L118:
pushq %r10


leaq -3737(%rbp, 1), %r10

movq %r10, -4178(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4178(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4170(%rbp, 1), %r12


movl -4182(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -3745(%rbp, 1)




jmp .L119

.L120:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -4222(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -4226(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -4226(%rbp, 1), %ebx


movl %ebx, -4230(%rbp, 1)
popq %rbx






.L125:



pushq %rbx


movq $1, %rbx


movq %rbx, -4238(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4246(%rbp, 1)


movq %r10, -4254(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4254(%rbp, 1), %rbx


cmpq %rbx, -4238(%rbp, 1)
popq %rbx



jl .L121

movq -4238(%rbp, 1), %rsi


movq -4254(%rbp, 1), %rdx


call err_oob

.L121:
pushq %rbx

xorq %rbx, %rbx
movq -4238(%rbp, 1), %rbx


movq %rbx, -4262(%rbp, 1)
popq %rbx




movq -4262(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4262(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -4270(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -4270(%rbp, 1), %ebx


movl %ebx, -4274(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -4274(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -4230(%rbp, 1), %ebx


movl %ebx, -4278(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4279(%rbp, 1), %bl


xorb %bl, -4279(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -4274(%rbp, 1), %ebx


cmpl %ebx, -4278(%rbp, 1)
popq %rbx



setl -4279(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4279(%rbp, 1), %bl


andb %bl, -4279(%rbp, 1)
popq %rbx



jz .L126



pushq %rbx


leaq -3737(%rbp, 1), %rbx

movq %rbx, -4303(%rbp, 1)


popq %rbx



movq -4303(%rbp, 1), %rdi


movq $10, %rsi



movl -4230(%rbp, 1), %edx



movq $0, %rax


call softmax

movss %xmm0, -4307(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -4307(%rbp, 1), %ebx


movl %ebx, -4311(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -4230(%rbp, 1), %ebx


movl %ebx, -4287(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4287(%rbp, 1)

cmpq $10, -4287(%rbp, 1)

jl .L122

movq -4287(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L122:
pushq %r10


leaq -4222(%rbp, 1), %r10

movq %r10, -4295(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4295(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4287(%rbp, 1), %r12


movl -4311(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13










pushq %rbx

xorq %rbx, %rbx
movl -4230(%rbp, 1), %ebx


movl %ebx, -4319(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4319(%rbp, 1)

cmpq $10, -4319(%rbp, 1)

jl .L124

movq -4319(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L124:
pushq %r10


leaq -4222(%rbp, 1), %r10

movq %r10, -4327(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -4327(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4319(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -4335(%rbp, 1)



movq $.L123, %rdi


movsd -4335(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -4339(%rbp, 1)






incl -4230(%rbp, 1)




jmp .L125

.L126:




movq -3160(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -4222(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._forward:
movq %rbp, %rsp

popq %rbp

ret



.string "\0loss"
.global loss
loss:
pushq %rbp

movq %rsp, %rbp

subq $16, %rsp



movl $0, -4(%rbp, 1)



movl $0, -8(%rbp, 1)



movss %xmm0, -4(%rbp, 1)


movss %xmm1, -8(%rbp, 1)






movss -4(%rbp, 1), %xmm0



movq $1, %rax


call logf

movq %xmm0, %rbx




movl -8(%rbp, 1), %r12d


movl %r12d, %eax


movl %r12d, %r13d


movq %r13, %xmm0


movl %ebx, %r14d


movq %r14, %xmm1


mulss %xmm1, %xmm0

movq %xmm0, %r12




movl $0, %r15d


movl %r15d, -12(%rbp, 1)


movss -12(%rbp, 1), %xmm1


movl %r12d, -16(%rbp, 1)


movss -16(%rbp, 1), %xmm2


subss %xmm2, %xmm1

movq %xmm1, %r15



movl %r15d, %r12d





movl %r12d, -20(%rbp, 1)


movss -20(%rbp, 1), %xmm0


._loss:
movq %rbp, %rsp

popq %rbp

ret



.string "\0der_loss_q"
.global der_loss_q
der_loss_q:
pushq %rbp

movq %rsp, %rbp

subq $16, %rsp



movl $0, -4(%rbp, 1)



movl $0, -8(%rbp, 1)



movss %xmm2, -4(%rbp, 1)


movss %xmm3, -8(%rbp, 1)






movl -8(%rbp, 1), %ebx


movl %ebx, %r12d


movq %r12, %xmm0


divss -4(%rbp, 1), %xmm0

movq %xmm0, %rbx





movl %ebx, %r13d


movq %r13, %xmm0


._der_loss_q:
movq %rbp, %rsp

popq %rbp

ret



.string "\0cost"
.global cost
cost:
pushq %rbp

movq %rsp, %rbp

subq $208, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -40(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -80(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -40(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



pushq %rsi


pushq %rdi


pushq %rcx


leaq 56(%rbp, 1), %rsi

leaq -80(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





movl $0, %ebx



movl %ebx, -84(%rbp, 1)




.L130:



movq $10, %r12



movl %r12d, %r13d


movq $-1, %rax


andq %rax, %r13


movl -84(%rbp, 1), %r14d


xorb %r15b, %r15b

cmpl %r13d, %r14d

setl %r15b



andb %r15b, %r15b

jz .L131







movl -84(%rbp, 1), %r13d


movq $4294967295, %rax


andq %rax, %r13

cmpq $10, %r13

jl .L128

movq %r13, %rsi


movq $10, %rdx


call err_oob

.L128:
pushq %r10


leaq -40(%rbp, 1), %r10

movq %r10, -92(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -92(%rbp, 1), %rbx


cvtss2sd 0(%rbx, %r13, 4), %xmm0
popq %rbx


movq %xmm0, %r14







pushq %rbx

xorq %rbx, %rbx
movl -84(%rbp, 1), %ebx


movl %ebx, -100(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -100(%rbp, 1)

cmpq $10, -100(%rbp, 1)

jl .L129

movq -100(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L129:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -108(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -108(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -100(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -116(%rbp, 1)



movq $.L127, %rdi


movl -84(%rbp, 1), %esi


movq %r14, -124(%rbp, 1)


movsd -124(%rbp, 1), %xmm0


movl -84(%rbp, 1), %edx


movsd -116(%rbp, 1), %xmm1



movq $1, %rax


call printf

movl %eax, -128(%rbp, 1)






incl -84(%rbp, 1)




jmp .L130

.L131:


movl $0, -132(%rbp, 1)



pushq %rbx


movq $0, %rbx


movq %rbx, -140(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -148(%rbp, 1)
popq %rbx






.L134:


pushq %rbx


movq $10, %rbx


movq %rbx, -156(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -148(%rbp, 1), %rbx


movq %rbx, -164(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -165(%rbp, 1), %bl


xorb %bl, -165(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -156(%rbp, 1), %rbx


cmpq %rbx, -164(%rbp, 1)
popq %rbx



setb -165(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -165(%rbp, 1), %bl


andb %bl, -165(%rbp, 1)
popq %rbx



jz .L135




cmpq $10, -148(%rbp, 1)

jl .L132

movq -148(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L132:
pushq %r10


leaq -40(%rbp, 1), %r10

movq %r10, -173(%rbp, 1)


popq %r10






cmpq $10, -148(%rbp, 1)

jl .L133

movq -148(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L133:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -181(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -173(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -148(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -181(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -148(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm1
popq %r12

popq %rbx




movq $1, %rax


call loss

movss %xmm0, -185(%rbp, 1)




movss -132(%rbp, 1), %xmm0


addss -185(%rbp, 1), %xmm0

movss %xmm0, -132(%rbp, 1)






incq -148(%rbp, 1)




jmp .L134

.L135:





pushq %rbx


movq $10, %rbx


movq %rbx, -193(%rbp, 1)

popq %rbx




cvtsi2ss -193(%rbp, 1), %xmm1

movss %xmm1, -197(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -132(%rbp, 1), %ebx


movl %ebx, -201(%rbp, 1)
popq %rbx




movss -201(%rbp, 1), %xmm1


divss -197(%rbp, 1), %xmm1

movss %xmm1, -201(%rbp, 1)





movss -201(%rbp, 1), %xmm0


._cost:
movq %rbp, %rsp

popq %rbp

ret



.string "\0der_cost_q"
.global der_cost_q
der_cost_q:
pushq %rbp

movq %rsp, %rbp

subq $208, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -40(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -80(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -40(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



pushq %rsi


pushq %rdi


pushq %rcx


leaq 56(%rbp, 1), %rsi

leaq -80(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





movl $0, %ebx



movl %ebx, -84(%rbp, 1)




.L139:



movq $10, %r12



movl %r12d, %r13d


movq $-1, %rax


andq %rax, %r13


movl -84(%rbp, 1), %r14d


xorb %r15b, %r15b

cmpl %r13d, %r14d

setl %r15b



andb %r15b, %r15b

jz .L140







movl -84(%rbp, 1), %r13d


movq $4294967295, %rax


andq %rax, %r13

cmpq $10, %r13

jl .L137

movq %r13, %rsi


movq $10, %rdx


call err_oob

.L137:
pushq %r10


leaq -40(%rbp, 1), %r10

movq %r10, -92(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -92(%rbp, 1), %rbx


cvtss2sd 0(%rbx, %r13, 4), %xmm0
popq %rbx


movq %xmm0, %r14







pushq %rbx

xorq %rbx, %rbx
movl -84(%rbp, 1), %ebx


movl %ebx, -100(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -100(%rbp, 1)

cmpq $10, -100(%rbp, 1)

jl .L138

movq -100(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L138:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -108(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -108(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -100(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -116(%rbp, 1)



movq $.L136, %rdi


movl -84(%rbp, 1), %esi


movq %r14, -124(%rbp, 1)


movsd -124(%rbp, 1), %xmm0


movl -84(%rbp, 1), %edx


movsd -116(%rbp, 1), %xmm1



movq $1, %rax


call printf

movl %eax, -128(%rbp, 1)






incl -84(%rbp, 1)




jmp .L139

.L140:


movl $0, -132(%rbp, 1)



pushq %rbx


movq $0, %rbx


movq %rbx, -140(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -148(%rbp, 1)
popq %rbx






.L143:


pushq %rbx


movq $10, %rbx


movq %rbx, -156(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -148(%rbp, 1), %rbx


movq %rbx, -164(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -165(%rbp, 1), %bl


xorb %bl, -165(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -156(%rbp, 1), %rbx


cmpq %rbx, -164(%rbp, 1)
popq %rbx



setb -165(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -165(%rbp, 1), %bl


andb %bl, -165(%rbp, 1)
popq %rbx



jz .L144




cmpq $10, -148(%rbp, 1)

jl .L141

movq -148(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L141:
pushq %r10


leaq -40(%rbp, 1), %r10

movq %r10, -173(%rbp, 1)


popq %r10






cmpq $10, -148(%rbp, 1)

jl .L142

movq -148(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L142:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -181(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -173(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -148(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -181(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -148(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm1
popq %r12

popq %rbx




movq $1, %rax


call der_loss_q

movss %xmm0, -185(%rbp, 1)




movss -132(%rbp, 1), %xmm0


addss -185(%rbp, 1), %xmm0

movss %xmm0, -132(%rbp, 1)






incq -148(%rbp, 1)




jmp .L143

.L144:





pushq %rbx


movq $10, %rbx


movq %rbx, -193(%rbp, 1)

popq %rbx




cvtsi2ss -193(%rbp, 1), %xmm1

movss %xmm1, -197(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -132(%rbp, 1), %ebx


movl %ebx, -201(%rbp, 1)
popq %rbx




movss -201(%rbp, 1), %xmm1


divss -197(%rbp, 1), %xmm1

movss %xmm1, -201(%rbp, 1)





movss -201(%rbp, 1), %xmm0


._der_cost_q:
movq %rbp, %rsp

popq %rbp

ret



.string "\0back"
.global back
back:
pushq %rbp

movq %rsp, %rbp

subq $384, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -56(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -96(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -100(%rbp, 1)



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -56(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



pushq %rsi


pushq %rdi


pushq %rcx


leaq 56(%rbp, 1), %rsi

leaq -96(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



movss %xmm2, -100(%rbp, 1)






subq $32, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -96(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



subq $48, %rsp

movq %rsp, %rax


addq $8, %rax

pushq %rsi


pushq %rdi


pushq %rcx


leaq -56(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq $0, %rax


call der_cost_q

addq $48, %rsp

addq $32, %rsp

movq %xmm0, %rbx




movl %ebx, -104(%rbp, 1)





movl -104(%rbp, 1), %r12d


movl %r12d, %eax


movl %r12d, %r13d


movq %r13, %xmm0


mulss -100(%rbp, 1), %xmm0

movq %xmm0, %r12




movl %r12d, -108(%rbp, 1)




movq $1, %r14



pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -116(%rbp, 1)


movq %r10, -124(%rbp, 1)


popq %r11


popq %r10


cmpq -124(%rbp, 1), %r14

jl .L145

movq %r14, %rsi


movq -124(%rbp, 1), %rdx


call err_oob

.L145:
movq %r14, %rax


imulq $200, %rax

movq %rax, %r14





movq $10, %r15



pushq %rbx


movq $1, %rbx


movq %rbx, -132(%rbp, 1)

popq %rbx




subq -132(%rbp, 1), %r15



movq %r15, -140(%rbp, 1)




.L157:

pushq %rbx


movq $0, %rbx


movq %rbx, -148(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -156(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -157(%rbp, 1), %bl


xorb %bl, -157(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -148(%rbp, 1), %rbx


cmpq %rbx, -156(%rbp, 1)
popq %rbx



setae -157(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -157(%rbp, 1), %bl


andb %bl, -157(%rbp, 1)
popq %rbx



jz .L158

pushq %rbx


movq $0, %rbx


movq %rbx, -165(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -165(%rbp, 1), %rbx


movq %rbx, -173(%rbp, 1)
popq %rbx






.L155:


pushq %rbx


movq $1, %rbx


movq %rbx, -181(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -189(%rbp, 1)


movq %r10, -197(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -197(%rbp, 1), %rbx


cmpq %rbx, -181(%rbp, 1)
popq %rbx



jl .L146

movq -181(%rbp, 1), %rsi


movq -197(%rbp, 1), %rdx


call err_oob

.L146:
pushq %rbx

xorq %rbx, %rbx
movq -181(%rbp, 1), %rbx


movq %rbx, -205(%rbp, 1)
popq %rbx




movq -205(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -205(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -140(%rbp, 1)

jl .L147

movq -140(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L147:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -189(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -205(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -213(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -221(%rbp, 1)
popq %rbx




movq -221(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -221(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx

xorq %rbx, %rbx
movq -173(%rbp, 1), %rbx


movq %rbx, -229(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -230(%rbp, 1), %bl


xorb %bl, -230(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -213(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -221(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -229(%rbp, 1)
popq %r13



setb -230(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -230(%rbp, 1), %bl


andb %bl, -230(%rbp, 1)
popq %rbx



jz .L156


pushq %rbx


movq $1, %rbx


movq %rbx, -238(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -246(%rbp, 1)


movq %r10, -254(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -254(%rbp, 1), %rbx


cmpq %rbx, -238(%rbp, 1)
popq %rbx



jl .L148

movq -238(%rbp, 1), %rsi


movq -254(%rbp, 1), %rdx


call err_oob

.L148:
pushq %rbx

xorq %rbx, %rbx
movq -238(%rbp, 1), %rbx


movq %rbx, -262(%rbp, 1)
popq %rbx




movq -262(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -262(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -140(%rbp, 1)

jl .L149

movq -140(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L149:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -246(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -262(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -270(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -278(%rbp, 1)
popq %rbx




movq -278(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -278(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -270(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -278(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -270(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -278(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -286(%rbp, 1)


movq %r10, -294(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -294(%rbp, 1), %rbx


cmpq %rbx, -173(%rbp, 1)
popq %rbx



jl .L150

movq -173(%rbp, 1), %rsi


movq -294(%rbp, 1), %rdx


call err_oob

.L150:



pushq %rbx


xorq %rbx, %rbx

movq -286(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -173(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm1
popq %r12

popq %rbx



subss -108(%rbp, 1), %xmm1

pushq %rbx


xorq %rbx, %rbx

movq -286(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -173(%rbp, 1), %r12


movss %xmm1, 0(%rbx, %r12, 4)
popq %r12

popq %rbx









pushq %rbx


movq $1, %rbx


movq %rbx, -302(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -310(%rbp, 1)


movq %r10, -318(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -318(%rbp, 1), %rbx


cmpq %rbx, -302(%rbp, 1)
popq %rbx



jl .L152

movq -302(%rbp, 1), %rsi


movq -318(%rbp, 1), %rdx


call err_oob

.L152:
pushq %rbx

xorq %rbx, %rbx
movq -302(%rbp, 1), %rbx


movq %rbx, -326(%rbp, 1)
popq %rbx




movq -326(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -326(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -140(%rbp, 1)

jl .L153

movq -140(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L153:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -310(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -326(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -334(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -342(%rbp, 1)
popq %rbx




movq -342(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -342(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -334(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -342(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -334(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -342(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -350(%rbp, 1)


movq %r10, -358(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -358(%rbp, 1), %rbx


cmpq %rbx, -173(%rbp, 1)
popq %rbx



jl .L154

movq -173(%rbp, 1), %rsi


movq -358(%rbp, 1), %rdx


call err_oob

.L154:


pushq %rbx


xorq %rbx, %rbx

movq -350(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -173(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm2
popq %r12

popq %rbx


movsd %xmm2, -366(%rbp, 1)



movq $.L151, %rdi


movsd -366(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -370(%rbp, 1)






incq -173(%rbp, 1)




jmp .L155

.L156:




decq -140(%rbp, 1)




jmp .L157

.L158:




._back:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $1120, %rsp





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq $.L159, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, %rdi


movq $47, %rsi





movq $0, %rax


call read_dataset_image

movq %rdx, -8(%rbp, 1)


movq %rax, -16(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -8(%rbp, 1), %rbx


movq %rbx, -24(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -16(%rbp, 1), %rbx


movq %rbx, -32(%rbp, 1)
popq %rbx







pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -64(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq $.L160, %rax


leaq 0(%rax, 1), %r12


movq %r12, %rdi


movq $47, %rsi





movq $0, %rax


call read_dataset_label

movq %rdx, -40(%rbp, 1)


movq %rax, -48(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -40(%rbp, 1), %rbx


movq %rbx, -56(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


movq %rbx, -64(%rbp, 1)
popq %rbx












movq $.L161, %rdi


movq -24(%rbp, 1), %rsi



movq $0, %rax


call printf

movl %eax, %r13d




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -112(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movq $28, %r14



movq $28, %r15






pushq %rbx


movq $4, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx




movq -80(%rbp, 1), %rax


imulq -72(%rbp, 1), %rax

movq %rax, -80(%rbp, 1)




movq %r15, %rax


imulq -80(%rbp, 1), %rax

movq %rax, %r15




movq %r14, %rax


imulq %r15, %rax

movq %rax, %r14




movq %r14, %rdi



movq $0, %rax


call allocate

movq %rdx, -88(%rbp, 1)


movq %rax, -96(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -88(%rbp, 1), %rbx


movq %rbx, -104(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -96(%rbp, 1), %rbx


movq %rbx, -112(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -104(%rbp, 1), %rax


movq $3136, %r15


idivq %r15

movq %rax, -104(%rbp, 1)





movl $0, %r15d



movl %r15d, -116(%rbp, 1)




.L172:





pushq %rbx

xorq %rbx, %rbx
movl -104(%rbp, 1), %ebx


movl %ebx, -120(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -120(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -124(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -125(%rbp, 1), %bl


xorb %bl, -125(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -120(%rbp, 1), %ebx


cmpl %ebx, -124(%rbp, 1)
popq %rbx



setb -125(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -125(%rbp, 1), %bl


andb %bl, -125(%rbp, 1)
popq %rbx



jz .L173

movl $0, -129(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -129(%rbp, 1), %ebx


movl %ebx, -133(%rbp, 1)
popq %rbx






.L170:

movl $28, -137(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -141(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -142(%rbp, 1), %bl


xorb %bl, -142(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -137(%rbp, 1), %ebx


cmpl %ebx, -141(%rbp, 1)
popq %rbx



setb -142(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -142(%rbp, 1), %bl


andb %bl, -142(%rbp, 1)
popq %rbx



jz .L171

movl $0, -146(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -146(%rbp, 1), %ebx


movl %ebx, -150(%rbp, 1)
popq %rbx






.L168:

movl $28, -154(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


movl %ebx, -158(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -159(%rbp, 1), %bl


xorb %bl, -159(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -154(%rbp, 1), %ebx


cmpl %ebx, -158(%rbp, 1)
popq %rbx



setb -159(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -159(%rbp, 1), %bl


andb %bl, -159(%rbp, 1)
popq %rbx



jz .L169



pushq %rbx

xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -167(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -167(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -175(%rbp, 1)


movq %r10, -183(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -183(%rbp, 1), %rbx


cmpq %rbx, -167(%rbp, 1)
popq %rbx



jl .L162

movq -167(%rbp, 1), %rsi


movq -183(%rbp, 1), %rdx


call err_oob

.L162:
pushq %rbx

xorq %rbx, %rbx
movq -167(%rbp, 1), %rbx


movq %rbx, -191(%rbp, 1)
popq %rbx




movq -191(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -191(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -199(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -199(%rbp, 1)

cmpq $28, -199(%rbp, 1)

jl .L163

movq -199(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L163:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -175(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -191(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -207(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -199(%rbp, 1), %rbx


movq %rbx, -215(%rbp, 1)
popq %rbx




movq -215(%rbp, 1), %rax


imulq $28, %rax

movq %rax, -215(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


movl %ebx, -223(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -223(%rbp, 1)

cmpq $28, -223(%rbp, 1)

jl .L164

movq -223(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L164:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -207(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -215(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -231(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -231(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -223(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

popq %rbx

movb %r13b, -232(%rbp, 1)
popq %r13






movb $0, -233(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -232(%rbp, 1), %bl


movb %bl, -234(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


xorb %bl, -235(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movb -233(%rbp, 1), %bl


cmpb %bl, -234(%rbp, 1)
popq %rbx



seta -235(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


andb %bl, -235(%rbp, 1)
popq %rbx



jz .L167

pushq %rbx


movq $1065353216, %rbx


movq %rbx, -295(%rbp, 1)

popq %rbx






movq %rbx, -303(%rbp, 1)


movq -232(%rbp, 1), %rbx

andq $255, %rbx

cvtsi2ss %rbx, %xmm0

movq -303(%rbp, 1), %rbx


movss %xmm0, -307(%rbp, 1)



movss -295(%rbp, 1), %xmm0


divss -307(%rbp, 1), %xmm0

movss %xmm0, -295(%rbp, 1)




movl -295(%rbp, 1), %ebx




pushq %rbx

xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -243(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -243(%rbp, 1)

pushq %r10


pushq %r11


movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -251(%rbp, 1)


movq %r10, -259(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -259(%rbp, 1), %rbx


cmpq %rbx, -243(%rbp, 1)
popq %rbx



jl .L165

movq -243(%rbp, 1), %rsi


movq -259(%rbp, 1), %rdx


call err_oob

.L165:
pushq %rbx

xorq %rbx, %rbx
movq -243(%rbp, 1), %rbx


movq %rbx, -267(%rbp, 1)
popq %rbx




movq -267(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -267(%rbp, 1)



// mul on the CPU up here ^




movl $28, -271(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -275(%rbp, 1)
popq %rbx




movl -275(%rbp, 1), %eax


imull -271(%rbp, 1), %eax

movl %eax, -275(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


addl %ebx, -275(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -275(%rbp, 1), %ebx


movl %ebx, -283(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -283(%rbp, 1)

cmpq $784, -283(%rbp, 1)

jl .L166

movq -283(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L166:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -251(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -267(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -291(%rbp, 1)


popq %r10




pushq %r12


xorq %r12, %r12

movq -291(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -283(%rbp, 1), %r13


movl %ebx, 0(%r12, %r13, 4)
popq %r13

popq %r12





.L167:




incl -150(%rbp, 1)




jmp .L168

.L169:




incl -133(%rbp, 1)




jmp .L170

.L171:




incl -116(%rbp, 1)




jmp .L172

.L173:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -363(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax






pushq %rbx


movq $4, %rbx


movq %rbx, -315(%rbp, 1)

popq %rbx




pushq %rbx


movq $10, %rbx


movq %rbx, -323(%rbp, 1)

popq %rbx




movq -315(%rbp, 1), %rax


imulq -323(%rbp, 1), %rax

movq %rax, -315(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -56(%rbp, 1), %rbx


movq %rbx, -331(%rbp, 1)
popq %rbx




movq -331(%rbp, 1), %rax


imulq -315(%rbp, 1), %rax

movq %rax, -331(%rbp, 1)




movq -331(%rbp, 1), %rdi



movq $0, %rax


call allocate

movq %rdx, -339(%rbp, 1)


movq %rax, -347(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -339(%rbp, 1), %rbx


movq %rbx, -355(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -347(%rbp, 1), %rbx


movq %rbx, -363(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -355(%rbp, 1), %rax


pushq %rbx


movq $40, %rbx


movq %rbx, -371(%rbp, 1)

popq %rbx



idivq -371(%rbp, 1)

movq %rax, -355(%rbp, 1)





movl $0, -375(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -375(%rbp, 1), %ebx


movl %ebx, -379(%rbp, 1)
popq %rbx






.L177:





pushq %rbx

xorq %rbx, %rbx
movl -355(%rbp, 1), %ebx


movl %ebx, -383(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -383(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -379(%rbp, 1), %ebx


movl %ebx, -387(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -388(%rbp, 1), %bl


xorb %bl, -388(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -383(%rbp, 1), %ebx


cmpl %ebx, -387(%rbp, 1)
popq %rbx



setb -388(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -388(%rbp, 1), %bl


andb %bl, -388(%rbp, 1)
popq %rbx



jz .L178



pushq %rbx

xorq %rbx, %rbx
movl -379(%rbp, 1), %ebx


movl %ebx, -396(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -396(%rbp, 1)

pushq %r10


pushq %r11


movq -56(%rbp, 1), %r10


movq -64(%rbp, 1), %r11



movq %r11, -404(%rbp, 1)


movq %r10, -412(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -412(%rbp, 1), %rbx


cmpq %rbx, -396(%rbp, 1)
popq %rbx



jl .L174

movq -396(%rbp, 1), %rsi


movq -412(%rbp, 1), %rdx


call err_oob

.L174:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -404(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -396(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

popq %rbx

movb %r13b, -413(%rbp, 1)
popq %r13





pushq %rbx


movq $1065353216, %rbx


movq %rbx, -465(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -465(%rbp, 1), %ebx


movl %ebx, -469(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -379(%rbp, 1), %ebx


movl %ebx, -421(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -421(%rbp, 1)

pushq %r10


pushq %r11


movq -355(%rbp, 1), %r10


movq -363(%rbp, 1), %r11



movq %r11, -429(%rbp, 1)


movq %r10, -437(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -437(%rbp, 1), %rbx


cmpq %rbx, -421(%rbp, 1)
popq %rbx



jl .L175

movq -421(%rbp, 1), %rsi


movq -437(%rbp, 1), %rdx


call err_oob

.L175:
pushq %rbx

xorq %rbx, %rbx
movq -421(%rbp, 1), %rbx


movq %rbx, -445(%rbp, 1)
popq %rbx




movq -445(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -445(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movb -413(%rbp, 1), %bl


movb %bl, -453(%rbp, 1)
popq %rbx




movq $255, %rax


andq %rax, -453(%rbp, 1)

cmpq $10, -453(%rbp, 1)

jl .L176

movq -453(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L176:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -429(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -445(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -461(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -461(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -453(%rbp, 1), %r12


movl -469(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -379(%rbp, 1)




jmp .L177

.L178:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -501(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq $0, %rax


call nn

movq %rdx, -477(%rbp, 1)


movq %rax, -485(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -477(%rbp, 1), %rbx


movq %rbx, -493(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -485(%rbp, 1), %rbx


movq %rbx, -501(%rbp, 1)
popq %rbx












movq $.L179, %rdi


movq -493(%rbp, 1), %rsi



movq $0, %rax


call printf

movl %eax, -505(%rbp, 1)




movl $0, -509(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -509(%rbp, 1), %ebx


movl %ebx, -513(%rbp, 1)
popq %rbx






.L192:





pushq %rbx

xorq %rbx, %rbx
movl -493(%rbp, 1), %ebx


movl %ebx, -517(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -517(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -513(%rbp, 1), %ebx


movl %ebx, -521(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -522(%rbp, 1), %bl


xorb %bl, -522(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -517(%rbp, 1), %ebx


cmpl %ebx, -521(%rbp, 1)
popq %rbx



setl -522(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -522(%rbp, 1), %bl


andb %bl, -522(%rbp, 1)
popq %rbx



jz .L193

movl $0, -526(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -526(%rbp, 1), %ebx


movl %ebx, -530(%rbp, 1)
popq %rbx






.L190:




pushq %rbx

xorq %rbx, %rbx
movl -513(%rbp, 1), %ebx


movl %ebx, -538(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -538(%rbp, 1)

pushq %r10


pushq %r11


movq -493(%rbp, 1), %r10


movq -501(%rbp, 1), %r11



movq %r11, -546(%rbp, 1)


movq %r10, -554(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -554(%rbp, 1), %rbx


cmpq %rbx, -538(%rbp, 1)
popq %rbx



jl .L180

movq -538(%rbp, 1), %rsi


movq -554(%rbp, 1), %rdx


call err_oob

.L180:
pushq %rbx

xorq %rbx, %rbx
movq -538(%rbp, 1), %rbx


movq %rbx, -562(%rbp, 1)
popq %rbx




movq -562(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -562(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -570(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -570(%rbp, 1), %ebx


movl %ebx, -574(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -574(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -530(%rbp, 1), %ebx


movl %ebx, -578(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -579(%rbp, 1), %bl


xorb %bl, -579(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -574(%rbp, 1), %ebx


cmpl %ebx, -578(%rbp, 1)
popq %rbx



setl -579(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -579(%rbp, 1), %bl


andb %bl, -579(%rbp, 1)
popq %rbx



jz .L191

movl $0, -583(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -583(%rbp, 1), %ebx


movl %ebx, -587(%rbp, 1)
popq %rbx






.L186:




pushq %rbx

xorq %rbx, %rbx
movl -513(%rbp, 1), %ebx


movl %ebx, -595(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -595(%rbp, 1)

pushq %r10


pushq %r11


movq -493(%rbp, 1), %r10


movq -501(%rbp, 1), %r11



movq %r11, -603(%rbp, 1)


movq %r10, -611(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -611(%rbp, 1), %rbx


cmpq %rbx, -595(%rbp, 1)
popq %rbx



jl .L181

movq -595(%rbp, 1), %rsi


movq -611(%rbp, 1), %rdx


call err_oob

.L181:
pushq %rbx

xorq %rbx, %rbx
movq -595(%rbp, 1), %rbx


movq %rbx, -619(%rbp, 1)
popq %rbx




movq -619(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -619(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -530(%rbp, 1), %ebx


movl %ebx, -627(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -627(%rbp, 1)

cmpq $10, -627(%rbp, 1)

jl .L182

movq -627(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L182:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -603(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -619(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -635(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -627(%rbp, 1), %rbx


movq %rbx, -643(%rbp, 1)
popq %rbx




movq -643(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -643(%rbp, 1)



// mul on the CPU up here ^







pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -635(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -643(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -647(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -647(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -587(%rbp, 1), %ebx


movl %ebx, -651(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -652(%rbp, 1), %bl


xorb %bl, -652(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -647(%rbp, 1), %ebx


cmpl %ebx, -651(%rbp, 1)
popq %rbx



setl -652(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -652(%rbp, 1), %bl


andb %bl, -652(%rbp, 1)
popq %rbx



jz .L187

pushq %rbx


movq $1065353216, %rbx


movq %rbx, -736(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -736(%rbp, 1), %ebx


movl %ebx, -740(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -513(%rbp, 1), %ebx


movl %ebx, -660(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -660(%rbp, 1)

pushq %r10


pushq %r11


movq -493(%rbp, 1), %r10


movq -501(%rbp, 1), %r11



movq %r11, -668(%rbp, 1)


movq %r10, -676(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -676(%rbp, 1), %rbx


cmpq %rbx, -660(%rbp, 1)
popq %rbx



jl .L183

movq -660(%rbp, 1), %rsi


movq -676(%rbp, 1), %rdx


call err_oob

.L183:
pushq %rbx

xorq %rbx, %rbx
movq -660(%rbp, 1), %rbx


movq %rbx, -684(%rbp, 1)
popq %rbx




movq -684(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -684(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -530(%rbp, 1), %ebx


movl %ebx, -692(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -692(%rbp, 1)

cmpq $10, -692(%rbp, 1)

jl .L184

movq -692(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L184:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -668(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -684(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -700(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -692(%rbp, 1), %rbx


movq %rbx, -708(%rbp, 1)
popq %rbx




movq -708(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -708(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

xorq %rbx, %rbx
movl -587(%rbp, 1), %ebx


movl %ebx, -716(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -716(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -700(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -708(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -700(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -708(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -724(%rbp, 1)


movq %r10, -732(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -732(%rbp, 1), %rbx


cmpq %rbx, -716(%rbp, 1)
popq %rbx



jl .L185

movq -716(%rbp, 1), %rsi


movq -732(%rbp, 1), %rdx


call err_oob

.L185:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -724(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -716(%rbp, 1), %r12


movl -740(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -587(%rbp, 1)




jmp .L186

.L187:


pushq %rbx


movq $1065353216, %rbx


movq %rbx, -800(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -800(%rbp, 1), %ebx


movl %ebx, -804(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -513(%rbp, 1), %ebx


movl %ebx, -748(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -748(%rbp, 1)

pushq %r10


pushq %r11


movq -493(%rbp, 1), %r10


movq -501(%rbp, 1), %r11



movq %r11, -756(%rbp, 1)


movq %r10, -764(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -764(%rbp, 1), %rbx


cmpq %rbx, -748(%rbp, 1)
popq %rbx



jl .L188

movq -748(%rbp, 1), %rsi


movq -764(%rbp, 1), %rdx


call err_oob

.L188:
pushq %rbx

xorq %rbx, %rbx
movq -748(%rbp, 1), %rbx


movq %rbx, -772(%rbp, 1)
popq %rbx




movq -772(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -772(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -530(%rbp, 1), %ebx


movl %ebx, -780(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -780(%rbp, 1)

cmpq $10, -780(%rbp, 1)

jl .L189

movq -780(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L189:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -756(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -772(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -788(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -780(%rbp, 1), %rbx


movq %rbx, -796(%rbp, 1)
popq %rbx




movq -796(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -796(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -788(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -796(%rbp, 1), %r12


movl -804(%rbp, 1), %r13d


movl %r13d, 16(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13







incl -530(%rbp, 1)




jmp .L190

.L191:




incl -513(%rbp, 1)




jmp .L192

.L193:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -924(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





pushq %rbx


movq $5, %rbx


movq %rbx, -812(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -820(%rbp, 1)


movq %r10, -828(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -828(%rbp, 1), %rbx


cmpq %rbx, -812(%rbp, 1)
popq %rbx



jl .L194

movq -812(%rbp, 1), %rsi


movq -828(%rbp, 1), %rdx


call err_oob

.L194:
pushq %rbx

xorq %rbx, %rbx
movq -812(%rbp, 1), %rbx


movq %rbx, -836(%rbp, 1)
popq %rbx




movq -836(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -836(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


leaq -876(%rbp, 1), %rbx

movq %rbx, %rdi


movq -493(%rbp, 1), %rdx


movq -501(%rbp, 1), %rsi




subq $3136, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -820(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -836(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx


leaq 0(%rax, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




popq %rbx


movq $0, %rax


call forward

addq $3136, %rsp

movq %rax, -884(%rbp, 1)




pushq %rsi


pushq %rdi


pushq %rcx


leaq -876(%rbp, 1), %rsi

leaq -924(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movl $0, -928(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -928(%rbp, 1), %ebx


movl %ebx, -932(%rbp, 1)
popq %rbx






.L199:



pushq %rbx


movq $10, %rbx


movq %rbx, -940(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -940(%rbp, 1), %ebx


movl %ebx, -944(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -944(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -932(%rbp, 1), %ebx


movl %ebx, -948(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -949(%rbp, 1), %bl


xorb %bl, -949(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -944(%rbp, 1), %ebx


cmpl %ebx, -948(%rbp, 1)
popq %rbx



setl -949(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -949(%rbp, 1), %bl


andb %bl, -949(%rbp, 1)
popq %rbx



jz .L200







pushq %rbx

xorq %rbx, %rbx
movl -932(%rbp, 1), %ebx


movl %ebx, -957(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -957(%rbp, 1)

cmpq $10, -957(%rbp, 1)

jl .L196

movq -957(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L196:
pushq %r10


leaq -924(%rbp, 1), %r10

movq %r10, -965(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -965(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -957(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -973(%rbp, 1)






pushq %rbx


movq $5, %rbx


movq %rbx, -981(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -355(%rbp, 1), %r10


movq -363(%rbp, 1), %r11



movq %r11, -989(%rbp, 1)


movq %r10, -997(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -997(%rbp, 1), %rbx


cmpq %rbx, -981(%rbp, 1)
popq %rbx



jl .L197

movq -981(%rbp, 1), %rsi


movq -997(%rbp, 1), %rdx


call err_oob

.L197:
pushq %rbx

xorq %rbx, %rbx
movq -981(%rbp, 1), %rbx


movq %rbx, -1005(%rbp, 1)
popq %rbx




movq -1005(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -1005(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -932(%rbp, 1), %ebx


movl %ebx, -1013(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -1013(%rbp, 1)

cmpq $10, -1013(%rbp, 1)

jl .L198

movq -1013(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L198:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -989(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -1005(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -1021(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -1021(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -1013(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -1029(%rbp, 1)



movq $.L195, %rdi


movl -932(%rbp, 1), %esi


movsd -973(%rbp, 1), %xmm0


movl -932(%rbp, 1), %edx


movsd -1029(%rbp, 1), %xmm1



movq $1, %rax


call printf

movl %eax, -1033(%rbp, 1)






incl -932(%rbp, 1)




jmp .L199

.L200:







pushq %rbx


movq $5, %rbx


movq %rbx, -1041(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -355(%rbp, 1), %r10


movq -363(%rbp, 1), %r11



movq %r11, -1049(%rbp, 1)


movq %r10, -1057(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -1057(%rbp, 1), %rbx


cmpq %rbx, -1041(%rbp, 1)
popq %rbx



jl .L202

movq -1041(%rbp, 1), %rsi


movq -1057(%rbp, 1), %rdx


call err_oob

.L202:
pushq %rbx

xorq %rbx, %rbx
movq -1041(%rbp, 1), %rbx


movq %rbx, -1065(%rbp, 1)
popq %rbx




movq -1065(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -1065(%rbp, 1)



// mul on the CPU up here ^



subq $48, %rsp

movq %rsp, %rax


addq $8, %rax

pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -1049(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -1065(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx


leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



subq $32, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -924(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq $0, %rax


call cost

addq $32, %rsp

addq $48, %rsp

movss %xmm0, -1069(%rbp, 1)




cvtss2sd -1069(%rbp, 1), %xmm0

movsd %xmm0, -1077(%rbp, 1)



movq $.L201, %rdi


movsd -1077(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -1081(%rbp, 1)







pushq %rbx


movq $5, %rbx


movq %rbx, -1089(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -355(%rbp, 1), %r10


movq -363(%rbp, 1), %r11



movq %r11, -1097(%rbp, 1)


movq %r10, -1105(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -1105(%rbp, 1), %rbx


cmpq %rbx, -1089(%rbp, 1)
popq %rbx



jl .L203

movq -1089(%rbp, 1), %rsi


movq -1105(%rbp, 1), %rdx


call err_oob

.L203:
pushq %rbx

xorq %rbx, %rbx
movq -1089(%rbp, 1), %rbx


movq %rbx, -1113(%rbp, 1)
popq %rbx




movq -1113(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -1113(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $1036831949, %rbx


movq %rbx, -1117(%rbp, 1)

popq %rbx




movq -493(%rbp, 1), %rsi


movq -501(%rbp, 1), %rdi




movss -1117(%rbp, 1), %xmm0


subq $48, %rsp

movq %rsp, %rax


addq $8, %rax

pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -1097(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -1113(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx


leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



subq $32, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -924(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq $1, %rax


call back

addq $32, %rsp

addq $48, %rsp



jmp ._main





._main:
movq %rbp, %rsp

popq %rbp

ret



 
function_name:
	pushq %rbp
	movq %rsp, %rbp

	// skip null-termination
	decq %rdi
	decq %rdi

	f_name_loop:
	cmpb $0, (%rdi)
	je  f_name_loop_exit

	decq %rdi
	jmp f_name_loop

	f_name_loop_exit:
	incq %rdi
	movq %rdi, %rax

	movq %rbp, %rsp
	popq %rbp
	ret
	

.string "\0stack_trace"
.global stack_trace
stack_trace:
	pushq %rbp
	movq %rsp, %rbp

	stack_trace_loop:
	// check if i am at the bottom of the stack and exit 
	
	


	// call instruction address 
	movq 8(%rbp), %rbx
	
	// to get the address of the current function, we
	// read the call instruction:
	// let's assume the opcode is big 1 byte, and the operand (address) is 
	// big 4 bytes.

	// read the opcode
	movb -5(%rbx), %sil

	//op E8 means relative addressing
	cmpb $0xe8, %sil
	je stack_trace_relative
	
	jmp stack_trace_absolute
	stack_trace_relative:
	// read function address
	xorq %r12, %r12
	movl -4(%rbx), %r12d
	
	// add to caller address
	addl %ebx, %r12d

	movq %r12, %rdi
	call function_name

	movq %rax, %rsi
	movq $stack_trace_message, %rdi
	call printf
	jmp stack_trace_continue

	stack_trace_absolute:
	// read function address
	xorq %r12, %r12
	movl -4(%rbx), %r12d

	movq %r12, %rdi
	call function_name

	movq %rax, %rsi
	movq $stack_trace_message, %rdi
	call printf
	
	stack_trace_continue:
	// if function address is == main, we are at the end!
	cmpq $main, %r12
	je stack_trace_exit

	// base pointer of caller
	movq (%rbp), %rbp  
	jmp stack_trace_loop
	
	stack_trace_exit:
	movq %rbp, %rsp
	popq %rbp
	ret
	
 
.string "\0err_oob"
.global err_oob
err_oob:
	pushq %rbp
	movq %rsp, %rbp

	// rsi = index; rdx = length
	movq $err_oob_message, %rdi
	call printf

	call stack_trace
	call exit

.string "\0_mystart"
.global _mystart
_mystart:

	// rdi, rsi: args
	// (skip argc)
	leaq 8(%rsp), %rdi
	xorq %rsi, %rsi
	_mystart_args_loop:
	// if NULL end
	cmpq $0, (%rdi, %rsi, 8)
	je _mystart_args_loop_end
	incq %rsi
	jmp _mystart_args_loop
	_mystart_args_loop_end:

	// rdx, rcx: envs
	// (skip null)
	leaq 8(%rdi, %rsi, 8), %rdx
	xorq %rcx, %rcx
	_mystart_envs_loop:
	cmpq $0, (%rdx, %rcx, 8)
	je _mystart_envs_loop_end
	incq %rcx
	jmp _mystart_envs_loop
	_mystart_envs_loop_end:
	
	call main
	movq %rax, %rdi

	call exit


.data





































































































































































































































































.L1: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 100, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 0










































.L3: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

























.L5: .byte 109, 97, 103, 105, 99, 32, 110, 117, 109, 98, 101, 114, 58, 32, 37, 120, 10, 0






































.L6: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

























.L8: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 105, 109, 97, 103, 101, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0






































.L9: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

























.L11: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 114, 111, 119, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0






































.L12: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

























.L14: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 99, 111, 108, 117, 109, 110, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0

























.L15: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 112, 105, 120, 101, 108, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0














































































































.L17: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0































































.L21: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 100, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 0










































.L23: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

























.L25: .byte 109, 97, 103, 105, 99, 32, 110, 117, 109, 98, 101, 114, 58, 32, 37, 120, 10, 0






































.L26: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

























.L28: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 108, 97, 98, 101, 108, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0

































































.L29: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0

































































































































































.L36: .byte 110, 101, 116, 32, 108, 97, 121, 101, 114, 115, 58, 32, 37, 117, 10, 0













































































































.L42: .byte 110, 101, 116, 91, 48, 93, 32, 119, 101, 105, 103, 104, 116, 115, 58, 32, 37, 117, 10, 0

















































































































































.L50: .byte 110, 101, 116, 91, 49, 93, 32, 119, 101, 105, 103, 104, 116, 115, 58, 32, 37, 117, 10, 0





























































.L53: .byte 120, 32, 58, 32, 37, 102, 10, 0










































.L54: .byte 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 103, 10, 0













.L55: .byte 100, 101, 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 103, 10, 0



























































.L56: .byte 120, 91, 37, 117, 93, 32, 61, 32, 37, 102, 10, 0

















































.L61: .byte 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 102, 10, 0

























.L63: .byte 100, 101, 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 102, 10, 0






















































.L65: .byte 105, 110, 112, 117, 116, 32, 108, 97, 121, 101, 114, 32, 40, 115, 105, 103, 109, 111, 105, 100, 41, 58, 10, 0









































.L67: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0






























.L68: .byte 37, 102, 32, 0








































































.L74: .byte 10, 0















.L77: .byte 105, 110, 112, 117, 116, 58, 10, 0






























.L78: .byte 37, 102, 32, 0






































.L82: .byte 10, 0















.L85: .byte 98, 105, 97, 115, 58, 32, 37, 102, 10, 0





















































































































































.L93: .byte 108, 111, 103, 105, 115, 116, 105, 99, 58, 32, 37, 102, 10, 0




























.L97: .byte 111, 117, 116, 112, 117, 116, 32, 108, 97, 121, 101, 114, 32, 40, 115, 111, 102, 116, 109, 97, 120, 41, 58, 10, 0












































.L99: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0



















.L100: .byte 37, 102, 32, 0






































































.L106: .byte 105, 110, 112, 117, 116, 58, 10, 0



















.L107: .byte 37, 102, 32, 0




































.L111: .byte 98, 105, 97, 115, 58, 32, 37, 102, 10, 0
















































































































































































































.L123: .byte 115, 111, 102, 116, 109, 97, 120, 58, 32, 37, 102, 10, 0


































































































































.L127: .byte 113, 91, 37, 117, 93, 58, 32, 37, 102, 59, 32, 112, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0














































































































































.L136: .byte 113, 91, 37, 117, 93, 58, 32, 37, 102, 59, 32, 112, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0






















































































































































































































































































.L151: .byte 37, 102, 10, 0











































































.L159: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 105, 109, 97, 103, 101, 115, 45, 105, 100, 120, 51, 45, 117, 98, 121, 116, 101, 0





















.L160: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 108, 97, 98, 101, 108, 115, 45, 105, 100, 120, 49, 45, 117, 98, 121, 116, 101, 0



















.L161: .byte 37, 108, 108, 120, 10, 0













































































































































































































































































































































.L179: .byte 110, 101, 117, 114, 97, 108, 95, 110, 101, 116, 119, 111, 114, 107, 46, 108, 101, 110, 58, 32, 37, 100, 10, 0











































































































































































































































































.L195: .byte 112, 114, 111, 98, 97, 98, 105, 108, 105, 116, 121, 91, 37, 117, 93, 58, 32, 37, 102, 59, 32, 108, 97, 98, 101, 108, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0





























































.L201: .byte 99, 111, 115, 116, 58, 32, 37, 102, 10, 0





















































































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


