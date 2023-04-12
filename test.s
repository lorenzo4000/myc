.text













































.global allocate
allocate:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp



pushq %rbx
movq $0, %rbx


movq %rbx, -16(%rbp, 1)

popq %rbx


movq %rdi, -16(%rbp, 1)






movq -16(%rbp, 1), %rdi



call malloc

movq %rax, %rbx





movq %rbx, -32(%rbp, 1)





// hello 

 // byee 
// hello 

 // byee 
movq -16(%rbp, 1), %r12


movq %r12, -24(%rbp, 1)




movq -24(%rbp, 1), %rdx


movq -32(%rbp, 1), %rax



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







.global render
render:
pushq %rbp

movq %rsp, %rbp

subq $672, %rsp




pushq %rbx
movq $0, %rbx


movq %rbx, -413(%rbp, 1)

popq %rbx


pushq %rbx
movq $0, %rbx


movq %rbx, -421(%rbp, 1)

popq %rbx


movb $0, -422(%rbp, 1)



pushq %rsi

pushq %rdi

pushq %rcx

leaq 16(%rbp, 1), %rsi

leaq -405(%rbp, 1), %rdi

movq $300, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


movq %rdi, -413(%rbp, 1)


movq %rsi, -421(%rbp, 1)


movb %dl, -422(%rbp, 1)






movq $.L1, %rdi



call printf

movl %eax, %ebx





movq $0, %r12



movb %r12b, %r13b


movq $-1, %rax


andq %rax, %r13


movb %r13b, -423(%rbp, 1)



movq $0, %r14



movq %r14, -431(%rbp, 1)




.L12:

movq $10, %r15



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -431(%rbp, 1), %rbx


movq %rbx, -439(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -440(%rbp, 1), %bl


xorb %bl, -440(%rbp, 1)
popq %rbx

cmpq %r15, -439(%rbp, 1)

setl -440(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -440(%rbp, 1), %bl


andb %bl, -440(%rbp, 1)
popq %rbx

jz .L13

movq $0, %r15



movq %r15, -456(%rbp, 1)




.L10:

pushq %rbx
movq $30, %rbx


movq %rbx, -464(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -456(%rbp, 1), %rbx


movq %rbx, -472(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -473(%rbp, 1), %bl


xorb %bl, -473(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -464(%rbp, 1), %rbx


cmpq %rbx, -472(%rbp, 1)
popq %rbx

setl -473(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -473(%rbp, 1), %bl


andb %bl, -473(%rbp, 1)
popq %rbx

jz .L11



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -456(%rbp, 1), %bl


movb %bl, -490(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -490(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -431(%rbp, 1), %bl


movb %bl, -491(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -491(%rbp, 1)



pushq %rbx
movq $6, %rbx


movq %rbx, -499(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -499(%rbp, 1), %bl


movb %bl, -500(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -500(%rbp, 1)


xorq %rdx, %rdx

xorq %rax, %rax

movb -491(%rbp, 1), %al


idivb -500(%rbp, 1)

movb %ah, %al


movb %al, -491(%rbp, 1)




movb -490(%rbp, 1), %al


imulb -491(%rbp, 1)

movb %al, -490(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -490(%rbp, 1), %bl


movb %bl, -501(%rbp, 1)
popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -431(%rbp, 1), %bl


movb %bl, -502(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -502(%rbp, 1)



pushq %rbx
movq $6, %rbx


movq %rbx, -510(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -510(%rbp, 1), %bl


movb %bl, -511(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -511(%rbp, 1)


xorq %rdx, %rdx

xorq %rax, %rax

movb -502(%rbp, 1), %al


idivb -511(%rbp, 1)

movb %ah, %al


movb %al, -502(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -502(%rbp, 1), %bl


movb %bl, -512(%rbp, 1)
popq %rbx




pushq %rbx
movq $46, %rbx


movq %rbx, -520(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -520(%rbp, 1), %bl


movb %bl, -521(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -521(%rbp, 1)





pushq %rbx
movq $6, %rbx


movq %rbx, -529(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -529(%rbp, 1), %bl


movb %bl, -530(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -530(%rbp, 1)



pushq %rbx
movq $6, %rbx


movq %rbx, -538(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -538(%rbp, 1), %bl


movb %bl, -539(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -539(%rbp, 1)


movb -530(%rbp, 1), %al


imulb -539(%rbp, 1)

movb %al, -530(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -512(%rbp, 1), %bl


movb %bl, -540(%rbp, 1)
popq %rbx


movb -540(%rbp, 1), %al


imulb -530(%rbp, 1)

movb %al, -540(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -501(%rbp, 1), %bl


movb %bl, -541(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -540(%rbp, 1), %bl


addb %bl, -541(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -541(%rbp, 1), %bl


addb %bl, -521(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -521(%rbp, 1), %bl


movb %bl, -423(%rbp, 1)
popq %rbx






movq $.L2, %rdi


movb -423(%rbp, 1), %sil



call printf

movl %eax, -545(%rbp, 1)





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -422(%rbp, 1), %bl


andb %bl, -422(%rbp, 1)
popq %rbx

jz .L5



movq $.L3, %rdi



call printf

movl %eax, -549(%rbp, 1)







movq $.L4, %rdi


movb -423(%rbp, 1), %sil



call printf

movl %eax, -553(%rbp, 1)





.L5:





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -456(%rbp, 1), %rbx


movq %rbx, -561(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -561(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -413(%rbp, 1), %rbx


movq %rbx, -569(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -570(%rbp, 1), %bl


xorb %bl, -570(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -561(%rbp, 1), %rbx


cmpq %rbx, -569(%rbp, 1)
popq %rbx

sete -570(%rbp, 1)






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -431(%rbp, 1), %rbx


movq %rbx, -578(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -578(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -421(%rbp, 1), %rbx


movq %rbx, -586(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -587(%rbp, 1), %bl


xorb %bl, -587(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -578(%rbp, 1), %rbx


cmpq %rbx, -586(%rbp, 1)
popq %rbx

sete -587(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -587(%rbp, 1), %bl


andb %bl, -570(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -570(%rbp, 1), %bl


andb %bl, -570(%rbp, 1)
popq %rbx

jz .L7



movq $.L6, %rdi



call printf

movl %eax, -591(%rbp, 1)






pushq %r10

leaq -405(%rbp, 1), %r10

movq %r10, -599(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -431(%rbp, 1), %rbx


movq %rbx, -607(%rbp, 1)
popq %rbx


movq -607(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -607(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -607(%rbp, 1)
// using r10
pushq %rax
movq -599(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -607(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -615(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -456(%rbp, 1)
// using r10
pushq %rax
movq -615(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -456(%rbp, 1), %r10

movb 0(%rax, %r10, 1), %dil
popq %r10
popq %rax



call putchar

movl %eax, -619(%rbp, 1)





jmp .L8


.L7:


pushq %r10

leaq -405(%rbp, 1), %r10

movq %r10, -627(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -431(%rbp, 1), %rbx


movq %rbx, -635(%rbp, 1)
popq %rbx


movq -635(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -635(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -635(%rbp, 1)
// using r10
pushq %rax
movq -627(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -635(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -643(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -456(%rbp, 1)
// using r10
pushq %rax
movq -643(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -456(%rbp, 1), %r10

movb 0(%rax, %r10, 1), %dil
popq %r10
popq %rax



call putchar

movl %eax, -647(%rbp, 1)





.L8:




movq $.L9, %rdi



call printf

movl %eax, -651(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -481(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -456(%rbp, 1), %rbx


movq %rbx, -489(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -481(%rbp, 1), %rbx


addq %rbx, -489(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -489(%rbp, 1), %rbx


movq %rbx, -456(%rbp, 1)
popq %rbx




jmp .L10

.L11:


pushq %rbx
movq $10, %rbx


movq %rbx, -659(%rbp, 1)

popq %rbx


movq -659(%rbp, 1), %rdi



call putchar

movl %eax, -663(%rbp, 1)






movq $1, %r15



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -431(%rbp, 1), %rbx


movq %rbx, -448(%rbp, 1)
popq %rbx


addq %r15, -448(%rbp, 1)




// hello 

 // byee 
// hello 

 // byee 
movq -448(%rbp, 1), %r15


movq %r15, -431(%rbp, 1)




jmp .L12

.L13:



._render:
movq %rbp, %rsp

popq %rbp

ret



.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $6544, %rsp

















movq $.L23, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, -16(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx



movq $.L22, %rax


leaq 0(%rax, 1), %r12


movq %r12, -32(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx



movq $.L21, %rax


leaq 0(%rax, 1), %r13


movq %r13, -48(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -40(%rbp, 1)

popq %rbx



movq $.L20, %rax


leaq 0(%rax, 1), %r14


movq %r14, -64(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -56(%rbp, 1)

popq %rbx



movq $.L19, %rax


leaq 0(%rax, 1), %r15


movq %r15, -80(%rbp, 1)


pushq %rbx
movq $31, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx



movq $.L18, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -168(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -96(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -88(%rbp, 1)

popq %rbx



movq $.L17, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -176(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -176(%rbp, 1), %rbx


movq %rbx, -112(%rbp, 1)
popq %rbx


pushq %rbx
movq $31, %rbx


movq %rbx, -104(%rbp, 1)

popq %rbx



movq $.L16, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -184(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -184(%rbp, 1), %rbx


movq %rbx, -128(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -120(%rbp, 1)

popq %rbx



movq $.L15, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -192(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -192(%rbp, 1), %rbx


movq %rbx, -144(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -136(%rbp, 1)

popq %rbx



movq $.L14, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -200(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -200(%rbp, 1), %rbx


movq %rbx, -160(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -152(%rbp, 1)

popq %rbx
















movq $.L33, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -368(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -368(%rbp, 1), %rbx


movq %rbx, -216(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -208(%rbp, 1)

popq %rbx



movq $.L32, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -376(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -376(%rbp, 1), %rbx


movq %rbx, -232(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -224(%rbp, 1)

popq %rbx



movq $.L31, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -384(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -384(%rbp, 1), %rbx


movq %rbx, -248(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -240(%rbp, 1)

popq %rbx



movq $.L30, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -392(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -392(%rbp, 1), %rbx


movq %rbx, -264(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -256(%rbp, 1)

popq %rbx



movq $.L29, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -400(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -400(%rbp, 1), %rbx


movq %rbx, -280(%rbp, 1)
popq %rbx


pushq %rbx
movq $31, %rbx


movq %rbx, -272(%rbp, 1)

popq %rbx



movq $.L28, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -408(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -408(%rbp, 1), %rbx


movq %rbx, -296(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -288(%rbp, 1)

popq %rbx



movq $.L27, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -416(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -416(%rbp, 1), %rbx


movq %rbx, -312(%rbp, 1)
popq %rbx


pushq %rbx
movq $31, %rbx


movq %rbx, -304(%rbp, 1)

popq %rbx



movq $.L26, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -424(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -424(%rbp, 1), %rbx


movq %rbx, -328(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -320(%rbp, 1)

popq %rbx



movq $.L25, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -432(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -432(%rbp, 1), %rbx


movq %rbx, -344(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -336(%rbp, 1)

popq %rbx



movq $.L24, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -440(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -440(%rbp, 1), %rbx


movq %rbx, -360(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -352(%rbp, 1)

popq %rbx
















movq $.L43, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -608(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -608(%rbp, 1), %rbx


movq %rbx, -456(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -448(%rbp, 1)

popq %rbx



movq $.L42, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -616(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -616(%rbp, 1), %rbx


movq %rbx, -472(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -464(%rbp, 1)

popq %rbx



movq $.L41, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -624(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -624(%rbp, 1), %rbx


movq %rbx, -488(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -480(%rbp, 1)

popq %rbx



movq $.L40, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -632(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -632(%rbp, 1), %rbx


movq %rbx, -504(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -496(%rbp, 1)

popq %rbx



movq $.L39, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -640(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -640(%rbp, 1), %rbx


movq %rbx, -520(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -512(%rbp, 1)

popq %rbx



movq $.L38, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -648(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -648(%rbp, 1), %rbx


movq %rbx, -536(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -528(%rbp, 1)

popq %rbx



movq $.L37, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -656(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -656(%rbp, 1), %rbx


movq %rbx, -552(%rbp, 1)
popq %rbx


pushq %rbx
movq $31, %rbx


movq %rbx, -544(%rbp, 1)

popq %rbx



movq $.L36, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -664(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -664(%rbp, 1), %rbx


movq %rbx, -568(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -560(%rbp, 1)

popq %rbx



movq $.L35, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -672(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -672(%rbp, 1), %rbx


movq %rbx, -584(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -576(%rbp, 1)

popq %rbx



movq $.L34, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -680(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -680(%rbp, 1), %rbx


movq %rbx, -600(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -592(%rbp, 1)

popq %rbx
















movq $.L53, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -848(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -848(%rbp, 1), %rbx


movq %rbx, -696(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -688(%rbp, 1)

popq %rbx



movq $.L52, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -856(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -856(%rbp, 1), %rbx


movq %rbx, -712(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -704(%rbp, 1)

popq %rbx



movq $.L51, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -864(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -864(%rbp, 1), %rbx


movq %rbx, -728(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -720(%rbp, 1)

popq %rbx



movq $.L50, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -872(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -872(%rbp, 1), %rbx


movq %rbx, -744(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -736(%rbp, 1)

popq %rbx



movq $.L49, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -880(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -880(%rbp, 1), %rbx


movq %rbx, -760(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -752(%rbp, 1)

popq %rbx



movq $.L48, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -888(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -888(%rbp, 1), %rbx


movq %rbx, -776(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -768(%rbp, 1)

popq %rbx



movq $.L47, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -896(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -896(%rbp, 1), %rbx


movq %rbx, -792(%rbp, 1)
popq %rbx


pushq %rbx
movq $31, %rbx


movq %rbx, -784(%rbp, 1)

popq %rbx



movq $.L46, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -904(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -904(%rbp, 1), %rbx


movq %rbx, -808(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -800(%rbp, 1)

popq %rbx



movq $.L45, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -912(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -912(%rbp, 1), %rbx


movq %rbx, -824(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -816(%rbp, 1)

popq %rbx



movq $.L44, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -920(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -920(%rbp, 1), %rbx


movq %rbx, -840(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -832(%rbp, 1)

popq %rbx
















movq $.L63, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1088(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1088(%rbp, 1), %rbx


movq %rbx, -936(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -928(%rbp, 1)

popq %rbx



movq $.L62, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1096(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1096(%rbp, 1), %rbx


movq %rbx, -952(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -944(%rbp, 1)

popq %rbx



movq $.L61, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1104(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1104(%rbp, 1), %rbx


movq %rbx, -968(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -960(%rbp, 1)

popq %rbx



movq $.L60, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1112(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1112(%rbp, 1), %rbx


movq %rbx, -984(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -976(%rbp, 1)

popq %rbx



movq $.L59, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1120(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1120(%rbp, 1), %rbx


movq %rbx, -1000(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -992(%rbp, 1)

popq %rbx



movq $.L58, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1128(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1128(%rbp, 1), %rbx


movq %rbx, -1016(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1008(%rbp, 1)

popq %rbx



movq $.L57, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1136(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1136(%rbp, 1), %rbx


movq %rbx, -1032(%rbp, 1)
popq %rbx


pushq %rbx
movq $31, %rbx


movq %rbx, -1024(%rbp, 1)

popq %rbx



movq $.L56, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1144(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1144(%rbp, 1), %rbx


movq %rbx, -1048(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1040(%rbp, 1)

popq %rbx



movq $.L55, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1152(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1152(%rbp, 1), %rbx


movq %rbx, -1064(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1056(%rbp, 1)

popq %rbx



movq $.L54, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1160(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1160(%rbp, 1), %rbx


movq %rbx, -1080(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1072(%rbp, 1)

popq %rbx
















movq $.L73, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1328(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1328(%rbp, 1), %rbx


movq %rbx, -1176(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1168(%rbp, 1)

popq %rbx



movq $.L72, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1336(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1336(%rbp, 1), %rbx


movq %rbx, -1192(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1184(%rbp, 1)

popq %rbx



movq $.L71, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1344(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1344(%rbp, 1), %rbx


movq %rbx, -1208(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1200(%rbp, 1)

popq %rbx



movq $.L70, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1352(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1352(%rbp, 1), %rbx


movq %rbx, -1224(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1216(%rbp, 1)

popq %rbx



movq $.L69, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1360(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1360(%rbp, 1), %rbx


movq %rbx, -1240(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1232(%rbp, 1)

popq %rbx



movq $.L68, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1368(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1368(%rbp, 1), %rbx


movq %rbx, -1256(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1248(%rbp, 1)

popq %rbx



movq $.L67, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1376(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1376(%rbp, 1), %rbx


movq %rbx, -1272(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1264(%rbp, 1)

popq %rbx



movq $.L66, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1384(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1384(%rbp, 1), %rbx


movq %rbx, -1288(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1280(%rbp, 1)

popq %rbx



movq $.L65, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1392(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1392(%rbp, 1), %rbx


movq %rbx, -1304(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1296(%rbp, 1)

popq %rbx



movq $.L64, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1400(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1400(%rbp, 1), %rbx


movq %rbx, -1320(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1312(%rbp, 1)

popq %rbx
















movq $.L83, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1568(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1568(%rbp, 1), %rbx


movq %rbx, -1416(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1408(%rbp, 1)

popq %rbx



movq $.L82, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1576(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1576(%rbp, 1), %rbx


movq %rbx, -1432(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1424(%rbp, 1)

popq %rbx



movq $.L81, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1584(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1584(%rbp, 1), %rbx


movq %rbx, -1448(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1440(%rbp, 1)

popq %rbx



movq $.L80, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1592(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1592(%rbp, 1), %rbx


movq %rbx, -1464(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1456(%rbp, 1)

popq %rbx



movq $.L79, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1600(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1600(%rbp, 1), %rbx


movq %rbx, -1480(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1472(%rbp, 1)

popq %rbx



movq $.L78, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1608(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1608(%rbp, 1), %rbx


movq %rbx, -1496(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1488(%rbp, 1)

popq %rbx



movq $.L77, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1616(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1616(%rbp, 1), %rbx


movq %rbx, -1512(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1504(%rbp, 1)

popq %rbx



movq $.L76, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1624(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1624(%rbp, 1), %rbx


movq %rbx, -1528(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1520(%rbp, 1)

popq %rbx



movq $.L75, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1632(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1632(%rbp, 1), %rbx


movq %rbx, -1544(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1536(%rbp, 1)

popq %rbx



movq $.L74, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1640(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1640(%rbp, 1), %rbx


movq %rbx, -1560(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1552(%rbp, 1)

popq %rbx
















movq $.L93, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1808(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1808(%rbp, 1), %rbx


movq %rbx, -1656(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1648(%rbp, 1)

popq %rbx



movq $.L92, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1816(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1816(%rbp, 1), %rbx


movq %rbx, -1672(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1664(%rbp, 1)

popq %rbx



movq $.L91, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1824(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1824(%rbp, 1), %rbx


movq %rbx, -1688(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1680(%rbp, 1)

popq %rbx



movq $.L90, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1832(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1832(%rbp, 1), %rbx


movq %rbx, -1704(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1696(%rbp, 1)

popq %rbx



movq $.L89, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1840(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1840(%rbp, 1), %rbx


movq %rbx, -1720(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1712(%rbp, 1)

popq %rbx



movq $.L88, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1848(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1848(%rbp, 1), %rbx


movq %rbx, -1736(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1728(%rbp, 1)

popq %rbx



movq $.L87, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1856(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1856(%rbp, 1), %rbx


movq %rbx, -1752(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1744(%rbp, 1)

popq %rbx



movq $.L86, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1864(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1864(%rbp, 1), %rbx


movq %rbx, -1768(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1760(%rbp, 1)

popq %rbx



movq $.L85, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1872(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1872(%rbp, 1), %rbx


movq %rbx, -1784(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1776(%rbp, 1)

popq %rbx



movq $.L84, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1880(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1880(%rbp, 1), %rbx


movq %rbx, -1800(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1792(%rbp, 1)

popq %rbx





pushq %rsi

pushq %rdi

pushq %rcx

leaq -1800(%rbp, 1), %rsi

leaq -2040(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -1560(%rbp, 1), %rsi

leaq -2200(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -1320(%rbp, 1), %rsi

leaq -2360(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -1080(%rbp, 1), %rsi

leaq -2520(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -840(%rbp, 1), %rsi

leaq -2680(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -600(%rbp, 1), %rsi

leaq -2840(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -360(%rbp, 1), %rsi

leaq -3000(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -160(%rbp, 1), %rsi

leaq -3160(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




pushq %rsi

pushq %rdi

pushq %rcx

leaq -3160(%rbp, 1), %rsi

leaq -4440(%rbp, 1), %rdi

movq $1280, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi














movq $.L103, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4608(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4608(%rbp, 1), %rbx


movq %rbx, -4456(%rbp, 1)
popq %rbx


pushq %rbx
movq $39, %rbx


movq %rbx, -4448(%rbp, 1)

popq %rbx



movq $.L102, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4616(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4616(%rbp, 1), %rbx


movq %rbx, -4472(%rbp, 1)
popq %rbx


pushq %rbx
movq $38, %rbx


movq %rbx, -4464(%rbp, 1)

popq %rbx



movq $.L101, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4624(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4624(%rbp, 1), %rbx


movq %rbx, -4488(%rbp, 1)
popq %rbx


pushq %rbx
movq $36, %rbx


movq %rbx, -4480(%rbp, 1)

popq %rbx



movq $.L100, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4632(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4632(%rbp, 1), %rbx


movq %rbx, -4504(%rbp, 1)
popq %rbx


pushq %rbx
movq $34, %rbx


movq %rbx, -4496(%rbp, 1)

popq %rbx



movq $.L99, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4640(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4640(%rbp, 1), %rbx


movq %rbx, -4520(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4512(%rbp, 1)

popq %rbx



movq $.L98, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4648(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4648(%rbp, 1), %rbx


movq %rbx, -4536(%rbp, 1)
popq %rbx


pushq %rbx
movq $36, %rbx


movq %rbx, -4528(%rbp, 1)

popq %rbx



movq $.L97, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4656(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4656(%rbp, 1), %rbx


movq %rbx, -4552(%rbp, 1)
popq %rbx


pushq %rbx
movq $37, %rbx


movq %rbx, -4544(%rbp, 1)

popq %rbx



movq $.L96, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4664(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4664(%rbp, 1), %rbx


movq %rbx, -4568(%rbp, 1)
popq %rbx


pushq %rbx
movq $37, %rbx


movq %rbx, -4560(%rbp, 1)

popq %rbx



movq $.L95, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4672(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4672(%rbp, 1), %rbx


movq %rbx, -4584(%rbp, 1)
popq %rbx


pushq %rbx
movq $36, %rbx


movq %rbx, -4576(%rbp, 1)

popq %rbx



movq $.L94, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4680(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4680(%rbp, 1), %rbx


movq %rbx, -4600(%rbp, 1)
popq %rbx


pushq %rbx
movq $36, %rbx


movq %rbx, -4592(%rbp, 1)

popq %rbx





pushq %rsi

pushq %rdi

pushq %rcx

leaq -4600(%rbp, 1), %rsi

leaq -4840(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




pushq %rbx
movq $0, %rbx


movq %rbx, -5148(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5148(%rbp, 1), %rbx


movq %rbx, -5156(%rbp, 1)
popq %rbx




movq $.L104, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5180(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5180(%rbp, 1), %rbx


movq %rbx, -5172(%rbp, 1)
popq %rbx


pushq %rbx
movq $4, %rbx


movq %rbx, -5164(%rbp, 1)

popq %rbx






pushq %rbx
movq $0, %rbx


movq %rbx, -5188(%rbp, 1)

popq %rbx


pushq %r10

leaq -5140(%rbp, 1), %r10

movq %r10, -5196(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5188(%rbp, 1), %rbx


movq %rbx, -5204(%rbp, 1)
popq %rbx


movq -5204(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -5204(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx
movq $30, %rbx


movq %rbx, -5212(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5164(%rbp, 1), %rbx


movq %rbx, -5220(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5221(%rbp, 1), %bl


xorb %bl, -5221(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5212(%rbp, 1), %rbx


cmpq %rbx, -5220(%rbp, 1)
popq %rbx

seta -5221(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5221(%rbp, 1), %bl


andb %bl, -5221(%rbp, 1)
popq %rbx

jz .L106



movq $.L105, %rdi



call printf

movl %eax, -5225(%rbp, 1)




jmp ._main





.L106:



pushq %rbx
movq $0, %rbx


movq %rbx, -5233(%rbp, 1)

popq %rbx


pushq %r10

leaq -5140(%rbp, 1), %r10

movq %r10, -5241(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5233(%rbp, 1), %rbx


movq %rbx, -5249(%rbp, 1)
popq %rbx


movq -5249(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -5249(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx
movq $30, %rbx


movq %rbx, -5257(%rbp, 1)

popq %rbx



pushq %rbx
movq $2, %rbx


movq %rbx, -5265(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5265(%rbp, 1), %rbx


movq %rbx, -5273(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5273(%rbp, 1)


xorq %rdx, %rdx

xorq %rax, %rax

movq -5257(%rbp, 1), %rax


idivq -5273(%rbp, 1)

movq %rax, -5257(%rbp, 1)






pushq %rbx
movq $2, %rbx


movq %rbx, -5281(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5281(%rbp, 1), %rbx


movq %rbx, -5289(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5289(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5164(%rbp, 1), %rbx


movq %rbx, -5297(%rbp, 1)
popq %rbx


xorq %rdx, %rdx

xorq %rax, %rax

movq -5297(%rbp, 1), %rax


idivq -5289(%rbp, 1)

movq %rax, -5297(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5297(%rbp, 1), %rbx


subq %rbx, -5257(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5257(%rbp, 1), %rbx


movq %rbx, -5305(%rbp, 1)
popq %rbx




pushq %rbx
movq $8, %rbx


movq %rbx, -5313(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5313(%rbp, 1), %rbx


movq %rbx, -5321(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5321(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5321(%rbp, 1), %rbx


movq %rbx, -5329(%rbp, 1)
popq %rbx





movq -5164(%rbp, 1), %rdi



call allocate

movq %rdx, -5345(%rbp, 1)


movq %rax, -5353(%rbp, 1)





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5345(%rbp, 1), %rbx


movq %rbx, -5361(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5353(%rbp, 1), %rbx


movq %rbx, -5369(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -5377(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5377(%rbp, 1), %rbx


movq %rbx, -5385(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5305(%rbp, 1), %rbx


movq %rbx, -5393(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5329(%rbp, 1), %rbx


movq %rbx, -5401(%rbp, 1)
popq %rbx





pushq %rbx
movq $0, %rbx


movq %rbx, -5469(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5469(%rbp, 1), %ebx


movl %ebx, -5473(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5473(%rbp, 1)


pushq %rbx

leaq -5461(%rbp, 1), %rbx

movq %rbx, -5481(%rbp, 1)


popq %rbx



movl -5473(%rbp, 1), %edi


movq -5481(%rbp, 1), %rsi



call tcgetattr




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5405(%rbp, 1), %ebx


movl %ebx, -5485(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5409(%rbp, 1), %ebx


movl %ebx, -5489(%rbp, 1)
popq %rbx


pushq %rsi

pushq %rdi

pushq %rcx

leaq -5441(%rbp, 1), %rsi

leaq -5521(%rbp, 1), %rdi

movq $32, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5445(%rbp, 1), %bl


movb %bl, -5525(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5449(%rbp, 1), %ebx


movl %ebx, -5529(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5453(%rbp, 1), %ebx


movl %ebx, -5533(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5457(%rbp, 1), %ebx


movl %ebx, -5537(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5461(%rbp, 1), %ebx


movl %ebx, -5541(%rbp, 1)
popq %rbx





pushq %rbx
movq $2, %rbx


movq %rbx, -5549(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5549(%rbp, 1), %ebx


movl %ebx, -5553(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5553(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5553(%rbp, 1), %ebx


movl %ebx, -5557(%rbp, 1)
popq %rbx




pushq %rbx
movq $8, %rbx


movq %rbx, -5565(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5565(%rbp, 1), %ebx


movl %ebx, -5569(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5569(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5569(%rbp, 1), %ebx


movl %ebx, -5573(%rbp, 1)
popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5557(%rbp, 1), %ebx


movl %ebx, -5577(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5573(%rbp, 1), %ebx


orl %ebx, -5577(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5577(%rbp, 1), %ebx


movl %ebx, -5581(%rbp, 1)
popq %rbx





notl -5581(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5529(%rbp, 1), %ebx


movl %ebx, -5585(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5581(%rbp, 1), %ebx


andl %ebx, -5585(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5585(%rbp, 1), %ebx


movl %ebx, -5529(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -5593(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5593(%rbp, 1), %ebx


movl %ebx, -5597(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5597(%rbp, 1)



pushq %rbx
movq $0, %rbx


movq %rbx, -5605(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5605(%rbp, 1), %ebx


movl %ebx, -5609(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5609(%rbp, 1)


pushq %rbx

leaq -5541(%rbp, 1), %rbx

movq %rbx, -5617(%rbp, 1)


popq %rbx



movl -5597(%rbp, 1), %edi


movl -5609(%rbp, 1), %esi


movq -5617(%rbp, 1), %rdx



call tcsetattr



pushq %rbx
movq $0, %rbx


movq %rbx, -5625(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5625(%rbp, 1), %rbx


movq %rbx, -5633(%rbp, 1)
popq %rbx



.L124:

pushq %rbx
movq $0, %rbx


movq %rbx, -5641(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5633(%rbp, 1), %rbx


movq %rbx, -5649(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5650(%rbp, 1), %bl


xorb %bl, -5650(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5641(%rbp, 1), %rbx


cmpq %rbx, -5649(%rbp, 1)
popq %rbx

sete -5650(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5650(%rbp, 1), %bl


andb %bl, -5650(%rbp, 1)
popq %rbx

jz .L125

pushq %rbx
movq $0, %rbx


movq %rbx, -5658(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5658(%rbp, 1), %rbx


movq %rbx, -5666(%rbp, 1)
popq %rbx




.L109:

pushq %rbx
movq $10, %rbx


movq %rbx, -5674(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5666(%rbp, 1), %rbx


movq %rbx, -5682(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5683(%rbp, 1), %bl


xorb %bl, -5683(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5674(%rbp, 1), %rbx


cmpq %rbx, -5682(%rbp, 1)
popq %rbx

setl -5683(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5683(%rbp, 1), %bl


andb %bl, -5683(%rbp, 1)
popq %rbx

jz .L110



pushq %r10

leaq -4440(%rbp, 1), %r10

movq %r10, -5707(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5156(%rbp, 1), %rbx


movq %rbx, -5715(%rbp, 1)
popq %rbx


movq -5715(%rbp, 1), %rax


imulq $160, %rax

movq %rax, -5715(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -5715(%rbp, 1)
// using r10
pushq %rax
movq -5707(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5715(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -5723(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5666(%rbp, 1), %rbx


movq %rbx, -5731(%rbp, 1)
popq %rbx


movq -5731(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -5731(%rbp, 1)



// mul on the CPU up here ^



// using rax
// the index is very cute! : -5731(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -5723(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5731(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 8(%rax, %r10, 1), %rbx


movq %rbx, -5739(%rbp, 1)
popq %rbx


// using rax
// the index is very cute! : -5731(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -5723(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5731(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 0(%rax, %r10, 1), %rbx


movq %rbx, -5747(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -5755(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5755(%rbp, 1), %rbx


movq %rbx, -5763(%rbp, 1)
popq %rbx




.L107:

pushq %rbx
movq $30, %rbx


movq %rbx, -5771(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5763(%rbp, 1), %rbx


movq %rbx, -5779(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5780(%rbp, 1), %bl


xorb %bl, -5780(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5771(%rbp, 1), %rbx


cmpq %rbx, -5779(%rbp, 1)
popq %rbx

setl -5780(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5780(%rbp, 1), %bl


andb %bl, -5780(%rbp, 1)
popq %rbx

jz .L108



movq -5739(%rbp, 1), %r10


movq -5747(%rbp, 1), %r11







pushq %r10

leaq -5140(%rbp, 1), %r10

movq %r10, -5804(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5666(%rbp, 1), %rbx


movq %rbx, -5812(%rbp, 1)
popq %rbx


movq -5812(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -5812(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -5812(%rbp, 1)
// using r10
pushq %rax
movq -5804(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5812(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -5820(%rbp, 1)


popq %r10



// using r10
// using rax
// the index is very cute! : -5763(%rbp, 1)
// using r10
pushq %rbx
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -5763(%rbp, 1), %r10


 // byee 
// hello 
movq -5820(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5763(%rbp, 1), %r10


 // byee 
movb 0(%r11, %r10, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -5788(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5763(%rbp, 1), %rbx


movq %rbx, -5796(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5788(%rbp, 1), %rbx


addq %rbx, -5796(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5796(%rbp, 1), %rbx


movq %rbx, -5763(%rbp, 1)
popq %rbx




jmp .L107

.L108:




pushq %rbx
movq $1, %rbx


movq %rbx, -5691(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5666(%rbp, 1), %rbx


movq %rbx, -5699(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5691(%rbp, 1), %rbx


addq %rbx, -5699(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5699(%rbp, 1), %rbx


movq %rbx, -5666(%rbp, 1)
popq %rbx




jmp .L109

.L110:


pushq %rbx
movq $0, %rbx


movq %rbx, -5828(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5828(%rbp, 1), %rbx


movq %rbx, -5836(%rbp, 1)
popq %rbx




.L113:



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5164(%rbp, 1), %rbx


movq %rbx, -5844(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5844(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5836(%rbp, 1), %rbx


movq %rbx, -5852(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5853(%rbp, 1), %bl


xorb %bl, -5853(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5844(%rbp, 1), %rbx


cmpq %rbx, -5852(%rbp, 1)
popq %rbx

setl -5853(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5853(%rbp, 1), %bl


andb %bl, -5853(%rbp, 1)
popq %rbx

jz .L114



movq -5164(%rbp, 1), %r10


movq -5172(%rbp, 1), %r11





// using r10
pushq %rbx
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -5836(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%r11, %r10, 1), %bl


movb %bl, -5870(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5305(%rbp, 1), %rbx


movq %rbx, -5878(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5878(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5836(%rbp, 1), %rbx


movq %rbx, -5886(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5878(%rbp, 1), %rbx


addq %rbx, -5886(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5886(%rbp, 1), %rbx


movq %rbx, -5894(%rbp, 1)
popq %rbx





movq -5361(%rbp, 1), %r10


movq -5369(%rbp, 1), %r11





// using r10
// using r10
pushq %rbx
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -5836(%rbp, 1), %r10


 // byee 
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -5836(%rbp, 1), %r10


 // byee 
movb 0(%r11, %r10, 1), %bl


andb %bl, 0(%r11, %r10, 1)
popq %rbx

jz .L111




pushq %r10

leaq -5140(%rbp, 1), %r10

movq %r10, -5902(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5329(%rbp, 1), %rbx


movq %rbx, -5910(%rbp, 1)
popq %rbx


movq -5910(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -5910(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -5910(%rbp, 1)
// using r10
pushq %rax
movq -5902(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5910(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -5918(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -5894(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -5918(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5894(%rbp, 1), %r10


 // byee 
movb -5870(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




jmp .L112


.L111:

pushq %rbx
movq $35, %rbx


movq %rbx, -5950(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5950(%rbp, 1), %bl


movb %bl, -5951(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5951(%rbp, 1)




pushq %r10

leaq -5140(%rbp, 1), %r10

movq %r10, -5926(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5329(%rbp, 1), %rbx


movq %rbx, -5934(%rbp, 1)
popq %rbx


movq -5934(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -5934(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -5934(%rbp, 1)
// using r10
pushq %rax
movq -5926(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5934(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -5942(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -5894(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -5942(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5894(%rbp, 1), %r10


 // byee 
movb -5951(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




.L112:




pushq %rbx
movq $1, %rbx


movq %rbx, -5861(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5836(%rbp, 1), %rbx


movq %rbx, -5869(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5861(%rbp, 1), %rbx


addq %rbx, -5869(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5869(%rbp, 1), %rbx


movq %rbx, -5836(%rbp, 1)
popq %rbx




jmp .L113

.L114:





movb $0, -5952(%rbp, 1)



subq $304, %rsp

movq %rsp, %rax


pushq %rsi

pushq %rdi

pushq %rcx

leaq -5140(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $300, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


movq -5393(%rbp, 1), %rdi


movq -5401(%rbp, 1), %rsi


movb -5952(%rbp, 1), %dl



call render

addq $304, %rsp



movb $0, -5953(%rbp, 1)




pushq %rbx
movq $0, %rbx


movq %rbx, -5961(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -5961(%rbp, 1), %ebx


movl %ebx, -5965(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5965(%rbp, 1)


pushq %rbx

leaq -5953(%rbp, 1), %rbx

movq %rbx, -5973(%rbp, 1)


popq %rbx




pushq %rbx
movq $1, %rbx


movq %rbx, -5981(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5981(%rbp, 1), %rbx


movq %rbx, -5989(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5989(%rbp, 1)


movl -5965(%rbp, 1), %edi


movq -5973(%rbp, 1), %rsi


movq -5989(%rbp, 1), %rdx



call read





pushq %rbx
movq $113, %rbx


movq %rbx, -5997(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5997(%rbp, 1), %bl


movb %bl, -5998(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -5998(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, -5999(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6000(%rbp, 1), %bl


xorb %bl, -6000(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5998(%rbp, 1), %bl


cmpb %bl, -5999(%rbp, 1)
popq %rbx

sete -6000(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6000(%rbp, 1), %bl


andb %bl, -6000(%rbp, 1)
popq %rbx

jz .L115

pushq %rbx
movq $2, %rbx


movq %rbx, -6008(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6008(%rbp, 1), %rbx


movq %rbx, -5633(%rbp, 1)
popq %rbx




.L115:




pushq %rbx
movq $67, %rbx


movq %rbx, -6016(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6016(%rbp, 1), %bl


movb %bl, -6017(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6017(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, -6018(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6019(%rbp, 1), %bl


xorb %bl, -6019(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6017(%rbp, 1), %bl


cmpb %bl, -6018(%rbp, 1)
popq %rbx

sete -6019(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -6027(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6027(%rbp, 1), %rbx


movq %rbx, -6035(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6035(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5164(%rbp, 1), %rbx


movq %rbx, -6043(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6035(%rbp, 1), %rbx


subq %rbx, -6043(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5305(%rbp, 1), %rbx


movq %rbx, -6051(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6043(%rbp, 1), %rbx


addq %rbx, -6051(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6052(%rbp, 1), %bl


xorb %bl, -6052(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5393(%rbp, 1), %rbx


cmpq %rbx, -6051(%rbp, 1)
popq %rbx

seta -6052(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6052(%rbp, 1), %bl


andb %bl, -6019(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6019(%rbp, 1), %bl


andb %bl, -6019(%rbp, 1)
popq %rbx

jz .L116



pushq %rbx
movq $1, %rbx


movq %rbx, -6060(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6060(%rbp, 1), %rbx


movq %rbx, -6068(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6068(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5393(%rbp, 1), %rbx


movq %rbx, -6076(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6068(%rbp, 1), %rbx


addq %rbx, -6076(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6076(%rbp, 1), %rbx


movq %rbx, -5393(%rbp, 1)
popq %rbx




.L116:




pushq %rbx
movq $68, %rbx


movq %rbx, -6084(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6084(%rbp, 1), %bl


movb %bl, -6085(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6085(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, -6086(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6087(%rbp, 1), %bl


xorb %bl, -6087(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6085(%rbp, 1), %bl


cmpb %bl, -6086(%rbp, 1)
popq %rbx

sete -6087(%rbp, 1)





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5305(%rbp, 1), %rbx


movq %rbx, -6095(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6096(%rbp, 1), %bl


xorb %bl, -6096(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5393(%rbp, 1), %rbx


cmpq %rbx, -6095(%rbp, 1)
popq %rbx

setb -6096(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6096(%rbp, 1), %bl


andb %bl, -6087(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6087(%rbp, 1), %bl


andb %bl, -6087(%rbp, 1)
popq %rbx

jz .L117



pushq %rbx
movq $1, %rbx


movq %rbx, -6104(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6104(%rbp, 1), %rbx


movq %rbx, -6112(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6112(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5393(%rbp, 1), %rbx


movq %rbx, -6120(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6112(%rbp, 1), %rbx


subq %rbx, -6120(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6120(%rbp, 1), %rbx


movq %rbx, -5393(%rbp, 1)
popq %rbx




.L117:




pushq %rbx
movq $122, %rbx


movq %rbx, -6128(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6128(%rbp, 1), %bl


movb %bl, -6129(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6129(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, -6130(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6131(%rbp, 1), %bl


xorb %bl, -6131(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6129(%rbp, 1), %bl


cmpb %bl, -6130(%rbp, 1)
popq %rbx

setbe -6131(%rbp, 1)





pushq %rbx
movq $97, %rbx


movq %rbx, -6139(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6139(%rbp, 1), %bl


movb %bl, -6140(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6140(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, -6141(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6142(%rbp, 1), %bl


xorb %bl, -6142(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6140(%rbp, 1), %bl


cmpb %bl, -6141(%rbp, 1)
popq %rbx

setae -6142(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6142(%rbp, 1), %bl


andb %bl, -6131(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6131(%rbp, 1), %bl


andb %bl, -6131(%rbp, 1)
popq %rbx

jz .L121



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5393(%rbp, 1), %rbx


movq %rbx, -6150(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5305(%rbp, 1), %rbx


subq %rbx, -6150(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6150(%rbp, 1), %rbx


movq %rbx, -6158(%rbp, 1)
popq %rbx






movq -5164(%rbp, 1), %r10


movq -5172(%rbp, 1), %r11





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, -6159(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6160(%rbp, 1), %bl


xorb %bl, -6160(%rbp, 1)
popq %rbx

// using r10
pushq %rbx
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -6158(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%r11, %r10, 1), %bl


cmpb %bl, -6159(%rbp, 1)
popq %rbx

sete -6160(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6160(%rbp, 1), %bl


andb %bl, -6160(%rbp, 1)
popq %rbx

jz .L119

movb $1, -6161(%rbp, 1)





movq -5361(%rbp, 1), %r10


movq -5369(%rbp, 1), %r11





// using r10
pushq %rbx
// hello 

 // byee 
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -6158(%rbp, 1), %r10


 // byee 
movb -6161(%rbp, 1), %bl


movb %bl, 0(%r11, %r10, 1)
popq %rbx




pushq %rbx
movq $1, %rbx


movq %rbx, -6169(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5385(%rbp, 1), %rbx


movq %rbx, -6177(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6169(%rbp, 1), %rbx


addq %rbx, -6177(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6177(%rbp, 1), %rbx


movq %rbx, -5385(%rbp, 1)
popq %rbx






pushq %rbx
movq $1, %rbx


movq %rbx, -6185(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6185(%rbp, 1), %rbx


movq %rbx, -6193(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6193(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5164(%rbp, 1), %rbx


movq %rbx, -6201(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6193(%rbp, 1), %rbx


subq %rbx, -6201(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6158(%rbp, 1), %rbx


movq %rbx, -6209(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6210(%rbp, 1), %bl


xorb %bl, -6210(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6201(%rbp, 1), %rbx


cmpq %rbx, -6209(%rbp, 1)
popq %rbx

setb -6210(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6210(%rbp, 1), %bl


andb %bl, -6210(%rbp, 1)
popq %rbx

jz .L118



pushq %rbx
movq $1, %rbx


movq %rbx, -6218(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6218(%rbp, 1), %rbx


movq %rbx, -6226(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6226(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5393(%rbp, 1), %rbx


movq %rbx, -6234(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6226(%rbp, 1), %rbx


addq %rbx, -6234(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6234(%rbp, 1), %rbx


movq %rbx, -5393(%rbp, 1)
popq %rbx




.L118:



jmp .L120


.L119:



pushq %r10

leaq -5337(%rbp, 1), %r10

movq %r10, -6242(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -5156(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -6242(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -5156(%rbp, 1), %r10


 // byee 
movb -5953(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




pushq %rbx
movq $1, %rbx


movq %rbx, -6250(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5156(%rbp, 1), %rbx


movq %rbx, -6258(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6250(%rbp, 1), %rbx


addq %rbx, -6258(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6258(%rbp, 1), %rbx


movq %rbx, -5156(%rbp, 1)
popq %rbx




.L120:



.L121:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5385(%rbp, 1), %rbx


movq %rbx, -6266(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6266(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6267(%rbp, 1), %bl


xorb %bl, -6267(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5164(%rbp, 1), %rbx


cmpq %rbx, -6266(%rbp, 1)
popq %rbx

setae -6267(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6267(%rbp, 1), %bl


andb %bl, -6267(%rbp, 1)
popq %rbx

jz .L122

pushq %rbx
movq $1, %rbx


movq %rbx, -6275(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6275(%rbp, 1), %rbx


movq %rbx, -5633(%rbp, 1)
popq %rbx




.L122:



pushq %rbx
movq $8, %rbx


movq %rbx, -6283(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5156(%rbp, 1), %rbx


movq %rbx, -6291(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6292(%rbp, 1), %bl


xorb %bl, -6292(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6283(%rbp, 1), %rbx


cmpq %rbx, -6291(%rbp, 1)
popq %rbx

setge -6292(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6292(%rbp, 1), %bl


andb %bl, -6292(%rbp, 1)
popq %rbx

jz .L123

pushq %rbx
movq $-1, %rbx


movq %rbx, -6300(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6300(%rbp, 1), %rbx


movq %rbx, -5633(%rbp, 1)
popq %rbx




.L123:



jmp .L124

.L125:



pushq %rbx
movq $1, %rbx


movq %rbx, -6308(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5633(%rbp, 1), %rbx


movq %rbx, -6316(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6317(%rbp, 1), %bl


xorb %bl, -6317(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6308(%rbp, 1), %rbx


cmpq %rbx, -6316(%rbp, 1)
popq %rbx

sete -6317(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6317(%rbp, 1), %bl


andb %bl, -6317(%rbp, 1)
popq %rbx

jz .L130

pushq %rbx
movq $0, %rbx


movq %rbx, -6325(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6325(%rbp, 1), %rbx


movq %rbx, -6333(%rbp, 1)
popq %rbx




.L128:

pushq %rbx
movq $10, %rbx


movq %rbx, -6341(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6333(%rbp, 1), %rbx


movq %rbx, -6349(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6350(%rbp, 1), %bl


xorb %bl, -6350(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6341(%rbp, 1), %rbx


cmpq %rbx, -6349(%rbp, 1)
popq %rbx

setl -6350(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6350(%rbp, 1), %bl


andb %bl, -6350(%rbp, 1)
popq %rbx

jz .L129



pushq %r10

leaq -4840(%rbp, 1), %r10

movq %r10, -6374(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6333(%rbp, 1), %rbx


movq %rbx, -6382(%rbp, 1)
popq %rbx


movq -6382(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -6382(%rbp, 1)



// mul on the CPU up here ^



// using rax
// the index is very cute! : -6382(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -6374(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -6382(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 8(%rax, %r10, 1), %rbx


movq %rbx, -6390(%rbp, 1)
popq %rbx


// using rax
// the index is very cute! : -6382(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -6374(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -6382(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 0(%rax, %r10, 1), %rbx


movq %rbx, -6398(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -6406(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6406(%rbp, 1), %rbx


movq %rbx, -6414(%rbp, 1)
popq %rbx




.L126:

pushq %rbx
movq $30, %rbx


movq %rbx, -6422(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6414(%rbp, 1), %rbx


movq %rbx, -6430(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6431(%rbp, 1), %bl


xorb %bl, -6431(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6422(%rbp, 1), %rbx


cmpq %rbx, -6430(%rbp, 1)
popq %rbx

setl -6431(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6431(%rbp, 1), %bl


andb %bl, -6431(%rbp, 1)
popq %rbx

jz .L127



movq -6390(%rbp, 1), %r10


movq -6398(%rbp, 1), %r11







pushq %r10

leaq -5140(%rbp, 1), %r10

movq %r10, -6455(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6333(%rbp, 1), %rbx


movq %rbx, -6463(%rbp, 1)
popq %rbx


movq -6463(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -6463(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -6463(%rbp, 1)
// using r10
pushq %rax
movq -6455(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -6463(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -6471(%rbp, 1)


popq %r10



// using r10
// using rax
// the index is very cute! : -6414(%rbp, 1)
// using r10
pushq %rbx
// hello 
// i am trying to move the index to r10, am i going to succeed? ...
movq -6414(%rbp, 1), %r10


 // byee 
// hello 
movq -6471(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -6414(%rbp, 1), %r10


 // byee 
movb 0(%r11, %r10, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -6439(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6414(%rbp, 1), %rbx


movq %rbx, -6447(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6439(%rbp, 1), %rbx


addq %rbx, -6447(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6447(%rbp, 1), %rbx


movq %rbx, -6414(%rbp, 1)
popq %rbx




jmp .L126

.L127:




pushq %rbx
movq $1, %rbx


movq %rbx, -6358(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6333(%rbp, 1), %rbx


movq %rbx, -6366(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6358(%rbp, 1), %rbx


addq %rbx, -6366(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6366(%rbp, 1), %rbx


movq %rbx, -6333(%rbp, 1)
popq %rbx




jmp .L128

.L129:



.L130:




pushq %rbx
movq $-1, %rbx


movq %rbx, -6479(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6479(%rbp, 1), %rbx


movq %rbx, -6487(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6487(%rbp, 1)



pushq %rbx
movq $-1, %rbx


movq %rbx, -6495(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6495(%rbp, 1), %rbx


movq %rbx, -6503(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6503(%rbp, 1)


movb $1, -6504(%rbp, 1)



subq $304, %rsp

movq %rsp, %rax


pushq %rsi

pushq %rdi

pushq %rcx

leaq -5140(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $300, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


movq -6487(%rbp, 1), %rdi


movq -6503(%rbp, 1), %rsi


movb -6504(%rbp, 1), %dl



call render

addq $304, %rsp




pushq %rbx
movq $0, %rbx


movq %rbx, -6512(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6512(%rbp, 1), %ebx


movl %ebx, -6516(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6516(%rbp, 1)



pushq %rbx
movq $0, %rbx


movq %rbx, -6524(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6524(%rbp, 1), %ebx


movl %ebx, -6528(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -6528(%rbp, 1)


pushq %rbx

leaq -5461(%rbp, 1), %rbx

movq %rbx, -6536(%rbp, 1)


popq %rbx



movl -6516(%rbp, 1), %edi


movl -6528(%rbp, 1), %esi


movq -6536(%rbp, 1), %rdx



call tcsetattr




._main:
movq %rbp, %rsp

popq %rbp

ret




.data








































































































































.L1: .string "\033[2J"





























































































































.L2: .string "color: %hhd"










.L3: .string "\033[1m"







.L4: .string "\033[38:5:%hhdm"
































.L6: .string "\033[7m"
















































.L9: .string "\033[0m"



















































.L14: .string "                              "

.L15: .string "            ---------|        "

.L16: .string "            O        |        "

.L17: .string "           /|\\       |        "

.L18: .string "            X        |        "

.L19: .string "           / \\       |        "

.L20: .string "                  ___|___     "

.L21: .string "                              "

.L22: .string "                              "

.L23: .string "                              "















































































.L24: .string "                              "

.L25: .string "            ---------|        "

.L26: .string "            O        |        "

.L27: .string "           /|\\       |        "

.L28: .string "            X        |        "

.L29: .string "             \\       |        "

.L30: .string "                  ___|___     "

.L31: .string "                              "

.L32: .string "                              "

.L33: .string "                              "




















































































.L34: .string "                              "

.L35: .string "            ---------|        "

.L36: .string "            O        |        "

.L37: .string "           /|\\       |        "

.L38: .string "            X        |        "

.L39: .string "                     |        "

.L40: .string "                  ___|___     "

.L41: .string "                              "

.L42: .string "                              "

.L43: .string "                              "




















































































.L44: .string "                              "

.L45: .string "            ---------|        "

.L46: .string "            O        |        "

.L47: .string "           /|\\       |        "

.L48: .string "                     |        "

.L49: .string "                     |        "

.L50: .string "                  ___|___     "

.L51: .string "                              "

.L52: .string "                              "

.L53: .string "                              "




















































































.L54: .string "                              "

.L55: .string "            ---------|        "

.L56: .string "            O        |        "

.L57: .string "            |\\       |        "

.L58: .string "                     |        "

.L59: .string "                     |        "

.L60: .string "                  ___|___     "

.L61: .string "                              "

.L62: .string "                              "

.L63: .string "                              "




















































































.L64: .string "                              "

.L65: .string "            ---------|        "

.L66: .string "            O        |        "

.L67: .string "            |        |        "

.L68: .string "                     |        "

.L69: .string "                     |        "

.L70: .string "                  ___|___     "

.L71: .string "                              "

.L72: .string "                              "

.L73: .string "                              "




















































































.L74: .string "                              "

.L75: .string "            ---------|        "

.L76: .string "            O        |        "

.L77: .string "                     |        "

.L78: .string "                     |        "

.L79: .string "                     |        "

.L80: .string "                  ___|___     "

.L81: .string "                              "

.L82: .string "                              "

.L83: .string "                              "




















































































.L84: .string "                              "

.L85: .string "            ---------|        "

.L86: .string "                     |        "

.L87: .string "                     |        "

.L88: .string "                     |        "

.L89: .string "                     |        "

.L90: .string "                  ___|___     "

.L91: .string "                              "

.L92: .string "                              "

.L93: .string "                              "









































































































.L94: .string "\\\\\\\\\\  ===/// ==\\||  ==|   || "

.L95: .string "\\\\\\\\\\\\ ==/||  ==|||  ==|   || "

.L96: .string "\\\\\\\\\\\\\\=/|||  ==|||  ==|   || "

.L97: .string "\\\\\\\\\\\\\\| |||  ==|||  ==|   || "

.L98: .string "-------| \\\\\\ ==/\\\\\\ ===|   || "

.L99: .string "                           || "

.L100: .string "\\\\    ^   ==/// == \\|\\ ==| || "

.L101: .string "\\\\\\ ==/\\ ==/|||  ==||\\\\ =|    "

.L102: .string "\\\\\\\\=/  \\=/ |||  ==|| \\\\=| \\/ "

.L103: .string "\\\\\\\\/    v   \\\\ == /|  \\\\| /\\ "




























































































.L104: .string "ciao"




























.L105: .string "error: word is too big for the screen width!\n"

































































































































































































































































































































































































































































































































































































































































































































































































































































