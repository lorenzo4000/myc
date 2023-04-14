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





// hello 

 // byee 
// hello 

 // byee 
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





// hello 

 // byee 
// hello 

 // byee 
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




movq %rsi, -16(%rbp, 1)


movq %rdi, -24(%rbp, 1)





movq $0, %rbx



movq %rbx, -32(%rbp, 1)





movq -16(%rbp, 1), %r12


movq $-1, %rax


andq %rax, %r12


movq $8, %r13



xorq %rdx, %rdx

xorq %rax, %rax

movq %r12, %rax


idivq %r13

movq %rax, %r12




movq %r12, -40(%rbp, 1)



movq $0, %r13



movq %r13, -48(%rbp, 1)




.L2:


movq -48(%rbp, 1), %r14


xorb %r15b, %r15b

cmpq -40(%rbp, 1), %r14

setl %r15b



andb %r15b, %r15b

jz .L3





movq -16(%rbp, 1), %r10


movq -24(%rbp, 1), %r11





movq $.L1, %rdi


// using r10
// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -48(%rbp, 1), %r10

movq 0(%r11, %r10, 8), %rsi
popq %r10



call printf

movl %eax, %r14d







movq -16(%rbp, 1), %r10


movq -24(%rbp, 1), %r11





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -32(%rbp, 1), %rbx


movq %rbx, -64(%rbp, 1)
popq %rbx


// using r10
pushq %rbx
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -48(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 0(%r11, %r10, 8), %rbx


addq %rbx, -64(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -64(%rbp, 1), %rbx


movq %rbx, -32(%rbp, 1)
popq %rbx





movq $1, %r14



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -48(%rbp, 1), %rbx


movq %rbx, -56(%rbp, 1)
popq %rbx


addq %r14, -56(%rbp, 1)




// hello 

 // byee 
// hello 

 // byee 
movq -56(%rbp, 1), %r14


movq %r14, -48(%rbp, 1)




jmp .L2

.L3:



movq -32(%rbp, 1), %rax


jmp ._sum





._sum:
movq %rbp, %rsp

popq %rbp

ret



.global sum_20
sum_20:
pushq %rbp

movq %rsp, %rbp

subq $224, %rsp




pushq %rsi

pushq %rdi

pushq %rcx

leaq 16(%rbp, 1), %rsi

leaq -160(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




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





pushq %r10

leaq -160(%rbp, 1), %r10

movq %r10, -200(%rbp, 1)


popq %r10



movq $.L4, %rdi


// using rax
// the index is very cute! : -184(%rbp, 1)
// using r10
pushq %rax
movq -200(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -184(%rbp, 1), %r10

movq 0(%rax, %r10, 8), %rsi
popq %r10
popq %rax



call printf

movl %eax, %r14d







pushq %r10

leaq -160(%rbp, 1), %r10

movq %r10, -208(%rbp, 1)


popq %r10



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -216(%rbp, 1)
popq %rbx


// using rax
// the index is very cute! : -184(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -208(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -184(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 0(%rax, %r10, 8), %rbx


addq %rbx, -216(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -216(%rbp, 1), %rbx


movq %rbx, -168(%rbp, 1)
popq %rbx





movq $1, %r14



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -184(%rbp, 1), %rbx


movq %rbx, -192(%rbp, 1)
popq %rbx


addq %r14, -192(%rbp, 1)




// hello 

 // byee 
// hello 

 // byee 
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

subq $800, %rsp






movq $10, %rbx



movq $156, %r12



movq $10, %r13



movq $10, %r14



movq $13455, %r15



pushq %rbx
movq $10, %rbx


movq %rbx, -16(%rbp, 1)

popq %rbx


pushq %rbx
movq $1234, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -32(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -40(%rbp, 1)

popq %rbx


pushq %rbx
movq $1240, %rbx


movq %rbx, -48(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -56(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -64(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -80(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -88(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -96(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -104(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -112(%rbp, 1)

popq %rbx


pushq %rbx
movq $10, %rbx


movq %rbx, -120(%rbp, 1)

popq %rbx


pushq %rbx
movq $15, %rbx


movq %rbx, -128(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -128(%rbp, 1), %rbx


movq %rbx, -136(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -120(%rbp, 1), %rbx


movq %rbx, -144(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -112(%rbp, 1), %rbx


movq %rbx, -152(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -104(%rbp, 1), %rbx


movq %rbx, -160(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -96(%rbp, 1), %rbx


movq %rbx, -168(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -88(%rbp, 1), %rbx


movq %rbx, -176(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -80(%rbp, 1), %rbx


movq %rbx, -184(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -72(%rbp, 1), %rbx


movq %rbx, -192(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -64(%rbp, 1), %rbx


movq %rbx, -200(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -56(%rbp, 1), %rbx


movq %rbx, -208(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -48(%rbp, 1), %rbx


movq %rbx, -216(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -40(%rbp, 1), %rbx


movq %rbx, -224(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -32(%rbp, 1), %rbx


movq %rbx, -232(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -24(%rbp, 1), %rbx


movq %rbx, -240(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -16(%rbp, 1), %rbx


movq %rbx, -248(%rbp, 1)
popq %rbx


movq %r15, -256(%rbp, 1)


movq %r14, -264(%rbp, 1)


movq %r13, -272(%rbp, 1)


movq %r12, -280(%rbp, 1)


movq %rbx, -288(%rbp, 1)




pushq %rsi

pushq %rdi

pushq %rcx

leaq -288(%rbp, 1), %rsi

leaq -448(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




pushq %rbx
movq $0, %rbx


movq %rbx, -616(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -616(%rbp, 1), %rbx


movq %rbx, -624(%rbp, 1)
popq %rbx




.L8:

pushq %rbx
movq $20, %rbx


movq %rbx, -632(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -624(%rbp, 1), %rbx


movq %rbx, -640(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -641(%rbp, 1), %bl


xorb %bl, -641(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -632(%rbp, 1), %rbx


cmpq %rbx, -640(%rbp, 1)
popq %rbx

setl -641(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -641(%rbp, 1), %bl


andb %bl, -641(%rbp, 1)
popq %rbx

jz .L9






pushq %r10

leaq -448(%rbp, 1), %r10

movq %r10, -665(%rbp, 1)


popq %r10



movq $.L7, %rdi


movq -624(%rbp, 1), %rsi


// using rax
// the index is very cute! : -624(%rbp, 1)
// using r10
pushq %rax
movq -665(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -624(%rbp, 1), %r10

movq 0(%rax, %r10, 8), %rdx
popq %r10
popq %rax



call printf

movl %eax, -669(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -649(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -624(%rbp, 1), %rbx


movq %rbx, -657(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -649(%rbp, 1), %rbx


addq %rbx, -657(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -657(%rbp, 1), %rbx


movq %rbx, -624(%rbp, 1)
popq %rbx




jmp .L8

.L9:


pushq %rbx
movq $0, %rbx


movq %rbx, -677(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -677(%rbp, 1), %rbx


movq %rbx, -685(%rbp, 1)
popq %rbx




.L10:

pushq %rbx
movq $20, %rbx


movq %rbx, -693(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -685(%rbp, 1), %rbx


movq %rbx, -701(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -702(%rbp, 1), %bl


xorb %bl, -702(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -693(%rbp, 1), %rbx


cmpq %rbx, -701(%rbp, 1)
popq %rbx

setl -702(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -702(%rbp, 1), %bl


andb %bl, -702(%rbp, 1)
popq %rbx

jz .L11



pushq %r10

leaq -448(%rbp, 1), %r10

movq %r10, -734(%rbp, 1)


popq %r10





pushq %r10

leaq -608(%rbp, 1), %r10

movq %r10, -726(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -685(%rbp, 1)
// using r10
// using rax
// the index is very cute! : -685(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -734(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -685(%rbp, 1), %r10

movq 0(%rax, %r10, 8), %rbx


 // byee 
// hello 
movq -726(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -685(%rbp, 1), %r10


 // byee 


movq %rbx, 0(%rax, %r10, 8)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -710(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -685(%rbp, 1), %rbx


movq %rbx, -718(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -710(%rbp, 1), %rbx


addq %rbx, -718(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -718(%rbp, 1), %rbx


movq %rbx, -685(%rbp, 1)
popq %rbx




jmp .L10

.L11:


pushq %rbx
movq $0, %rbx


movq %rbx, -742(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -742(%rbp, 1), %rbx


movq %rbx, -750(%rbp, 1)
popq %rbx




.L13:

pushq %rbx
movq $20, %rbx


movq %rbx, -758(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -750(%rbp, 1), %rbx


movq %rbx, -766(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -767(%rbp, 1), %bl


xorb %bl, -767(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -758(%rbp, 1), %rbx


cmpq %rbx, -766(%rbp, 1)
popq %rbx

setl -767(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -767(%rbp, 1), %bl


andb %bl, -767(%rbp, 1)
popq %rbx

jz .L14






pushq %r10

leaq -608(%rbp, 1), %r10

movq %r10, -791(%rbp, 1)


popq %r10



movq $.L12, %rdi


movq -750(%rbp, 1), %rsi


// using rax
// the index is very cute! : -750(%rbp, 1)
// using r10
pushq %rax
movq -791(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -750(%rbp, 1), %r10

movq 0(%rax, %r10, 8), %rdx
popq %r10
popq %rax



call printf

movl %eax, -795(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -775(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -750(%rbp, 1), %rbx


movq %rbx, -783(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -775(%rbp, 1), %rbx


addq %rbx, -783(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -783(%rbp, 1), %rbx


movq %rbx, -750(%rbp, 1)
popq %rbx




jmp .L13

.L14:



jmp ._main





._main:
movq %rbp, %rsp

popq %rbp

ret




.data





















































































































































.L1: .string "heeeyy  : %d\n"











































































.L4: .string "heeeyy  : %d\n"


















































































































































.L7: .string "STATIC %d : %d\n"

















































































.L12: .string "DYNAMIC asdas %d : %d\n"





































