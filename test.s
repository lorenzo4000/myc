[28][28]uint32
[28]uint32
struct    has padding of  0
struct    has padding of  0
[[false false false false false] [false false false false false] [false false false false false] [false false false false false] [false false false false false] [false false false false false] [false false false false false] [false false false false false] [false false false false false] [false false false false false] [true false false false false] [false false false false false] [false true false false false] [true false false false false] [false true false false false] [false true false false false] [false false false false false] [false false false false false]]
.text













































.string "\0allocate"
.global allocate
allocate:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $256, %rsp

// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -233(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq %rdi, -233(%rbp, 1)

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -249(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -233(%rbp, 1), %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call malloc

// } ii()

// ii() {
movq %rax, %rbx

// } ii()







// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -249(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -233(%rbp, 1), %r12

// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq %r12, -241(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -241(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -249(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._allocate

// } ii()





._allocate:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0resize"
.global resize
resize:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $32, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -16(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -24(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq %rsi, -8(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq %rdi, -16(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -24(%rbp, 1)

// } ii()








// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -24(%rbp, 1), %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call realloc

// } ii()

// ii() {
movq %rax, %rbx

// } ii()







// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -16(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -24(%rbp, 1), %r12

// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq %r12, -8(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -8(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._resize

// } ii()





._resize:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()





.string "\0flip32"
.global flip32
flip32:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $48, %rsp

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -40(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl %edi, -40(%rbp, 1)

// } ii()




// ii() {
movl $0, %ebx

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl %ebx, -44(%rbp, 1)

// } ii()





// ii() {
movl $255, %r12d

// } ii()



// ii() {
movl $0, %r13d

// } ii()



// ii() {
movl %r13d, %ecx

// } ii()


// ii() {
shll %cl, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -40(%rbp, 1), %r13d

// } ii()


// ii() {
andl %r12d, %r13d

// } ii()



// ii() {
movl $24, %r12d

// } ii()



// ii() {
movl %r12d, %ecx

// } ii()


// ii() {
shll %cl, %r13d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

orl %r13d, -44(%rbp, 1)

// } ii()





// ii() {
movl $255, %r12d

// } ii()



// ii() {
movl $8, %r13d

// } ii()



// ii() {
movl %r13d, %ecx

// } ii()


// ii() {
shll %cl, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -40(%rbp, 1), %r13d

// } ii()


// ii() {
andl %r12d, %r13d

// } ii()



// ii() {
movl $8, %r12d

// } ii()



// ii() {
movl %r12d, %ecx

// } ii()


// ii() {
shll %cl, %r13d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

orl %r13d, -44(%rbp, 1)

// } ii()





// ii() {
movl $255, %r12d

// } ii()



// ii() {
movl $16, %r13d

// } ii()



// ii() {
movl %r13d, %ecx

// } ii()


// ii() {
shll %cl, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -40(%rbp, 1), %r13d

// } ii()


// ii() {
andl %r12d, %r13d

// } ii()



// ii() {
movl $8, %r12d

// } ii()



// ii() {
movl %r12d, %ecx

// } ii()


// ii() {
shrl %cl, %r13d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

orl %r13d, -44(%rbp, 1)

// } ii()





// ii() {
movl $255, %r12d

// } ii()



// ii() {
movl $24, %r13d

// } ii()



// ii() {
movl %r13d, %ecx

// } ii()


// ii() {
shll %cl, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -40(%rbp, 1), %r13d

// } ii()


// ii() {
andl %r12d, %r13d

// } ii()



// ii() {
movl $24, %r12d

// } ii()



// ii() {
movl %r12d, %ecx

// } ii()


// ii() {
shrl %cl, %r13d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

orl %r13d, -44(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl -44(%rbp, 1), %eax

// } ii()


// ii() {
jmp ._flip32

// } ii()





._flip32:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0read_dataset_image"
.global read_dataset_image
read_dataset_image:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $480, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -16(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq %rsi, -8(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq %rdi, -16(%rbp, 1)

// } ii()







// ii() {
movl $0, %ebx

// } ii()



// ii() {
movl $0, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rdi

// } ii()


// ii() {
movl %ebx, %esi

// } ii()


// ii() {
movl %r12d, %edx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call open

// } ii()

// ii() {
movl %eax, %r13d

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl %r13d, -20(%rbp, 1)

// } ii()




// ii() {
movl $0, %r14d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %r15d

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -21(%rbp, 1), %bl

// } ii()


xorb %bl, -21(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
cmpl %r14d, %r15d

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -21(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -21(%rbp, 1), %bl

// } ii()


andb %bl, -21(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L2

// } ii()





// ii() {
movq $.L1, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
movl %eax, %r14d

// } ii()




// ii() {
jmp ._read_dataset_image

// } ii()





.L2:


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -25(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

leaq -25(%rbp, 1), %r15

// } ii()



pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -33(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
movq %r15, %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -33(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -41(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -41(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -57(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -65(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66(%rbp, 1), %bl

// } ii()


xorb %bl, -66(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -57(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -65(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -66(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66(%rbp, 1), %bl

// } ii()


andb %bl, -66(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L4

// } ii()



// ii() {
movq $.L3, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -70(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_image

// } ii()





.L4:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -25(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call flip32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -74(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -74(%rbp, 1), %ebx

// } ii()


movl %ebx, -78(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -78(%rbp, 1), %ebx

// } ii()


movl %ebx, -25(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L5, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -25(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -82(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -86(%rbp, 1)

// } ii()




// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

leaq -86(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -94(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -102(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -94(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -102(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -110(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -110(%rbp, 1), %rbx

// } ii()


movq %rbx, -118(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -118(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -126(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -134(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -135(%rbp, 1), %bl

// } ii()


xorb %bl, -135(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -126(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -134(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -135(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -135(%rbp, 1), %bl

// } ii()


andb %bl, -135(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L7

// } ii()



// ii() {
movq $.L6, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -139(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_image

// } ii()





.L7:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -86(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call flip32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -143(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -143(%rbp, 1), %ebx

// } ii()


movl %ebx, -147(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -147(%rbp, 1), %ebx

// } ii()


movl %ebx, -86(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L8, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -86(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -151(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -155(%rbp, 1)

// } ii()




// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

leaq -155(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -163(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -171(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -163(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -171(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -179(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -179(%rbp, 1), %rbx

// } ii()


movq %rbx, -187(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -187(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -195(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -203(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -204(%rbp, 1), %bl

// } ii()


xorb %bl, -204(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -195(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -203(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -204(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -204(%rbp, 1), %bl

// } ii()


andb %bl, -204(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L10

// } ii()



// ii() {
movq $.L9, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -208(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_image

// } ii()





.L10:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -155(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call flip32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -212(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -212(%rbp, 1), %ebx

// } ii()


movl %ebx, -216(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -216(%rbp, 1), %ebx

// } ii()


movl %ebx, -155(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L11, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -155(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -220(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -224(%rbp, 1)

// } ii()




// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

leaq -224(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -232(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -240(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -232(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -240(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -248(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -248(%rbp, 1), %rbx

// } ii()


movq %rbx, -256(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -256(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -264(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -272(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -273(%rbp, 1), %bl

// } ii()


xorb %bl, -273(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -264(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -272(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -273(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -273(%rbp, 1), %bl

// } ii()


andb %bl, -273(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L13

// } ii()



// ii() {
movq $.L12, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -277(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_image

// } ii()





.L13:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -224(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call flip32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -281(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -281(%rbp, 1), %ebx

// } ii()


movl %ebx, -285(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -285(%rbp, 1), %ebx

// } ii()


movl %ebx, -224(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L14, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -224(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -289(%rbp, 1)

// } ii()







// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -155(%rbp, 1), %ebx

// } ii()


movl %ebx, -293(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl -293(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

imull -224(%rbp, 1), %eax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -293(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -86(%rbp, 1), %ebx

// } ii()


movl %ebx, -297(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl -297(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

imull -293(%rbp, 1), %eax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -297(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -297(%rbp, 1), %ebx

// } ii()


movl %ebx, -301(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L15, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -301(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -305(%rbp, 1)

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -345(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -301(%rbp, 1), %rbx

// } ii()


movq %rbx, -313(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -313(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -313(%rbp, 1), %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call allocate

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -321(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -329(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -321(%rbp, 1), %rbx

// } ii()


movq %rbx, -337(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -329(%rbp, 1), %rbx

// } ii()


movq %rbx, -345(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -337(%rbp, 1), %rax

// } ii()


pushq %rbx
// ii() {
movq $784, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -353(%rbp, 1)

// } ii()

popq %rbx

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

idivq -353(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -337(%rbp, 1)

// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -357(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -357(%rbp, 1), %ebx

// } ii()


movl %ebx, -361(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L19:


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -361(%rbp, 1), %ebx

// } ii()


movl %ebx, -365(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -366(%rbp, 1), %bl

// } ii()


xorb %bl, -366(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -86(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -365(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -366(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -366(%rbp, 1), %bl

// } ii()


andb %bl, -366(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L20

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -361(%rbp, 1), %ebx

// } ii()


movl %ebx, -374(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -374(%rbp, 1)

// } ii()

// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -337(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -345(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -382(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -390(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -390(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -374(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L16

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -374(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -390(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L16:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -374(%rbp, 1), %rbx

// } ii()


movq %rbx, -398(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -398(%rbp, 1), %rax

// } ii()


// ii() {
imulq $784, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -398(%rbp, 1)

// } ii()



// mul on the CPU up here ^



// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]

// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -382(%rbp, 1), %r12

// } ii()


// ii() {
pushq %r13

// } ii()

// ii() {
xorq %r13, %r13

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movq -398(%rbp, 1), %r13

// } ii()



//} mem_reference_to_regs()

leaq 0(%r12, %r13, 1), %rbx
// ii() {
popq %r13

// } ii()
// ii() {
popq %r12

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -406(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -155(%rbp, 1), %rbx

// } ii()


movq %rbx, -414(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -414(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -224(%rbp, 1), %rbx

// } ii()


movq %rbx, -422(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -422(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -414(%rbp, 1), %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

imulq -422(%rbp, 1), %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -414(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -406(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -414(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -430(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -430(%rbp, 1), %rbx

// } ii()


movq %rbx, -438(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -438(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -155(%rbp, 1), %rbx

// } ii()


movq %rbx, -446(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -446(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -224(%rbp, 1), %rbx

// } ii()


movq %rbx, -454(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -454(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -446(%rbp, 1), %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

imulq -454(%rbp, 1), %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -446(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -462(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -463(%rbp, 1), %bl

// } ii()


xorb %bl, -463(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -446(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -462(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -463(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -463(%rbp, 1), %bl

// } ii()


andb %bl, -463(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L18

// } ii()



// ii() {
movq $.L17, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -467(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_image

// } ii()





.L18:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -361(%rbp, 1)

// } ii()




// ii() {
jmp .L19

// } ii()

.L20:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -337(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -345(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._read_dataset_image

// } ii()





._read_dataset_image:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0read_dataset_label"
.global read_dataset_label
read_dataset_label:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $256, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -16(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq %rsi, -8(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq %rdi, -16(%rbp, 1)

// } ii()







// ii() {
movl $0, %ebx

// } ii()



// ii() {
movl $0, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rdi

// } ii()


// ii() {
movl %ebx, %esi

// } ii()


// ii() {
movl %r12d, %edx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call open

// } ii()

// ii() {
movl %eax, %r13d

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl %r13d, -20(%rbp, 1)

// } ii()




// ii() {
movl $0, %r14d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %r15d

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -21(%rbp, 1), %bl

// } ii()


xorb %bl, -21(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
cmpl %r14d, %r15d

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -21(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -21(%rbp, 1), %bl

// } ii()


andb %bl, -21(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L22

// } ii()





// ii() {
movq $.L21, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
movl %eax, %r14d

// } ii()




// ii() {
jmp ._read_dataset_label

// } ii()





.L22:


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -25(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

leaq -25(%rbp, 1), %r15

// } ii()



pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -33(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
movq %r15, %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -33(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -41(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -41(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -57(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -65(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66(%rbp, 1), %bl

// } ii()


xorb %bl, -66(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -57(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -65(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -66(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66(%rbp, 1), %bl

// } ii()


andb %bl, -66(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L24

// } ii()



// ii() {
movq $.L23, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -70(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_label

// } ii()





.L24:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -25(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call flip32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -74(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -74(%rbp, 1), %ebx

// } ii()


movl %ebx, -78(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -78(%rbp, 1), %ebx

// } ii()


movl %ebx, -25(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L25, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -25(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -82(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -86(%rbp, 1)

// } ii()




// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

leaq -86(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -94(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -102(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -94(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -102(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -110(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -110(%rbp, 1), %rbx

// } ii()


movq %rbx, -118(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -118(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -126(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -134(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -135(%rbp, 1), %bl

// } ii()


xorb %bl, -135(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -126(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -134(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -135(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -135(%rbp, 1), %bl

// } ii()


andb %bl, -135(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L27

// } ii()



// ii() {
movq $.L26, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -139(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_label

// } ii()





.L27:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -86(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call flip32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -143(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -143(%rbp, 1), %ebx

// } ii()


movl %ebx, -147(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -147(%rbp, 1), %ebx

// } ii()


movl %ebx, -86(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
movq $.L28, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movl -86(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -151(%rbp, 1)

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -191(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -86(%rbp, 1), %rbx

// } ii()


movq %rbx, -159(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -159(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -159(%rbp, 1), %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call allocate

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -167(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -175(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -167(%rbp, 1), %rbx

// } ii()


movq %rbx, -183(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -175(%rbp, 1), %rbx

// } ii()


movq %rbx, -191(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -183(%rbp, 1), %rax

// } ii()


pushq %rbx
// ii() {
movq $1, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -199(%rbp, 1)

// } ii()

popq %rbx

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

idivq -199(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -183(%rbp, 1)

// } ii()











// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -86(%rbp, 1), %rbx

// } ii()


movq %rbx, -207(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -207(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -20(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -191(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -207(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -215(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -215(%rbp, 1), %rbx

// } ii()


movq %rbx, -223(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -223(%rbp, 1), %rbx

// } ii()


movq %rbx, -49(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -86(%rbp, 1), %rbx

// } ii()


movq %rbx, -231(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -231(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -49(%rbp, 1), %rbx

// } ii()


movq %rbx, -239(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -240(%rbp, 1), %bl

// } ii()


xorb %bl, -240(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -231(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -239(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -240(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -240(%rbp, 1), %bl

// } ii()


andb %bl, -240(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L30

// } ii()



// ii() {
movq $.L29, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -244(%rbp, 1)

// } ii()




// ii() {
jmp ._read_dataset_label

// } ii()





.L30:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -183(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -191(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._read_dataset_label

// } ii()





._read_dataset_label:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0matmul"
.global matmul
matmul:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $9728, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -3136(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -6272(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -6280(%rbp, 1)

// } ii()

popq %rbx

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq %rdi, -6280(%rbp, 1)

// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

leaq 16(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -3136(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

leaq 3152(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -6272(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()





// ii() {
movq $28, %rbx

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -6288(%rbp, 1)

// } ii()




// ii() {
movq $0, %r12

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movq -6288(%rbp, 1), %r13

// } ii()


// ii() {
xorb %r14b, %r14b

// } ii()

// ii() {
cmpq %r12, %r13

// } ii()

// ii() {
setbe %r14b

// } ii()



// ii() {
andb %r14b, %r14b

// } ii()

// ii() {
jz .L31

// } ii()

// ii() {
jmp ._matmul

// } ii()





.L31:



// ii() {
movq $0, %r12

// } ii()



// ii() {
cmpq $28, %r12

// } ii()

// ii() {
jl .L32

// } ii()

// ii() {
movq %r12, %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L32:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -3136(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -6296(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
movq %r12, %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
movq %rax, %r12

// } ii()





// ii() {
movq $28, %r13

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movq %r13, -6304(%rbp, 1)

// } ii()




// ii() {
movq $0, %r15

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6304(%rbp, 1), %rbx

// } ii()


movq %rbx, -6312(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6313(%rbp, 1), %bl

// } ii()


xorb %bl, -6313(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

cmpq %r15, -6312(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setbe -6313(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6313(%rbp, 1), %bl

// } ii()


andb %bl, -6313(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L33

// } ii()

// ii() {
jmp ._matmul

// } ii()





.L33:



// ii() {
movq $28, %r15

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movq %r15, -6321(%rbp, 1)

// } ii()




pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -6329(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6321(%rbp, 1), %rbx

// } ii()


movq %rbx, -6337(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6338(%rbp, 1), %bl

// } ii()


xorb %bl, -6338(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6329(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -6337(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setbe -6338(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6338(%rbp, 1), %bl

// } ii()


andb %bl, -6338(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L34

// } ii()

// ii() {
jmp ._matmul

// } ii()





.L34:



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -6346(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -6346(%rbp, 1)

// } ii()

// ii() {
jl .L35

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -6346(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L35:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -6272(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -6354(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6346(%rbp, 1), %rbx

// } ii()


movq %rbx, -6362(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -6362(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -6362(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $28, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -6370(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6370(%rbp, 1), %rbx

// } ii()


movq %rbx, -6378(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -6386(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6378(%rbp, 1), %rbx

// } ii()


movq %rbx, -6394(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6395(%rbp, 1), %bl

// } ii()


xorb %bl, -6395(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6386(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -6394(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setbe -6395(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6395(%rbp, 1), %bl

// } ii()


andb %bl, -6395(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L36

// } ii()

// ii() {
jmp ._matmul

// } ii()





.L36:




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6304(%rbp, 1), %rbx

// } ii()


movq %rbx, -6403(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6404(%rbp, 1), %bl

// } ii()


xorb %bl, -6404(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -6321(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -6403(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

sete -6404(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

xorb $1, -6404(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -6404(%rbp, 1), %bl

// } ii()


andb %bl, -6404(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L37

// } ii()

// ii() {
jmp ._matmul

// } ii()





.L37:


// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -9540(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -9544(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9544(%rbp, 1), %ebx

// } ii()


movl %ebx, -9548(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L48:



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -6288(%rbp, 1), %ebx

// } ii()


movl %ebx, -9552(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9552(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9548(%rbp, 1), %ebx

// } ii()


movl %ebx, -9556(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -9557(%rbp, 1), %bl

// } ii()


xorb %bl, -9557(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9552(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -9556(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -9557(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -9557(%rbp, 1), %bl

// } ii()


andb %bl, -9557(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L49

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -9561(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9561(%rbp, 1), %ebx

// } ii()


movl %ebx, -9565(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L46:



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -6304(%rbp, 1), %ebx

// } ii()


movl %ebx, -9569(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9569(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9565(%rbp, 1), %ebx

// } ii()


movl %ebx, -9573(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -9574(%rbp, 1), %bl

// } ii()


xorb %bl, -9574(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9569(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -9573(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -9574(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -9574(%rbp, 1), %bl

// } ii()


andb %bl, -9574(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L47

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -9578(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9578(%rbp, 1), %ebx

// } ii()


movl %ebx, -9582(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L44:



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -6304(%rbp, 1), %ebx

// } ii()


movl %ebx, -9586(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9586(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9582(%rbp, 1), %ebx

// } ii()


movl %ebx, -9590(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -9591(%rbp, 1), %bl

// } ii()


xorb %bl, -9591(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9586(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -9590(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -9591(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -9591(%rbp, 1), %bl

// } ii()


andb %bl, -9591(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L45

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9548(%rbp, 1), %ebx

// } ii()


movl %ebx, -9599(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9599(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -9599(%rbp, 1)

// } ii()

// ii() {
jl .L38

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -9599(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L38:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -9540(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -9607(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9599(%rbp, 1), %rbx

// } ii()


movq %rbx, -9615(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -9615(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -9615(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9565(%rbp, 1), %ebx

// } ii()


movl %ebx, -9623(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9623(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -9623(%rbp, 1)

// } ii()

// ii() {
jl .L39

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -9623(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L39:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9607(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -9615(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -9631(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9582(%rbp, 1), %ebx

// } ii()


movl %ebx, -9639(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9639(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -9639(%rbp, 1)

// } ii()

// ii() {
jl .L40

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -9639(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L40:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -3136(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -9647(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9639(%rbp, 1), %rbx

// } ii()


movq %rbx, -9655(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -9655(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -9655(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9548(%rbp, 1), %ebx

// } ii()


movl %ebx, -9663(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9663(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -9663(%rbp, 1)

// } ii()

// ii() {
jl .L41

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -9663(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L41:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9647(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -9655(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -9671(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9582(%rbp, 1), %ebx

// } ii()


movl %ebx, -9679(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9679(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -9679(%rbp, 1)

// } ii()

// ii() {
jl .L42

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -9679(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L42:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -6272(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -9687(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9679(%rbp, 1), %rbx

// } ii()


movq %rbx, -9695(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -9695(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -9695(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -9565(%rbp, 1), %ebx

// } ii()


movl %ebx, -9703(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -9703(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -9703(%rbp, 1)

// } ii()

// ii() {
jl .L43

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -9703(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L43:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9687(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -9695(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -9711(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9671(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -9663(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : [42 76]


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl 0(%rbx, %r12, 4), %r13d

// } ii()


// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
movl %r13d, -9715(%rbp, 1)
// ii() {
popq %r13

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl -9715(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9711(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -9703(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

imull 0(%rbx, %r12, 4), %eax
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -9715(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -9631(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -9623(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -9715(%rbp, 1), %r13d

// } ii()


addl %r13d, 0(%rbx, %r12, 4)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -9582(%rbp, 1)

// } ii()




// ii() {
jmp .L44

// } ii()

.L45:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -9565(%rbp, 1)

// } ii()




// ii() {
jmp .L46

// } ii()

.L47:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -9548(%rbp, 1)

// } ii()




// ii() {
jmp .L48

// } ii()

.L49:



// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -6280(%rbp, 1), %rax

// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

leaq -9540(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq 0(%rax, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()


// ii() {
jmp ._matmul

// } ii()





._matmul:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()




.string "\0nn"
.global nn
nn:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $3184, %rsp

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -3144(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl %edi, -3144(%rbp, 1)

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -3176(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -3144(%rbp, 1), %rbx

// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
andq %rax, %rbx

// } ii()


// ii() {
movq $10, %r12

// } ii()



// ii() {
movq $785, %r13

// } ii()



// ii() {
movq $4, %r14

// } ii()



// ii() {
movq %r13, %rax

// } ii()


// ii() {
imulq %r14, %rax

// } ii()

// ii() {
movq %rax, %r13

// } ii()




// ii() {
movq %r12, %rax

// } ii()


// ii() {
imulq %r13, %rax

// } ii()

// ii() {
movq %rax, %r12

// } ii()




// ii() {
movq %rbx, %rax

// } ii()


// ii() {
imulq %r12, %rax

// } ii()

// ii() {
movq %rax, %rbx

// } ii()




// ii() {
movq %rbx, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call allocate

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -3152(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -3160(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -3152(%rbp, 1), %rbx

// } ii()


movq %rbx, -3168(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -3160(%rbp, 1), %rbx

// } ii()


movq %rbx, -3176(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -3168(%rbp, 1), %rax

// } ii()


// ii() {
movq $31400, %r12

// } ii()


// ii() {
idivq %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -3168(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -3168(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -3176(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._nn

// } ii()





._nn:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0forward"
.global forward
forward:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $72640, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -16(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -3152(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq %rsi, -8(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq %rdi, -16(%rbp, 1)

// } ii()



// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

leaq 16(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -3152(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -34568(%rbp, 1), %rdi

// } ii()

// ii() {
movq $31400, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
movq $0, %rbx

// } ii()



// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -8(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -3160(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -3168(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

cmpq -3168(%rbp, 1), %rbx

// } ii()

// ii() {
jl .L50

// } ii()

// ii() {
movq %rbx, %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -3168(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L50:
// ii() {
movq %rbx, %rax

// } ii()


// ii() {
imulq $31400, %rax

// } ii()

// ii() {
movq %rax, %rbx

// } ii()





// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -3160(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%r12, %rbx, 1), %rsi
// ii() {
popq %r12

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -34568(%rbp, 1), %rdi

// } ii()

// ii() {
movq $31400, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -65928(%rbp, 1), %rdi

// } ii()

// ii() {
movq $31360, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
movl $0, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movl %r12d, -65932(%rbp, 1)

// } ii()




.L89:



// ii() {
movq $10, %r13

// } ii()



// ii() {
movl %r13d, %r14d

// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
andq %rax, %r14

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movl -65932(%rbp, 1), %r15d

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -65933(%rbp, 1), %bl

// } ii()


xorb %bl, -65933(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
cmpl %r14d, %r15d

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -65933(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -65933(%rbp, 1), %bl

// } ii()


andb %bl, -65933(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L90

// } ii()



// ii() {
movq $.L51, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
movl %eax, %r14d

// } ii()




// ii() {
movl $0, %r15d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movl %r15d, -65937(%rbp, 1)

// } ii()




.L59:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -65941(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65937(%rbp, 1), %ebx

// } ii()


movl %ebx, -65945(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -65946(%rbp, 1), %bl

// } ii()


xorb %bl, -65946(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65941(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -65945(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -65946(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -65946(%rbp, 1), %bl

// } ii()


andb %bl, -65946(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L60

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -65950(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65950(%rbp, 1), %ebx

// } ii()


movl %ebx, -65954(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L56:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -65958(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65954(%rbp, 1), %ebx

// } ii()


movl %ebx, -65962(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -65963(%rbp, 1), %bl

// } ii()


xorb %bl, -65963(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65958(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -65962(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -65963(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -65963(%rbp, 1), %bl

// } ii()


andb %bl, -65963(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L57

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65932(%rbp, 1), %ebx

// } ii()


movl %ebx, -65971(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -65971(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -65971(%rbp, 1)

// } ii()

// ii() {
jl .L53

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -65971(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L53:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -34568(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -65979(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -65971(%rbp, 1), %rbx

// } ii()


movq %rbx, -65987(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -65987(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -65987(%rbp, 1)

// } ii()



// mul on the CPU up here ^






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65937(%rbp, 1), %ebx

// } ii()


movl %ebx, -65995(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -65995(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -65995(%rbp, 1)

// } ii()

// ii() {
jl .L54

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -65995(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L54:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -65979(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -65987(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -66003(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -65995(%rbp, 1), %rbx

// } ii()


movq %rbx, -66011(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -66011(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -66011(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65954(%rbp, 1), %ebx

// } ii()


movl %ebx, -66019(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -66019(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -66019(%rbp, 1)

// } ii()

// ii() {
jl .L55

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -66019(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L55:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66003(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -66011(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -66027(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
movq $.L52, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66027(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -66019(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

movl 0(%rbx, %r12, 4), %esi
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -66031(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -65954(%rbp, 1)

// } ii()




// ii() {
jmp .L56

// } ii()

.L57:




// ii() {
movq $.L58, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -66035(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -65937(%rbp, 1)

// } ii()




// ii() {
jmp .L59

// } ii()

.L60:




// ii() {
movq $.L61, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -66039(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -66043(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66043(%rbp, 1), %ebx

// } ii()


movl %ebx, -66047(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L68:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -66051(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66047(%rbp, 1), %ebx

// } ii()


movl %ebx, -66055(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66056(%rbp, 1), %bl

// } ii()


xorb %bl, -66056(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66051(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -66055(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -66056(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66056(%rbp, 1), %bl

// } ii()


andb %bl, -66056(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L69

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -66060(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66060(%rbp, 1), %ebx

// } ii()


movl %ebx, -66064(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L65:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -66068(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66064(%rbp, 1), %ebx

// } ii()


movl %ebx, -66072(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66073(%rbp, 1), %bl

// } ii()


xorb %bl, -66073(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66068(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -66072(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -66073(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -66073(%rbp, 1), %bl

// } ii()


andb %bl, -66073(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L66

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66047(%rbp, 1), %ebx

// } ii()


movl %ebx, -66081(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -66081(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -66081(%rbp, 1)

// } ii()

// ii() {
jl .L63

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -66081(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L63:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -3152(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -66089(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66081(%rbp, 1), %rbx

// } ii()


movq %rbx, -66097(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -66097(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -66097(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -66064(%rbp, 1), %ebx

// } ii()


movl %ebx, -66105(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -66105(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -66105(%rbp, 1)

// } ii()

// ii() {
jl .L64

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -66105(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L64:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66089(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -66097(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -66113(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
movq $.L62, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66113(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -66105(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

movl 0(%rbx, %r12, 4), %esi
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -66117(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -66064(%rbp, 1)

// } ii()




// ii() {
jmp .L65

// } ii()

.L66:




// ii() {
movq $.L67, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -66121(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -66047(%rbp, 1)

// } ii()




// ii() {
jmp .L68

// } ii()

.L69:






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65932(%rbp, 1), %ebx

// } ii()


movl %ebx, -66129(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -66129(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -66129(%rbp, 1)

// } ii()

// ii() {
jl .L71

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -66129(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L71:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -34568(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -66137(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66129(%rbp, 1), %rbx

// } ii()


movq %rbx, -66145(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -66145(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -66145(%rbp, 1)

// } ii()



// mul on the CPU up here ^





// ii() {
movq $.L70, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66137(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -66145(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

movl 3136(%rbx, %r12, 1), %esi
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -66149(%rbp, 1)

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -72453(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65932(%rbp, 1), %ebx

// } ii()


movl %ebx, -66157(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -66157(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -66157(%rbp, 1)

// } ii()

// ii() {
jl .L72

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -66157(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L72:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -34568(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -66165(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66157(%rbp, 1), %rbx

// } ii()


movq %rbx, -66173(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -66173(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -66173(%rbp, 1)

// } ii()



// mul on the CPU up here ^






// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

leaq -69309(%rbp, 1), %rbx

// } ii()

// ii() {
movq %rbx, %rdi

// } ii()


// ii() {
subq $3136, %rsp

// } ii()

// ii() {
movq %rsp, %rax

// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -66165(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -66173(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %rsi
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq 0(%rax, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()


// ii() {
subq $3136, %rsp

// } ii()

// ii() {
movq %rsp, %rax

// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

leaq -3152(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq 0(%rax, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call matmul

// } ii()

// ii() {
addq $3136, %rsp

// } ii()

// ii() {
addq $3136, %rsp

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -69317(%rbp, 1)

// } ii()




// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

leaq -69309(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -72453(%rbp, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -72457(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72457(%rbp, 1), %ebx

// } ii()


movl %ebx, -72461(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L78:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -72465(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72461(%rbp, 1), %ebx

// } ii()


movl %ebx, -72469(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72470(%rbp, 1), %bl

// } ii()


xorb %bl, -72470(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72465(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -72469(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -72470(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72470(%rbp, 1), %bl

// } ii()


andb %bl, -72470(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L79

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -72474(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72474(%rbp, 1), %ebx

// } ii()


movl %ebx, -72478(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L76:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -72482(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72478(%rbp, 1), %ebx

// } ii()


movl %ebx, -72486(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72487(%rbp, 1), %bl

// } ii()


xorb %bl, -72487(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72482(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -72486(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -72487(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72487(%rbp, 1), %bl

// } ii()


andb %bl, -72487(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L77

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72461(%rbp, 1), %ebx

// } ii()


movl %ebx, -72495(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -72495(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -72495(%rbp, 1)

// } ii()

// ii() {
jl .L73

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -72495(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L73:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -72453(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -72503(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72495(%rbp, 1), %rbx

// } ii()


movq %rbx, -72511(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -72511(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -72511(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72478(%rbp, 1), %ebx

// } ii()


movl %ebx, -72519(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -72519(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -72519(%rbp, 1)

// } ii()

// ii() {
jl .L74

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -72519(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L74:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72503(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -72511(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -72527(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -65932(%rbp, 1), %ebx

// } ii()


movl %ebx, -72535(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -72535(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -72535(%rbp, 1)

// } ii()

// ii() {
jl .L75

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -72535(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L75:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -34568(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -72543(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72535(%rbp, 1), %rbx

// } ii()


movq %rbx, -72551(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -72551(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -72551(%rbp, 1)

// } ii()



// mul on the CPU up here ^





// ii() {
// ii() {
pushq %r15

// } ii()
// ii() {
xorq %r15, %r15

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72543(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -72551(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : [42 76]

// ii() {
pushq %r13

// } ii()

// ii() {
xorq %r13, %r13

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movq -72527(%rbp, 1), %r13

// } ii()


// ii() {
pushq %r14

// } ii()

// ii() {
xorq %r14, %r14

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [78]


//} mem_reference_to_regs()

movq -72519(%rbp, 1), %r14

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movl 3136(%rbx, %r12, 1), %r15d

// } ii()


// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
addl %r15d, 0(%r13, %r14, 4)
// ii() {
// pop pushed: 
popq %r14

// } ii()
// ii() {
// pop pushed: 
popq %r13

// } ii()
// ii() {
popq %r15

// } ii()


// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -72478(%rbp, 1)

// } ii()




// ii() {
jmp .L76

// } ii()

.L77:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -72461(%rbp, 1)

// } ii()




// ii() {
jmp .L78

// } ii()

.L79:




// ii() {
movq $.L80, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -72555(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -72559(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72559(%rbp, 1), %ebx

// } ii()


movl %ebx, -72563(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L87:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -72567(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72563(%rbp, 1), %ebx

// } ii()


movl %ebx, -72571(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72572(%rbp, 1), %bl

// } ii()


xorb %bl, -72572(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72567(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -72571(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -72572(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72572(%rbp, 1), %bl

// } ii()


andb %bl, -72572(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L88

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -72576(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72576(%rbp, 1), %ebx

// } ii()


movl %ebx, -72580(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L84:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -72584(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72580(%rbp, 1), %ebx

// } ii()


movl %ebx, -72588(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72589(%rbp, 1), %bl

// } ii()


xorb %bl, -72589(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72584(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -72588(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -72589(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -72589(%rbp, 1), %bl

// } ii()


andb %bl, -72589(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L85

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72563(%rbp, 1), %ebx

// } ii()


movl %ebx, -72597(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -72597(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -72597(%rbp, 1)

// } ii()

// ii() {
jl .L82

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -72597(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L82:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

leaq -72453(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -72605(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72597(%rbp, 1), %rbx

// } ii()


movq %rbx, -72613(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -72613(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -72613(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -72580(%rbp, 1), %ebx

// } ii()


movl %ebx, -72621(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -72621(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -72621(%rbp, 1)

// } ii()

// ii() {
jl .L83

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -72621(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L83:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72605(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -72613(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -72629(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
movq $.L81, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -72629(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -72621(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

movl 0(%rbx, %r12, 4), %esi
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -72633(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -72580(%rbp, 1)

// } ii()




// ii() {
jmp .L84

// } ii()

.L85:




// ii() {
movq $.L86, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -72637(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -72563(%rbp, 1)

// } ii()




// ii() {
jmp .L87

// } ii()

.L88:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -65932(%rbp, 1)

// } ii()




// ii() {
jmp .L89

// } ii()

.L90:



._forward:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0main"
.global main
main:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $912, %rsp

// } ii()





// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -32(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
movq $.L91, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

leaq 0(%rax, 1), %rbx

// } ii()


// ii() {
movq %rbx, %rdi

// } ii()


// ii() {
movq $47, %rsi

// } ii()





// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read_dataset_image

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -8(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -16(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -8(%rbp, 1), %rbx

// } ii()


movq %rbx, -24(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -16(%rbp, 1), %rbx

// } ii()


movq %rbx, -32(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -64(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
movq $.L92, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

leaq 0(%rax, 1), %r12

// } ii()


// ii() {
movq %r12, %rdi

// } ii()


// ii() {
movq $47, %rsi

// } ii()





// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read_dataset_label

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -40(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -48(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -40(%rbp, 1), %rbx

// } ii()


movq %rbx, -56(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -48(%rbp, 1), %rbx

// } ii()


movq %rbx, -64(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()










// ii() {
movq $.L93, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -24(%rbp, 1), %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
movl %eax, %r13d

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -112(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()


// ii() {
movq $28, %r14

// } ii()



// ii() {
movq $28, %r15

// } ii()






pushq %rbx
// ii() {
movq $4, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -72(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -24(%rbp, 1), %rbx

// } ii()


movq %rbx, -80(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -80(%rbp, 1), %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

imulq -72(%rbp, 1), %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -80(%rbp, 1)

// } ii()




// ii() {
movq %r15, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

imulq -80(%rbp, 1), %rax

// } ii()

// ii() {
movq %rax, %r15

// } ii()




// ii() {
movq %r14, %rax

// } ii()


// ii() {
imulq %r15, %rax

// } ii()

// ii() {
movq %rax, %r14

// } ii()




// ii() {
movq %r14, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call allocate

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -88(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -96(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -88(%rbp, 1), %rbx

// } ii()


movq %rbx, -104(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -96(%rbp, 1), %rbx

// } ii()


movq %rbx, -112(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -104(%rbp, 1), %rax

// } ii()


// ii() {
movq $3136, %r15

// } ii()


// ii() {
idivq %r15

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -104(%rbp, 1)

// } ii()





// ii() {
movl $0, %r15d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [79]


//} mem_reference_to_regs()

movl %r15d, -116(%rbp, 1)

// } ii()




.L104:





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -24(%rbp, 1), %ebx

// } ii()


movl %ebx, -120(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -120(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -116(%rbp, 1), %ebx

// } ii()


movl %ebx, -124(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -125(%rbp, 1), %bl

// } ii()


xorb %bl, -125(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -120(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -124(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -125(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -125(%rbp, 1), %bl

// } ii()


andb %bl, -125(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L105

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -129(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -129(%rbp, 1), %ebx

// } ii()


movl %ebx, -133(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L102:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -137(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -133(%rbp, 1), %ebx

// } ii()


movl %ebx, -141(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -142(%rbp, 1), %bl

// } ii()


xorb %bl, -142(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -137(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -141(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -142(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -142(%rbp, 1), %bl

// } ii()


andb %bl, -142(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L103

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -146(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -146(%rbp, 1), %ebx

// } ii()


movl %ebx, -150(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L100:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -154(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -150(%rbp, 1), %ebx

// } ii()


movl %ebx, -158(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -159(%rbp, 1), %bl

// } ii()


xorb %bl, -159(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -154(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -158(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -159(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -159(%rbp, 1), %bl

// } ii()


andb %bl, -159(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L101

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -116(%rbp, 1), %ebx

// } ii()


movl %ebx, -239(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -239(%rbp, 1)

// } ii()

// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -24(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -32(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -247(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -255(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -255(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -239(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L97

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -239(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -255(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L97:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -239(%rbp, 1), %rbx

// } ii()


movq %rbx, -263(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -263(%rbp, 1), %rax

// } ii()


// ii() {
imulq $784, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -263(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -133(%rbp, 1), %ebx

// } ii()


movl %ebx, -271(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -271(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -271(%rbp, 1)

// } ii()

// ii() {
jl .L98

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -271(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L98:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -247(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -263(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -279(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -271(%rbp, 1), %rbx

// } ii()


movq %rbx, -287(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -287(%rbp, 1), %rax

// } ii()


// ii() {
imulq $28, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -287(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -150(%rbp, 1), %ebx

// } ii()


movl %ebx, -295(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -295(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -295(%rbp, 1)

// } ii()

// ii() {
jl .L99

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -295(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L99:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -279(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -287(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -303(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -303(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -295(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : [42 76]


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl 0(%rbx, %r12, 1), %r13d

// } ii()


// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
movl %r13d, -307(%rbp, 1)
// ii() {
popq %r13

// } ii()


// } ii()


// ii() {
movq $255, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -307(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -307(%rbp, 1), %ebx

// } ii()


movl %ebx, -311(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -116(%rbp, 1), %ebx

// } ii()


movl %ebx, -167(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -167(%rbp, 1)

// } ii()

// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -104(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -112(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -175(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -183(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -183(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -167(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L94

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -167(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -183(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L94:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -167(%rbp, 1), %rbx

// } ii()


movq %rbx, -191(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -191(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3136, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -191(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -133(%rbp, 1), %ebx

// } ii()


movl %ebx, -199(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -199(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -199(%rbp, 1)

// } ii()

// ii() {
jl .L95

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -199(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L95:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -175(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -191(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -207(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -199(%rbp, 1), %rbx

// } ii()


movq %rbx, -215(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -215(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -215(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -150(%rbp, 1), %ebx

// } ii()


movl %ebx, -223(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -223(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -223(%rbp, 1)

// } ii()

// ii() {
jl .L96

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -223(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L96:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -207(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -215(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -231(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -231(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -223(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -311(%rbp, 1), %r13d

// } ii()


movl %r13d, 0(%rbx, %r12, 4)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -150(%rbp, 1)

// } ii()




// ii() {
jmp .L100

// } ii()

.L101:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -133(%rbp, 1)

// } ii()




// ii() {
jmp .L102

// } ii()

.L103:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -116(%rbp, 1)

// } ii()




// ii() {
jmp .L104

// } ii()

.L105:


// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq -347(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $1, -315(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movl -315(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call nn

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq %rdx, -323(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -331(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -323(%rbp, 1), %rbx

// } ii()


movq %rbx, -339(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -331(%rbp, 1), %rbx

// } ii()


movq %rbx, -347(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()










// ii() {
movq $.L106, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -339(%rbp, 1), %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -351(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -355(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -355(%rbp, 1), %ebx

// } ii()


movl %ebx, -359(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L120:



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -367(%rbp, 1)

// } ii()

popq %rbx


// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -339(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -347(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -375(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -383(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -383(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -367(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L107

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -367(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -383(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L107:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -367(%rbp, 1), %rbx

// } ii()


movq %rbx, -391(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -391(%rbp, 1), %rax

// } ii()


// ii() {
imulq $31400, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -391(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -399(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -399(%rbp, 1)

// } ii()

// ii() {
jl .L108

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -399(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L108:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -375(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -391(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -407(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -399(%rbp, 1), %rbx

// } ii()


movq %rbx, -415(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -415(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -415(%rbp, 1)

// } ii()



// mul on the CPU up here ^





pushq %rbx
// ii() {
movq $28, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -423(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -423(%rbp, 1), %ebx

// } ii()


movl %ebx, -427(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -427(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -359(%rbp, 1), %ebx

// } ii()


movl %ebx, -431(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -432(%rbp, 1), %bl

// } ii()


xorb %bl, -432(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -427(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -431(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -432(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -432(%rbp, 1), %bl

// } ii()


andb %bl, -432(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L121

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -436(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -436(%rbp, 1), %ebx

// } ii()


movl %ebx, -440(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L118:



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -448(%rbp, 1)

// } ii()

popq %rbx


// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -339(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -347(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -456(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -464(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -464(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -448(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L109

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -448(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -464(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L109:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -448(%rbp, 1), %rbx

// } ii()


movq %rbx, -472(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -472(%rbp, 1), %rax

// } ii()


// ii() {
imulq $31400, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -472(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -480(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -480(%rbp, 1)

// } ii()

// ii() {
jl .L110

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -480(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L110:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -456(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -472(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -488(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -480(%rbp, 1), %rbx

// } ii()


movq %rbx, -496(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -496(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -496(%rbp, 1)

// } ii()



// mul on the CPU up here ^






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -359(%rbp, 1), %ebx

// } ii()


movl %ebx, -504(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -504(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -504(%rbp, 1)

// } ii()

// ii() {
jl .L111

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -504(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L111:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -488(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -496(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -512(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -504(%rbp, 1), %rbx

// } ii()


movq %rbx, -520(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -520(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -520(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $28, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -528(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -528(%rbp, 1), %ebx

// } ii()


movl %ebx, -532(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -532(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -440(%rbp, 1), %ebx

// } ii()


movl %ebx, -536(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -537(%rbp, 1), %bl

// } ii()


xorb %bl, -537(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -532(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -536(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setl -537(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -537(%rbp, 1), %bl

// } ii()


andb %bl, -537(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L119

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $3, -637(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -637(%rbp, 1), %ebx

// } ii()


movl %ebx, -641(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -545(%rbp, 1)

// } ii()

popq %rbx


// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -339(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -347(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -553(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -561(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -561(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -545(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L112

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -545(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -561(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L112:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -545(%rbp, 1), %rbx

// } ii()


movq %rbx, -569(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -569(%rbp, 1), %rax

// } ii()


// ii() {
imulq $31400, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -569(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -577(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -577(%rbp, 1)

// } ii()

// ii() {
jl .L113

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -577(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L113:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -553(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -569(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -585(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -577(%rbp, 1), %rbx

// } ii()


movq %rbx, -593(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -593(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -593(%rbp, 1)

// } ii()



// mul on the CPU up here ^






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -359(%rbp, 1), %ebx

// } ii()


movl %ebx, -601(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -601(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -601(%rbp, 1)

// } ii()

// ii() {
jl .L114

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -601(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L114:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -585(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -593(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -609(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -601(%rbp, 1), %rbx

// } ii()


movq %rbx, -617(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -617(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -617(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -440(%rbp, 1), %ebx

// } ii()


movl %ebx, -625(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -625(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -625(%rbp, 1)

// } ii()

// ii() {
jl .L115

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -625(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L115:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -609(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -617(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -633(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -633(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -625(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -641(%rbp, 1), %r13d

// } ii()


movl %r13d, 0(%rbx, %r12, 4)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $1, -701(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -701(%rbp, 1), %ebx

// } ii()


movl %ebx, -705(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -649(%rbp, 1)

// } ii()

popq %rbx


// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -339(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -347(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -657(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -665(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -665(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -649(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L116

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -649(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -665(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L116:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -649(%rbp, 1), %rbx

// } ii()


movq %rbx, -673(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -673(%rbp, 1), %rax

// } ii()


// ii() {
imulq $31400, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -673(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -681(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $10, -681(%rbp, 1)

// } ii()

// ii() {
jl .L117

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -681(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L117:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -657(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -673(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -689(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -681(%rbp, 1), %rbx

// } ii()


movq %rbx, -697(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -697(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3140, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -697(%rbp, 1)

// } ii()



// mul on the CPU up here ^





// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -689(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -697(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movl -705(%rbp, 1), %r13d

// } ii()


movl %r13d, 3136(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -440(%rbp, 1)

// } ii()




// ii() {
jmp .L118

// } ii()

.L119:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -359(%rbp, 1)

// } ii()




// ii() {
jmp .L120

// } ii()

.L121:




pushq %rbx
// ii() {
movq $5, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq %rbx, -713(%rbp, 1)

// } ii()

popq %rbx


// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -104(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -112(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -721(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -729(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -729(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -713(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L122

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -713(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -729(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L122:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -713(%rbp, 1), %rbx

// } ii()


movq %rbx, -737(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -737(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3136, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -737(%rbp, 1)

// } ii()



// mul on the CPU up here ^



// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -339(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movq -347(%rbp, 1), %rdi

// } ii()




// ii() {
subq $3136, %rsp

// } ii()

// ii() {
movq %rsp, %rax

// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -721(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -737(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %rsi
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

leaq 0(%rax, 1), %rdi

// } ii()

// ii() {
movq $3136, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call forward

// } ii()

// ii() {
addq $3136, %rsp

// } ii()



// ii() {
jmp ._main

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -741(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -741(%rbp, 1), %ebx

// } ii()


movl %ebx, -745(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L134:





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -24(%rbp, 1), %ebx

// } ii()


movl %ebx, -749(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -749(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -745(%rbp, 1), %ebx

// } ii()


movl %ebx, -753(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -754(%rbp, 1), %bl

// } ii()


xorb %bl, -754(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -749(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -753(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -754(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -754(%rbp, 1), %bl

// } ii()


andb %bl, -754(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L135

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -745(%rbp, 1), %ebx

// } ii()


movl %ebx, -762(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -762(%rbp, 1)

// } ii()

// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -56(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -64(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -770(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -778(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -778(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -762(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L124

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -762(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -778(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L124:


// ii() {
movq $.L123, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -770(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -762(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

movb 0(%rbx, %r12, 1), %sil
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -782(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -786(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -786(%rbp, 1), %ebx

// } ii()


movl %ebx, -790(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L132:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -794(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -790(%rbp, 1), %ebx

// } ii()


movl %ebx, -798(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -799(%rbp, 1), %bl

// } ii()


xorb %bl, -799(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -794(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -798(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -799(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -799(%rbp, 1), %bl

// } ii()


andb %bl, -799(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L133

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $0, -803(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -803(%rbp, 1), %ebx

// } ii()


movl %ebx, -807(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L130:

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movl $28, -811(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -807(%rbp, 1), %ebx

// } ii()


movl %ebx, -815(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -816(%rbp, 1), %bl

// } ii()


xorb %bl, -816(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -811(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -815(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

setb -816(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -816(%rbp, 1), %bl

// } ii()


andb %bl, -816(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L131

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -745(%rbp, 1), %ebx

// } ii()


movl %ebx, -820(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -820(%rbp, 1), %ebx

// } ii()


movl %ebx, -828(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -828(%rbp, 1)

// } ii()

// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq -104(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq -112(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [72]


//} mem_reference_to_regs()

movq %r11, -836(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -844(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -844(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -828(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L125

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -828(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [35]


//} mem_reference_to_regs()

movq -844(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L125:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -828(%rbp, 1), %rbx

// } ii()


movq %rbx, -852(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -852(%rbp, 1), %rax

// } ii()


// ii() {
imulq $3136, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -852(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -790(%rbp, 1), %ebx

// } ii()


movl %ebx, -860(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -860(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -860(%rbp, 1)

// } ii()

// ii() {
jl .L126

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -860(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L126:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -836(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -852(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -868(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -860(%rbp, 1), %rbx

// } ii()


movq %rbx, -876(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq -876(%rbp, 1), %rax

// } ii()


// ii() {
imulq $112, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movq %rax, -876(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movl -807(%rbp, 1), %ebx

// } ii()


movl %ebx, -884(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -884(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

cmpq $28, -884(%rbp, 1)

// } ii()

// ii() {
jl .L127

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [66]


//} mem_reference_to_regs()

movq -884(%rbp, 1), %rsi

// } ii()


// ii() {
movq $28, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L127:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -868(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -876(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [71]


//} mem_reference_to_regs()

movq %r10, -892(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []

// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movq -892(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [76]


//} mem_reference_to_regs()

movq -884(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : [42 76]


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [77]


//} mem_reference_to_regs()

movb 0(%rbx, %r12, 4), %r13b

// } ii()


// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
movb %r13b, -893(%rbp, 1)
// ii() {
popq %r13

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

andq %rax, -893(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -893(%rbp, 1), %bl

// } ii()


movb %bl, -894(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movb $5, -895(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -894(%rbp, 1), %bl

// } ii()


movb %bl, -896(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -897(%rbp, 1), %bl

// } ii()


xorb %bl, -897(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -895(%rbp, 1), %bl

// } ii()


cmpb %bl, -896(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

seta -897(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : [42]


//} mem_reference_to_regs()

movb -897(%rbp, 1), %bl

// } ii()


andb %bl, -897(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L128

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movb $64, -898(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movb -898(%rbp, 1), %dil

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call putchar

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -902(%rbp, 1)

// } ii()





// ii() {
jmp .L129

// } ii()


.L128:
// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movb $32, -903(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movb -903(%rbp, 1), %dil

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call putchar

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -907(%rbp, 1)

// } ii()





.L129:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -807(%rbp, 1)

// } ii()




// ii() {
jmp .L130

// } ii()

.L131:


// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

movb $10, -908(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : [65]


//} mem_reference_to_regs()

movb -908(%rbp, 1), %dil

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call putchar

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : [32]


//} mem_reference_to_regs()

movl %eax, -912(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -790(%rbp, 1)

// } ii()




// ii() {
jmp .L132

// } ii()

.L133:




// ii() {
// mem_reference_to_regs() {

// reserved regs : []


//} mem_reference_to_regs()

incl -745(%rbp, 1)

// } ii()




// ii() {
jmp .L134

// } ii()

.L135:



._main:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



 
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




















































































































































































































































































































































































































.L51: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0





























.L52: .byte 37, 117, 32, 0


















































.L58: .byte 10, 0














.L61: .byte 105, 110, 112, 117, 116, 58, 10, 0





























.L62: .byte 37, 117, 32, 0




































.L67: .byte 10, 0














.L70: .byte 98, 105, 97, 115, 58, 32, 37, 117, 10, 0

































































































































.L80: .byte 114, 101, 115, 117, 108, 116, 58, 10, 0





























.L81: .byte 37, 117, 32, 0




































.L86: .byte 10, 0






























.L91: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 105, 109, 97, 103, 101, 115, 45, 105, 100, 120, 51, 45, 117, 98, 121, 116, 101, 0




















.L92: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 45, 108, 97, 98, 101, 108, 115, 45, 105, 100, 120, 49, 45, 117, 98, 121, 116, 101, 0


















.L93: .byte 37, 108, 108, 100, 10, 0
















































































































































































































.L106: .byte 110, 101, 117, 114, 97, 108, 95, 110, 101, 116, 119, 111, 114, 107, 46, 108, 101, 110, 58, 32, 37, 100, 10, 0














































































































































































































































































.L123: .byte 108, 97, 98, 101, 108, 58, 32, 37, 104, 104, 117, 10, 0


















































































































































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


