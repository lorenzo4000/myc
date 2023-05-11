[784]f32
struct    has padding of  0
struct    has padding of  0
[[false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false true false false false false] [false false false false false false] [false true false false false false] [false false true false false false] [false true false false false false] [false false true false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false]]
.text













































.string "\0allocate"
.global allocate
allocate:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp


// curently pushed: 0

pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -233(%rbp, 1)

popq %rbx

// current pushed: 0



movq %rdi, -233(%rbp, 1)




pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -249(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0




movq -233(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: 100; actually_reserved: 100; currently pueshed: 0
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


// curently pushed: 0

pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx

// current pushed: 0



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movq %rdx, -24(%rbp, 1)








movq -16(%rbp, 1), %rdi


movq -24(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: 0
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


// curently pushed: 0

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


// curently pushed: 0

pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx



movq $0, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: 0
call open

movl %eax, %r13d




movl %r13d, -20(%rbp, 1)




movl $0, %r14d



movl -20(%rbp, 1), %r15d


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


xorb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: 0


cmpl %r14d, %r15d

setl -21(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


andb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L2





movq $.L1, %rdi


movq -16(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: 0
call printf

movl %eax, %r14d




jmp ._read_dataset_image





.L2:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx

// current pushed: 0



movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: 0
call read

movq %rax, -41(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -41(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -57(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -57(%rbp, 1), %rbx


cmpq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: 0


setb -66(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L4



movq $.L3, %rdi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_image





.L4:



movl -25(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call flip32

movl %eax, -74(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -74(%rbp, 1), %ebx


movl %ebx, -78(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -78(%rbp, 1), %ebx


movl %ebx, -25(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L5, %rdi


movl -25(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call printf

movl %eax, -82(%rbp, 1)




movl $0, -86(%rbp, 1)




pushq %rbx

// current pushed: 1

leaq -86(%rbp, 1), %rbx

movq %rbx, -94(%rbp, 1)


popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -102(%rbp, 1)

popq %rbx

// current pushed: 0



movl -20(%rbp, 1), %edi


movq -94(%rbp, 1), %rsi


movq -102(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 70; actually_reserved: 70; currently pueshed: 0
call read

movq %rax, -110(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -110(%rbp, 1), %rbx


movq %rbx, -118(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -118(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -126(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


xorb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -126(%rbp, 1), %rbx


cmpq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: 0


setb -135(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


andb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L7



movq $.L6, %rdi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: 0
call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_image





.L7:



movl -86(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: 0
call flip32

movl %eax, -143(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -143(%rbp, 1), %ebx


movl %ebx, -147(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -147(%rbp, 1), %ebx


movl %ebx, -86(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L8, %rdi


movl -86(%rbp, 1), %esi



movq $0, %rax


// currently reserved: a0; actually_reserved: a0; currently pueshed: 0
call printf

movl %eax, -151(%rbp, 1)




movl $0, -155(%rbp, 1)




pushq %rbx

// current pushed: 1

leaq -155(%rbp, 1), %rbx

movq %rbx, -163(%rbp, 1)


popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -171(%rbp, 1)

popq %rbx

// current pushed: 0



movl -20(%rbp, 1), %edi


movq -163(%rbp, 1), %rsi


movq -171(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: b0; actually_reserved: b0; currently pueshed: 0
call read

movq %rax, -179(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -179(%rbp, 1), %rbx


movq %rbx, -187(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -187(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -195(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -203(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -204(%rbp, 1), %bl


xorb %bl, -204(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -195(%rbp, 1), %rbx


cmpq %rbx, -203(%rbp, 1)
popq %rbx

// current pushed: 0


setb -204(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -204(%rbp, 1), %bl


andb %bl, -204(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L10



movq $.L9, %rdi



movq $0, %rax


// currently reserved: d0; actually_reserved: d0; currently pueshed: 0
call printf

movl %eax, -208(%rbp, 1)




jmp ._read_dataset_image





.L10:



movl -155(%rbp, 1), %edi



movq $0, %rax


// currently reserved: d0; actually_reserved: d0; currently pueshed: 0
call flip32

movl %eax, -212(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -212(%rbp, 1), %ebx


movl %ebx, -216(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -216(%rbp, 1), %ebx


movl %ebx, -155(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L11, %rdi


movl -155(%rbp, 1), %esi



movq $0, %rax


// currently reserved: e0; actually_reserved: e0; currently pueshed: 0
call printf

movl %eax, -220(%rbp, 1)




movl $0, -224(%rbp, 1)




pushq %rbx

// current pushed: 1

leaq -224(%rbp, 1), %rbx

movq %rbx, -232(%rbp, 1)


popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -240(%rbp, 1)

popq %rbx

// current pushed: 0



movl -20(%rbp, 1), %edi


movq -232(%rbp, 1), %rsi


movq -240(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: f0; actually_reserved: f0; currently pueshed: 0
call read

movq %rax, -248(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -248(%rbp, 1), %rbx


movq %rbx, -256(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -256(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -264(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -272(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -273(%rbp, 1), %bl


xorb %bl, -273(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -264(%rbp, 1), %rbx


cmpq %rbx, -272(%rbp, 1)
popq %rbx

// current pushed: 0


setb -273(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -273(%rbp, 1), %bl


andb %bl, -273(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L13



movq $.L12, %rdi



movq $0, %rax


// currently reserved: 120; actually_reserved: 120; currently pueshed: 0
call printf

movl %eax, -277(%rbp, 1)




jmp ._read_dataset_image





.L13:



movl -224(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 120; actually_reserved: 120; currently pueshed: 0
call flip32

movl %eax, -281(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -281(%rbp, 1), %ebx


movl %ebx, -285(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -285(%rbp, 1), %ebx


movl %ebx, -224(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L14, %rdi


movl -224(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 120; actually_reserved: 120; currently pueshed: 0
call printf

movl %eax, -289(%rbp, 1)







pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -155(%rbp, 1), %ebx


movl %ebx, -293(%rbp, 1)
popq %rbx

// current pushed: 0



movl -293(%rbp, 1), %eax


imull -224(%rbp, 1), %eax

movl %eax, -293(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -86(%rbp, 1), %ebx


movl %ebx, -297(%rbp, 1)
popq %rbx

// current pushed: 0



movl -297(%rbp, 1), %eax


imull -293(%rbp, 1), %eax

movl %eax, -297(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -297(%rbp, 1), %ebx


movl %ebx, -301(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L15, %rdi


movl -301(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 130; actually_reserved: 130; currently pueshed: 0
call printf

movl %eax, -305(%rbp, 1)




pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -345(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -301(%rbp, 1), %rbx


movq %rbx, -313(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -313(%rbp, 1)


movq -313(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: 140; actually_reserved: 140; currently pueshed: 0
call allocate

movq %rdx, -321(%rbp, 1)


movq %rax, -329(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -321(%rbp, 1), %rbx


movq %rbx, -337(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -329(%rbp, 1), %rbx


movq %rbx, -345(%rbp, 1)
popq %rbx

// current pushed: 0




xorq %rdx, %rdx

xorq %rax, %rax

movq -337(%rbp, 1), %rax


pushq %rbx

// current pushed: 1

movq $784, %rbx


movq %rbx, -353(%rbp, 1)

popq %rbx

// current pushed: 0


idivq -353(%rbp, 1)

movq %rax, -337(%rbp, 1)





movl $0, -357(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -357(%rbp, 1), %ebx


movl %ebx, -361(%rbp, 1)
popq %rbx

// current pushed: 0





.L19:


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -361(%rbp, 1), %ebx


movl %ebx, -365(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -366(%rbp, 1), %bl


xorb %bl, -366(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -86(%rbp, 1), %ebx


cmpl %ebx, -365(%rbp, 1)
popq %rbx

// current pushed: 0


setb -366(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -366(%rbp, 1), %bl


andb %bl, -366(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L20




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -361(%rbp, 1), %ebx


movl %ebx, -374(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -374(%rbp, 1)

pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -337(%rbp, 1), %r10


movq -345(%rbp, 1), %r11



movq %r11, -382(%rbp, 1)


movq %r10, -390(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -390(%rbp, 1), %rbx


cmpq %rbx, -374(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L16

movq -374(%rbp, 1), %rsi


movq -390(%rbp, 1), %rdx


call err_oob

.L16:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -374(%rbp, 1), %rbx


movq %rbx, -398(%rbp, 1)
popq %rbx

// current pushed: 0



movq -398(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -398(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx

// current pushed: 1

pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -382(%rbp, 1), %r12


pushq %r13

// current pushed: 3

xorq %r13, %r13

movq -398(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

// current pushed: 2
popq %r12

// current pushed: 1

movq %rbx, -406(%rbp, 1)


popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -414(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -414(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -224(%rbp, 1), %rbx


movq %rbx, -422(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -422(%rbp, 1)


movq -414(%rbp, 1), %rax


imulq -422(%rbp, 1), %rax

movq %rax, -414(%rbp, 1)




movl -20(%rbp, 1), %edi


movq -406(%rbp, 1), %rsi


movq -414(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 1b0; actually_reserved: 1b0; currently pueshed: 0
call read

movq %rax, -430(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -430(%rbp, 1), %rbx


movq %rbx, -438(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -438(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0







pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -446(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -446(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -224(%rbp, 1), %rbx


movq %rbx, -454(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -454(%rbp, 1)


movq -446(%rbp, 1), %rax


imulq -454(%rbp, 1), %rax

movq %rax, -446(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -462(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -463(%rbp, 1), %bl


xorb %bl, -463(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -446(%rbp, 1), %rbx


cmpq %rbx, -462(%rbp, 1)
popq %rbx

// current pushed: 0


setb -463(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -463(%rbp, 1), %bl


andb %bl, -463(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L18



movq $.L17, %rdi



movq $0, %rax


// currently reserved: 1d0; actually_reserved: 1d0; currently pueshed: 0
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


// curently pushed: 0

pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx



movq $0, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: 0
call open

movl %eax, %r13d




movl %r13d, -20(%rbp, 1)




movl $0, %r14d



movl -20(%rbp, 1), %r15d


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


xorb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: 0


cmpl %r14d, %r15d

setl -21(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


andb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L22





movq $.L21, %rdi


movq -16(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: 0
call printf

movl %eax, %r14d




jmp ._read_dataset_label





.L22:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx

// current pushed: 0



movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: 0
call read

movq %rax, -41(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -41(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -57(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -57(%rbp, 1), %rbx


cmpq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: 0


setb -66(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L24



movq $.L23, %rdi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_label





.L24:



movl -25(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call flip32

movl %eax, -74(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -74(%rbp, 1), %ebx


movl %ebx, -78(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -78(%rbp, 1), %ebx


movl %ebx, -25(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L25, %rdi


movl -25(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call printf

movl %eax, -82(%rbp, 1)




movl $0, -86(%rbp, 1)




pushq %rbx

// current pushed: 1

leaq -86(%rbp, 1), %rbx

movq %rbx, -94(%rbp, 1)


popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -102(%rbp, 1)

popq %rbx

// current pushed: 0



movl -20(%rbp, 1), %edi


movq -94(%rbp, 1), %rsi


movq -102(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 70; actually_reserved: 70; currently pueshed: 0
call read

movq %rax, -110(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -110(%rbp, 1), %rbx


movq %rbx, -118(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -118(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -126(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


xorb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -126(%rbp, 1), %rbx


cmpq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: 0


setb -135(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


andb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L27



movq $.L26, %rdi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: 0
call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_label





.L27:



movl -86(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: 0
call flip32

movl %eax, -143(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -143(%rbp, 1), %ebx


movl %ebx, -147(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -147(%rbp, 1), %ebx


movl %ebx, -86(%rbp, 1)
popq %rbx

// current pushed: 0







movq $.L28, %rdi


movl -86(%rbp, 1), %esi



movq $0, %rax


// currently reserved: a0; actually_reserved: a0; currently pueshed: 0
call printf

movl %eax, -151(%rbp, 1)




pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -191(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -159(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -159(%rbp, 1)


movq -159(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: a0; actually_reserved: a0; currently pueshed: 0
call allocate

movq %rdx, -167(%rbp, 1)


movq %rax, -175(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -167(%rbp, 1), %rbx


movq %rbx, -183(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -175(%rbp, 1), %rbx


movq %rbx, -191(%rbp, 1)
popq %rbx

// current pushed: 0




xorq %rdx, %rdx

xorq %rax, %rax

movq -183(%rbp, 1), %rax


pushq %rbx

// current pushed: 1

movq $1, %rbx


movq %rbx, -199(%rbp, 1)

popq %rbx

// current pushed: 0


idivq -199(%rbp, 1)

movq %rax, -183(%rbp, 1)











pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -207(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -207(%rbp, 1)


movl -20(%rbp, 1), %edi


movq -191(%rbp, 1), %rsi


movq -207(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: d0; actually_reserved: d0; currently pueshed: 0
call read

movq %rax, -215(%rbp, 1)




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -215(%rbp, 1), %rbx


movq %rbx, -223(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -223(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: 0







pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -231(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -231(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -239(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -240(%rbp, 1), %bl


xorb %bl, -240(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -231(%rbp, 1), %rbx


cmpq %rbx, -239(%rbp, 1)
popq %rbx

// current pushed: 0


setb -240(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -240(%rbp, 1), %bl


andb %bl, -240(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L30



movq $.L29, %rdi



movq $0, %rax


// currently reserved: f0; actually_reserved: f0; currently pueshed: 0
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


// curently pushed: 0

pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



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

// current pushed: 1

pushq %r11

// current pushed: 2

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -48(%rbp, 1)


movq %r10, -56(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

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

// current pushed: 1

pushq %r11

// current pushed: 2

movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -64(%rbp, 1)


movq %r10, -72(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

cmpq -72(%rbp, 1), %r14

jl .L33

movq %r14, %rsi


movq -72(%rbp, 1), %rdx


call err_oob

.L33:


pushq %r12

// current pushed: 2
xorq %r12, %r12
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -48(%rbp, 1), %rbx


movl 0(%rbx, %r13, 4), %r12d


popq %rbx

// current pushed: 1
movl %r12d, -76(%rbp, 1)
popq %r12

// current pushed: 0



movl -76(%rbp, 1), %eax


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -76(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -64(%rbp, 1), %rbx


mulss 0(%rbx, %r14, 4), %xmm0
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -76(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movq %rbx, %xmm1

popq %rbx

// current pushed: 0


addss -76(%rbp, 1), %xmm1

pushq %rbx

// current pushed: 1

movq %xmm1, %rbx

movl %ebx, -36(%rbp, 1)


popq %rbx

// current pushed: 0






incl -40(%rbp, 1)




jmp .L34

.L35:




pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


._vecmul:
movq %rbp, %rsp

popq %rbp

ret




.string "\0nn"
.global nn
nn:
pushq %rbp

movq %rsp, %rbp

subq $3184, %rsp


// curently pushed: 0

movl $0, -3144(%rbp, 1)



movl %edi, -3144(%rbp, 1)




pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -3176(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0




movq -3144(%rbp, 1), %rbx


movq $4294967295, %rax


andq %rax, %rbx


movq $10, %r12



movq $785, %r13



movq $4, %r14



movq %r13, %rax


imulq %r14, %rax

movq %rax, %r13




movq %r12, %rax


imulq %r13, %rax

movq %rax, %r12




movq %rbx, %rax


imulq %r12, %rax

movq %rax, %rbx




movq %rbx, %rdi



movq $0, %rax


// currently reserved: c50; actually_reserved: c50; currently pueshed: 0
call allocate

movq %rdx, -3152(%rbp, 1)


movq %rax, -3160(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -3152(%rbp, 1), %rbx


movq %rbx, -3168(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -3160(%rbp, 1), %rbx


movq %rbx, -3176(%rbp, 1)
popq %rbx

// current pushed: 0




xorq %rdx, %rdx

xorq %rax, %rax

movq -3168(%rbp, 1), %rax


movq $31400, %r12


idivq %r12

movq %rax, -3168(%rbp, 1)






movq -3168(%rbp, 1), %rdx


movq -3176(%rbp, 1), %rax



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


// curently pushed: 0

movl $0, -8(%rbp, 1)



pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -8(%rbp, 1)


popq %rbx

// current pushed: 0








cvtss2sd -8(%rbp, 1), %xmm0

movq %xmm0, %rbx



movq $.L36, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq %rbx, %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: 0
call printf

movl %eax, %r12d




movq $1065353216, %r13



movl %r13d, -12(%rbp, 1)



movq $1065353216, %r14




movl -8(%rbp, 1), %r15d


movl $0, -16(%rbp, 1)


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -16(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl %r15d, %ebx


movq %rbx, %xmm1

popq %rbx

// current pushed: 0


subss %xmm1, %xmm0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -16(%rbp, 1)


popq %rbx

// current pushed: 0



movl -16(%rbp, 1), %r15d




pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl %r15d, %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: 0
call expf

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -20(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl %r14d, %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


addss -20(%rbp, 1), %xmm0

movq %xmm0, %r14




movl %r14d, -24(%rbp, 1)







cvtss2sd -12(%rbp, 1), %xmm1

pushq %rbx

// current pushed: 1

movq %xmm1, %rbx

movq %rbx, -32(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L37, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -32(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: 0
call printf

movl %eax, -36(%rbp, 1)








cvtss2sd -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -44(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L38, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -44(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: 0
call printf

movl %eax, -48(%rbp, 1)






pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -52(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -52(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


divss -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -52(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -52(%rbp, 1), %ebx


movl %ebx, -56(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -56(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


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

subq $112, %rsp


// curently pushed: 0

pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movl $0, -20(%rbp, 1)



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movl %edx, -20(%rbp, 1)




movq $0, %rbx



movl %ebx, -24(%rbp, 1)



movq $0, %r12



movq %r12, -32(%rbp, 1)




.L42:




movq -32(%rbp, 1), %r13


xorb %r14b, %r14b

cmpq -8(%rbp, 1), %r13

setb %r14b



andb %r14b, %r14b

jz .L43







pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -40(%rbp, 1)


movq %r10, -48(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


cmpq %rbx, -32(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L40

movq -32(%rbp, 1), %rsi


movq -48(%rbp, 1), %rdx


call err_oob

.L40:


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -40(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -32(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

movq %xmm0, %r13



movq $.L39, %rdi


movq -32(%rbp, 1), %rsi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq %r13, %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: 0
call printf

movl %eax, %r15d







pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -56(%rbp, 1)


movq %r10, -64(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -64(%rbp, 1), %rbx


cmpq %rbx, -32(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L41

movq -32(%rbp, 1), %rsi


movq -64(%rbp, 1), %rdx


call err_oob

.L41:


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -56(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -32(%rbp, 1), %r12


addss 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -24(%rbp, 1)


popq %rbx

// current pushed: 0






incq -32(%rbp, 1)




jmp .L42

.L43:






cvtss2sd -24(%rbp, 1), %xmm1

pushq %rbx

// current pushed: 1

movq %xmm1, %rbx

movq %rbx, -72(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L44, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -72(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call printf

movl %eax, -76(%rbp, 1)






pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -84(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -84(%rbp, 1)

pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -92(%rbp, 1)


movq %r10, -100(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -100(%rbp, 1), %rbx


cmpq %rbx, -84(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L45

movq -84(%rbp, 1), %rsi


movq -100(%rbp, 1), %rdx


call err_oob

.L45:



pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -92(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -84(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
movl %r13d, -104(%rbp, 1)
popq %r13

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -104(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


divss -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -104(%rbp, 1)


popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -104(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


._softmax:
movq %rbp, %rsp

popq %rbp

ret



.string "\0forward"
.global forward
forward:
pushq %rbp

movq %rsp, %rbp

subq $35184, %rsp


// curently pushed: 0

pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -3152(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -3160(%rbp, 1)

popq %rbx

// current pushed: 0


movq %rdi, -3160(%rbp, 1)


movq %rdx, -8(%rbp, 1)


movq %rsi, -16(%rbp, 1)



pushq %rsi

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

leaq 16(%rbp, 1), %rsi

leaq -3152(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rsi

// current pushed: 0









movq $.L46, %rdi


movq -8(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: c60; actually_reserved: c60; currently pueshed: 0
call printf

movl %eax, %ebx







movq $784, %r12



movq $.L47, %rdi


movq %r12, %rsi



movq $0, %rax


// currently reserved: c60; actually_reserved: c60; currently pueshed: 0
call printf

movl %eax, %r13d




pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -34576(%rbp, 1), %rdi

movq $31400, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movq $0, %r14



pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3168(%rbp, 1)


movq %r10, -3176(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

cmpq -3176(%rbp, 1), %r14

jl .L48

movq %r14, %rsi


movq -3176(%rbp, 1), %rdx


call err_oob

.L48:
movq %r14, %rax


imulq $31400, %rax

movq %rax, %r14





pushq %rsi

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

pushq %rbx

// current pushed: 4

xorq %rbx, %rbx

movq -3168(%rbp, 1), %rbx


leaq 0(%rbx, %r14, 1), %rsi
popq %rbx

// current pushed: 3

leaq -34576(%rbp, 1), %rdi

movq $31400, %rcx


cld

rep movsb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rsi

// current pushed: 0



pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -34616(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0






movq $10, %r15



movq $.L49, %rdi


movq %r15, %rsi



movq $0, %rax


// currently reserved: 8740; actually_reserved: 8740; currently pueshed: 0
call printf

movl %eax, -34620(%rbp, 1)







pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -34628(%rbp, 1)

popq %rbx

// current pushed: 0



cmpq $10, -34628(%rbp, 1)

jl .L51

movq -34628(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L51:
pushq %r10

// current pushed: 1

leaq -34576(%rbp, 1), %r10

movq %r10, -34636(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -34628(%rbp, 1), %rbx


movq %rbx, -34644(%rbp, 1)
popq %rbx

// current pushed: 0



movq -34644(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34644(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: 1

pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -34636(%rbp, 1), %r12


pushq %r13

// current pushed: 3

xorq %r13, %r13

movq -34644(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

// current pushed: 2
popq %r12

// current pushed: 1

movq %rbx, -34652(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L50, %rdi


movq -34652(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 8760; actually_reserved: 8760; currently pueshed: 0
call printf

movl %eax, -34656(%rbp, 1)








pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -34664(%rbp, 1)

popq %rbx

// current pushed: 0



cmpq $10, -34664(%rbp, 1)

jl .L53

movq -34664(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L53:
pushq %r10

// current pushed: 1

leaq -34576(%rbp, 1), %r10

movq %r10, -34672(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -34664(%rbp, 1), %rbx


movq %rbx, -34680(%rbp, 1)
popq %rbx

// current pushed: 0



movq -34680(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34680(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -34688(%rbp, 1)

popq %rbx

// current pushed: 0



cmpq $784, -34688(%rbp, 1)

jl .L54

movq -34688(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L54:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -34672(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -34680(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -34696(%rbp, 1)


popq %r10

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -34696(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -34688(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -34704(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L52, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -34704(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 8790; actually_reserved: 8790; currently pueshed: 0
call printf

movl %eax, -34708(%rbp, 1)




movl $0, -34712(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34712(%rbp, 1), %ebx


movl %ebx, -34716(%rbp, 1)
popq %rbx

// current pushed: 0





.L79:



pushq %rbx

// current pushed: 1

movq $10, %rbx


movq %rbx, -34724(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34724(%rbp, 1), %ebx


movl %ebx, -34728(%rbp, 1)
popq %rbx

// current pushed: 0



movq $-1, %rax


andq %rax, -34728(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -34732(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34733(%rbp, 1), %bl


xorb %bl, -34733(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34728(%rbp, 1), %ebx


cmpl %ebx, -34732(%rbp, 1)
popq %rbx

// current pushed: 0


setl -34733(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34733(%rbp, 1), %bl


andb %bl, -34733(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L80



movq $.L55, %rdi



movq $0, %rax


// currently reserved: 87b0; actually_reserved: 87b0; currently pueshed: 0
call printf

movl %eax, -34737(%rbp, 1)




movl $0, -34741(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34741(%rbp, 1), %ebx


movl %ebx, -34745(%rbp, 1)
popq %rbx

// current pushed: 0





.L62:

movl $28, -34749(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34745(%rbp, 1), %ebx


movl %ebx, -34753(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34754(%rbp, 1), %bl


xorb %bl, -34754(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34749(%rbp, 1), %ebx


cmpl %ebx, -34753(%rbp, 1)
popq %rbx

// current pushed: 0


setb -34754(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34754(%rbp, 1), %bl


andb %bl, -34754(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L63

movl $0, -34758(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34758(%rbp, 1), %ebx


movl %ebx, -34762(%rbp, 1)
popq %rbx

// current pushed: 0





.L59:

movl $28, -34766(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34762(%rbp, 1), %ebx


movl %ebx, -34770(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34771(%rbp, 1), %bl


xorb %bl, -34771(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34766(%rbp, 1), %ebx


cmpl %ebx, -34770(%rbp, 1)
popq %rbx

// current pushed: 0


setb -34771(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34771(%rbp, 1), %bl


andb %bl, -34771(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L60






pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -34779(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -34779(%rbp, 1)

cmpq $10, -34779(%rbp, 1)

jl .L57

movq -34779(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L57:
pushq %r10

// current pushed: 1

leaq -34576(%rbp, 1), %r10

movq %r10, -34787(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -34779(%rbp, 1), %rbx


movq %rbx, -34795(%rbp, 1)
popq %rbx

// current pushed: 0



movq -34795(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34795(%rbp, 1)



// mul on the CPU up here ^






movl $28, -34799(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34745(%rbp, 1), %ebx


movl %ebx, -34803(%rbp, 1)
popq %rbx

// current pushed: 0



movl -34803(%rbp, 1), %eax


imull -34799(%rbp, 1), %eax

movl %eax, -34803(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34762(%rbp, 1), %ebx


addl %ebx, -34803(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34803(%rbp, 1), %ebx


movl %ebx, -34811(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -34811(%rbp, 1)

cmpq $784, -34811(%rbp, 1)

jl .L58

movq -34811(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L58:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -34787(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -34795(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -34819(%rbp, 1)


popq %r10

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -34819(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -34811(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -34827(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L56, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -34827(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 8810; actually_reserved: 8810; currently pueshed: 0
call printf

movl %eax, -34831(%rbp, 1)






incl -34762(%rbp, 1)




jmp .L59

.L60:




movq $.L61, %rdi



movq $0, %rax


// currently reserved: 8810; actually_reserved: 8810; currently pueshed: 0
call printf

movl %eax, -34835(%rbp, 1)






incl -34745(%rbp, 1)




jmp .L62

.L63:




movq $.L64, %rdi



movq $0, %rax


// currently reserved: 8820; actually_reserved: 8820; currently pueshed: 0
call printf

movl %eax, -34839(%rbp, 1)




movl $0, -34843(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34843(%rbp, 1), %ebx


movl %ebx, -34847(%rbp, 1)
popq %rbx

// current pushed: 0





.L70:

movl $28, -34851(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34847(%rbp, 1), %ebx


movl %ebx, -34855(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34856(%rbp, 1), %bl


xorb %bl, -34856(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34851(%rbp, 1), %ebx


cmpl %ebx, -34855(%rbp, 1)
popq %rbx

// current pushed: 0


setb -34856(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34856(%rbp, 1), %bl


andb %bl, -34856(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L71

movl $0, -34860(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34860(%rbp, 1), %ebx


movl %ebx, -34864(%rbp, 1)
popq %rbx

// current pushed: 0





.L67:

movl $28, -34868(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34864(%rbp, 1), %ebx


movl %ebx, -34872(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34873(%rbp, 1), %bl


xorb %bl, -34873(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34868(%rbp, 1), %ebx


cmpl %ebx, -34872(%rbp, 1)
popq %rbx

// current pushed: 0


setb -34873(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -34873(%rbp, 1), %bl


andb %bl, -34873(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L68






movl $28, -34877(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34847(%rbp, 1), %ebx


movl %ebx, -34881(%rbp, 1)
popq %rbx

// current pushed: 0



movl -34881(%rbp, 1), %eax


imull -34877(%rbp, 1), %eax

movl %eax, -34881(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34864(%rbp, 1), %ebx


addl %ebx, -34881(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34881(%rbp, 1), %ebx


movl %ebx, -34889(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -34889(%rbp, 1)

cmpq $784, -34889(%rbp, 1)

jl .L66

movq -34889(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L66:
pushq %r10

// current pushed: 1

leaq -3152(%rbp, 1), %r10

movq %r10, -34897(%rbp, 1)


popq %r10

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -34897(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -34889(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -34905(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L65, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -34905(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 8860; actually_reserved: 8860; currently pueshed: 0
call printf

movl %eax, -34909(%rbp, 1)






incl -34864(%rbp, 1)




jmp .L67

.L68:




movq $.L69, %rdi



movq $0, %rax


// currently reserved: 8860; actually_reserved: 8860; currently pueshed: 0
call printf

movl %eax, -34913(%rbp, 1)






incl -34847(%rbp, 1)




jmp .L70

.L71:







pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -34921(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -34921(%rbp, 1)

cmpq $10, -34921(%rbp, 1)

jl .L73

movq -34921(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L73:
pushq %r10

// current pushed: 1

leaq -34576(%rbp, 1), %r10

movq %r10, -34929(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -34921(%rbp, 1), %rbx


movq %rbx, -34937(%rbp, 1)
popq %rbx

// current pushed: 0



movq -34937(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34937(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -34929(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -34937(%rbp, 1), %r12


cvtss2sd 3136(%rbx, %r12, 1), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -34945(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L72, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -34945(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 8890; actually_reserved: 8890; currently pueshed: 0
call printf

movl %eax, -34949(%rbp, 1)






pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -34957(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -34957(%rbp, 1)

cmpq $10, -34957(%rbp, 1)

jl .L74

movq -34957(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L74:
pushq %r10

// current pushed: 1

leaq -34576(%rbp, 1), %r10

movq %r10, -34965(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -34957(%rbp, 1), %rbx


movq %rbx, -34973(%rbp, 1)
popq %rbx

// current pushed: 0



movq -34973(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34973(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

// current pushed: 1

pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -34965(%rbp, 1), %r12


pushq %r13

// current pushed: 3

xorq %r13, %r13

movq -34973(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

// current pushed: 2
popq %r12

// current pushed: 1

movq %rbx, -34981(%rbp, 1)


popq %rbx

// current pushed: 0


movq -34981(%rbp, 1), %rdi


movq $784, %rsi



pushq %rbx

// current pushed: 1

leaq -3152(%rbp, 1), %rbx

movq %rbx, -34989(%rbp, 1)


popq %rbx

// current pushed: 0


movq -34989(%rbp, 1), %rdx


movq $784, %rcx




movq $0, %rax


// currently reserved: 88b0; actually_reserved: 88b0; currently pueshed: 0
call vecmul

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -34993(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34993(%rbp, 1), %ebx


movl %ebx, -34997(%rbp, 1)
popq %rbx

// current pushed: 0







pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -35005(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -35005(%rbp, 1)

cmpq $10, -35005(%rbp, 1)

jl .L75

movq -35005(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L75:
pushq %r10

// current pushed: 1

leaq -34576(%rbp, 1), %r10

movq %r10, -35013(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -35005(%rbp, 1), %rbx


movq %rbx, -35021(%rbp, 1)
popq %rbx

// current pushed: 0



movq -35021(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -35021(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -34997(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -35013(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -35021(%rbp, 1), %r12


addss 3136(%rbx, %r12, 1), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -34997(%rbp, 1)


popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -34997(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 88d0; actually_reserved: 88d0; currently pueshed: 0
call logistic

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -35025(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35025(%rbp, 1), %ebx


movl %ebx, -35029(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35029(%rbp, 1), %ebx


movl %ebx, -35049(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -35037(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -35037(%rbp, 1)

cmpq $10, -35037(%rbp, 1)

jl .L76

movq -35037(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L76:
pushq %r10

// current pushed: 1

leaq -34616(%rbp, 1), %r10

movq %r10, -35045(%rbp, 1)


popq %r10

// current pushed: 0



pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -35045(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -35037(%rbp, 1), %r12


movl -35049(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
popq %r13

// current pushed: 0









pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -34716(%rbp, 1), %ebx


movl %ebx, -35057(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -35057(%rbp, 1)

cmpq $10, -35057(%rbp, 1)

jl .L78

movq -35057(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L78:
pushq %r10

// current pushed: 1

leaq -34616(%rbp, 1), %r10

movq %r10, -35065(%rbp, 1)


popq %r10

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -35065(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -35057(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -35073(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L77, %rdi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -35073(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 8910; actually_reserved: 8910; currently pueshed: 0
call printf

movl %eax, -35077(%rbp, 1)






incl -34716(%rbp, 1)




jmp .L79

.L80:


pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -35117(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movl $0, -35121(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35121(%rbp, 1), %ebx


movl %ebx, -35125(%rbp, 1)
popq %rbx

// current pushed: 0





.L82:



pushq %rbx

// current pushed: 1

movq $10, %rbx


movq %rbx, -35133(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35133(%rbp, 1), %ebx


movl %ebx, -35137(%rbp, 1)
popq %rbx

// current pushed: 0



movq $-1, %rax


andq %rax, -35137(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35125(%rbp, 1), %ebx


movl %ebx, -35141(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -35142(%rbp, 1), %bl


xorb %bl, -35142(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35137(%rbp, 1), %ebx


cmpl %ebx, -35141(%rbp, 1)
popq %rbx

// current pushed: 0


setl -35142(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -35142(%rbp, 1), %bl


andb %bl, -35142(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L83



pushq %rbx

// current pushed: 1

leaq -34616(%rbp, 1), %rbx

movq %rbx, -35166(%rbp, 1)


popq %rbx

// current pushed: 0


movq -35166(%rbp, 1), %rdi


movq $10, %rsi



movl -35125(%rbp, 1), %edx



movq $0, %rax


// currently reserved: 8960; actually_reserved: 8960; currently pueshed: 0
call softmax

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -35170(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35170(%rbp, 1), %ebx


movl %ebx, -35174(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -35125(%rbp, 1), %ebx


movl %ebx, -35150(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -35150(%rbp, 1)

cmpq $10, -35150(%rbp, 1)

jl .L81

movq -35150(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L81:
pushq %r10

// current pushed: 1

leaq -35117(%rbp, 1), %r10

movq %r10, -35158(%rbp, 1)


popq %r10

// current pushed: 0



pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -35158(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -35150(%rbp, 1), %r12


movl -35174(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
popq %r13

// current pushed: 0






incl -35125(%rbp, 1)




jmp .L82

.L83:




._forward:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $816, %rsp


// curently pushed: 0



pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movq $.L84, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, %rdi


movq $47, %rsi





movq $0, %rax


// currently reserved: 0; actually_reserved: 0; currently pueshed: 0
call read_dataset_image

movq %rdx, -8(%rbp, 1)


movq %rax, -16(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -8(%rbp, 1), %rbx


movq %rbx, -24(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -16(%rbp, 1), %rbx


movq %rbx, -32(%rbp, 1)
popq %rbx

// current pushed: 0






pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -64(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0



movq $.L85, %rax


leaq 0(%rax, 1), %r12


movq %r12, %rdi


movq $47, %rsi





movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: 0
call read_dataset_label

movq %rdx, -40(%rbp, 1)


movq %rax, -48(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -40(%rbp, 1), %rbx


movq %rbx, -56(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


movq %rbx, -64(%rbp, 1)
popq %rbx

// current pushed: 0











movq $.L86, %rdi


movq -24(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 40; actually_reserved: 40; currently pueshed: 0
call printf

movl %eax, %r13d




pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -112(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0


movq $28, %r14



movq $28, %r15






pushq %rbx

// current pushed: 1

movq $4, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx

// current pushed: 0



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


// currently reserved: 50; actually_reserved: 50; currently pueshed: 0
call allocate

movq %rdx, -88(%rbp, 1)


movq %rax, -96(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -88(%rbp, 1), %rbx


movq %rbx, -104(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -96(%rbp, 1), %rbx


movq %rbx, -112(%rbp, 1)
popq %rbx

// current pushed: 0




xorq %rdx, %rdx

xorq %rax, %rax

movq -104(%rbp, 1), %rax


movq $3136, %r15


idivq %r15

movq %rax, -104(%rbp, 1)





movl $0, %r15d



movl %r15d, -116(%rbp, 1)




.L97:





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -104(%rbp, 1), %ebx


movl %ebx, -120(%rbp, 1)
popq %rbx

// current pushed: 0



movq $-1, %rax


andq %rax, -120(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -124(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -125(%rbp, 1), %bl


xorb %bl, -125(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -120(%rbp, 1), %ebx


cmpl %ebx, -124(%rbp, 1)
popq %rbx

// current pushed: 0


setb -125(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -125(%rbp, 1), %bl


andb %bl, -125(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L98

movl $0, -129(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -129(%rbp, 1), %ebx


movl %ebx, -133(%rbp, 1)
popq %rbx

// current pushed: 0





.L95:

movl $28, -137(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -141(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -142(%rbp, 1), %bl


xorb %bl, -142(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -137(%rbp, 1), %ebx


cmpl %ebx, -141(%rbp, 1)
popq %rbx

// current pushed: 0


setb -142(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -142(%rbp, 1), %bl


andb %bl, -142(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L96

movl $0, -146(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -146(%rbp, 1), %ebx


movl %ebx, -150(%rbp, 1)
popq %rbx

// current pushed: 0





.L93:

movl $28, -154(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


movl %ebx, -158(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -159(%rbp, 1), %bl


xorb %bl, -159(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -154(%rbp, 1), %ebx


cmpl %ebx, -158(%rbp, 1)
popq %rbx

// current pushed: 0


setb -159(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -159(%rbp, 1), %bl


andb %bl, -159(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L94



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -167(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -167(%rbp, 1)

pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -175(%rbp, 1)


movq %r10, -183(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -183(%rbp, 1), %rbx


cmpq %rbx, -167(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L87

movq -167(%rbp, 1), %rsi


movq -183(%rbp, 1), %rdx


call err_oob

.L87:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -167(%rbp, 1), %rbx


movq %rbx, -191(%rbp, 1)
popq %rbx

// current pushed: 0



movq -191(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -191(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -199(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -199(%rbp, 1)

cmpq $28, -199(%rbp, 1)

jl .L88

movq -199(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L88:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -175(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -191(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -207(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -199(%rbp, 1), %rbx


movq %rbx, -215(%rbp, 1)
popq %rbx

// current pushed: 0



movq -215(%rbp, 1), %rax


imulq $28, %rax

movq %rax, -215(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


movl %ebx, -223(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -223(%rbp, 1)

cmpq $28, -223(%rbp, 1)

jl .L89

movq -223(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L89:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -207(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -215(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -231(%rbp, 1)


popq %r10

// current pushed: 0



pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -231(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -223(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
movb %r13b, -232(%rbp, 1)
popq %r13

// current pushed: 0





movb $0, -233(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -232(%rbp, 1), %bl


movb %bl, -234(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


xorb %bl, -235(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -233(%rbp, 1), %bl


cmpb %bl, -234(%rbp, 1)
popq %rbx

// current pushed: 0


seta -235(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


andb %bl, -235(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L92

pushq %rbx

// current pushed: 1

movq $1065353216, %rbx


movq %rbx, -295(%rbp, 1)

popq %rbx

// current pushed: 0





movq %rbx, -303(%rbp, 1)


movq -232(%rbp, 1), %rbx

andq $255, %rbx

cvtsi2ss %rbx, %xmm0

movq -303(%rbp, 1), %rbx


pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movl %ebx, -307(%rbp, 1)


popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movl -295(%rbp, 1), %ebx


movq %rbx, %xmm1

popq %rbx

// current pushed: 0


divss -307(%rbp, 1), %xmm1

pushq %rbx

// current pushed: 1

movq %xmm1, %rbx

movl %ebx, -295(%rbp, 1)


popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -295(%rbp, 1), %ebx


movl %ebx, -311(%rbp, 1)
popq %rbx

// current pushed: 0





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -243(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -243(%rbp, 1)

pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -251(%rbp, 1)


movq %r10, -259(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -259(%rbp, 1), %rbx


cmpq %rbx, -243(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L90

movq -243(%rbp, 1), %rsi


movq -259(%rbp, 1), %rdx


call err_oob

.L90:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -243(%rbp, 1), %rbx


movq %rbx, -267(%rbp, 1)
popq %rbx

// current pushed: 0



movq -267(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -267(%rbp, 1)



// mul on the CPU up here ^




movl $28, -271(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -275(%rbp, 1)
popq %rbx

// current pushed: 0



movl -275(%rbp, 1), %eax


imull -271(%rbp, 1), %eax

movl %eax, -275(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


addl %ebx, -275(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -275(%rbp, 1), %ebx


movl %ebx, -283(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -283(%rbp, 1)

cmpq $784, -283(%rbp, 1)

jl .L91

movq -283(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L91:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -251(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -267(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -291(%rbp, 1)


popq %r10

// current pushed: 0



pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -291(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -283(%rbp, 1), %r12


movl -311(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
popq %r13

// current pushed: 0





.L92:




incl -150(%rbp, 1)




jmp .L93

.L94:




incl -133(%rbp, 1)




jmp .L95

.L96:




incl -116(%rbp, 1)




jmp .L97

.L98:


pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -347(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0


movl $1, -315(%rbp, 1)



movl -315(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 140; actually_reserved: 140; currently pueshed: 0
call nn

movq %rdx, -323(%rbp, 1)


movq %rax, -331(%rbp, 1)





pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -323(%rbp, 1), %rbx


movq %rbx, -339(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -331(%rbp, 1), %rbx


movq %rbx, -347(%rbp, 1)
popq %rbx

// current pushed: 0











movq $.L99, %rdi


movq -339(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 160; actually_reserved: 160; currently pueshed: 0
call printf

movl %eax, -351(%rbp, 1)




movl $0, -355(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -355(%rbp, 1), %ebx


movl %ebx, -359(%rbp, 1)
popq %rbx

// current pushed: 0





.L110:



pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -367(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -339(%rbp, 1), %r10


movq -347(%rbp, 1), %r11



movq %r11, -375(%rbp, 1)


movq %r10, -383(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -383(%rbp, 1), %rbx


cmpq %rbx, -367(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L100

movq -367(%rbp, 1), %rsi


movq -383(%rbp, 1), %rdx


call err_oob

.L100:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -367(%rbp, 1), %rbx


movq %rbx, -391(%rbp, 1)
popq %rbx

// current pushed: 0



movq -391(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -391(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx

// current pushed: 1

movq $10, %rbx


movq %rbx, -399(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -399(%rbp, 1), %ebx


movl %ebx, -403(%rbp, 1)
popq %rbx

// current pushed: 0



movq $-1, %rax


andq %rax, -403(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -359(%rbp, 1), %ebx


movl %ebx, -407(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -408(%rbp, 1), %bl


xorb %bl, -408(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -403(%rbp, 1), %ebx


cmpl %ebx, -407(%rbp, 1)
popq %rbx

// current pushed: 0


setl -408(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -408(%rbp, 1), %bl


andb %bl, -408(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L111

movl $0, -412(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -412(%rbp, 1), %ebx


movl %ebx, -416(%rbp, 1)
popq %rbx

// current pushed: 0





.L106:



pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -424(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -339(%rbp, 1), %r10


movq -347(%rbp, 1), %r11



movq %r11, -432(%rbp, 1)


movq %r10, -440(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -440(%rbp, 1), %rbx


cmpq %rbx, -424(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L101

movq -424(%rbp, 1), %rsi


movq -440(%rbp, 1), %rdx


call err_oob

.L101:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -424(%rbp, 1), %rbx


movq %rbx, -448(%rbp, 1)
popq %rbx

// current pushed: 0



movq -448(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -448(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -359(%rbp, 1), %ebx


movl %ebx, -456(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -456(%rbp, 1)

cmpq $10, -456(%rbp, 1)

jl .L102

movq -456(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L102:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -432(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -448(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -464(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -456(%rbp, 1), %rbx


movq %rbx, -472(%rbp, 1)
popq %rbx

// current pushed: 0



movq -472(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -472(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: 1

movq $784, %rbx


movq %rbx, -480(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -480(%rbp, 1), %ebx


movl %ebx, -484(%rbp, 1)
popq %rbx

// current pushed: 0



movq $-1, %rax


andq %rax, -484(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -416(%rbp, 1), %ebx


movl %ebx, -488(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -489(%rbp, 1), %bl


xorb %bl, -489(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -484(%rbp, 1), %ebx


cmpl %ebx, -488(%rbp, 1)
popq %rbx

// current pushed: 0


setl -489(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -489(%rbp, 1), %bl


andb %bl, -489(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L107

pushq %rbx

// current pushed: 1

movq $1065353216, %rbx


movq %rbx, -565(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -565(%rbp, 1), %ebx


movl %ebx, -569(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -497(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -339(%rbp, 1), %r10


movq -347(%rbp, 1), %r11



movq %r11, -505(%rbp, 1)


movq %r10, -513(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -513(%rbp, 1), %rbx


cmpq %rbx, -497(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L103

movq -497(%rbp, 1), %rsi


movq -513(%rbp, 1), %rdx


call err_oob

.L103:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -497(%rbp, 1), %rbx


movq %rbx, -521(%rbp, 1)
popq %rbx

// current pushed: 0



movq -521(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -521(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -359(%rbp, 1), %ebx


movl %ebx, -529(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -529(%rbp, 1)

cmpq $10, -529(%rbp, 1)

jl .L104

movq -529(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L104:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -505(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -521(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -537(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -529(%rbp, 1), %rbx


movq %rbx, -545(%rbp, 1)
popq %rbx

// current pushed: 0



movq -545(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -545(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -416(%rbp, 1), %ebx


movl %ebx, -553(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -553(%rbp, 1)

cmpq $784, -553(%rbp, 1)

jl .L105

movq -553(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L105:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -537(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -545(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -561(%rbp, 1)


popq %r10

// current pushed: 0



pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -561(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -553(%rbp, 1), %r12


movl -569(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
popq %r13

// current pushed: 0






incl -416(%rbp, 1)




jmp .L106

.L107:


pushq %rbx

// current pushed: 1

movq $1065353216, %rbx


movq %rbx, -629(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -629(%rbp, 1), %ebx


movl %ebx, -633(%rbp, 1)
popq %rbx

// current pushed: 0




pushq %rbx

// current pushed: 1

movq $0, %rbx


movq %rbx, -577(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -339(%rbp, 1), %r10


movq -347(%rbp, 1), %r11



movq %r11, -585(%rbp, 1)


movq %r10, -593(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -593(%rbp, 1), %rbx


cmpq %rbx, -577(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L108

movq -577(%rbp, 1), %rsi


movq -593(%rbp, 1), %rdx


call err_oob

.L108:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -577(%rbp, 1), %rbx


movq %rbx, -601(%rbp, 1)
popq %rbx

// current pushed: 0



movq -601(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -601(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -359(%rbp, 1), %ebx


movl %ebx, -609(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -609(%rbp, 1)

cmpq $10, -609(%rbp, 1)

jl .L109

movq -609(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L109:
pushq %r10

// current pushed: 1

pushq %rbx

// current pushed: 2

xorq %rbx, %rbx

movq -585(%rbp, 1), %rbx


pushq %r12

// current pushed: 3

xorq %r12, %r12

movq -601(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1

movq %r10, -617(%rbp, 1)


popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -609(%rbp, 1), %rbx


movq %rbx, -625(%rbp, 1)
popq %rbx

// current pushed: 0



movq -625(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -625(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

// current pushed: 3
xorq %r13, %r13
pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -617(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -625(%rbp, 1), %r12


movl -633(%rbp, 1), %r13d


movl %r13d, 3136(%rbx, %r12, 1)
popq %r12

// current pushed: 2
popq %rbx

// current pushed: 1
popq %r13

// current pushed: 0






incl -359(%rbp, 1)




jmp .L110

.L111:


pushq %rax

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

xorq %rax, %rax

leaq -753(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rax

// current pushed: 0




pushq %rbx

// current pushed: 1

movq $5, %rbx


movq %rbx, -641(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %r10

// current pushed: 1

pushq %r11

// current pushed: 2

movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -649(%rbp, 1)


movq %r10, -657(%rbp, 1)


popq %r11

// current pushed: 1

popq %r10

// current pushed: 0

pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -657(%rbp, 1), %rbx


cmpq %rbx, -641(%rbp, 1)
popq %rbx

// current pushed: 0


jl .L112

movq -641(%rbp, 1), %rsi


movq -657(%rbp, 1), %rdx


call err_oob

.L112:
pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movq -641(%rbp, 1), %rbx


movq %rbx, -665(%rbp, 1)
popq %rbx

// current pushed: 0



movq -665(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -665(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx

// current pushed: 1

leaq -705(%rbp, 1), %rbx

popq %rbx

// current pushed: 0

movq %rbx, %rdi


movq -339(%rbp, 1), %rdx


movq -347(%rbp, 1), %rsi




subq $3120, %rsp

movq %rsp, %rax


pushq %rsi

// current pushed: 2

pushq %rdi

// current pushed: 3

pushq %rcx

// current pushed: 4

pushq %rbx

// current pushed: 5

xorq %rbx, %rbx

movq -649(%rbp, 1), %rbx


pushq %r12

// current pushed: 6

xorq %r12, %r12

movq -665(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

// current pushed: 5
popq %rbx

// current pushed: 4

leaq 0(%rax, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx

// current pushed: 3

popq %rdi

// current pushed: 2

popq %rsi

// current pushed: 1



movq $0, %rax


// currently reserved: f00; actually_reserved: f00; currently pueshed: 0
call forward

addq $3120, %rsp

movq %rax, -713(%rbp, 1)




pushq %rsi

// current pushed: 1

pushq %rdi

// current pushed: 2

pushq %rcx

// current pushed: 3

leaq -705(%rbp, 1), %rsi

leaq -753(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx

// current pushed: 2

popq %rdi

// current pushed: 1

popq %rsi

// current pushed: 0



movl $0, -757(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -757(%rbp, 1), %ebx


movl %ebx, -761(%rbp, 1)
popq %rbx

// current pushed: 0





.L115:



pushq %rbx

// current pushed: 1

movq $10, %rbx


movq %rbx, -769(%rbp, 1)

popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -769(%rbp, 1), %ebx


movl %ebx, -773(%rbp, 1)
popq %rbx

// current pushed: 0



movq $-1, %rax


andq %rax, -773(%rbp, 1)


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -761(%rbp, 1), %ebx


movl %ebx, -777(%rbp, 1)
popq %rbx

// current pushed: 0



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -778(%rbp, 1), %bl


xorb %bl, -778(%rbp, 1)
popq %rbx

// current pushed: 0


pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -773(%rbp, 1), %ebx


cmpl %ebx, -777(%rbp, 1)
popq %rbx

// current pushed: 0


setl -778(%rbp, 1)



pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movb -778(%rbp, 1), %bl


andb %bl, -778(%rbp, 1)
popq %rbx

// current pushed: 0


jz .L116







pushq %rbx

// current pushed: 1
xorq %rbx, %rbx
movl -761(%rbp, 1), %ebx


movl %ebx, -786(%rbp, 1)
popq %rbx

// current pushed: 0



movq $4294967295, %rax


andq %rax, -786(%rbp, 1)

cmpq $10, -786(%rbp, 1)

jl .L114

movq -786(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L114:
pushq %r10

// current pushed: 1

leaq -753(%rbp, 1), %r10

movq %r10, -794(%rbp, 1)


popq %r10

// current pushed: 0



pushq %rbx

// current pushed: 1

xorq %rbx, %rbx

movq -794(%rbp, 1), %rbx


pushq %r12

// current pushed: 2

xorq %r12, %r12

movq -786(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: 1
popq %rbx

// current pushed: 0

pushq %rbx

// current pushed: 1

movq %xmm0, %rbx

movq %rbx, -802(%rbp, 1)


popq %rbx

// current pushed: 0



movq $.L113, %rdi


movl -761(%rbp, 1), %esi


pushq %rbx

// current pushed: 1

xorq %rbx, %rbx
movq -802(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: 0



movq $1, %rax


// currently reserved: 330; actually_reserved: 330; currently pueshed: 0
call printf

movl %eax, -806(%rbp, 1)






incl -761(%rbp, 1)




jmp .L115

.L116:


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





































































































































































































.L36: .byte 120, 32, 58, 32, 37, 102, 10, 0
















































.L37: .byte 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 103, 10, 0















.L38: .byte 100, 101, 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 103, 10, 0
































































.L39: .byte 120, 91, 37, 117, 93, 32, 61, 32, 37, 102, 10, 0



















































.L44: .byte 100, 101, 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 102, 10, 0



























































.L46: .byte 110, 101, 116, 116, 46, 108, 101, 110, 32, 61, 61, 32, 37, 108, 108, 117, 10, 0












.L47: .byte 120, 46, 108, 101, 110, 32, 61, 61, 32, 37, 108, 108, 117, 10, 0



































.L49: .byte 110, 101, 116, 91, 48, 93, 46, 108, 101, 110, 32, 61, 61, 32, 37, 108, 108, 117, 10, 0












.L50: .byte 110, 101, 116, 91, 48, 93, 91, 48, 93, 46, 119, 101, 105, 103, 104, 116, 115, 46, 100, 97, 116, 97, 32, 61, 61, 32, 37, 108, 108, 120, 10, 0



























.L52: .byte 110, 101, 116, 91, 48, 93, 91, 48, 93, 46, 119, 101, 105, 103, 104, 116, 115, 91, 48, 93, 32, 61, 61, 32, 37, 102, 10, 0






















































.L55: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0






























.L56: .byte 37, 102, 32, 0






















































.L61: .byte 10, 0















.L64: .byte 105, 110, 112, 117, 116, 58, 10, 0






























.L65: .byte 37, 102, 32, 0








































.L69: .byte 10, 0















.L72: .byte 98, 105, 97, 115, 58, 32, 37, 102, 10, 0













































































































.L77: .byte 108, 111, 103, 105, 115, 116, 105, 99, 58, 32, 37, 102, 10, 0





























































































.L84: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 105, 109, 97, 103, 101, 115, 45, 105, 100, 120, 51, 45, 117, 98, 121, 116, 101, 0





















.L85: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 108, 97, 98, 101, 108, 115, 45, 105, 100, 120, 49, 45, 117, 98, 121, 116, 101, 0



















.L86: .byte 37, 108, 108, 120, 10, 0








































































































































































































































.L99: .byte 110, 101, 117, 114, 97, 108, 95, 110, 101, 116, 119, 111, 114, 107, 46, 108, 101, 110, 58, 32, 37, 100, 10, 0

















































































































































































































































.L113: .byte 112, 114, 111, 98, 97, 98, 105, 108, 105, 116, 121, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0







































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


