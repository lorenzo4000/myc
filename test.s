struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
[[false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false true false false false false] [false false false false false false] [false true false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false]]
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


movq %rsp, %rax



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


movq %rsp, %rax



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

subq $80, %rsp



movl $0, -64(%rbp, 1)



movl %edi, -64(%rbp, 1)




movl $0, %ebx



movl %ebx, -68(%rbp, 1)





movl $255, %r12d



movl $0, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -64(%rbp, 1), %r13d


andl %r12d, %r13d



movl $24, %r12d



movl %r12d, %ecx


shll %cl, %r13d



orl %r13d, -68(%rbp, 1)





movl $255, %r12d



movl $8, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -64(%rbp, 1), %r13d


andl %r12d, %r13d



movl $8, %r12d



movl %r12d, %ecx


shll %cl, %r13d



orl %r13d, -68(%rbp, 1)





movl $255, %r12d



movl $16, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -64(%rbp, 1), %r13d


andl %r12d, %r13d



movl $8, %r12d



movl %r12d, %ecx


shrl %cl, %r13d



orl %r13d, -68(%rbp, 1)





movl $255, %r12d



movl $24, %r13d



movl %r13d, %ecx


shll %cl, %r12d



movl -64(%rbp, 1), %r13d


andl %r12d, %r13d



movl $24, %r12d



movl %r12d, %ecx


shrl %cl, %r13d



orl %r13d, -68(%rbp, 1)




movl -68(%rbp, 1), %eax


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

subq $496, %rsp



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


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_image





.L4:



movl -25(%rbp, 1), %edi


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_image





.L7:



movl -86(%rbp, 1), %edi


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -208(%rbp, 1)




jmp ._read_dataset_image





.L10:



movl -155(%rbp, 1), %edi


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -277(%rbp, 1)




jmp ._read_dataset_image





.L13:



movl -224(%rbp, 1), %edi


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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



jb .L16

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


movq %rsp, %rax



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


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -467(%rbp, 1)




jmp ._read_dataset_image





.L18:




incl -361(%rbp, 1)




jmp .L19

.L20:



movl -20(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -471(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -471(%rbp, 1), %ebx


movl %ebx, -475(%rbp, 1)
popq %rbx






movl $0, -479(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -475(%rbp, 1), %ebx


movl %ebx, -483(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -484(%rbp, 1), %bl


xorb %bl, -484(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -479(%rbp, 1), %ebx


cmpl %ebx, -483(%rbp, 1)
popq %rbx



setl -484(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -484(%rbp, 1), %bl


andb %bl, -484(%rbp, 1)
popq %rbx



jz .L22





movq $.L21, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -488(%rbp, 1)





.L22:



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

subq $272, %rsp



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


movq %rsp, %rax



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



jz .L24





movq $.L23, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r14d




jmp ._read_dataset_label





.L24:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx


movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx




movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx


movq %rsp, %rax



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



jz .L26



movq $.L25, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_label





.L26:



movl -25(%rbp, 1), %edi


movq %rsp, %rax



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








movq $.L27, %rdi


movl -25(%rbp, 1), %esi


movq %rsp, %rax



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


movq %rsp, %rax



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



jz .L29



movq $.L28, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_label





.L29:



movl -86(%rbp, 1), %edi


movq %rsp, %rax



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








movq $.L30, %rdi


movl -86(%rbp, 1), %esi


movq %rsp, %rax



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


movq %rsp, %rax



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


movq %rsp, %rax



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



jz .L32



movq $.L31, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -244(%rbp, 1)




jmp ._read_dataset_label





.L32:



movl -20(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -248(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -248(%rbp, 1), %ebx


movl %ebx, -252(%rbp, 1)
popq %rbx






movl $0, -256(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -252(%rbp, 1), %ebx


movl %ebx, -260(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -261(%rbp, 1), %bl


xorb %bl, -261(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -256(%rbp, 1), %ebx


cmpl %ebx, -260(%rbp, 1)
popq %rbx



setl -261(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -261(%rbp, 1), %bl


andb %bl, -261(%rbp, 1)
popq %rbx



jz .L34





movq $.L33, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -265(%rbp, 1)





.L34:



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

jz .L35

jmp ._vecmul





.L35:


movl $0, -36(%rbp, 1)



movl $0, %ebx



movl %ebx, -40(%rbp, 1)




.L38:





movl -8(%rbp, 1), %r13d


movq $-1, %rax


andq %rax, %r13


movl -40(%rbp, 1), %r14d


xorb %r15b, %r15b

cmpl %r13d, %r14d

setl %r15b



andb %r15b, %r15b

jz .L39




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

jb .L36

movq %r13, %rsi


movq -56(%rbp, 1), %rdx


call err_oob

.L36:




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

jb .L37

movq %r14, %rsi


movq -72(%rbp, 1), %rdx


call err_oob

.L37:


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




jmp .L38

.L39:




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


movq %rsp, %rax



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










movq $.L40, %rdi


movq -44(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r12d




movq $0, %r13



movq %r13, -60(%rbp, 1)




.L44:


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

jb .L41

movq %r14, %rsi


movq -76(%rbp, 1), %rdx


call err_oob

.L41:
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



jz .L45

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


movq %rsp, %rax



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

jb .L42

movq %r15, %rsi


movq -101(%rbp, 1), %rdx


call err_oob

.L42:
movq %r15, %rax


imulq $200, %rax

movq %rax, %r15






cmpq $10, -60(%rbp, 1)

jb .L43

movq -60(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L43:
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




jmp .L44

.L45:





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



jb .L47

movq -189(%rbp, 1), %rsi


movq -205(%rbp, 1), %rdx


call err_oob

.L47:
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

jb .L48

movq -221(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L48:
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







movq $.L46, %rdi


pushq %rbx


xorq %rbx, %rbx

movq -229(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -237(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq %rsp, %rax



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






.L52:


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



jb .L49

movq -265(%rbp, 1), %rsi


movq -281(%rbp, 1), %rdx


call err_oob

.L49:
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



jz .L53

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


movq %rsp, %rax



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



jb .L50

movq -314(%rbp, 1), %rsi


movq -330(%rbp, 1), %rdx


call err_oob

.L50:
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

jb .L51

movq -257(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L51:
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




jmp .L52

.L53:





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



jb .L55

movq -426(%rbp, 1), %rsi


movq -442(%rbp, 1), %rdx


call err_oob

.L55:
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

jb .L56

movq -458(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L56:
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







movq $.L54, %rdi


pushq %rbx


xorq %rbx, %rbx

movq -466(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -474(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq %rsp, %rax



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

subq $64, %rsp



movl $0, -20(%rbp, 1)



movss %xmm0, -20(%rbp, 1)




movl $1065353216, %ebx



movl %ebx, -24(%rbp, 1)



movl $1065353216, %r12d




movl -20(%rbp, 1), %r13d


movl $0, %r14d


movl %r14d, %r15d


movq %r15, %xmm0


movl %r13d, -28(%rbp, 1)


movss -28(%rbp, 1), %xmm1


subss %xmm1, %xmm0

movq %xmm0, %r14



movl %r14d, %r13d




movl %r13d, -32(%rbp, 1)


movss -32(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call expf

movss %xmm0, -36(%rbp, 1)




movl %r12d, -40(%rbp, 1)


movss -40(%rbp, 1), %xmm0


addss -36(%rbp, 1), %xmm0

movq %xmm0, %r12




movl %r12d, -44(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -48(%rbp, 1)
popq %rbx




movss -48(%rbp, 1), %xmm1


divss -44(%rbp, 1), %xmm1

movss %xmm1, -48(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -48(%rbp, 1), %ebx


movl %ebx, -52(%rbp, 1)
popq %rbx






movss -52(%rbp, 1), %xmm0


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




movl $0, -20(%rbp, 1)



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movl %edx, -20(%rbp, 1)




movl $0, %ebx



movl %ebx, -24(%rbp, 1)



movq $0, %r12



movq %r12, -32(%rbp, 1)




.L58:




movq -32(%rbp, 1), %r13


xorb %r14b, %r14b

cmpq -8(%rbp, 1), %r13

setb %r14b



andb %r14b, %r14b

jz .L59




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



jb .L57

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


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



movq %rsp, %rax



movq $1, %rax


call expf

movq %xmm0, %r13




movss -24(%rbp, 1), %xmm0


movl %r13d, %r15d


movq %r15, %xmm1


addss %xmm1, %xmm0

movss %xmm0, -24(%rbp, 1)






incq -32(%rbp, 1)




jmp .L58

.L59:




pushq %rbx

xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -56(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -56(%rbp, 1)

pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -64(%rbp, 1)


movq %r10, -72(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -72(%rbp, 1), %rbx


cmpq %rbx, -56(%rbp, 1)
popq %rbx



jb .L60

movq -56(%rbp, 1), %rsi


movq -72(%rbp, 1), %rdx


call err_oob

.L60:


pushq %rbx


xorq %rbx, %rbx

movq -64(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -56(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



movq %rsp, %rax



movq $1, %rax


call expf

movss %xmm0, -76(%rbp, 1)





movss -76(%rbp, 1), %xmm0


divss -24(%rbp, 1), %xmm0

movss %xmm0, -76(%rbp, 1)





movss -76(%rbp, 1), %xmm0


._softmax:
movq %rbp, %rsp

popq %rbp

ret




.string "\0forward"
.global forward
forward:
pushq %rbp

movq %rsp, %rbp

subq $3872, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -48(%rbp, 1), %rdi

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

leaq -3184(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3216(%rbp, 1), %rdi

movq $32, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq %rsi, -40(%rbp, 1)


movq %rdi, -48(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -3184(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



pushq %rbx

xorq %rbx, %rbx
movq 3176(%rbp, 1), %rbx


movq %rbx, -3192(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq 3168(%rbp, 1), %rbx


movq %rbx, -3200(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq 3160(%rbp, 1), %rbx


movq %rbx, -3208(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq 3152(%rbp, 1), %rbx


movq %rbx, -3216(%rbp, 1)
popq %rbx










movl $0, %ebx



movl %ebx, -3220(%rbp, 1)




.L70:



movq $0, %r12



pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3228(%rbp, 1)


movq %r10, -3236(%rbp, 1)


popq %r11


popq %r10


cmpq -3236(%rbp, 1), %r12

jb .L61

movq %r12, %rsi


movq -3236(%rbp, 1), %rdx


call err_oob

.L61:
movq %r12, %rax


imulq $200, %rax

movq %rax, %r12





movq $10, %r13



movl %r13d, %r14d


movq $-1, %rax


andq %rax, %r14


movl -3220(%rbp, 1), %r15d


pushq %rbx

xorq %rbx, %rbx
movb -3237(%rbp, 1), %bl


xorb %bl, -3237(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setl -3237(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3237(%rbp, 1), %bl


andb %bl, -3237(%rbp, 1)
popq %rbx



jz .L71


movq $0, %r14



pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3245(%rbp, 1)


movq %r10, -3253(%rbp, 1)


popq %r11


popq %r10


cmpq -3253(%rbp, 1), %r14

jb .L62

movq %r14, %rsi


movq -3253(%rbp, 1), %rdx


call err_oob

.L62:
movq %r14, %rax


imulq $200, %rax

movq %rax, %r14






movl -3220(%rbp, 1), %r15d


movq $4294967295, %rax


andq %rax, %r15

cmpq $10, %r15

jb .L63

movq %r15, %rsi


movq $10, %rdx


call err_oob

.L63:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3245(%rbp, 1), %rbx


leaq 0(%rbx, %r14, 1), %r10
popq %rbx


movq %r10, -3261(%rbp, 1)


popq %r10


movq %r15, %rax


imulq $20, %rax

movq %rax, %r15








pushq %rbx


xorq %rbx, %rbx

movq -3261(%rbp, 1), %rbx


movq 8(%rbx, %r15, 1), %rsi
popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -3261(%rbp, 1), %rbx


movq 0(%rbx, %r15, 1), %rdi
popq %rbx





pushq %rbx


leaq -3184(%rbp, 1), %rbx

movq %rbx, -3269(%rbp, 1)


popq %rbx



movq -3269(%rbp, 1), %rdx


movq $784, %rcx



movq %rsp, %rax



movq $0, %rax


call vecmul

movss %xmm0, -3273(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3273(%rbp, 1), %ebx


movl %ebx, -3277(%rbp, 1)
popq %rbx







pushq %rbx


movq $0, %rbx


movq %rbx, -3285(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3293(%rbp, 1)


movq %r10, -3301(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3301(%rbp, 1), %rbx


cmpq %rbx, -3285(%rbp, 1)
popq %rbx



jb .L64

movq -3285(%rbp, 1), %rsi


movq -3301(%rbp, 1), %rdx


call err_oob

.L64:
pushq %rbx

xorq %rbx, %rbx
movq -3285(%rbp, 1), %rbx


movq %rbx, -3309(%rbp, 1)
popq %rbx




movq -3309(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3309(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3220(%rbp, 1), %ebx


movl %ebx, -3317(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3317(%rbp, 1)

cmpq $10, -3317(%rbp, 1)

jb .L65

movq -3317(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L65:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3293(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3309(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3325(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3317(%rbp, 1), %rbx


movq %rbx, -3333(%rbp, 1)
popq %rbx




movq -3333(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3333(%rbp, 1)



// mul on the CPU up here ^





movss -3277(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -3325(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3333(%rbp, 1), %r12


addss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movss %xmm0, -3277(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3277(%rbp, 1), %ebx


movl %ebx, -3385(%rbp, 1)
popq %rbx







pushq %rbx


movq $0, %rbx


movq %rbx, -3341(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3192(%rbp, 1), %r10


movq -3200(%rbp, 1), %r11



movq %r11, -3349(%rbp, 1)


movq %r10, -3357(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3357(%rbp, 1), %rbx


cmpq %rbx, -3341(%rbp, 1)
popq %rbx



jb .L66

movq -3341(%rbp, 1), %rsi


movq -3357(%rbp, 1), %rdx


call err_oob

.L66:
pushq %rbx

xorq %rbx, %rbx
movq -3341(%rbp, 1), %rbx


movq %rbx, -3365(%rbp, 1)
popq %rbx




movq -3365(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3365(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3220(%rbp, 1), %ebx


movl %ebx, -3373(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3373(%rbp, 1)

cmpq $10, -3373(%rbp, 1)

jb .L67

movq -3373(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L67:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3349(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3365(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3381(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3381(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3373(%rbp, 1), %r12


movl -3385(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13






movss -3277(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call logistic

movss %xmm0, -3389(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3389(%rbp, 1), %ebx


movl %ebx, -3393(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3393(%rbp, 1), %ebx


movl %ebx, -3445(%rbp, 1)
popq %rbx







pushq %rbx


movq $0, %rbx


movq %rbx, -3401(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3208(%rbp, 1), %r10


movq -3216(%rbp, 1), %r11



movq %r11, -3409(%rbp, 1)


movq %r10, -3417(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3417(%rbp, 1), %rbx


cmpq %rbx, -3401(%rbp, 1)
popq %rbx



jb .L68

movq -3401(%rbp, 1), %rsi


movq -3417(%rbp, 1), %rdx


call err_oob

.L68:
pushq %rbx

xorq %rbx, %rbx
movq -3401(%rbp, 1), %rbx


movq %rbx, -3425(%rbp, 1)
popq %rbx




movq -3425(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3425(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3220(%rbp, 1), %ebx


movl %ebx, -3433(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3433(%rbp, 1)

cmpq $10, -3433(%rbp, 1)

jb .L69

movq -3433(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L69:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3409(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3425(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3441(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3441(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3433(%rbp, 1), %r12


movl -3445(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -3220(%rbp, 1)




jmp .L70

.L71:


movl $0, -3449(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3449(%rbp, 1), %ebx


movl %ebx, -3453(%rbp, 1)
popq %rbx






.L80:



pushq %rbx


movq $1, %rbx


movq %rbx, -3461(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3469(%rbp, 1)


movq %r10, -3477(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3477(%rbp, 1), %rbx


cmpq %rbx, -3461(%rbp, 1)
popq %rbx



jb .L72

movq -3461(%rbp, 1), %rsi


movq -3477(%rbp, 1), %rdx


call err_oob

.L72:
pushq %rbx

xorq %rbx, %rbx
movq -3461(%rbp, 1), %rbx


movq %rbx, -3485(%rbp, 1)
popq %rbx




movq -3485(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3485(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -3493(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -3493(%rbp, 1), %ebx


movl %ebx, -3497(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -3497(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3453(%rbp, 1), %ebx


movl %ebx, -3501(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3502(%rbp, 1), %bl


xorb %bl, -3502(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3497(%rbp, 1), %ebx


cmpl %ebx, -3501(%rbp, 1)
popq %rbx



setl -3502(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3502(%rbp, 1), %bl


andb %bl, -3502(%rbp, 1)
popq %rbx



jz .L81


pushq %rbx


movq $1, %rbx


movq %rbx, -3510(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3518(%rbp, 1)


movq %r10, -3526(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3526(%rbp, 1), %rbx


cmpq %rbx, -3510(%rbp, 1)
popq %rbx



jb .L73

movq -3510(%rbp, 1), %rsi


movq -3526(%rbp, 1), %rdx


call err_oob

.L73:
pushq %rbx

xorq %rbx, %rbx
movq -3510(%rbp, 1), %rbx


movq %rbx, -3534(%rbp, 1)
popq %rbx




movq -3534(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3534(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3453(%rbp, 1), %ebx


movl %ebx, -3542(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3542(%rbp, 1)

cmpq $10, -3542(%rbp, 1)

jb .L74

movq -3542(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L74:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3518(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3534(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3550(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3542(%rbp, 1), %rbx


movq %rbx, -3558(%rbp, 1)
popq %rbx




movq -3558(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3558(%rbp, 1)



// mul on the CPU up here ^








pushq %rbx


movq $0, %rbx


movq %rbx, -3566(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3208(%rbp, 1), %r10


movq -3216(%rbp, 1), %r11



movq %r11, -3574(%rbp, 1)


movq %r10, -3582(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3582(%rbp, 1), %rbx


cmpq %rbx, -3566(%rbp, 1)
popq %rbx



jb .L75

movq -3566(%rbp, 1), %rsi


movq -3582(%rbp, 1), %rdx


call err_oob

.L75:
pushq %rbx

xorq %rbx, %rbx
movq -3566(%rbp, 1), %rbx


movq %rbx, -3590(%rbp, 1)
popq %rbx




movq -3590(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3590(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


xorq %rbx, %rbx

movq -3550(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3558(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -3550(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3558(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx





pushq %rbx


pushq %r12


xorq %r12, %r12

movq -3574(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -3590(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -3598(%rbp, 1)


popq %rbx



movq -3598(%rbp, 1), %rdx


movq $10, %rcx



movq %rsp, %rax



movq $0, %rax


call vecmul

movss %xmm0, -3602(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3602(%rbp, 1), %ebx


movl %ebx, -3606(%rbp, 1)
popq %rbx







pushq %rbx


movq $1, %rbx


movq %rbx, -3614(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3622(%rbp, 1)


movq %r10, -3630(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3630(%rbp, 1), %rbx


cmpq %rbx, -3614(%rbp, 1)
popq %rbx



jb .L76

movq -3614(%rbp, 1), %rsi


movq -3630(%rbp, 1), %rdx


call err_oob

.L76:
pushq %rbx

xorq %rbx, %rbx
movq -3614(%rbp, 1), %rbx


movq %rbx, -3638(%rbp, 1)
popq %rbx




movq -3638(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3638(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3453(%rbp, 1), %ebx


movl %ebx, -3646(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3646(%rbp, 1)

cmpq $10, -3646(%rbp, 1)

jb .L77

movq -3646(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L77:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3622(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3638(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3654(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3646(%rbp, 1), %rbx


movq %rbx, -3662(%rbp, 1)
popq %rbx




movq -3662(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3662(%rbp, 1)



// mul on the CPU up here ^





movss -3606(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -3654(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3662(%rbp, 1), %r12


addss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movss %xmm0, -3606(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3606(%rbp, 1), %ebx


movl %ebx, -3714(%rbp, 1)
popq %rbx







pushq %rbx


movq $1, %rbx


movq %rbx, -3670(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3192(%rbp, 1), %r10


movq -3200(%rbp, 1), %r11



movq %r11, -3678(%rbp, 1)


movq %r10, -3686(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3686(%rbp, 1), %rbx


cmpq %rbx, -3670(%rbp, 1)
popq %rbx



jb .L78

movq -3670(%rbp, 1), %rsi


movq -3686(%rbp, 1), %rdx


call err_oob

.L78:
pushq %rbx

xorq %rbx, %rbx
movq -3670(%rbp, 1), %rbx


movq %rbx, -3694(%rbp, 1)
popq %rbx




movq -3694(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3694(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3453(%rbp, 1), %ebx


movl %ebx, -3702(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3702(%rbp, 1)

cmpq $10, -3702(%rbp, 1)

jb .L79

movq -3702(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L79:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3678(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3694(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3710(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3710(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3702(%rbp, 1), %r12


movl -3714(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -3453(%rbp, 1)




jmp .L80

.L81:


movl $0, -3718(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3718(%rbp, 1), %ebx


movl %ebx, -3722(%rbp, 1)
popq %rbx






.L86:



pushq %rbx


movq $1, %rbx


movq %rbx, -3730(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -40(%rbp, 1), %r10


movq -48(%rbp, 1), %r11



movq %r11, -3738(%rbp, 1)


movq %r10, -3746(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3746(%rbp, 1), %rbx


cmpq %rbx, -3730(%rbp, 1)
popq %rbx



jb .L82

movq -3730(%rbp, 1), %rsi


movq -3746(%rbp, 1), %rdx


call err_oob

.L82:
pushq %rbx

xorq %rbx, %rbx
movq -3730(%rbp, 1), %rbx


movq %rbx, -3754(%rbp, 1)
popq %rbx




movq -3754(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -3754(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -3762(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -3762(%rbp, 1), %ebx


movl %ebx, -3766(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -3766(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3722(%rbp, 1), %ebx


movl %ebx, -3770(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3771(%rbp, 1), %bl


xorb %bl, -3771(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3766(%rbp, 1), %ebx


cmpl %ebx, -3770(%rbp, 1)
popq %rbx



setl -3771(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3771(%rbp, 1), %bl


andb %bl, -3771(%rbp, 1)
popq %rbx



jz .L87




pushq %rbx


movq $1, %rbx


movq %rbx, -3827(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3192(%rbp, 1), %r10


movq -3200(%rbp, 1), %r11



movq %r11, -3835(%rbp, 1)


movq %r10, -3843(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3843(%rbp, 1), %rbx


cmpq %rbx, -3827(%rbp, 1)
popq %rbx



jb .L85

movq -3827(%rbp, 1), %rsi


movq -3843(%rbp, 1), %rdx


call err_oob

.L85:
pushq %rbx

xorq %rbx, %rbx
movq -3827(%rbp, 1), %rbx


movq %rbx, -3851(%rbp, 1)
popq %rbx




movq -3851(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3851(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx


pushq %r12


xorq %r12, %r12

movq -3835(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -3851(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -3859(%rbp, 1)


popq %rbx



movq -3859(%rbp, 1), %rdi


movq $10, %rsi



movl -3722(%rbp, 1), %edx


movq %rsp, %rax



movq $0, %rax


call softmax

movss %xmm0, -3863(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3863(%rbp, 1), %ebx


movl %ebx, -3867(%rbp, 1)
popq %rbx







pushq %rbx


movq $1, %rbx


movq %rbx, -3779(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3208(%rbp, 1), %r10


movq -3216(%rbp, 1), %r11



movq %r11, -3787(%rbp, 1)


movq %r10, -3795(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3795(%rbp, 1), %rbx


cmpq %rbx, -3779(%rbp, 1)
popq %rbx



jb .L83

movq -3779(%rbp, 1), %rsi


movq -3795(%rbp, 1), %rdx


call err_oob

.L83:
pushq %rbx

xorq %rbx, %rbx
movq -3779(%rbp, 1), %rbx


movq %rbx, -3803(%rbp, 1)
popq %rbx




movq -3803(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3803(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3722(%rbp, 1), %ebx


movl %ebx, -3811(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3811(%rbp, 1)

cmpq $10, -3811(%rbp, 1)

jb .L84

movq -3811(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L84:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3787(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3803(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3819(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3819(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3811(%rbp, 1), %r12


movl -3867(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -3722(%rbp, 1)




jmp .L86

.L87:



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


movq %rsp, %rax



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



.string "\0loss10n"
.global loss10n
loss10n:
pushq %rbp

movq %rsp, %rbp

subq $128, %rsp



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





movl $0, -84(%rbp, 1)



movq $0, %rbx



movq %rbx, -92(%rbp, 1)




.L90:


movq $10, %r12



movq -92(%rbp, 1), %r13


xorb %r14b, %r14b

cmpq %r12, %r13

setb %r14b



andb %r14b, %r14b

jz .L91




cmpq $10, -92(%rbp, 1)

jb .L88

movq -92(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L88:
pushq %r10


leaq -40(%rbp, 1), %r10

movq %r10, -100(%rbp, 1)


popq %r10






cmpq $10, -92(%rbp, 1)

jb .L89

movq -92(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L89:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -108(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -100(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -92(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -108(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -92(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm1
popq %r12

popq %rbx



movq %rsp, %rax



movq $1, %rax


call loss

movq %xmm0, %r12




movss -84(%rbp, 1), %xmm0


movl %r12d, %r13d


movq %r13, %xmm1


addss %xmm1, %xmm0

movss %xmm0, -84(%rbp, 1)






incq -92(%rbp, 1)




jmp .L90

.L91:





movq $10, %r15



cvtsi2ss %r15, %xmm1

movss %xmm1, -112(%rbp, 1)



movl -84(%rbp, 1), %r15d


movl %r15d, -116(%rbp, 1)


movss -116(%rbp, 1), %xmm1


divss -112(%rbp, 1), %xmm1

movq %xmm1, %r15





movl %r15d, -120(%rbp, 1)


movss -120(%rbp, 1), %xmm0


._loss10n:
movq %rbp, %rsp

popq %rbp

ret



.string "\0der_loss10n_q"
.global der_loss10n_q
der_loss10n_q:
pushq %rbp

movq %rsp, %rbp

subq $128, %rsp



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




pushq %rbx


movq $0, %rbx


movq %rbx, -88(%rbp, 1)

popq %rbx



movq %rdi, -88(%rbp, 1)


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





movq $0, %rbx



movq %rbx, -96(%rbp, 1)




.L95:


movq $10, %r12



movq -96(%rbp, 1), %r13


xorb %r14b, %r14b

cmpq %r12, %r13

setb %r14b



andb %r14b, %r14b

jz .L96



cmpq $10, -96(%rbp, 1)

jb .L92

movq -96(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L92:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -104(%rbp, 1)


popq %r10






cmpq $10, -96(%rbp, 1)

jb .L93

movq -96(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L93:
pushq %r10


leaq -40(%rbp, 1), %r10

movq %r10, -112(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -104(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -96(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -112(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -96(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -104(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -96(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







cmpq $10, -96(%rbp, 1)

jb .L94

movq -96(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L94:
pushq %r10


leaq -80(%rbp, 1), %r10

movq %r10, -120(%rbp, 1)


popq %r10




movl $3212836864, %r12d



pushq %rbx


xorq %rbx, %rbx

movq -120(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -96(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %eax
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -120(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -96(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm1
popq %r12

popq %rbx



movl %r12d, %r13d


movq %r13, %xmm2


mulss %xmm2, %xmm1

pushq %rbx


xorq %rbx, %rbx

movq -120(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -96(%rbp, 1), %r12


movss %xmm1, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -96(%rbp, 1)




jmp .L95

.L96:




movq -88(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -80(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._der_loss10n_q:
movq %rbp, %rsp

popq %rbp

ret



.string "\0back"
.global back
back:
pushq %rbp

movq %rsp, %rbp

subq $36672, %rsp



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




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3168(%rbp, 1), %rdi

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

leaq -3208(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -3212(%rbp, 1)



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



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



movq %rcx, -3160(%rbp, 1)


movq %rdx, -3168(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq 3152(%rbp, 1), %rsi

leaq -3208(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



movss %xmm0, -3212(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3308(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq $1, %rbx



pushq %r10


pushq %r11


movq -3160(%rbp, 1), %r10


movq -3168(%rbp, 1), %r11



movq %r11, -3220(%rbp, 1)


movq %r10, -3228(%rbp, 1)


popq %r11


popq %r10


cmpq -3228(%rbp, 1), %rbx

jb .L97

movq %rbx, %rsi


movq -3228(%rbp, 1), %rdx


call err_oob

.L97:
movq %rbx, %rax


imulq $40, %rax

movq %rax, %rbx






leaq -3268(%rbp, 1), %r12

movq %r12, %rdi


subq $32, %rsp

subq $48, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


pushq %r12


xorq %r12, %r12

movq -3220(%rbp, 1), %r12


leaq 0(%r12, %rbx, 1), %rsi
popq %r12


leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



addq $40, %rax

pushq %rsi


pushq %rdi


pushq %rcx


leaq -3208(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



addq $40, %rax


movq $0, %rax


call der_loss10n_q

addq $48, %rsp

addq $32, %rsp

movq %rax, %r13




pushq %rsi


pushq %rdi


pushq %rcx


leaq -3268(%rbp, 1), %rsi

leaq -3308(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movl $0, %r14d



movl %r14d, -3312(%rbp, 1)




.L100:



movq $10, %r15



movl %r15d, -3316(%rbp, 1)


movq $-1, %rax


andq %rax, -3316(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3312(%rbp, 1), %ebx


movl %ebx, -3320(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3321(%rbp, 1), %bl


xorb %bl, -3321(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3316(%rbp, 1), %ebx


cmpl %ebx, -3320(%rbp, 1)
popq %rbx



setl -3321(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3321(%rbp, 1), %bl


andb %bl, -3321(%rbp, 1)
popq %rbx



jz .L101







pushq %rbx

xorq %rbx, %rbx
movl -3312(%rbp, 1), %ebx


movl %ebx, -3329(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3329(%rbp, 1)

cmpq $10, -3329(%rbp, 1)

jb .L99

movq -3329(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L99:
pushq %r10


leaq -3308(%rbp, 1), %r10

movq %r10, -3337(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -3337(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3329(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -3345(%rbp, 1)



movq $.L98, %rdi


movl -3312(%rbp, 1), %esi


movsd -3345(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -3349(%rbp, 1)






incl -3312(%rbp, 1)




jmp .L100

.L101:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3749(%rbp, 1), %rdi

movq $400, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3789(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -3793(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3793(%rbp, 1), %ebx


movl %ebx, -3797(%rbp, 1)
popq %rbx






.L112:



pushq %rbx


movq $10, %rbx


movq %rbx, -3805(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -3805(%rbp, 1), %ebx


movl %ebx, -3809(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -3809(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3797(%rbp, 1), %ebx


movl %ebx, -3813(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3814(%rbp, 1), %bl


xorb %bl, -3814(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3809(%rbp, 1), %ebx


cmpl %ebx, -3813(%rbp, 1)
popq %rbx



setl -3814(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3814(%rbp, 1), %bl


andb %bl, -3814(%rbp, 1)
popq %rbx



jz .L113

movl $0, -3818(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3818(%rbp, 1), %ebx


movl %ebx, -3822(%rbp, 1)
popq %rbx






.L108:



pushq %rbx


movq $0, %rbx


movq %rbx, -3830(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3160(%rbp, 1), %r10


movq -3168(%rbp, 1), %r11



movq %r11, -3838(%rbp, 1)


movq %r10, -3846(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3846(%rbp, 1), %rbx


cmpq %rbx, -3830(%rbp, 1)
popq %rbx



jb .L102

movq -3830(%rbp, 1), %rsi


movq -3846(%rbp, 1), %rdx


call err_oob

.L102:
pushq %rbx

xorq %rbx, %rbx
movq -3830(%rbp, 1), %rbx


movq %rbx, -3854(%rbp, 1)
popq %rbx




movq -3854(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3854(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -3862(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -3862(%rbp, 1), %ebx


movl %ebx, -3866(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -3866(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3822(%rbp, 1), %ebx


movl %ebx, -3870(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -3871(%rbp, 1), %bl


xorb %bl, -3871(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3866(%rbp, 1), %ebx


cmpl %ebx, -3870(%rbp, 1)
popq %rbx



setl -3871(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3871(%rbp, 1), %bl


andb %bl, -3871(%rbp, 1)
popq %rbx



jz .L109



pushq %rbx

xorq %rbx, %rbx
movl -3797(%rbp, 1), %ebx


movl %ebx, -3919(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3919(%rbp, 1)

cmpq $10, -3919(%rbp, 1)

jb .L105

movq -3919(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L105:
pushq %r10


leaq -3308(%rbp, 1), %r10

movq %r10, -3927(%rbp, 1)


popq %r10





pushq %rbx


movq $0, %rbx


movq %rbx, -3935(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3160(%rbp, 1), %r10


movq -3168(%rbp, 1), %r11



movq %r11, -3943(%rbp, 1)


movq %r10, -3951(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3951(%rbp, 1), %rbx


cmpq %rbx, -3935(%rbp, 1)
popq %rbx



jb .L106

movq -3935(%rbp, 1), %rsi


movq -3951(%rbp, 1), %rdx


call err_oob

.L106:
pushq %rbx

xorq %rbx, %rbx
movq -3935(%rbp, 1), %rbx


movq %rbx, -3959(%rbp, 1)
popq %rbx




movq -3959(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3959(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3822(%rbp, 1), %ebx


movl %ebx, -3967(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3967(%rbp, 1)

cmpq $10, -3967(%rbp, 1)

jb .L107

movq -3967(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L107:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3943(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3959(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3975(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3975(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3967(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -3979(%rbp, 1)
popq %r13




movl -3979(%rbp, 1), %eax


movss -3979(%rbp, 1), %xmm0


mulss -3212(%rbp, 1), %xmm0

movss %xmm0, -3979(%rbp, 1)




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3927(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3919(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -3983(%rbp, 1)
popq %r13




movl -3983(%rbp, 1), %eax


movss -3983(%rbp, 1), %xmm1


mulss -3979(%rbp, 1), %xmm1

movss %xmm1, -3983(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -3983(%rbp, 1), %ebx


movl %ebx, -3987(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3797(%rbp, 1), %ebx


movl %ebx, -3879(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3879(%rbp, 1)

cmpq $10, -3879(%rbp, 1)

jb .L103

movq -3879(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L103:
pushq %r10


leaq -3749(%rbp, 1), %r10

movq %r10, -3887(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3879(%rbp, 1), %rbx


movq %rbx, -3895(%rbp, 1)
popq %rbx




movq -3895(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -3895(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3822(%rbp, 1), %ebx


movl %ebx, -3903(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3903(%rbp, 1)

cmpq $10, -3903(%rbp, 1)

jb .L104

movq -3903(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L104:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3887(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3895(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3911(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3911(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3903(%rbp, 1), %r12


movl -3987(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -3822(%rbp, 1)




jmp .L108

.L109:




pushq %rbx

xorq %rbx, %rbx
movl -3797(%rbp, 1), %ebx


movl %ebx, -4011(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4011(%rbp, 1)

cmpq $10, -4011(%rbp, 1)

jb .L111

movq -4011(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L111:
pushq %r10


leaq -3308(%rbp, 1), %r10

movq %r10, -4019(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4019(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4011(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -4023(%rbp, 1)
popq %r13




movl -4023(%rbp, 1), %eax


movss -4023(%rbp, 1), %xmm2


mulss -3212(%rbp, 1), %xmm2

movss %xmm2, -4023(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -4023(%rbp, 1), %ebx


movl %ebx, -4027(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3797(%rbp, 1), %ebx


movl %ebx, -3995(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -3995(%rbp, 1)

cmpq $10, -3995(%rbp, 1)

jb .L110

movq -3995(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L110:
pushq %r10


leaq -3789(%rbp, 1), %r10

movq %r10, -4003(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4003(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3995(%rbp, 1), %r12


movl -4027(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -3797(%rbp, 1)




jmp .L112

.L113:




pushq %rbx


movq $1, %rbx


movq %rbx, -4035(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4043(%rbp, 1)


movq %r10, -4051(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4051(%rbp, 1), %rbx


cmpq %rbx, -4035(%rbp, 1)
popq %rbx



jb .L114

movq -4035(%rbp, 1), %rsi


movq -4051(%rbp, 1), %rdx


call err_oob

.L114:
pushq %rbx

xorq %rbx, %rbx
movq -4035(%rbp, 1), %rbx


movq %rbx, -4059(%rbp, 1)
popq %rbx




movq -4059(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4059(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -4067(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -4067(%rbp, 1), %rbx


movq %rbx, -4075(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -4075(%rbp, 1)


pushq %rbx


movq $1, %rbx


movq %rbx, -4083(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -4083(%rbp, 1), %rbx


subq %rbx, -4075(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -4075(%rbp, 1), %rbx


movq %rbx, -4091(%rbp, 1)
popq %rbx






.L124:

pushq %rbx


movq $0, %rbx


movq %rbx, -4099(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -4091(%rbp, 1), %rbx


movq %rbx, -4107(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4108(%rbp, 1), %bl


xorb %bl, -4108(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -4099(%rbp, 1), %rbx


cmpq %rbx, -4107(%rbp, 1)
popq %rbx



setge -4108(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4108(%rbp, 1), %bl


andb %bl, -4108(%rbp, 1)
popq %rbx



jz .L125

pushq %rbx


movq $0, %rbx


movq %rbx, -4116(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -4116(%rbp, 1), %rbx


movq %rbx, -4124(%rbp, 1)
popq %rbx






.L122:


pushq %rbx


movq $1, %rbx


movq %rbx, -4132(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4140(%rbp, 1)


movq %r10, -4148(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4148(%rbp, 1), %rbx


cmpq %rbx, -4132(%rbp, 1)
popq %rbx



jb .L115

movq -4132(%rbp, 1), %rsi


movq -4148(%rbp, 1), %rdx


call err_oob

.L115:
pushq %rbx

xorq %rbx, %rbx
movq -4132(%rbp, 1), %rbx


movq %rbx, -4156(%rbp, 1)
popq %rbx




movq -4156(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4156(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -4091(%rbp, 1)

jb .L116

movq -4091(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L116:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4140(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4156(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4164(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4091(%rbp, 1), %rbx


movq %rbx, -4172(%rbp, 1)
popq %rbx




movq -4172(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4172(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx

xorq %rbx, %rbx
movq -4124(%rbp, 1), %rbx


movq %rbx, -4180(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4181(%rbp, 1), %bl


xorb %bl, -4181(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4164(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4172(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -4180(%rbp, 1)
popq %r13



setb -4181(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4181(%rbp, 1), %bl


andb %bl, -4181(%rbp, 1)
popq %rbx



jz .L123


pushq %rbx


movq $1, %rbx


movq %rbx, -4189(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4197(%rbp, 1)


movq %r10, -4205(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4205(%rbp, 1), %rbx


cmpq %rbx, -4189(%rbp, 1)
popq %rbx



jb .L117

movq -4189(%rbp, 1), %rsi


movq -4205(%rbp, 1), %rdx


call err_oob

.L117:
pushq %rbx

xorq %rbx, %rbx
movq -4189(%rbp, 1), %rbx


movq %rbx, -4213(%rbp, 1)
popq %rbx




movq -4213(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4213(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -4091(%rbp, 1)

jb .L118

movq -4091(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L118:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4197(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4213(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4221(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4091(%rbp, 1), %rbx


movq %rbx, -4229(%rbp, 1)
popq %rbx




movq -4229(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4229(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -4221(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4229(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -4221(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4229(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -4237(%rbp, 1)


movq %r10, -4245(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4245(%rbp, 1), %rbx


cmpq %rbx, -4124(%rbp, 1)
popq %rbx



jb .L119

movq -4124(%rbp, 1), %rsi


movq -4245(%rbp, 1), %rdx


call err_oob

.L119:




cmpq $10, -4091(%rbp, 1)

jb .L120

movq -4091(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L120:
pushq %r10


leaq -3749(%rbp, 1), %r10

movq %r10, -4253(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4091(%rbp, 1), %rbx


movq %rbx, -4261(%rbp, 1)
popq %rbx




movq -4261(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -4261(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -4124(%rbp, 1)

jb .L121

movq -4124(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L121:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4253(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4261(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4269(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -4237(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4124(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm3
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -4269(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4124(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm3
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -4237(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4124(%rbp, 1), %r12


movss %xmm3, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -4124(%rbp, 1)




jmp .L122

.L123:




decq -4091(%rbp, 1)




jmp .L124

.L125:



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -4309(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -4313(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -4313(%rbp, 1), %ebx


movl %ebx, -4317(%rbp, 1)
popq %rbx






.L136:



pushq %rbx


movq $1, %rbx


movq %rbx, -4325(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4333(%rbp, 1)


movq %r10, -4341(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4341(%rbp, 1), %rbx


cmpq %rbx, -4325(%rbp, 1)
popq %rbx



jb .L126

movq -4325(%rbp, 1), %rsi


movq -4341(%rbp, 1), %rdx


call err_oob

.L126:
pushq %rbx

xorq %rbx, %rbx
movq -4325(%rbp, 1), %rbx


movq %rbx, -4349(%rbp, 1)
popq %rbx




movq -4349(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4349(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -4357(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -4357(%rbp, 1), %ebx


movl %ebx, -4361(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -4361(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -4317(%rbp, 1), %ebx


movl %ebx, -4365(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4366(%rbp, 1), %bl


xorb %bl, -4366(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -4361(%rbp, 1), %ebx


cmpl %ebx, -4365(%rbp, 1)
popq %rbx



setl -4366(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4366(%rbp, 1), %bl


andb %bl, -4366(%rbp, 1)
popq %rbx



jz .L137

pushq %rbx


movq $0, %rbx


movq %rbx, -4374(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -4374(%rbp, 1), %rbx


movq %rbx, -4382(%rbp, 1)
popq %rbx






.L134:


pushq %rbx


movq $1, %rbx


movq %rbx, -4390(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4398(%rbp, 1)


movq %r10, -4406(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4406(%rbp, 1), %rbx


cmpq %rbx, -4390(%rbp, 1)
popq %rbx



jb .L127

movq -4390(%rbp, 1), %rsi


movq -4406(%rbp, 1), %rdx


call err_oob

.L127:
pushq %rbx

xorq %rbx, %rbx
movq -4390(%rbp, 1), %rbx


movq %rbx, -4414(%rbp, 1)
popq %rbx




movq -4414(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4414(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -4317(%rbp, 1), %ebx


movl %ebx, -4422(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4422(%rbp, 1)

cmpq $10, -4422(%rbp, 1)

jb .L128

movq -4422(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L128:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4398(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4414(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4430(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4422(%rbp, 1), %rbx


movq %rbx, -4438(%rbp, 1)
popq %rbx




movq -4438(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4438(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx

xorq %rbx, %rbx
movq -4382(%rbp, 1), %rbx


movq %rbx, -4446(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4447(%rbp, 1), %bl


xorb %bl, -4447(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4430(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4438(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -4446(%rbp, 1)
popq %r13



setb -4447(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4447(%rbp, 1), %bl


andb %bl, -4447(%rbp, 1)
popq %rbx



jz .L135



pushq %rbx

xorq %rbx, %rbx
movl -4317(%rbp, 1), %ebx


movl %ebx, -4455(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4455(%rbp, 1)

cmpq $10, -4455(%rbp, 1)

jb .L129

movq -4455(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L129:
pushq %r10


leaq -4309(%rbp, 1), %r10

movq %r10, -4463(%rbp, 1)


popq %r10





pushq %rbx


movq $1, %rbx


movq %rbx, -4471(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -4479(%rbp, 1)


movq %r10, -4487(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4487(%rbp, 1), %rbx


cmpq %rbx, -4471(%rbp, 1)
popq %rbx



jb .L130

movq -4471(%rbp, 1), %rsi


movq -4487(%rbp, 1), %rdx


call err_oob

.L130:
pushq %rbx

xorq %rbx, %rbx
movq -4471(%rbp, 1), %rbx


movq %rbx, -4495(%rbp, 1)
popq %rbx




movq -4495(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -4495(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -4317(%rbp, 1), %ebx


movl %ebx, -4503(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4503(%rbp, 1)

cmpq $10, -4503(%rbp, 1)

jb .L131

movq -4503(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L131:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4479(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4495(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4511(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4503(%rbp, 1), %rbx


movq %rbx, -4519(%rbp, 1)
popq %rbx




movq -4519(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -4519(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -4511(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4519(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -4511(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4519(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -4527(%rbp, 1)


movq %r10, -4535(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4535(%rbp, 1), %rbx


cmpq %rbx, -4382(%rbp, 1)
popq %rbx



jb .L132

movq -4382(%rbp, 1), %rsi


movq -4535(%rbp, 1), %rdx


call err_oob

.L132:




pushq %rbx

xorq %rbx, %rbx
movl -4317(%rbp, 1), %ebx


movl %ebx, -4543(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4543(%rbp, 1)

cmpq $10, -4543(%rbp, 1)

jb .L133

movq -4543(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L133:
pushq %r10


leaq -3308(%rbp, 1), %r10

movq %r10, -4551(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4527(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4382(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -4555(%rbp, 1)
popq %r13




movl -4555(%rbp, 1), %eax


movss -4555(%rbp, 1), %xmm4


pushq %rbx


xorq %rbx, %rbx

movq -4551(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4543(%rbp, 1), %r12


mulss 0(%rbx, %r12, 4), %xmm4
popq %r12

popq %rbx


movss %xmm4, -4555(%rbp, 1)




pushq %rbx


xorq %rbx, %rbx

movq -4463(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4455(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm5
popq %r12

popq %rbx



addss -4555(%rbp, 1), %xmm5

pushq %rbx


xorq %rbx, %rbx

movq -4463(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4455(%rbp, 1), %r12


movss %xmm5, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -4382(%rbp, 1)




jmp .L134

.L135:




incl -4317(%rbp, 1)




jmp .L136

.L137:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -4595(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -4599(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -4599(%rbp, 1), %ebx


movl %ebx, -4603(%rbp, 1)
popq %rbx






.L143:



pushq %rbx


movq $10, %rbx


movq %rbx, -4611(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -4611(%rbp, 1), %ebx


movl %ebx, -4615(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -4615(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -4603(%rbp, 1), %ebx


movl %ebx, -4619(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4620(%rbp, 1), %bl


xorb %bl, -4620(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -4615(%rbp, 1), %ebx


cmpl %ebx, -4619(%rbp, 1)
popq %rbx



setl -4620(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4620(%rbp, 1), %bl


andb %bl, -4620(%rbp, 1)
popq %rbx



jz .L144

movl $1065353216, -4640(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -4648(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3160(%rbp, 1), %r10


movq -3168(%rbp, 1), %r11



movq %r11, -4656(%rbp, 1)


movq %r10, -4664(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4664(%rbp, 1), %rbx


cmpq %rbx, -4648(%rbp, 1)
popq %rbx



jb .L139

movq -4648(%rbp, 1), %rsi


movq -4664(%rbp, 1), %rdx


call err_oob

.L139:
pushq %rbx

xorq %rbx, %rbx
movq -4648(%rbp, 1), %rbx


movq %rbx, -4672(%rbp, 1)
popq %rbx




movq -4672(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -4672(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -4603(%rbp, 1), %ebx


movl %ebx, -4680(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4680(%rbp, 1)

cmpq $10, -4680(%rbp, 1)

jb .L140

movq -4680(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L140:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4656(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4672(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4688(%rbp, 1)


popq %r10




movss -4640(%rbp, 1), %xmm6


pushq %rbx


xorq %rbx, %rbx

movq -4688(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4680(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm6
popq %r12

popq %rbx


movss %xmm6, -4640(%rbp, 1)





pushq %rbx


movq $0, %rbx


movq %rbx, -4696(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3160(%rbp, 1), %r10


movq -3168(%rbp, 1), %r11



movq %r11, -4704(%rbp, 1)


movq %r10, -4712(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -4712(%rbp, 1), %rbx


cmpq %rbx, -4696(%rbp, 1)
popq %rbx



jb .L141

movq -4696(%rbp, 1), %rsi


movq -4712(%rbp, 1), %rdx


call err_oob

.L141:
pushq %rbx

xorq %rbx, %rbx
movq -4696(%rbp, 1), %rbx


movq %rbx, -4720(%rbp, 1)
popq %rbx




movq -4720(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -4720(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -4603(%rbp, 1), %ebx


movl %ebx, -4728(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4728(%rbp, 1)

cmpq $10, -4728(%rbp, 1)

jb .L142

movq -4728(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L142:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -4704(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4720(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -4736(%rbp, 1)


popq %r10




movl -4640(%rbp, 1), %eax


movss -4640(%rbp, 1), %xmm7


pushq %rbx


xorq %rbx, %rbx

movq -4736(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4728(%rbp, 1), %r12


mulss 0(%rbx, %r12, 4), %xmm7
popq %r12

popq %rbx


movss %xmm7, -4640(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -4640(%rbp, 1), %ebx


movl %ebx, -4740(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -4603(%rbp, 1), %ebx


movl %ebx, -4628(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4628(%rbp, 1)

cmpq $10, -4628(%rbp, 1)

jb .L138

movq -4628(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L138:
pushq %r10


leaq -4595(%rbp, 1), %r10

movq %r10, -4636(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4636(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4628(%rbp, 1), %r12


movl -4740(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -4603(%rbp, 1)




jmp .L143

.L144:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -4780(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -4784(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -4784(%rbp, 1), %ebx


movl %ebx, -4788(%rbp, 1)
popq %rbx






.L148:



pushq %rbx


movq $10, %rbx


movq %rbx, -4796(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -4796(%rbp, 1), %ebx


movl %ebx, -4800(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -4800(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -4788(%rbp, 1), %ebx


movl %ebx, -4804(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -4805(%rbp, 1), %bl


xorb %bl, -4805(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -4800(%rbp, 1), %ebx


cmpl %ebx, -4804(%rbp, 1)
popq %rbx



setl -4805(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -4805(%rbp, 1), %bl


andb %bl, -4805(%rbp, 1)
popq %rbx



jz .L149



pushq %rbx

xorq %rbx, %rbx
movl -4788(%rbp, 1), %ebx


movl %ebx, -4829(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4829(%rbp, 1)

cmpq $10, -4829(%rbp, 1)

jb .L146

movq -4829(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L146:
pushq %r10


leaq -4595(%rbp, 1), %r10

movq %r10, -4837(%rbp, 1)


popq %r10






pushq %rbx

xorq %rbx, %rbx
movl -4788(%rbp, 1), %ebx


movl %ebx, -4845(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4845(%rbp, 1)

cmpq $10, -4845(%rbp, 1)

jb .L147

movq -4845(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L147:
pushq %r10


leaq -4309(%rbp, 1), %r10

movq %r10, -4853(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4837(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4829(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -4857(%rbp, 1)
popq %r13




movl -4857(%rbp, 1), %eax


movss -4857(%rbp, 1), %xmm8


pushq %rbx


xorq %rbx, %rbx

movq -4853(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4845(%rbp, 1), %r12


mulss 0(%rbx, %r12, 4), %xmm8
popq %r12

popq %rbx


movss %xmm8, -4857(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -4857(%rbp, 1), %ebx


movl %ebx, -4861(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -4788(%rbp, 1), %ebx


movl %ebx, -4813(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -4813(%rbp, 1)

cmpq $10, -4813(%rbp, 1)

jb .L145

movq -4813(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L145:
pushq %r10


leaq -4780(%rbp, 1), %r10

movq %r10, -4821(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -4821(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -4813(%rbp, 1), %r12


movl -4861(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -4788(%rbp, 1)




jmp .L148

.L149:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -4901(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rsi


pushq %rdi


pushq %rcx


leaq -4780(%rbp, 1), %rsi

leaq -4901(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -36261(%rbp, 1), %rdi

movq $31360, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -36265(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -36265(%rbp, 1), %ebx


movl %ebx, -36269(%rbp, 1)
popq %rbx






.L157:



pushq %rbx


movq $10, %rbx


movq %rbx, -36277(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -36277(%rbp, 1), %ebx


movl %ebx, -36281(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -36281(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -36269(%rbp, 1), %ebx


movl %ebx, -36285(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -36286(%rbp, 1), %bl


xorb %bl, -36286(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -36281(%rbp, 1), %ebx


cmpl %ebx, -36285(%rbp, 1)
popq %rbx



setl -36286(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -36286(%rbp, 1), %bl


andb %bl, -36286(%rbp, 1)
popq %rbx



jz .L158

movl $0, -36290(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -36290(%rbp, 1), %ebx


movl %ebx, -36294(%rbp, 1)
popq %rbx






.L154:



pushq %rbx


movq $784, %rbx


movq %rbx, -36302(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -36302(%rbp, 1), %ebx


movl %ebx, -36306(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -36306(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -36294(%rbp, 1), %ebx


movl %ebx, -36310(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -36311(%rbp, 1), %bl


xorb %bl, -36311(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -36306(%rbp, 1), %ebx


cmpl %ebx, -36310(%rbp, 1)
popq %rbx



setl -36311(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -36311(%rbp, 1), %bl


andb %bl, -36311(%rbp, 1)
popq %rbx



jz .L155



pushq %rbx

xorq %rbx, %rbx
movl -36269(%rbp, 1), %ebx


movl %ebx, -36359(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -36359(%rbp, 1)

cmpq $10, -36359(%rbp, 1)

jb .L152

movq -36359(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L152:
pushq %r10


leaq -4780(%rbp, 1), %r10

movq %r10, -36367(%rbp, 1)


popq %r10






pushq %rbx

xorq %rbx, %rbx
movl -36294(%rbp, 1), %ebx


movl %ebx, -36375(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -36375(%rbp, 1)

cmpq $784, -36375(%rbp, 1)

jb .L153

movq -36375(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L153:
pushq %r10


leaq -3152(%rbp, 1), %r10

movq %r10, -36383(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -36383(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36375(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -36387(%rbp, 1)
popq %r13




movl -36387(%rbp, 1), %eax


movss -36387(%rbp, 1), %xmm9


mulss -3212(%rbp, 1), %xmm9

movss %xmm9, -36387(%rbp, 1)




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -36367(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36359(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -36391(%rbp, 1)
popq %r13




movl -36391(%rbp, 1), %eax


movss -36391(%rbp, 1), %xmm10


mulss -36387(%rbp, 1), %xmm10

movss %xmm10, -36391(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -36391(%rbp, 1), %ebx


movl %ebx, -36395(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -36269(%rbp, 1), %ebx


movl %ebx, -36319(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -36319(%rbp, 1)

cmpq $10, -36319(%rbp, 1)

jb .L150

movq -36319(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L150:
pushq %r10


leaq -36261(%rbp, 1), %r10

movq %r10, -36327(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36319(%rbp, 1), %rbx


movq %rbx, -36335(%rbp, 1)
popq %rbx




movq -36335(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -36335(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -36294(%rbp, 1), %ebx


movl %ebx, -36343(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -36343(%rbp, 1)

cmpq $784, -36343(%rbp, 1)

jb .L151

movq -36343(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L151:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -36327(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36335(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -36351(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -36351(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36343(%rbp, 1), %r12


movl -36395(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -36294(%rbp, 1)




jmp .L154

.L155:




pushq %rbx

xorq %rbx, %rbx
movl -36269(%rbp, 1), %ebx


movl %ebx, -36403(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -36403(%rbp, 1)

cmpq $10, -36403(%rbp, 1)

jb .L156

movq -36403(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L156:
pushq %r10


leaq -4901(%rbp, 1), %r10

movq %r10, -36411(%rbp, 1)


popq %r10





pushq %rbx


xorq %rbx, %rbx

movq -36411(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36403(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %eax
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -36411(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36403(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm11
popq %r12

popq %rbx



mulss -3212(%rbp, 1), %xmm11

pushq %rbx


xorq %rbx, %rbx

movq -36411(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36403(%rbp, 1), %r12


movss %xmm11, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incl -36269(%rbp, 1)




jmp .L157

.L158:




pushq %rbx


movq $0, %rbx


movq %rbx, -36419(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -36427(%rbp, 1)


movq %r10, -36435(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36435(%rbp, 1), %rbx


cmpq %rbx, -36419(%rbp, 1)
popq %rbx



jb .L159

movq -36419(%rbp, 1), %rsi


movq -36435(%rbp, 1), %rdx


call err_oob

.L159:
pushq %rbx

xorq %rbx, %rbx
movq -36419(%rbp, 1), %rbx


movq %rbx, -36443(%rbp, 1)
popq %rbx




movq -36443(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -36443(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -36451(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -36451(%rbp, 1), %rbx


movq %rbx, -36459(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -36459(%rbp, 1)


pushq %rbx


movq $1, %rbx


movq %rbx, -36467(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -36467(%rbp, 1), %rbx


subq %rbx, -36459(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -36459(%rbp, 1), %rbx


movq %rbx, -36475(%rbp, 1)
popq %rbx






.L170:

pushq %rbx


movq $0, %rbx


movq %rbx, -36483(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -36475(%rbp, 1), %rbx


movq %rbx, -36491(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -36492(%rbp, 1), %bl


xorb %bl, -36492(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -36483(%rbp, 1), %rbx


cmpq %rbx, -36491(%rbp, 1)
popq %rbx



setge -36492(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -36492(%rbp, 1), %bl


andb %bl, -36492(%rbp, 1)
popq %rbx



jz .L171



movq $.L160, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -36496(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -36504(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -36504(%rbp, 1), %rbx


movq %rbx, -36512(%rbp, 1)
popq %rbx






.L168:


pushq %rbx


movq $0, %rbx


movq %rbx, -36520(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -36528(%rbp, 1)


movq %r10, -36536(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36536(%rbp, 1), %rbx


cmpq %rbx, -36520(%rbp, 1)
popq %rbx



jb .L161

movq -36520(%rbp, 1), %rsi


movq -36536(%rbp, 1), %rdx


call err_oob

.L161:
pushq %rbx

xorq %rbx, %rbx
movq -36520(%rbp, 1), %rbx


movq %rbx, -36544(%rbp, 1)
popq %rbx




movq -36544(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -36544(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -36475(%rbp, 1)

jb .L162

movq -36475(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L162:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -36528(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36544(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -36552(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36475(%rbp, 1), %rbx


movq %rbx, -36560(%rbp, 1)
popq %rbx




movq -36560(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -36560(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx

xorq %rbx, %rbx
movq -36512(%rbp, 1), %rbx


movq %rbx, -36568(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -36569(%rbp, 1), %bl


xorb %bl, -36569(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -36552(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36560(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -36568(%rbp, 1)
popq %r13



setb -36569(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -36569(%rbp, 1), %bl


andb %bl, -36569(%rbp, 1)
popq %rbx



jz .L169


pushq %rbx


movq $0, %rbx


movq %rbx, -36577(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -36585(%rbp, 1)


movq %r10, -36593(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36593(%rbp, 1), %rbx


cmpq %rbx, -36577(%rbp, 1)
popq %rbx



jb .L163

movq -36577(%rbp, 1), %rsi


movq -36593(%rbp, 1), %rdx


call err_oob

.L163:
pushq %rbx

xorq %rbx, %rbx
movq -36577(%rbp, 1), %rbx


movq %rbx, -36601(%rbp, 1)
popq %rbx




movq -36601(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -36601(%rbp, 1)



// mul on the CPU up here ^




cmpq $10, -36475(%rbp, 1)

jb .L164

movq -36475(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L164:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -36585(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36601(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -36609(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36475(%rbp, 1), %rbx


movq %rbx, -36617(%rbp, 1)
popq %rbx




movq -36617(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -36617(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -36609(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36617(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -36609(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36617(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx




movq %r11, -36625(%rbp, 1)


movq %r10, -36633(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36633(%rbp, 1), %rbx


cmpq %rbx, -36512(%rbp, 1)
popq %rbx



jb .L165

movq -36512(%rbp, 1), %rsi


movq -36633(%rbp, 1), %rdx


call err_oob

.L165:




cmpq $10, -36475(%rbp, 1)

jb .L166

movq -36475(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L166:
pushq %r10


leaq -36261(%rbp, 1), %r10

movq %r10, -36641(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -36475(%rbp, 1), %rbx


movq %rbx, -36649(%rbp, 1)
popq %rbx




movq -36649(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -36649(%rbp, 1)



// mul on the CPU up here ^




cmpq $784, -36512(%rbp, 1)

jb .L167

movq -36512(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L167:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -36641(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36649(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -36657(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -36625(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36512(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -36657(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36512(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -36625(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -36512(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -36512(%rbp, 1)




jmp .L168

.L169:




decq -36475(%rbp, 1)




jmp .L170

.L171:




._back:
movq %rbp, %rsp

popq %rbp

ret



.string "\0save_model"
.global save_model
save_model:
pushq %rbp

movq %rsp, %rbp

subq $432, %rsp



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







movl $577, %ebx



movl $420, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx


movq %rsp, %rax



movq $0, %rax


call open

movl %eax, %r13d




movl %r13d, -36(%rbp, 1)




movl $0, %r14d



movl -36(%rbp, 1), %r15d


pushq %rbx

xorq %rbx, %rbx
movb -37(%rbp, 1), %bl


xorb %bl, -37(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setl -37(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -37(%rbp, 1), %bl


andb %bl, -37(%rbp, 1)
popq %rbx



jz .L173





movq $.L172, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r14d





.L173:


pushq %rbx


movq $0, %rbx


movq %rbx, -45(%rbp, 1)

popq %rbx




movl $0, %r15d



movl %r15d, -49(%rbp, 1)




.L192:





pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -53(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -53(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -57(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -58(%rbp, 1), %bl


xorb %bl, -58(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -53(%rbp, 1), %ebx


cmpl %ebx, -57(%rbp, 1)
popq %rbx



setl -58(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -58(%rbp, 1), %bl


andb %bl, -58(%rbp, 1)
popq %rbx



jz .L193

movl $0, -62(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -62(%rbp, 1), %ebx


movl %ebx, -66(%rbp, 1)
popq %rbx






.L190:




pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -74(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -74(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -82(%rbp, 1)


movq %r10, -90(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -90(%rbp, 1), %rbx


cmpq %rbx, -74(%rbp, 1)
popq %rbx



jb .L174

movq -74(%rbp, 1), %rsi


movq -90(%rbp, 1), %rdx


call err_oob

.L174:
pushq %rbx

xorq %rbx, %rbx
movq -74(%rbp, 1), %rbx


movq %rbx, -98(%rbp, 1)
popq %rbx




movq -98(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -98(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -106(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -106(%rbp, 1), %ebx


movl %ebx, -110(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -110(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -114(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -115(%rbp, 1), %bl


xorb %bl, -115(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -110(%rbp, 1), %ebx


cmpl %ebx, -114(%rbp, 1)
popq %rbx



setl -115(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -115(%rbp, 1), %bl


andb %bl, -115(%rbp, 1)
popq %rbx



jz .L191



pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -123(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -123(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -131(%rbp, 1)


movq %r10, -139(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -139(%rbp, 1), %rbx


cmpq %rbx, -123(%rbp, 1)
popq %rbx



jb .L175

movq -123(%rbp, 1), %rsi


movq -139(%rbp, 1), %rdx


call err_oob

.L175:
pushq %rbx

xorq %rbx, %rbx
movq -123(%rbp, 1), %rbx


movq %rbx, -147(%rbp, 1)
popq %rbx




movq -147(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -147(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -155(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -155(%rbp, 1)

cmpq $10, -155(%rbp, 1)

jb .L176

movq -155(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L176:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -131(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -147(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -163(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -171(%rbp, 1)
popq %rbx




movq -171(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -171(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


pushq %r12


xorq %r12, %r12

movq -163(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -171(%rbp, 1), %r13


leaq 16(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -179(%rbp, 1)


popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -179(%rbp, 1), %rbx


movq %rbx, -187(%rbp, 1)
popq %rbx








movq $.L177, %rdi


movq -187(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -191(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -199(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -199(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -207(%rbp, 1)


movq %r10, -215(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -215(%rbp, 1), %rbx


cmpq %rbx, -199(%rbp, 1)
popq %rbx



jb .L178

movq -199(%rbp, 1), %rsi


movq -215(%rbp, 1), %rdx


call err_oob

.L178:
pushq %rbx

xorq %rbx, %rbx
movq -199(%rbp, 1), %rbx


movq %rbx, -223(%rbp, 1)
popq %rbx




movq -223(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -223(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -231(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -231(%rbp, 1)

cmpq $10, -231(%rbp, 1)

jb .L179

movq -231(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L179:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -207(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -223(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -239(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -231(%rbp, 1), %rbx


movq %rbx, -247(%rbp, 1)
popq %rbx




movq -247(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -247(%rbp, 1)



// mul on the CPU up here ^









pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -255(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -255(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -263(%rbp, 1)


movq %r10, -271(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -271(%rbp, 1), %rbx


cmpq %rbx, -255(%rbp, 1)
popq %rbx



jb .L180

movq -255(%rbp, 1), %rsi


movq -271(%rbp, 1), %rdx


call err_oob

.L180:
pushq %rbx

xorq %rbx, %rbx
movq -255(%rbp, 1), %rbx


movq %rbx, -279(%rbp, 1)
popq %rbx




movq -279(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -279(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -287(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -287(%rbp, 1)

cmpq $10, -287(%rbp, 1)

jb .L181

movq -287(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L181:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -263(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -279(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -295(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -287(%rbp, 1), %rbx


movq %rbx, -303(%rbp, 1)
popq %rbx




movq -303(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -303(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx


movq $4, %rbx


movq %rbx, -311(%rbp, 1)

popq %rbx




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -295(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -303(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

movq %r13, -319(%rbp, 1)
popq %r13




movq -319(%rbp, 1), %rax


imulq -311(%rbp, 1), %rax

movq %rax, -319(%rbp, 1)




movl -36(%rbp, 1), %edi


pushq %rbx


xorq %rbx, %rbx

movq -239(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -247(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq -319(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call write

movq %rax, -327(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -327(%rbp, 1), %rbx


movq %rbx, -335(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -335(%rbp, 1), %rbx


movq %rbx, -45(%rbp, 1)
popq %rbx






pushq %rbx


movq $-1, %rbx


movq %rbx, -343(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -45(%rbp, 1), %rbx


movq %rbx, -351(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -352(%rbp, 1), %bl


xorb %bl, -352(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -343(%rbp, 1), %rbx


cmpq %rbx, -351(%rbp, 1)
popq %rbx



sete -352(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -352(%rbp, 1), %bl


andb %bl, -352(%rbp, 1)
popq %rbx



jz .L184





movq $.L182, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -356(%rbp, 1)





jmp .L185


.L184:



movq $.L183, %rdi


movq -45(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -360(%rbp, 1)





.L185:




pushq %rbx


movq $4, %rbx


movq %rbx, -368(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -187(%rbp, 1), %rsi


movq -368(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call write

movq %rax, -376(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -376(%rbp, 1), %rbx


movq %rbx, -384(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -384(%rbp, 1), %rbx


movq %rbx, -45(%rbp, 1)
popq %rbx






pushq %rbx


movq $-1, %rbx


movq %rbx, -392(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -45(%rbp, 1), %rbx


movq %rbx, -400(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -401(%rbp, 1), %bl


xorb %bl, -401(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -392(%rbp, 1), %rbx


cmpq %rbx, -400(%rbp, 1)
popq %rbx



sete -401(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -401(%rbp, 1), %bl


andb %bl, -401(%rbp, 1)
popq %rbx



jz .L188





movq $.L186, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -405(%rbp, 1)





jmp .L189


.L188:



movq $.L187, %rdi


movq -45(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -409(%rbp, 1)





.L189:




incl -66(%rbp, 1)




jmp .L190

.L191:




incl -49(%rbp, 1)




jmp .L192

.L193:



movl -36(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -413(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -413(%rbp, 1), %ebx


movl %ebx, -417(%rbp, 1)
popq %rbx






movl $0, -421(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -417(%rbp, 1), %ebx


movl %ebx, -425(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -426(%rbp, 1), %bl


xorb %bl, -426(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -421(%rbp, 1), %ebx


cmpl %ebx, -425(%rbp, 1)
popq %rbx



setl -426(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -426(%rbp, 1), %bl


andb %bl, -426(%rbp, 1)
popq %rbx



jz .L195





movq $.L194, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -430(%rbp, 1)





.L195:



._save_model:
movq %rbp, %rsp

popq %rbp

ret



.string "\0read_model"
.global read_model
read_model:
pushq %rbp

movq %rsp, %rbp

subq $432, %rsp



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







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx


movq %rsp, %rax



movq $0, %rax


call open

movl %eax, %r13d




movl %r13d, -36(%rbp, 1)




movl $0, %r14d



movl -36(%rbp, 1), %r15d


pushq %rbx

xorq %rbx, %rbx
movb -37(%rbp, 1), %bl


xorb %bl, -37(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setl -37(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -37(%rbp, 1), %bl


andb %bl, -37(%rbp, 1)
popq %rbx



jz .L197





movq $.L196, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r14d





.L197:


pushq %rbx


movq $0, %rbx


movq %rbx, -45(%rbp, 1)

popq %rbx




movl $0, %r15d



movl %r15d, -49(%rbp, 1)




.L216:





pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -53(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -53(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -57(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -58(%rbp, 1), %bl


xorb %bl, -58(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -53(%rbp, 1), %ebx


cmpl %ebx, -57(%rbp, 1)
popq %rbx



setl -58(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -58(%rbp, 1), %bl


andb %bl, -58(%rbp, 1)
popq %rbx



jz .L217

movl $0, -62(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -62(%rbp, 1), %ebx


movl %ebx, -66(%rbp, 1)
popq %rbx






.L214:




pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -74(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -74(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -82(%rbp, 1)


movq %r10, -90(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -90(%rbp, 1), %rbx


cmpq %rbx, -74(%rbp, 1)
popq %rbx



jb .L198

movq -74(%rbp, 1), %rsi


movq -90(%rbp, 1), %rdx


call err_oob

.L198:
pushq %rbx

xorq %rbx, %rbx
movq -74(%rbp, 1), %rbx


movq %rbx, -98(%rbp, 1)
popq %rbx




movq -98(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -98(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $10, %rbx


movq %rbx, -106(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -106(%rbp, 1), %ebx


movl %ebx, -110(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -110(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -114(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -115(%rbp, 1), %bl


xorb %bl, -115(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -110(%rbp, 1), %ebx


cmpl %ebx, -114(%rbp, 1)
popq %rbx



setl -115(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -115(%rbp, 1), %bl


andb %bl, -115(%rbp, 1)
popq %rbx



jz .L215



pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -123(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -123(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -131(%rbp, 1)


movq %r10, -139(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -139(%rbp, 1), %rbx


cmpq %rbx, -123(%rbp, 1)
popq %rbx



jb .L199

movq -123(%rbp, 1), %rsi


movq -139(%rbp, 1), %rdx


call err_oob

.L199:
pushq %rbx

xorq %rbx, %rbx
movq -123(%rbp, 1), %rbx


movq %rbx, -147(%rbp, 1)
popq %rbx




movq -147(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -147(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -155(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -155(%rbp, 1)

cmpq $10, -155(%rbp, 1)

jb .L200

movq -155(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L200:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -131(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -147(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -163(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -171(%rbp, 1)
popq %rbx




movq -171(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -171(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


pushq %r12


xorq %r12, %r12

movq -163(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -171(%rbp, 1), %r13


leaq 16(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -179(%rbp, 1)


popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -179(%rbp, 1), %rbx


movq %rbx, -187(%rbp, 1)
popq %rbx








movq $.L201, %rdi


movq -187(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -191(%rbp, 1)






pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -199(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -199(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -207(%rbp, 1)


movq %r10, -215(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -215(%rbp, 1), %rbx


cmpq %rbx, -199(%rbp, 1)
popq %rbx



jb .L202

movq -199(%rbp, 1), %rsi


movq -215(%rbp, 1), %rdx


call err_oob

.L202:
pushq %rbx

xorq %rbx, %rbx
movq -199(%rbp, 1), %rbx


movq %rbx, -223(%rbp, 1)
popq %rbx




movq -223(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -223(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -231(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -231(%rbp, 1)

cmpq $10, -231(%rbp, 1)

jb .L203

movq -231(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L203:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -207(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -223(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -239(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -231(%rbp, 1), %rbx


movq %rbx, -247(%rbp, 1)
popq %rbx




movq -247(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -247(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx


movq $4, %rbx


movq %rbx, -255(%rbp, 1)

popq %rbx




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -239(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -247(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

movq %r13, -263(%rbp, 1)
popq %r13




movq -263(%rbp, 1), %rax


imulq -255(%rbp, 1), %rax

movq %rax, -263(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -263(%rbp, 1), %rbx


movq %rbx, -271(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movl -49(%rbp, 1), %ebx


movl %ebx, -279(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -279(%rbp, 1)

pushq %r10


pushq %r11


movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -287(%rbp, 1)


movq %r10, -295(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -295(%rbp, 1), %rbx


cmpq %rbx, -279(%rbp, 1)
popq %rbx



jb .L204

movq -279(%rbp, 1), %rsi


movq -295(%rbp, 1), %rdx


call err_oob

.L204:
pushq %rbx

xorq %rbx, %rbx
movq -279(%rbp, 1), %rbx


movq %rbx, -303(%rbp, 1)
popq %rbx




movq -303(%rbp, 1), %rax


imulq $200, %rax

movq %rax, -303(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -66(%rbp, 1), %ebx


movl %ebx, -311(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -311(%rbp, 1)

cmpq $10, -311(%rbp, 1)

jb .L205

movq -311(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L205:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -287(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -303(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -319(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -311(%rbp, 1), %rbx


movq %rbx, -327(%rbp, 1)
popq %rbx




movq -327(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -327(%rbp, 1)



// mul on the CPU up here ^








movl -36(%rbp, 1), %edi


pushq %rbx


xorq %rbx, %rbx

movq -319(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -327(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq -271(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -335(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -335(%rbp, 1), %rbx


movq %rbx, -343(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -343(%rbp, 1), %rbx


movq %rbx, -45(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movq -45(%rbp, 1), %rbx


movq %rbx, -351(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -352(%rbp, 1), %bl


xorb %bl, -352(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -271(%rbp, 1), %rbx


cmpq %rbx, -351(%rbp, 1)
popq %rbx



setb -352(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -352(%rbp, 1), %bl


andb %bl, -352(%rbp, 1)
popq %rbx



jz .L208





movq $.L206, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -356(%rbp, 1)





jmp .L209


.L208:



movq $.L207, %rdi


movq -45(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -360(%rbp, 1)





.L209:




pushq %rbx


movq $4, %rbx


movq %rbx, -368(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -187(%rbp, 1), %rsi


movq -368(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -376(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -376(%rbp, 1), %rbx


movq %rbx, -384(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -384(%rbp, 1), %rbx


movq %rbx, -45(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -392(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -45(%rbp, 1), %rbx


movq %rbx, -400(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -401(%rbp, 1), %bl


xorb %bl, -401(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -392(%rbp, 1), %rbx


cmpq %rbx, -400(%rbp, 1)
popq %rbx



setb -401(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -401(%rbp, 1), %bl


andb %bl, -401(%rbp, 1)
popq %rbx



jz .L212





movq $.L210, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -405(%rbp, 1)





jmp .L213


.L212:



movq $.L211, %rdi


movq -45(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -409(%rbp, 1)





.L213:




incl -66(%rbp, 1)




jmp .L214

.L215:




incl -49(%rbp, 1)




jmp .L216

.L217:



movl -36(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -413(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -413(%rbp, 1), %ebx


movl %ebx, -417(%rbp, 1)
popq %rbx






movl $0, -421(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -417(%rbp, 1), %ebx


movl %ebx, -425(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -426(%rbp, 1), %bl


xorb %bl, -426(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -421(%rbp, 1), %ebx


cmpl %ebx, -425(%rbp, 1)
popq %rbx



setl -426(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -426(%rbp, 1), %bl


andb %bl, -426(%rbp, 1)
popq %rbx



jz .L219





movq $.L218, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -430(%rbp, 1)





.L219:



._read_model:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $992, %rsp





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




movq $.L220, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, %rdi


movq $55, %rsi




movq %rsp, %rax



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




movq $.L221, %rax


leaq 0(%rax, 1), %r12


movq %r12, %rdi


movq $55, %rsi




movq %rsp, %rax



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












movq $.L222, %rdi


movq -24(%rbp, 1), %rsi


movq %rsp, %rax



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


movq %rsp, %rax



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




.L233:





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



jz .L234

movl $0, -129(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -129(%rbp, 1), %ebx


movl %ebx, -133(%rbp, 1)
popq %rbx






.L231:

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



jz .L232

movl $0, -146(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -146(%rbp, 1), %ebx


movl %ebx, -150(%rbp, 1)
popq %rbx






.L229:

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



jz .L230



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



jb .L223

movq -167(%rbp, 1), %rsi


movq -183(%rbp, 1), %rdx


call err_oob

.L223:
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

jb .L224

movq -199(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L224:
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

jb .L225

movq -223(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L225:
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



jz .L228



movq %rbx, -299(%rbp, 1)


movq -232(%rbp, 1), %rbx

andq $255, %rbx

cvtsi2ss %rbx, %xmm0

movq -299(%rbp, 1), %rbx


movss %xmm0, -303(%rbp, 1)




movq $255, %rbx



cvtsi2ss %rbx, %xmm0

movss %xmm0, -307(%rbp, 1)



movss -303(%rbp, 1), %xmm0


divss -307(%rbp, 1), %xmm0

movss %xmm0, -303(%rbp, 1)




movl -303(%rbp, 1), %ebx




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



jb .L226

movq -243(%rbp, 1), %rsi


movq -259(%rbp, 1), %rdx


call err_oob

.L226:
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

jb .L227

movq -283(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L227:
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





.L228:




incl -150(%rbp, 1)




jmp .L229

.L230:




incl -133(%rbp, 1)




jmp .L231

.L232:




incl -116(%rbp, 1)




jmp .L233

.L234:


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


movq %rsp, %rax



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






.L238:





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



jz .L239



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



jb .L235

movq -396(%rbp, 1), %rsi


movq -412(%rbp, 1), %rdx


call err_oob

.L235:


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





movl $1065353216, -465(%rbp, 1)



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



jb .L236

movq -421(%rbp, 1), %rsi


movq -437(%rbp, 1), %rdx


call err_oob

.L236:
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

jb .L237

movq -453(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L237:
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




jmp .L238

.L239:


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



movq %rsp, %rax



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












movq $.L240, %rdi


movq -493(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -505(%rbp, 1)






movq $.L241, %rax


pushq %rbx


leaq 0(%rax, 1), %rbx

movq %rbx, -513(%rbp, 1)


popq %rbx



movq -513(%rbp, 1), %rdi


movq $55, %rsi




movq -493(%rbp, 1), %rcx


movq -501(%rbp, 1), %rdx




movq %rsp, %rax



movq $0, %rax


call read_model



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -673(%rbp, 1), %rdi

movq $32, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $2, %rbx


movq %rbx, -521(%rbp, 1)

popq %rbx




pushq %rbx


movq $10, %rbx


movq %rbx, -529(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -537(%rbp, 1)

popq %rbx




movq -529(%rbp, 1), %rax


imulq -537(%rbp, 1), %rax

movq %rax, -529(%rbp, 1)




movq -521(%rbp, 1), %rax


imulq -529(%rbp, 1), %rax

movq %rax, -521(%rbp, 1)




movq -521(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rdx, -545(%rbp, 1)


movq %rax, -553(%rbp, 1)





pushq %rbx


movq $2, %rbx


movq %rbx, -561(%rbp, 1)

popq %rbx




pushq %rbx


movq $10, %rbx


movq %rbx, -569(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -577(%rbp, 1)

popq %rbx




movq -569(%rbp, 1), %rax


imulq -577(%rbp, 1), %rax

movq %rax, -569(%rbp, 1)




movq -561(%rbp, 1), %rax


imulq -569(%rbp, 1), %rax

movq %rax, -561(%rbp, 1)




movq -561(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rdx, -585(%rbp, 1)


movq %rax, -593(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -585(%rbp, 1), %rbx


movq %rbx, -601(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -593(%rbp, 1), %rbx


movq %rbx, -609(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -601(%rbp, 1), %rax


pushq %rbx


movq $40, %rbx


movq %rbx, -633(%rbp, 1)

popq %rbx



idivq -633(%rbp, 1)

movq %rax, -601(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -545(%rbp, 1), %rbx


movq %rbx, -617(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -553(%rbp, 1), %rbx


movq %rbx, -625(%rbp, 1)
popq %rbx





xorq %rdx, %rdx

xorq %rax, %rax

movq -617(%rbp, 1), %rax


pushq %rbx


movq $40, %rbx


movq %rbx, -641(%rbp, 1)

popq %rbx



idivq -641(%rbp, 1)

movq %rax, -617(%rbp, 1)






pushq %rbx

xorq %rbx, %rbx
movq -601(%rbp, 1), %rbx


movq %rbx, -649(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -609(%rbp, 1), %rbx


movq %rbx, -657(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -617(%rbp, 1), %rbx


movq %rbx, -665(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -625(%rbp, 1), %rbx


movq %rbx, -673(%rbp, 1)
popq %rbx









movl $0, -677(%rbp, 1)



movl $0, -681(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -681(%rbp, 1), %ebx


movl %ebx, -685(%rbp, 1)
popq %rbx






.L253:





pushq %rbx

xorq %rbx, %rbx
movl -104(%rbp, 1), %ebx


movl %ebx, -689(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -689(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -685(%rbp, 1), %ebx


movl %ebx, -693(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -694(%rbp, 1), %bl


xorb %bl, -694(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -689(%rbp, 1), %ebx


cmpl %ebx, -693(%rbp, 1)
popq %rbx



setb -694(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -694(%rbp, 1), %bl


andb %bl, -694(%rbp, 1)
popq %rbx



jz .L254


pushq %rbx

xorq %rbx, %rbx
movl -685(%rbp, 1), %ebx


movl %ebx, -698(%rbp, 1)
popq %rbx








movq $.L242, %rdi


movl -698(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -702(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -698(%rbp, 1), %ebx


movl %ebx, -710(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -710(%rbp, 1)

pushq %r10


pushq %r11


movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -718(%rbp, 1)


movq %r10, -726(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -726(%rbp, 1), %rbx


cmpq %rbx, -710(%rbp, 1)
popq %rbx



jb .L243

movq -710(%rbp, 1), %rsi


movq -726(%rbp, 1), %rdx


call err_oob

.L243:
pushq %rbx

xorq %rbx, %rbx
movq -710(%rbp, 1), %rbx


movq %rbx, -734(%rbp, 1)
popq %rbx




movq -734(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -734(%rbp, 1)



// mul on the CPU up here ^




movq -493(%rbp, 1), %rsi


movq -501(%rbp, 1), %rdi




subq $3136, %rsp

subq $32, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -718(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -734(%rbp, 1), %r12


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



addq $3136, %rax

pushq %rbx

xorq %rbx, %rbx
movq -649(%rbp, 1), %rbx


movq %rbx, 24(%rax, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -657(%rbp, 1), %rbx


movq %rbx, 16(%rax, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -665(%rbp, 1), %rbx


movq %rbx, 8(%rax, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -673(%rbp, 1), %rbx


movq %rbx, 0(%rax, 1)
popq %rbx








addq $32, %rax


movq $0, %rax


call forward

addq $32, %rsp

addq $3136, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -806(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax






pushq %rbx


movq $1, %rbx


movq %rbx, -742(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -665(%rbp, 1), %r10


movq -673(%rbp, 1), %r11



movq %r11, -750(%rbp, 1)


movq %r10, -758(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -758(%rbp, 1), %rbx


cmpq %rbx, -742(%rbp, 1)
popq %rbx



jb .L244

movq -742(%rbp, 1), %rsi


movq -758(%rbp, 1), %rdx


call err_oob

.L244:
pushq %rbx

xorq %rbx, %rbx
movq -742(%rbp, 1), %rbx


movq %rbx, -766(%rbp, 1)
popq %rbx




movq -766(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -766(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -750(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -766(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx


leaq -806(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movl $0, -810(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -810(%rbp, 1), %ebx


movl %ebx, -814(%rbp, 1)
popq %rbx






.L249:



pushq %rbx


movq $10, %rbx


movq %rbx, -822(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -822(%rbp, 1), %ebx


movl %ebx, -826(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -826(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -814(%rbp, 1), %ebx


movl %ebx, -830(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -831(%rbp, 1), %bl


xorb %bl, -831(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -826(%rbp, 1), %ebx


cmpl %ebx, -830(%rbp, 1)
popq %rbx



setl -831(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -831(%rbp, 1), %bl


andb %bl, -831(%rbp, 1)
popq %rbx



jz .L250







pushq %rbx

xorq %rbx, %rbx
movl -814(%rbp, 1), %ebx


movl %ebx, -839(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -839(%rbp, 1)

cmpq $10, -839(%rbp, 1)

jb .L246

movq -839(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L246:
pushq %r10


leaq -806(%rbp, 1), %r10

movq %r10, -847(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -847(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -839(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -855(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -698(%rbp, 1), %ebx


movl %ebx, -863(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -863(%rbp, 1)

pushq %r10


pushq %r11


movq -355(%rbp, 1), %r10


movq -363(%rbp, 1), %r11



movq %r11, -871(%rbp, 1)


movq %r10, -879(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -879(%rbp, 1), %rbx


cmpq %rbx, -863(%rbp, 1)
popq %rbx



jb .L247

movq -863(%rbp, 1), %rsi


movq -879(%rbp, 1), %rdx


call err_oob

.L247:
pushq %rbx

xorq %rbx, %rbx
movq -863(%rbp, 1), %rbx


movq %rbx, -887(%rbp, 1)
popq %rbx




movq -887(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -887(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -814(%rbp, 1), %ebx


movl %ebx, -895(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -895(%rbp, 1)

cmpq $10, -895(%rbp, 1)

jb .L248

movq -895(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L248:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -871(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -887(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -903(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -903(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -895(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -911(%rbp, 1)



movq $.L245, %rdi


movl -814(%rbp, 1), %esi


movsd -855(%rbp, 1), %xmm0


movl -814(%rbp, 1), %edx


movsd -911(%rbp, 1), %xmm1


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -915(%rbp, 1)






incl -814(%rbp, 1)




jmp .L249

.L250:





pushq %rbx

xorq %rbx, %rbx
movl -698(%rbp, 1), %ebx


movl %ebx, -923(%rbp, 1)
popq %rbx




movq $4294967295, %rax


andq %rax, -923(%rbp, 1)

pushq %r10


pushq %r11


movq -355(%rbp, 1), %r10


movq -363(%rbp, 1), %r11



movq %r11, -931(%rbp, 1)


movq %r10, -939(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -939(%rbp, 1), %rbx


cmpq %rbx, -923(%rbp, 1)
popq %rbx



jb .L251

movq -923(%rbp, 1), %rsi


movq -939(%rbp, 1), %rdx


call err_oob

.L251:
pushq %rbx

xorq %rbx, %rbx
movq -923(%rbp, 1), %rbx


movq %rbx, -947(%rbp, 1)
popq %rbx




movq -947(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -947(%rbp, 1)



// mul on the CPU up here ^



subq $32, %rsp

subq $48, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -806(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



addq $40, %rax

pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -931(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -947(%rbp, 1), %r12


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



addq $40, %rax


movq $0, %rax


call loss10n

addq $48, %rsp

addq $32, %rsp

movss %xmm0, -951(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -951(%rbp, 1), %ebx


movl %ebx, -955(%rbp, 1)
popq %rbx









cvtss2sd -955(%rbp, 1), %xmm0

movsd %xmm0, -963(%rbp, 1)



movq $.L252, %rdi


movsd -963(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -967(%rbp, 1)






movss -677(%rbp, 1), %xmm0


addss -955(%rbp, 1), %xmm0

movss %xmm0, -677(%rbp, 1)






incl -685(%rbp, 1)




jmp .L253

.L254:






cvtss2sd -677(%rbp, 1), %xmm1

movsd %xmm1, -975(%rbp, 1)



movq $.L255, %rdi


movsd -975(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -979(%rbp, 1)





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






































.L21: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 105, 109, 97, 103, 101, 32, 115, 101, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0


























































.L23: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 100, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 0












































.L25: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



























.L27: .byte 109, 97, 103, 105, 99, 32, 110, 117, 109, 98, 101, 114, 58, 32, 37, 120, 10, 0








































.L28: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



























.L30: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 108, 97, 98, 101, 108, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0




































































.L31: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0































.L33: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 108, 97, 98, 101, 108, 32, 115, 101, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0



































































































































































.L40: .byte 110, 101, 116, 32, 108, 97, 121, 101, 114, 115, 58, 32, 37, 117, 10, 0















































































































.L46: .byte 110, 101, 116, 91, 48, 93, 32, 119, 101, 105, 103, 104, 116, 115, 58, 32, 37, 117, 10, 0



















































































































































.L54: .byte 110, 101, 116, 91, 49, 93, 32, 119, 101, 105, 103, 104, 116, 115, 58, 32, 37, 117, 10, 0






















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































.L98: .byte 108, 111, 115, 115, 95, 100, 101, 114, 105, 118, 97, 116, 105, 118, 101, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0














































































































































































































































































































































































































































































































































































































































































































































































































































































.L160: .byte 0







































































































































































.L172: .byte 101, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0







































































































.L177: .byte 37, 108, 108, 120, 10, 0










































































































.L182: .byte 101, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 105, 110, 116, 111, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0














.L183: .byte 119, 114, 105, 116, 116, 101, 110, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0







































.L186: .byte 101, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 105, 110, 116, 111, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0














.L187: .byte 119, 114, 105, 116, 116, 101, 110, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0












































.L194: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0

























































.L196: .byte 101, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0







































































































.L201: .byte 37, 108, 108, 120, 10, 0











































































































.L206: .byte 101, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 114, 111, 109, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0














.L207: .byte 114, 101, 97, 100, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0







































.L210: .byte 101, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 114, 111, 109, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0














.L211: .byte 114, 101, 97, 100, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0












































.L218: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0
























.L220: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 101, 115, 116, 95, 115, 101, 116, 47, 116, 49, 48, 107, 45, 105, 109, 97, 103, 101, 115, 45, 105, 100, 120, 51, 45, 117, 98, 121, 116, 101, 0






















.L221: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 101, 115, 116, 95, 115, 101, 116, 47, 116, 49, 48, 107, 45, 108, 97, 98, 101, 108, 115, 45, 105, 100, 120, 49, 45, 117, 98, 121, 116, 101, 0




















.L222: .byte 37, 108, 108, 120, 10, 0


















































































































































































































































































































































.L240: .byte 110, 101, 117, 114, 97, 108, 95, 110, 101, 116, 119, 111, 114, 107, 46, 108, 101, 110, 58, 32, 37, 100, 10, 0













.L241: .byte 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 115, 97, 118, 101, 100, 95, 109, 111, 100, 101, 108, 115, 47, 109, 111, 100, 101, 108, 95, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 46, 98, 105, 110, 0





























































































































.L242: .byte 101, 120, 97, 109, 112, 108, 101, 32, 35, 37, 108, 108, 117, 10, 0




























































































.L245: .byte 112, 114, 111, 98, 97, 98, 105, 108, 105, 116, 121, 91, 37, 117, 93, 58, 32, 37, 102, 59, 32, 108, 97, 98, 101, 108, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0




























































































.L252: .byte 108, 111, 115, 115, 58, 32, 37, 102, 10, 0



























.L255: .byte 99, 111, 115, 116, 58, 32, 37, 102, 10, 0


















err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"


