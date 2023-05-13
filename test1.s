[784]f32
struct    has padding of  0
struct    has padding of  0
codegen error: unmatched stack alloc/dealloc!
codegen error: unmatched stack alloc/dealloc!
[[false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false true false false false false] [false false false false false false] [false true false false false false] [false false true false false false] [false true false false false false] [false false true false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false] [false false false false false false]]
codegen error: unmatched stack alloc/dealloc!
codegen error: unmatched stack alloc/dealloc!
codegen error: unmatched stack alloc/dealloc!
.text













































.string "\0allocate"
.global allocate
allocate:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp


// curently pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880]

movq $0, %rbx


movq %rbx, -233(%rbp, 1)

popq %rbx

// current pushed: []



movq %rdi, -233(%rbp, 1)




pushq %rax

// current pushed: [824634094880]

pushq %rdi

// current pushed: [824634094880 824636491360]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212480]

xorq %rax, %rax

leaq -249(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360]






movq -233(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: 100; actually_reserved: 100; currently pueshed: [824634094880 824636491360]
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


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $0, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movq %rdx, -24(%rbp, 1)








movq -16(%rbp, 1), %rdi


movq -24(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: [824634094880 824636491360]
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


// curently pushed: [824634094880 824636491360]

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


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx



movq $0, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: [824634094880 824636491360]
call open

movl %eax, %r13d




movl %r13d, -20(%rbp, 1)




movl $0, %r14d



movl -20(%rbp, 1), %r15d


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


xorb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


cmpl %r14d, %r15d

setl -21(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


andb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L2





movq $.L1, %rdi


movq -16(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, %r14d




jmp ._read_dataset_image





.L2:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -41(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -41(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -57(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -57(%rbp, 1), %rbx


cmpq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -66(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L4



movq $.L3, %rdi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_image





.L4:



movl -25(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call flip32

movl %eax, -74(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -74(%rbp, 1), %ebx


movl %ebx, -78(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -78(%rbp, 1), %ebx


movl %ebx, -25(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L5, %rdi


movl -25(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -82(%rbp, 1)




movl $0, -86(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -86(%rbp, 1), %rbx

movq %rbx, -102(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -102(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movl -20(%rbp, 1), %edi


movq -102(%rbp, 1), %rsi


movq -102(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 70; actually_reserved: 70; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -110(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -110(%rbp, 1), %rbx


movq %rbx, -118(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -118(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -126(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


xorb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -126(%rbp, 1), %rbx


cmpq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -135(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


andb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L7



movq $.L6, %rdi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_image





.L7:



movl -86(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: [824634094880 824636491360]
call flip32

movl %eax, -143(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -143(%rbp, 1), %ebx


movl %ebx, -147(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -147(%rbp, 1), %ebx


movl %ebx, -86(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L8, %rdi


movl -86(%rbp, 1), %esi



movq $0, %rax


// currently reserved: a0; actually_reserved: a0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -151(%rbp, 1)




movl $0, -155(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -155(%rbp, 1), %rbx

movq %rbx, -171(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -171(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movl -20(%rbp, 1), %edi


movq -171(%rbp, 1), %rsi


movq -171(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: b0; actually_reserved: b0; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -179(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -179(%rbp, 1), %rbx


movq %rbx, -187(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -187(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -195(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -203(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -204(%rbp, 1), %bl


xorb %bl, -204(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -195(%rbp, 1), %rbx


cmpq %rbx, -203(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -204(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -204(%rbp, 1), %bl


andb %bl, -204(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L10



movq $.L9, %rdi



movq $0, %rax


// currently reserved: d0; actually_reserved: d0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -208(%rbp, 1)




jmp ._read_dataset_image





.L10:



movl -155(%rbp, 1), %edi



movq $0, %rax


// currently reserved: d0; actually_reserved: d0; currently pueshed: [824634094880 824636491360]
call flip32

movl %eax, -212(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -212(%rbp, 1), %ebx


movl %ebx, -216(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -216(%rbp, 1), %ebx


movl %ebx, -155(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L11, %rdi


movl -155(%rbp, 1), %esi



movq $0, %rax


// currently reserved: e0; actually_reserved: e0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -220(%rbp, 1)




movl $0, -224(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -224(%rbp, 1), %rbx

movq %rbx, -240(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -240(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movl -20(%rbp, 1), %edi


movq -240(%rbp, 1), %rsi


movq -240(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: f0; actually_reserved: f0; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -248(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -248(%rbp, 1), %rbx


movq %rbx, -256(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -256(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -264(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -272(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -273(%rbp, 1), %bl


xorb %bl, -273(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -264(%rbp, 1), %rbx


cmpq %rbx, -272(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -273(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -273(%rbp, 1), %bl


andb %bl, -273(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L13



movq $.L12, %rdi



movq $0, %rax


// currently reserved: 120; actually_reserved: 120; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -277(%rbp, 1)




jmp ._read_dataset_image





.L13:



movl -224(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 120; actually_reserved: 120; currently pueshed: [824634094880 824636491360]
call flip32

movl %eax, -281(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -281(%rbp, 1), %ebx


movl %ebx, -285(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -285(%rbp, 1), %ebx


movl %ebx, -224(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L14, %rdi


movl -224(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 120; actually_reserved: 120; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -289(%rbp, 1)







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -155(%rbp, 1), %ebx


movl %ebx, -293(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movl -293(%rbp, 1), %eax


imull -224(%rbp, 1), %eax

movl %eax, -293(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -86(%rbp, 1), %ebx


movl %ebx, -297(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movl -297(%rbp, 1), %eax


imull -293(%rbp, 1), %eax

movl %eax, -297(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -297(%rbp, 1), %ebx


movl %ebx, -301(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L15, %rdi


movl -301(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 130; actually_reserved: 130; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -305(%rbp, 1)




pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -345(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -301(%rbp, 1), %rbx


movq %rbx, -313(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -313(%rbp, 1)


movq -313(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: 140; actually_reserved: 140; currently pueshed: [824634094880 824636491360]
call allocate

movq %rdx, -321(%rbp, 1)


movq %rax, -329(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -321(%rbp, 1), %rbx


movq %rbx, -337(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -329(%rbp, 1), %rbx


movq %rbx, -345(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




xorq %rdx, %rdx

xorq %rax, %rax

movq -337(%rbp, 1), %rax


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $784, %rbx


movq %rbx, -353(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]


idivq -353(%rbp, 1)

movq %rax, -337(%rbp, 1)





movl $0, -357(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -357(%rbp, 1), %ebx


movl %ebx, -361(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L19:


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -361(%rbp, 1), %ebx


movl %ebx, -365(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -366(%rbp, 1), %bl


xorb %bl, -366(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -86(%rbp, 1), %ebx


cmpl %ebx, -365(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -366(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -366(%rbp, 1), %bl


andb %bl, -366(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L20




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -361(%rbp, 1), %ebx


movl %ebx, -374(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -374(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -337(%rbp, 1), %r10


movq -345(%rbp, 1), %r11



movq %r11, -382(%rbp, 1)


movq %r10, -390(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -390(%rbp, 1), %rbx


cmpq %rbx, -374(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L16

movq -374(%rbp, 1), %rsi


movq -390(%rbp, 1), %rdx


call err_oob

.L16:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -374(%rbp, 1), %rbx


movq %rbx, -398(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -398(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -398(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -382(%rbp, 1), %r12


pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r13, %r13

movq -398(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %r12

// current pushed: [824634094880 824636491360 824635212416]

movq %rbx, -414(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -414(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -414(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -224(%rbp, 1), %rbx


movq %rbx, -422(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -422(%rbp, 1)


movq -414(%rbp, 1), %rax


imulq -422(%rbp, 1), %rax

movq %rax, -414(%rbp, 1)




movl -20(%rbp, 1), %edi


movq -414(%rbp, 1), %rsi


movq -414(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 1b0; actually_reserved: 1b0; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -430(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -430(%rbp, 1), %rbx


movq %rbx, -438(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -438(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -155(%rbp, 1), %rbx


movq %rbx, -446(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -446(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -224(%rbp, 1), %rbx


movq %rbx, -454(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -454(%rbp, 1)


movq -446(%rbp, 1), %rax


imulq -454(%rbp, 1), %rax

movq %rax, -446(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -462(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -463(%rbp, 1), %bl


xorb %bl, -463(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -446(%rbp, 1), %rbx


cmpq %rbx, -462(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -463(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -463(%rbp, 1), %bl


andb %bl, -463(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L18



movq $.L17, %rdi



movq $0, %rax


// currently reserved: 1d0; actually_reserved: 1d0; currently pueshed: [824634094880 824636491360]
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


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)







movl $0, %ebx



movl $0, %r12d



movq -16(%rbp, 1), %rdi


movl %ebx, %esi


movl %r12d, %edx



movq $0, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: [824634094880 824636491360]
call open

movl %eax, %r13d




movl %r13d, -20(%rbp, 1)




movl $0, %r14d



movl -20(%rbp, 1), %r15d


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


xorb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


cmpl %r14d, %r15d

setl -21(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -21(%rbp, 1), %bl


andb %bl, -21(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L22





movq $.L21, %rdi


movq -16(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, %r14d




jmp ._read_dataset_label





.L22:


movl $0, -25(%rbp, 1)




leaq -25(%rbp, 1), %r15



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -33(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movl -20(%rbp, 1), %edi


movq %r15, %rsi


movq -33(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -41(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -41(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -57(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -57(%rbp, 1), %rbx


cmpq %rbx, -65(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -66(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L24



movq $.L23, %rdi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -70(%rbp, 1)




jmp ._read_dataset_label





.L24:



movl -25(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call flip32

movl %eax, -74(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -74(%rbp, 1), %ebx


movl %ebx, -78(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -78(%rbp, 1), %ebx


movl %ebx, -25(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L25, %rdi


movl -25(%rbp, 1), %esi



movq $0, %rax


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -82(%rbp, 1)




movl $0, -86(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -86(%rbp, 1), %rbx

movq %rbx, -102(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -102(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movl -20(%rbp, 1), %edi


movq -102(%rbp, 1), %rsi


movq -102(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: 70; actually_reserved: 70; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -110(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -110(%rbp, 1), %rbx


movq %rbx, -118(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -118(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -126(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


xorb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -126(%rbp, 1), %rbx


cmpq %rbx, -134(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -135(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -135(%rbp, 1), %bl


andb %bl, -135(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L27



movq $.L26, %rdi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -139(%rbp, 1)




jmp ._read_dataset_label





.L27:



movl -86(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 90; actually_reserved: 90; currently pueshed: [824634094880 824636491360]
call flip32

movl %eax, -143(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -143(%rbp, 1), %ebx


movl %ebx, -147(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -147(%rbp, 1), %ebx


movl %ebx, -86(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







movq $.L28, %rdi


movl -86(%rbp, 1), %esi



movq $0, %rax


// currently reserved: a0; actually_reserved: a0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -151(%rbp, 1)




pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -191(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -159(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -159(%rbp, 1)


movq -159(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: a0; actually_reserved: a0; currently pueshed: [824634094880 824636491360]
call allocate

movq %rdx, -167(%rbp, 1)


movq %rax, -175(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -167(%rbp, 1), %rbx


movq %rbx, -183(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -175(%rbp, 1), %rbx


movq %rbx, -191(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




xorq %rdx, %rdx

xorq %rax, %rax

movq -183(%rbp, 1), %rax


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $1, %rbx


movq %rbx, -199(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]


idivq -199(%rbp, 1)

movq %rax, -183(%rbp, 1)











pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -207(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -207(%rbp, 1)


movl -20(%rbp, 1), %edi


movq -191(%rbp, 1), %rsi


movq -207(%rbp, 1), %rdx



movq $0, %rax


// currently reserved: d0; actually_reserved: d0; currently pueshed: [824634094880 824636491360]
call read

movq %rax, -215(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -215(%rbp, 1), %rbx


movq %rbx, -223(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -223(%rbp, 1), %rbx


movq %rbx, -49(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -86(%rbp, 1), %rbx


movq %rbx, -231(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -231(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -49(%rbp, 1), %rbx


movq %rbx, -239(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -240(%rbp, 1), %bl


xorb %bl, -240(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -231(%rbp, 1), %rbx


cmpq %rbx, -239(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -240(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -240(%rbp, 1), %bl


andb %bl, -240(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L30



movq $.L29, %rdi



movq $0, %rax


// currently reserved: f0; actually_reserved: f0; currently pueshed: [824634094880 824636491360]
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


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



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

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -48(%rbp, 1)


movq %r10, -56(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

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

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -64(%rbp, 1)


movq %r10, -72(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

cmpq -72(%rbp, 1), %r14

jl .L33

movq %r14, %rsi


movq -72(%rbp, 1), %rdx


call err_oob

.L33:


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
xorq %r12, %r12
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -48(%rbp, 1), %rbx


movl 0(%rbx, %r13, 4), %r12d


popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
movl %r12d, -76(%rbp, 1)
popq %r12

// current pushed: [824634094880 824636491360]



movl -76(%rbp, 1), %eax


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -76(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -64(%rbp, 1), %rbx


mulss 0(%rbx, %r14, 4), %xmm0
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -76(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movq %rbx, %xmm1

popq %rbx

// current pushed: [824634094880 824636491360]


addss -76(%rbp, 1), %xmm1

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm1, %rbx

movl %ebx, -36(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]






incl -40(%rbp, 1)




jmp .L34

.L35:




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


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


// curently pushed: [824634094880 824636491360]

movl $0, -3144(%rbp, 1)



movl %edi, -3144(%rbp, 1)




pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -3176(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]




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


// currently reserved: c50; actually_reserved: c50; currently pueshed: [824634094880 824636491360]
call allocate

movq %rdx, -3152(%rbp, 1)


movq %rax, -3160(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -3152(%rbp, 1), %rbx


movq %rbx, -3168(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -3160(%rbp, 1), %rbx


movq %rbx, -3176(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




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


// curently pushed: [824634094880 824636491360]

movl $0, -8(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -8(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]








cvtss2sd -8(%rbp, 1), %xmm0

movq %xmm0, %rbx



movq $.L36, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq %rbx, %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, %r12d




movq $1065353216, %r13



movl %r13d, -12(%rbp, 1)



movq $1065353216, %r14




movl -8(%rbp, 1), %r15d


movl $0, -16(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -16(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl %r15d, %ebx


movq %rbx, %xmm1

popq %rbx

// current pushed: [824634094880 824636491360]


subss %xmm1, %xmm0

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -16(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movl -16(%rbp, 1), %r15d




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl %r15d, %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 10; actually_reserved: 10; currently pueshed: [824634094880 824636491360]
call expf

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -20(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl %r14d, %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


addss -20(%rbp, 1), %xmm0

movq %xmm0, %r14




movl %r14d, -24(%rbp, 1)







cvtss2sd -12(%rbp, 1), %xmm1

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm1, %rbx

movq %rbx, -32(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L37, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -32(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -36(%rbp, 1)








cvtss2sd -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movq %rbx, -44(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L38, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -44(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -48(%rbp, 1)






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -52(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -52(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


divss -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -52(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -52(%rbp, 1), %ebx


movl %ebx, -56(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -56(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


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


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



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

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -40(%rbp, 1)


movq %r10, -48(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


cmpq %rbx, -32(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L40

movq -32(%rbp, 1), %rsi


movq -48(%rbp, 1), %rdx


call err_oob

.L40:


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -40(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -32(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

movq %xmm0, %r13



movq $.L39, %rdi


movq -32(%rbp, 1), %rsi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq %r13, %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 30; actually_reserved: 30; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, %r15d







pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -56(%rbp, 1)


movq %r10, -64(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -64(%rbp, 1), %rbx


cmpq %rbx, -32(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L41

movq -32(%rbp, 1), %rsi


movq -64(%rbp, 1), %rdx


call err_oob

.L41:


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -56(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -32(%rbp, 1), %r12


addss 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -24(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]






incq -32(%rbp, 1)




jmp .L42

.L43:







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -72(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -72(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -80(%rbp, 1)


movq %r10, -88(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -88(%rbp, 1), %rbx


cmpq %rbx, -72(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L45

movq -72(%rbp, 1), %rsi


movq -88(%rbp, 1), %rdx


call err_oob

.L45:


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -80(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -72(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm1
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm1, %rbx

movq %rbx, -96(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L44, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -96(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 60; actually_reserved: 60; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -100(%rbp, 1)








cvtss2sd -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movq %rbx, -108(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L46, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -108(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 70; actually_reserved: 70; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -112(%rbp, 1)






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -120(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -120(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -128(%rbp, 1)


movq %r10, -136(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -136(%rbp, 1), %rbx


cmpq %rbx, -120(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L47

movq -120(%rbp, 1), %rsi


movq -136(%rbp, 1), %rdx


call err_oob

.L47:



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -128(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -120(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
movl %r13d, -140(%rbp, 1)
popq %r13

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -140(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


divss -24(%rbp, 1), %xmm0

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -140(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -140(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


._softmax:
movq %rbp, %rsp

popq %rbp

ret



.string "\0forward"
.global forward
forward:
pushq %rbp

movq %rsp, %rbp

subq $35056, %rsp


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -3152(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $0, %rbx


movq %rbx, -3160(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]


movq %rdi, -3160(%rbp, 1)


movq %rdx, -8(%rbp, 1)


movq %rsi, -16(%rbp, 1)



pushq %rsi

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

leaq 16(%rbp, 1), %rsi

leaq -3152(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rsi

// current pushed: [824634094880 824636491360]




pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -34576(%rbp, 1), %rdi

movq $31400, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movq $0, %rbx



pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -8(%rbp, 1), %r10


movq -16(%rbp, 1), %r11



movq %r11, -3168(%rbp, 1)


movq %r10, -3176(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

cmpq -3176(%rbp, 1), %rbx

jl .L48

movq %rbx, %rsi


movq -3176(%rbp, 1), %rdx


call err_oob

.L48:
movq %rbx, %rax


imulq $31400, %rax

movq %rax, %rbx





pushq %rsi

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480 824635212512]

xorq %r12, %r12

movq -3168(%rbp, 1), %r12


leaq 0(%r12, %rbx, 1), %rsi
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

leaq -34576(%rbp, 1), %rdi

movq $31400, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rsi

// current pushed: [824634094880 824636491360]



pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -34616(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movl $0, %r12d



movl %r12d, -34620(%rbp, 1)




.L73:



movq $10, %r13



movl %r13d, %r14d


movq $-1, %rax


andq %rax, %r14


movl -34620(%rbp, 1), %r15d


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34621(%rbp, 1), %bl


xorb %bl, -34621(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


cmpl %r14d, %r15d

setl -34621(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34621(%rbp, 1), %bl


andb %bl, -34621(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L74



movq $.L49, %rdi



movq $0, %rax


// currently reserved: 8740; actually_reserved: 8740; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, %r14d




movl $0, %r15d



movl %r15d, -34625(%rbp, 1)




.L56:

movl $28, -34629(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34625(%rbp, 1), %ebx


movl %ebx, -34633(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34634(%rbp, 1), %bl


xorb %bl, -34634(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34629(%rbp, 1), %ebx


cmpl %ebx, -34633(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -34634(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34634(%rbp, 1), %bl


andb %bl, -34634(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L57

movl $0, -34638(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34638(%rbp, 1), %ebx


movl %ebx, -34642(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L53:

movl $28, -34646(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34642(%rbp, 1), %ebx


movl %ebx, -34650(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34651(%rbp, 1), %bl


xorb %bl, -34651(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34646(%rbp, 1), %ebx


cmpl %ebx, -34650(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -34651(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34651(%rbp, 1), %bl


andb %bl, -34651(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L54






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34620(%rbp, 1), %ebx


movl %ebx, -34659(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34659(%rbp, 1)

cmpq $10, -34659(%rbp, 1)

jl .L51

movq -34659(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L51:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34576(%rbp, 1), %r10

movq %r10, -34675(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -34659(%rbp, 1), %rbx


movq %rbx, -34675(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -34675(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34675(%rbp, 1)



// mul on the CPU up here ^






movl $28, -34679(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34625(%rbp, 1), %ebx


movl %ebx, -34683(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movl -34683(%rbp, 1), %eax


imull -34679(%rbp, 1), %eax

movl %eax, -34683(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34642(%rbp, 1), %ebx


addl %ebx, -34683(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34683(%rbp, 1), %ebx


movl %ebx, -34691(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34691(%rbp, 1)

cmpq $784, -34691(%rbp, 1)

jl .L52

movq -34691(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L52:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -34675(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -34675(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -34707(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -34707(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34691(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movq %rbx, -34707(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L50, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -34707(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 87a0; actually_reserved: 87a0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34711(%rbp, 1)






incl -34642(%rbp, 1)




jmp .L53

.L54:




movq $.L55, %rdi



movq $0, %rax


// currently reserved: 87a0; actually_reserved: 87a0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34715(%rbp, 1)






incl -34625(%rbp, 1)




jmp .L56

.L57:




movq $.L58, %rdi



movq $0, %rax


// currently reserved: 87a0; actually_reserved: 87a0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34719(%rbp, 1)




movl $0, -34723(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34723(%rbp, 1), %ebx


movl %ebx, -34727(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L64:

movl $28, -34731(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34727(%rbp, 1), %ebx


movl %ebx, -34735(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34736(%rbp, 1), %bl


xorb %bl, -34736(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34731(%rbp, 1), %ebx


cmpl %ebx, -34735(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -34736(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34736(%rbp, 1), %bl


andb %bl, -34736(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L65

movl $0, -34740(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34740(%rbp, 1), %ebx


movl %ebx, -34744(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L61:

movl $28, -34748(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34744(%rbp, 1), %ebx


movl %ebx, -34752(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34753(%rbp, 1), %bl


xorb %bl, -34753(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34748(%rbp, 1), %ebx


cmpl %ebx, -34752(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -34753(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -34753(%rbp, 1), %bl


andb %bl, -34753(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L62






movl $28, -34757(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34727(%rbp, 1), %ebx


movl %ebx, -34761(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movl -34761(%rbp, 1), %eax


imull -34757(%rbp, 1), %eax

movl %eax, -34761(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34744(%rbp, 1), %ebx


addl %ebx, -34761(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34761(%rbp, 1), %ebx


movl %ebx, -34769(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34769(%rbp, 1)

cmpq $784, -34769(%rbp, 1)

jl .L60

movq -34769(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L60:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -3152(%rbp, 1), %r10

movq %r10, -34785(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -34785(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34769(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movq %rbx, -34785(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L59, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -34785(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 87f0; actually_reserved: 87f0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34789(%rbp, 1)






incl -34744(%rbp, 1)




jmp .L61

.L62:




movq $.L63, %rdi



movq $0, %rax


// currently reserved: 87f0; actually_reserved: 87f0; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34793(%rbp, 1)






incl -34727(%rbp, 1)




jmp .L64

.L65:







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34620(%rbp, 1), %ebx


movl %ebx, -34801(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34801(%rbp, 1)

cmpq $10, -34801(%rbp, 1)

jl .L67

movq -34801(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L67:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34576(%rbp, 1), %r10

movq %r10, -34817(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -34801(%rbp, 1), %rbx


movq %rbx, -34817(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -34817(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34817(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -34817(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34817(%rbp, 1), %r12


cvtss2sd 3136(%rbx, %r12, 1), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movq %rbx, -34825(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L66, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -34825(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 8810; actually_reserved: 8810; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34829(%rbp, 1)






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34620(%rbp, 1), %ebx


movl %ebx, -34837(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34837(%rbp, 1)

cmpq $10, -34837(%rbp, 1)

jl .L68

movq -34837(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L68:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34576(%rbp, 1), %r10

movq %r10, -34853(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -34837(%rbp, 1), %rbx


movq %rbx, -34853(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -34853(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34853(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34853(%rbp, 1), %r12


pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r13, %r13

movq -34853(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %r12

// current pushed: [824634094880 824636491360 824635212416]

movq %rbx, -34869(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]


movq -34869(%rbp, 1), %rdi


movq $784, %rsi



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -3152(%rbp, 1), %rbx

movq %rbx, -34877(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]


movq -34877(%rbp, 1), %rdx


movq $784, %rcx




movq $0, %rax


// currently reserved: 8840; actually_reserved: 8840; currently pueshed: [824634094880 824636491360]
call vecmul

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -34873(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34873(%rbp, 1), %ebx


movl %ebx, -34877(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34620(%rbp, 1), %ebx


movl %ebx, -34885(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34885(%rbp, 1)

cmpq $10, -34885(%rbp, 1)

jl .L69

movq -34885(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L69:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34576(%rbp, 1), %r10

movq %r10, -34901(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -34885(%rbp, 1), %rbx


movq %rbx, -34901(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -34901(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -34901(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -34877(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -34901(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34901(%rbp, 1), %r12


addss 3136(%rbx, %r12, 1), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -34877(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -34877(%rbp, 1), %ebx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 8860; actually_reserved: 8860; currently pueshed: [824634094880 824636491360]
call logistic

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -34905(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34905(%rbp, 1), %ebx


movl %ebx, -34909(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34909(%rbp, 1), %ebx


movl %ebx, -34929(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34620(%rbp, 1), %ebx


movl %ebx, -34917(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34917(%rbp, 1)

cmpq $10, -34917(%rbp, 1)

jl .L70

movq -34917(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L70:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34616(%rbp, 1), %r10

movq %r10, -34933(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -34933(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34917(%rbp, 1), %r12


movl -34929(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
popq %r13

// current pushed: [824634094880 824636491360]









pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -34620(%rbp, 1), %ebx


movl %ebx, -34937(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -34937(%rbp, 1)

cmpq $10, -34937(%rbp, 1)

jl .L72

movq -34937(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L72:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34616(%rbp, 1), %r10

movq %r10, -34953(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -34953(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -34937(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416]
popq %rbx

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movq %rbx, -34953(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



movq $.L71, %rdi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movq -34953(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360]



movq $1, %rax


// currently reserved: 8890; actually_reserved: 8890; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -34957(%rbp, 1)






incl -34620(%rbp, 1)




jmp .L73

.L74:


pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -34997(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movl $0, -35001(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -35001(%rbp, 1), %ebx


movl %ebx, -35005(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L76:



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $10, %rbx


movq %rbx, -35013(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -35013(%rbp, 1), %ebx


movl %ebx, -35017(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $-1, %rax


andq %rax, -35017(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -35005(%rbp, 1), %ebx


movl %ebx, -35021(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -35022(%rbp, 1), %bl


xorb %bl, -35022(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -35017(%rbp, 1), %ebx


cmpl %ebx, -35021(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setl -35022(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -35022(%rbp, 1), %bl


andb %bl, -35022(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L77



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -34616(%rbp, 1), %rbx

movq %rbx, -35054(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]


movq -35054(%rbp, 1), %rdi


movq $10, %rsi



movl -35005(%rbp, 1), %edx



movq $0, %rax


// currently reserved: 88f0; actually_reserved: 88f0; currently pueshed: [824634094880 824636491360]
call softmax

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -35050(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -35050(%rbp, 1), %ebx


movl %ebx, -35054(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -35005(%rbp, 1), %ebx


movl %ebx, -35030(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -35030(%rbp, 1)

cmpq $10, -35030(%rbp, 1)

jl .L75

movq -35030(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L75:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

leaq -34997(%rbp, 1), %r10

movq %r10, -35046(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -35046(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -35030(%rbp, 1), %r12


movl -35054(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
popq %r13

// current pushed: [824634094880 824636491360]






incl -35005(%rbp, 1)




jmp .L76

.L77:



movq -3160(%rbp, 1), %rax


pushq %rsi

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

leaq -34997(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rsi

// current pushed: [824634094880 824636491360]


jmp ._forward





._forward:
movq %rbp, %rsp

popq %rbp

ret



.string "\0back"
.global back
back:
pushq %rbp

movq %rsp, %rbp

subq $96, %rsp


// curently pushed: [824634094880 824636491360]

pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -56(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -96(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



pushq %rsi

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

leaq 16(%rbp, 1), %rsi

leaq -56(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rsi

// current pushed: [824634094880 824636491360]


pushq %rsi

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

leaq 56(%rbp, 1), %rsi

leaq -96(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rsi

// current pushed: [824634094880 824636491360]





._back:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $976, %rsp


// curently pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movq $.L78, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, %rdi


movq $47, %rsi





movq $0, %rax


// currently reserved: 0; actually_reserved: 0; currently pueshed: [824634094880 824636491360]
call read_dataset_image

movq %rdx, -8(%rbp, 1)


movq %rax, -16(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -8(%rbp, 1), %rbx


movq %rbx, -24(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -16(%rbp, 1), %rbx


movq %rbx, -32(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]






pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -64(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]



movq $.L79, %rax


leaq 0(%rax, 1), %r12


movq %r12, %rdi


movq $47, %rsi





movq $0, %rax


// currently reserved: 20; actually_reserved: 20; currently pueshed: [824634094880 824636491360]
call read_dataset_label

movq %rdx, -40(%rbp, 1)


movq %rax, -48(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -40(%rbp, 1), %rbx


movq %rbx, -56(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


movq %rbx, -64(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]











movq $.L80, %rdi


movq -24(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 40; actually_reserved: 40; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, %r13d




pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -112(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]


movq $28, %r14



movq $28, %r15






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



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


// currently reserved: 50; actually_reserved: 50; currently pueshed: [824634094880 824636491360]
call allocate

movq %rdx, -88(%rbp, 1)


movq %rax, -96(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -88(%rbp, 1), %rbx


movq %rbx, -104(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -96(%rbp, 1), %rbx


movq %rbx, -112(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




xorq %rdx, %rdx

xorq %rax, %rax

movq -104(%rbp, 1), %rax


movq $3136, %r15


idivq %r15

movq %rax, -104(%rbp, 1)





movl $0, %r15d



movl %r15d, -116(%rbp, 1)




.L91:





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -104(%rbp, 1), %ebx


movl %ebx, -120(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $-1, %rax


andq %rax, -120(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -124(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -125(%rbp, 1), %bl


xorb %bl, -125(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -120(%rbp, 1), %ebx


cmpl %ebx, -124(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -125(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -125(%rbp, 1), %bl


andb %bl, -125(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L92

movl $0, -129(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -129(%rbp, 1), %ebx


movl %ebx, -133(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L89:

movl $28, -137(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -141(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -142(%rbp, 1), %bl


xorb %bl, -142(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -137(%rbp, 1), %ebx


cmpl %ebx, -141(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -142(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -142(%rbp, 1), %bl


andb %bl, -142(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L90

movl $0, -146(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -146(%rbp, 1), %ebx


movl %ebx, -150(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L87:

movl $28, -154(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


movl %ebx, -158(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -159(%rbp, 1), %bl


xorb %bl, -159(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -154(%rbp, 1), %ebx


cmpl %ebx, -158(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -159(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -159(%rbp, 1), %bl


andb %bl, -159(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L88



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -167(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -167(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -24(%rbp, 1), %r10


movq -32(%rbp, 1), %r11



movq %r11, -175(%rbp, 1)


movq %r10, -183(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -183(%rbp, 1), %rbx


cmpq %rbx, -167(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L81

movq -167(%rbp, 1), %rsi


movq -183(%rbp, 1), %rdx


call err_oob

.L81:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -167(%rbp, 1), %rbx


movq %rbx, -191(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -191(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -191(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -199(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -199(%rbp, 1)

cmpq $28, -199(%rbp, 1)

jl .L82

movq -199(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L82:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -175(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -191(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -215(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -199(%rbp, 1), %rbx


movq %rbx, -215(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -215(%rbp, 1), %rax


imulq $28, %rax

movq %rax, -215(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


movl %ebx, -223(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -223(%rbp, 1)

cmpq $28, -223(%rbp, 1)

jl .L83

movq -223(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L83:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -215(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -215(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -239(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -239(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -223(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
movb %r13b, -232(%rbp, 1)
popq %r13

// current pushed: [824634094880 824636491360]





movb $0, -233(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -232(%rbp, 1), %bl


movb %bl, -234(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


xorb %bl, -235(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -233(%rbp, 1), %bl


cmpb %bl, -234(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


seta -235(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


andb %bl, -235(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L86

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $1065353216, %rbx


movq %rbx, -295(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]





movq %rbx, -303(%rbp, 1)


movq -232(%rbp, 1), %rbx

andq $255, %rbx

cvtsi2ss %rbx, %xmm0

movq -303(%rbp, 1), %rbx


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm0, %rbx

movl %ebx, -307(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx
movl -295(%rbp, 1), %ebx


movq %rbx, %xmm1

popq %rbx

// current pushed: [824634094880 824636491360]


divss -307(%rbp, 1), %xmm1

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %xmm1, %rbx

movl %ebx, -295(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -295(%rbp, 1), %ebx


movl %ebx, -311(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -116(%rbp, 1), %ebx


movl %ebx, -243(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -243(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -251(%rbp, 1)


movq %r10, -259(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -259(%rbp, 1), %rbx


cmpq %rbx, -243(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L84

movq -243(%rbp, 1), %rsi


movq -259(%rbp, 1), %rdx


call err_oob

.L84:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -243(%rbp, 1), %rbx


movq %rbx, -267(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -267(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -267(%rbp, 1)



// mul on the CPU up here ^




movl $28, -271(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -275(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movl -275(%rbp, 1), %eax


imull -271(%rbp, 1), %eax

movl %eax, -275(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -150(%rbp, 1), %ebx


addl %ebx, -275(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -275(%rbp, 1), %ebx


movl %ebx, -283(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -283(%rbp, 1)

cmpq $784, -283(%rbp, 1)

jl .L85

movq -283(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L85:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -251(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -267(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -299(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -299(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -283(%rbp, 1), %r12


movl -311(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
popq %r13

// current pushed: [824634094880 824636491360]





.L86:




incl -150(%rbp, 1)




jmp .L87

.L88:




incl -133(%rbp, 1)




jmp .L89

.L90:




incl -116(%rbp, 1)




jmp .L91

.L92:


pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -367(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $4, %rbx


movq %rbx, -319(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $10, %rbx


movq %rbx, -327(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



movq -319(%rbp, 1), %rax


imulq -327(%rbp, 1), %rax

movq %rax, -319(%rbp, 1)




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -56(%rbp, 1), %rbx


movq %rbx, -335(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -335(%rbp, 1), %rax


imulq -319(%rbp, 1), %rax

movq %rax, -335(%rbp, 1)




movq -335(%rbp, 1), %rdi



movq $0, %rax


// currently reserved: 150; actually_reserved: 150; currently pueshed: [824634094880 824636491360]
call allocate

movq %rdx, -343(%rbp, 1)


movq %rax, -351(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -343(%rbp, 1), %rbx


movq %rbx, -359(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -351(%rbp, 1), %rbx


movq %rbx, -367(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




xorq %rdx, %rdx

xorq %rax, %rax

movq -359(%rbp, 1), %rax


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $40, %rbx


movq %rbx, -375(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]


idivq -375(%rbp, 1)

movq %rax, -359(%rbp, 1)





movl $0, -379(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -379(%rbp, 1), %ebx


movl %ebx, -383(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L96:





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -359(%rbp, 1), %ebx


movl %ebx, -387(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $-1, %rax


andq %rax, -387(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -383(%rbp, 1), %ebx


movl %ebx, -391(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -392(%rbp, 1), %bl


xorb %bl, -392(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -387(%rbp, 1), %ebx


cmpl %ebx, -391(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setb -392(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -392(%rbp, 1), %bl


andb %bl, -392(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L97



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -383(%rbp, 1), %ebx


movl %ebx, -400(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -400(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -56(%rbp, 1), %r10


movq -64(%rbp, 1), %r11



movq %r11, -408(%rbp, 1)


movq %r10, -416(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -416(%rbp, 1), %rbx


cmpq %rbx, -400(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L93

movq -400(%rbp, 1), %rsi


movq -416(%rbp, 1), %rdx


call err_oob

.L93:


pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -408(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -400(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
movb %r13b, -417(%rbp, 1)
popq %r13

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $1065353216, %rbx


movq %rbx, -469(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -469(%rbp, 1), %ebx


movl %ebx, -473(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -383(%rbp, 1), %ebx


movl %ebx, -425(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -425(%rbp, 1)

pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -359(%rbp, 1), %r10


movq -367(%rbp, 1), %r11



movq %r11, -433(%rbp, 1)


movq %r10, -441(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -441(%rbp, 1), %rbx


cmpq %rbx, -425(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L94

movq -425(%rbp, 1), %rsi


movq -441(%rbp, 1), %rdx


call err_oob

.L94:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -425(%rbp, 1), %rbx


movq %rbx, -449(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -449(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -449(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -417(%rbp, 1), %bl


movb %bl, -457(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $255, %rax


andq %rax, -457(%rbp, 1)

cmpq $10, -457(%rbp, 1)

jl .L95

movq -457(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L95:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -433(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -449(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -473(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -473(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -457(%rbp, 1), %r12


movl -473(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
popq %r13

// current pushed: [824634094880 824636491360]






incl -383(%rbp, 1)




jmp .L96

.L97:


pushq %rax

// current pushed: [824634094880 824636491360 824635212416]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212448]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %rax, %rax

leaq -509(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416]

popq %rax

// current pushed: [824634094880 824636491360]


movl $1, -477(%rbp, 1)



movl -477(%rbp, 1), %edi



movq $0, %rax


// currently reserved: 1e0; actually_reserved: 1e0; currently pueshed: [824634094880 824636491360]
call nn

movq %rdx, -485(%rbp, 1)


movq %rax, -493(%rbp, 1)





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -485(%rbp, 1), %rbx


movq %rbx, -501(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -493(%rbp, 1), %rbx


movq %rbx, -509(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]











movq $.L98, %rdi


movq -501(%rbp, 1), %rsi



movq $0, %rax


// currently reserved: 200; actually_reserved: 200; currently pueshed: [824634094880 824636491360]
call printf

movl %eax, -513(%rbp, 1)




movl $0, -517(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -517(%rbp, 1), %ebx


movl %ebx, -521(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L109:



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $0, %rbx


movq %rbx, -529(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -501(%rbp, 1), %r10


movq -509(%rbp, 1), %r11



movq %r11, -537(%rbp, 1)


movq %r10, -545(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -545(%rbp, 1), %rbx


cmpq %rbx, -529(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L99

movq -529(%rbp, 1), %rsi


movq -545(%rbp, 1), %rdx


call err_oob

.L99:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -529(%rbp, 1), %rbx


movq %rbx, -553(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -553(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -553(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $10, %rbx


movq %rbx, -561(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -561(%rbp, 1), %ebx


movl %ebx, -565(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $-1, %rax


andq %rax, -565(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -521(%rbp, 1), %ebx


movl %ebx, -569(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -570(%rbp, 1), %bl


xorb %bl, -570(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -565(%rbp, 1), %ebx


cmpl %ebx, -569(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setl -570(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -570(%rbp, 1), %bl


andb %bl, -570(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L110

movl $0, -574(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -574(%rbp, 1), %ebx


movl %ebx, -578(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]





.L105:



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $0, %rbx


movq %rbx, -586(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -501(%rbp, 1), %r10


movq -509(%rbp, 1), %r11



movq %r11, -594(%rbp, 1)


movq %r10, -602(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -602(%rbp, 1), %rbx


cmpq %rbx, -586(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L100

movq -586(%rbp, 1), %rsi


movq -602(%rbp, 1), %rdx


call err_oob

.L100:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -586(%rbp, 1), %rbx


movq %rbx, -610(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -610(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -610(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -521(%rbp, 1), %ebx


movl %ebx, -618(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -618(%rbp, 1)

cmpq $10, -618(%rbp, 1)

jl .L101

movq -618(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L101:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -594(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -610(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -634(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -618(%rbp, 1), %rbx


movq %rbx, -634(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -634(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -634(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $784, %rbx


movq %rbx, -642(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -642(%rbp, 1), %ebx


movl %ebx, -646(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $-1, %rax


andq %rax, -646(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -578(%rbp, 1), %ebx


movl %ebx, -650(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -651(%rbp, 1), %bl


xorb %bl, -651(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -646(%rbp, 1), %ebx


cmpl %ebx, -650(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


setl -651(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movb -651(%rbp, 1), %bl


andb %bl, -651(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jz .L106

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $1065353216, %rbx


movq %rbx, -727(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -727(%rbp, 1), %ebx


movl %ebx, -731(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $0, %rbx


movq %rbx, -659(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -501(%rbp, 1), %r10


movq -509(%rbp, 1), %r11



movq %r11, -667(%rbp, 1)


movq %r10, -675(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -675(%rbp, 1), %rbx


cmpq %rbx, -659(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L102

movq -659(%rbp, 1), %rsi


movq -675(%rbp, 1), %rdx


call err_oob

.L102:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -659(%rbp, 1), %rbx


movq %rbx, -683(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -683(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -683(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -521(%rbp, 1), %ebx


movl %ebx, -691(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -691(%rbp, 1)

cmpq $10, -691(%rbp, 1)

jl .L103

movq -691(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L103:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -667(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -683(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -707(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -691(%rbp, 1), %rbx


movq %rbx, -707(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -707(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -707(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -578(%rbp, 1), %ebx


movl %ebx, -715(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -715(%rbp, 1)

cmpq $784, -715(%rbp, 1)

jl .L104

movq -715(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L104:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -707(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -707(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -731(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]



pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -731(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -715(%rbp, 1), %r12


movl -731(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
popq %r13

// current pushed: [824634094880 824636491360]






incl -578(%rbp, 1)




jmp .L105

.L106:


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $1065353216, %rbx


movq %rbx, -791(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -791(%rbp, 1), %ebx


movl %ebx, -795(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $0, %rbx


movq %rbx, -739(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -501(%rbp, 1), %r10


movq -509(%rbp, 1), %r11



movq %r11, -747(%rbp, 1)


movq %r10, -755(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -755(%rbp, 1), %rbx


cmpq %rbx, -739(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L107

movq -739(%rbp, 1), %rsi


movq -755(%rbp, 1), %rdx


call err_oob

.L107:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -739(%rbp, 1), %rbx


movq %rbx, -763(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -763(%rbp, 1), %rax


imulq $31400, %rax

movq %rax, -763(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movl -521(%rbp, 1), %ebx


movl %ebx, -771(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq $4294967295, %rax


andq %rax, -771(%rbp, 1)

cmpq $10, -771(%rbp, 1)

jl .L108

movq -771(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L108:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %rbx, %rbx

movq -747(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]

xorq %r12, %r12

movq -763(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq %r10, -787(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -771(%rbp, 1), %rbx


movq %rbx, -787(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -787(%rbp, 1), %rax


imulq $3140, %rax

movq %rax, -787(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

// current pushed: [824634094880 824636491360 824635212416 824635212448 824635212480]
xorq %r13, %r13
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

xorq %rbx, %rbx

movq -787(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]

xorq %r12, %r12

movq -787(%rbp, 1), %r12


movl -795(%rbp, 1), %r13d


movl %r13d, 3136(%rbx, %r12, 1)
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212448]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416]
popq %r13

// current pushed: [824634094880 824636491360]






incl -521(%rbp, 1)




jmp .L109

.L110:


pushq %rax

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960 824635228992]

xorq %rax, %rax

leaq -915(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

popq %rax

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]




pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

movq $5, %rbx


movq %rbx, -803(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360]



pushq %r10

// current pushed: [824634094880 824636491360 824635212416]

pushq %r11

// current pushed: [824634094880 824636491360 824635212416 824635212448]

movq -104(%rbp, 1), %r10


movq -112(%rbp, 1), %r11



movq %r11, -811(%rbp, 1)


movq %r10, -819(%rbp, 1)


popq %r11

// current pushed: [824634094880 824636491360 824635212416]

popq %r10

// current pushed: [824634094880 824636491360]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -819(%rbp, 1), %rbx


cmpq %rbx, -803(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]


jl .L111

movq -803(%rbp, 1), %rsi


movq -819(%rbp, 1), %rdx


call err_oob

.L111:
pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]
xorq %rbx, %rbx
movq -803(%rbp, 1), %rbx


movq %rbx, -827(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360]



movq -827(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -827(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416]

leaq -867(%rbp, 1), %rbx

movq %rbx, %rdi


movq -501(%rbp, 1), %rdx


movq -509(%rbp, 1), %rsi




subq $3136, %rsp

movq %rsp, %rax


pushq %rsi

// current pushed: [824634094880 824636491360 824635212416 824635212480]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635229056]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635229056 824635229088]

xorq %rbx, %rbx

movq -811(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635229056 824635229088 824635229120]

xorq %r12, %r12

movq -827(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635229056 824635229088]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635229056]

leaq 0(%rax, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]






movq $0, %rax


// currently reserved: 370; actually_reserved: 370; currently pueshed: [824634094880 824636491360 824635212416 824635212480 824635212512]
call forward

addq $0, %rsp

movq %rax, -875(%rbp, 1)




pushq %rsi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

pushq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960]

pushq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960 824635228992]

leaq -867(%rbp, 1), %rsi

leaq -915(%rbp, 1), %rdi

movq $40, %rcx


cld

rep movsb

popq %rcx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960]

popq %rdi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

popq %rsi

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



movl $0, -919(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movl -919(%rbp, 1), %ebx


movl %ebx, -923(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]





.L114:



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

movq $10, %rbx


movq %rbx, -931(%rbp, 1)

popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movl -931(%rbp, 1), %ebx


movl %ebx, -935(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



movq $-1, %rax


andq %rax, -935(%rbp, 1)


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movl -923(%rbp, 1), %ebx


movl %ebx, -939(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movb -940(%rbp, 1), %bl


xorb %bl, -940(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movl -935(%rbp, 1), %ebx


cmpl %ebx, -939(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]


setl -940(%rbp, 1)



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movb -940(%rbp, 1), %bl


andb %bl, -940(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]


jz .L115







pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
xorq %rbx, %rbx
movl -923(%rbp, 1), %ebx


movl %ebx, -948(%rbp, 1)
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



movq $4294967295, %rax


andq %rax, -948(%rbp, 1)

cmpq $10, -948(%rbp, 1)

jl .L113

movq -948(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L113:
pushq %r10

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

leaq -915(%rbp, 1), %r10

movq %r10, -964(%rbp, 1)


popq %r10

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

xorq %rbx, %rbx

movq -964(%rbp, 1), %rbx


pushq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928 824635228960]

xorq %r12, %r12

movq -948(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]
popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]

pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

movq %xmm0, %rbx

movq %rbx, -964(%rbp, 1)


popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



movq $.L112, %rdi


movl -923(%rbp, 1), %esi


pushq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512 824635228928]

xorq %rbx, %rbx
movq -964(%rbp, 1), %rbx


movq %rbx, %xmm0

popq %rbx

// current pushed: [824634094880 824636491360 824635212416 824635212480 824635212512]



movq $1, %rax


// currently reserved: 3d0; actually_reserved: 3d0; currently pueshed: [824634094880 824636491360 824635212416 824635212480 824635212512]
call printf

movl %eax, -968(%rbp, 1)






incl -923(%rbp, 1)




jmp .L114

.L115:


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



















































.L44: .byte 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 102, 10, 0



























.L46: .byte 100, 101, 110, 111, 109, 105, 110, 97, 116, 111, 114, 58, 32, 37, 102, 10, 0


































































































.L49: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0






























.L50: .byte 37, 102, 32, 0






















































.L55: .byte 10, 0















.L58: .byte 105, 110, 112, 117, 116, 58, 10, 0






























.L59: .byte 37, 102, 32, 0








































.L63: .byte 10, 0















.L66: .byte 98, 105, 97, 115, 58, 32, 37, 102, 10, 0













































































































.L71: .byte 108, 111, 103, 105, 115, 116, 105, 99, 58, 32, 37, 102, 10, 0


























































































































.L78: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 105, 109, 97, 103, 101, 115, 45, 105, 100, 120, 51, 45, 117, 98, 121, 116, 101, 0





















.L79: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 108, 97, 98, 101, 108, 115, 45, 105, 100, 120, 49, 45, 117, 98, 121, 116, 101, 0



















.L80: .byte 37, 108, 108, 120, 10, 0



















































































































































































































































































































































.L98: .byte 110, 101, 117, 114, 97, 108, 95, 110, 101, 116, 119, 111, 114, 107, 46, 108, 101, 110, 58, 32, 37, 100, 10, 0

















































































































































































































































.L112: .byte 112, 114, 111, 98, 97, 98, 105, 108, 105, 116, 121, 91, 37, 117, 93, 58, 32, 37, 102, 10, 0







































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


