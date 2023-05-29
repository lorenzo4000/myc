.text





















.string "\0init_genrand"
.global init_genrand
init_genrand:
pushq %rbp

movq %rsp, %rbp

subq $5328, %rsp



movl $0, -2729(%rbp, 1)



pushq %rbx


movq $0, %rbx


movq %rbx, -2737(%rbp, 1)

popq %rbx



movq %rdi, -2737(%rbp, 1)


movl %esi, -2729(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -5237(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





movl $4294967295, %r12d



movl -2729(%rbp, 1), %r13d



andl %r12d, %r13d






movq $0, %rbx



cmpq $624, %rbx

jb .L1

movq %rbx, %rsi


movq $624, %rdx


call err_oob

.L1:
pushq %r10


leaq -5237(%rbp, 1), %r10

movq %r10, -5245(%rbp, 1)


popq %r10




pushq %r12


xorq %r12, %r12

movq -5245(%rbp, 1), %r12


movl %r13d, 0(%r12, %rbx, 4)
popq %r12





movl $1, %r12d






movl %r12d, -2741(%rbp, 1)





.L5:



movl $624, %r14d



movl -2741(%rbp, 1), %r15d



pushq %rbx

xorq %rbx, %rbx
movb -5246(%rbp, 1), %bl


xorb %bl, -5246(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setb -5246(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5246(%rbp, 1), %bl


andb %bl, -5246(%rbp, 1)
popq %rbx



jz .L6

movl $1812433253, %r15d









movl $1, -5258(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -2741(%rbp, 1), %ebx


movl %ebx, -5262(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5258(%rbp, 1), %ebx


subl %ebx, -5262(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5262(%rbp, 1), %ebx


movl %ebx, -5270(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5270(%rbp, 1)

cmpq $624, -5270(%rbp, 1)

jb .L3

movq -5270(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L3:
pushq %r10


leaq -5237(%rbp, 1), %r10

movq %r10, -5278(%rbp, 1)


popq %r10










movl $1, -5282(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -2741(%rbp, 1), %ebx


movl %ebx, -5286(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5282(%rbp, 1), %ebx


subl %ebx, -5286(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5286(%rbp, 1), %ebx


movl %ebx, -5294(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5294(%rbp, 1)

cmpq $624, -5294(%rbp, 1)

jb .L4

movq -5294(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L4:
pushq %r10


leaq -5237(%rbp, 1), %r10

movq %r10, -5302(%rbp, 1)


popq %r10




movl $30, -5306(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5302(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5294(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5310(%rbp, 1)
popq %r13





movl -5306(%rbp, 1), %ecx


shrl %cl, -5310(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5278(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5270(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5314(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5310(%rbp, 1), %ebx


xorl %ebx, -5314(%rbp, 1)
popq %rbx





movl %r15d, %eax


imull -5314(%rbp, 1), %eax

movl %eax, %r15d







addl -2741(%rbp, 1), %r15d









movl -2741(%rbp, 1), %r14d



movabsq $4294967295, %rax


andq %rax, %r14

cmpq $624, %r14

jb .L2

movq %r14, %rsi


movq $624, %rdx


call err_oob

.L2:
pushq %r10


leaq -5237(%rbp, 1), %r10

movq %r10, -5254(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -5254(%rbp, 1), %rbx


movl %r15d, 0(%rbx, %r14, 4)
popq %rbx









incl -2741(%rbp, 1)




jmp .L5

.L6:



movq -2737(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -5237(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $2500, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



jmp ._init_genrand





._init_genrand:
movq %rbp, %rsp

popq %rbp

ret



.string "\0init_by_array"
.global init_by_array
init_by_array:
pushq %rbp

movq %rsp, %rbp

subq $5504, %rsp



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



movq %rdi, -24(%rbp, 1)


movq %rsi, -40(%rbp, 1)


movq %rdx, -32(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -40(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi






movl $0, -44(%rbp, 1)



movl $0, -48(%rbp, 1)



movl $0, -52(%rbp, 1)



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -5052(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movl $19650218, %ebx



leaq -2552(%rbp, 1), %r12

movq %r12, %rdi


movl %ebx, %esi


movq %rsp, %rax



movq $0, %rax


call init_genrand

movq %rax, %r13





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -2552(%rbp, 1), %rsi

leaq -5052(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





movl $1, %r14d




movl %r14d, -44(%rbp, 1)




movl $0, %r15d




movl %r15d, -48(%rbp, 1)




pushq %rbx


movq $624, %rbx


movq %rbx, -5060(%rbp, 1)

popq %rbx







pushq %rbx

xorq %rbx, %rbx
movb -5061(%rbp, 1), %bl


xorb %bl, -5061(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -8(%rbp, 1), %rbx


cmpq %rbx, -5060(%rbp, 1)
popq %rbx



seta -5061(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5061(%rbp, 1), %bl


andb %bl, -5061(%rbp, 1)
popq %rbx



jz .L7

movl $624, -5065(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -5065(%rbp, 1), %ebx


movl %ebx, -5069(%rbp, 1)
popq %rbx




jmp .L8


.L7:




pushq %rbx

xorq %rbx, %rbx
movq -8(%rbp, 1), %rbx


movq %rbx, -5069(%rbp, 1)
popq %rbx




.L8:


pushq %rbx

xorq %rbx, %rbx
movl -5069(%rbp, 1), %ebx


movl %ebx, -5073(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -52(%rbp, 1)
popq %rbx







.L18:

movl $0, -5077(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -52(%rbp, 1), %ebx


movl %ebx, -5081(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5082(%rbp, 1), %bl


xorb %bl, -5082(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5077(%rbp, 1), %ebx


cmpl %ebx, -5081(%rbp, 1)
popq %rbx



seta -5082(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5082(%rbp, 1), %bl


andb %bl, -5082(%rbp, 1)
popq %rbx



jz .L19





pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5106(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5106(%rbp, 1)

cmpq $624, -5106(%rbp, 1)

jb .L10

movq -5106(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L10:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5114(%rbp, 1)


popq %r10








movl $1, -5118(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5122(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5118(%rbp, 1), %ebx


subl %ebx, -5122(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5122(%rbp, 1), %ebx


movl %ebx, -5130(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5130(%rbp, 1)

cmpq $624, -5130(%rbp, 1)

jb .L11

movq -5130(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L11:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5138(%rbp, 1)


popq %r10








movl $1, -5142(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5146(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5142(%rbp, 1), %ebx


subl %ebx, -5146(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5146(%rbp, 1), %ebx


movl %ebx, -5154(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5154(%rbp, 1)

cmpq $624, -5154(%rbp, 1)

jb .L12

movq -5154(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L12:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5162(%rbp, 1)


popq %r10




movl $30, -5166(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5154(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5170(%rbp, 1)
popq %r13





movl -5166(%rbp, 1), %ecx


shrl %cl, -5170(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5138(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5130(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5174(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5170(%rbp, 1), %ebx


xorl %ebx, -5174(%rbp, 1)
popq %rbx





movl $1664525, -5178(%rbp, 1)



movl -5174(%rbp, 1), %eax


imull -5178(%rbp, 1), %eax

movl %eax, -5174(%rbp, 1)




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5114(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5106(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5182(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5174(%rbp, 1), %ebx


xorl %ebx, -5182(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -48(%rbp, 1), %ebx


movl %ebx, -5190(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5190(%rbp, 1)

pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -5198(%rbp, 1)


movq %r10, -5206(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -5206(%rbp, 1), %rbx


cmpq %rbx, -5190(%rbp, 1)
popq %rbx



jb .L13

movq -5190(%rbp, 1), %rsi


movq -5206(%rbp, 1), %rdx


call err_oob

.L13:



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5198(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5190(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5210(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -48(%rbp, 1), %ebx


addl %ebx, -5210(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5210(%rbp, 1), %ebx


addl %ebx, -5182(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5182(%rbp, 1), %ebx


movl %ebx, -5214(%rbp, 1)
popq %rbx









pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5090(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5090(%rbp, 1)

cmpq $624, -5090(%rbp, 1)

jb .L9

movq -5090(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L9:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5098(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5098(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5090(%rbp, 1), %r12


movl -5214(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -44(%rbp, 1)




incl -48(%rbp, 1)




movl $624, -5218(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5222(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5223(%rbp, 1), %bl


xorb %bl, -5223(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5218(%rbp, 1), %ebx


cmpl %ebx, -5222(%rbp, 1)
popq %rbx



setae -5223(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5223(%rbp, 1), %bl


andb %bl, -5223(%rbp, 1)
popq %rbx



jz .L16




pushq %rbx


movq $624, %rbx


movq %rbx, -5247(%rbp, 1)

popq %rbx




pushq %rbx


movq $1, %rbx


movq %rbx, -5255(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -5255(%rbp, 1), %rbx


subq %rbx, -5247(%rbp, 1)
popq %rbx





cmpq $624, -5247(%rbp, 1)

jb .L15

movq -5247(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L15:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5263(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5263(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5247(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5267(%rbp, 1)
popq %r13








pushq %rbx


movq $0, %rbx


movq %rbx, -5231(%rbp, 1)

popq %rbx




cmpq $624, -5231(%rbp, 1)

jb .L14

movq -5231(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L14:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5239(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5239(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5231(%rbp, 1), %r12


movl -5267(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13






movl $1, -5271(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5271(%rbp, 1), %ebx


movl %ebx, -5275(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5275(%rbp, 1), %ebx


movl %ebx, -44(%rbp, 1)
popq %rbx







.L16:







pushq %rbx

xorq %rbx, %rbx
movl -8(%rbp, 1), %ebx


movl %ebx, -5279(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -5279(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -48(%rbp, 1), %ebx


movl %ebx, -5283(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5284(%rbp, 1), %bl


xorb %bl, -5284(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5279(%rbp, 1), %ebx


cmpl %ebx, -5283(%rbp, 1)
popq %rbx



setae -5284(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5284(%rbp, 1), %bl


andb %bl, -5284(%rbp, 1)
popq %rbx



jz .L17

movl $0, -5288(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5288(%rbp, 1), %ebx


movl %ebx, -5292(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5292(%rbp, 1), %ebx


movl %ebx, -48(%rbp, 1)
popq %rbx







.L17:




decl -52(%rbp, 1)




jmp .L18

.L19:


movl $624, -5296(%rbp, 1)



movl $1, -5300(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5300(%rbp, 1), %ebx


subl %ebx, -5296(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5296(%rbp, 1), %ebx


movl %ebx, -5304(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5304(%rbp, 1), %ebx


movl %ebx, -52(%rbp, 1)
popq %rbx







.L27:

movl $0, -5308(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -52(%rbp, 1), %ebx


movl %ebx, -5312(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5313(%rbp, 1), %bl


xorb %bl, -5313(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5308(%rbp, 1), %ebx


cmpl %ebx, -5312(%rbp, 1)
popq %rbx



seta -5313(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5313(%rbp, 1), %bl


andb %bl, -5313(%rbp, 1)
popq %rbx



jz .L28





pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5337(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5337(%rbp, 1)

cmpq $624, -5337(%rbp, 1)

jb .L21

movq -5337(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L21:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5345(%rbp, 1)


popq %r10








movl $1, -5349(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5353(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5349(%rbp, 1), %ebx


subl %ebx, -5353(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5353(%rbp, 1), %ebx


movl %ebx, -5361(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5361(%rbp, 1)

cmpq $624, -5361(%rbp, 1)

jb .L22

movq -5361(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L22:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5369(%rbp, 1)


popq %r10








movl $1, -5373(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5377(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5373(%rbp, 1), %ebx


subl %ebx, -5377(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5377(%rbp, 1), %ebx


movl %ebx, -5385(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5385(%rbp, 1)

cmpq $624, -5385(%rbp, 1)

jb .L23

movq -5385(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L23:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5393(%rbp, 1)


popq %r10




movl $30, -5397(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5393(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5385(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5401(%rbp, 1)
popq %r13





movl -5397(%rbp, 1), %ecx


shrl %cl, -5401(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5369(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5361(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5405(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5401(%rbp, 1), %ebx


xorl %ebx, -5405(%rbp, 1)
popq %rbx





movl $1566083941, -5409(%rbp, 1)



movl -5405(%rbp, 1), %eax


imull -5409(%rbp, 1), %eax

movl %eax, -5405(%rbp, 1)




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5345(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5337(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5413(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5405(%rbp, 1), %ebx


xorl %ebx, -5413(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


subl %ebx, -5413(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5413(%rbp, 1), %ebx


movl %ebx, -5417(%rbp, 1)
popq %rbx









pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5321(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5321(%rbp, 1)

cmpq $624, -5321(%rbp, 1)

jb .L20

movq -5321(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L20:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5329(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5329(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5321(%rbp, 1), %r12


movl -5417(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







incl -44(%rbp, 1)




movl $624, -5421(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -44(%rbp, 1), %ebx


movl %ebx, -5425(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5426(%rbp, 1), %bl


xorb %bl, -5426(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5421(%rbp, 1), %ebx


cmpl %ebx, -5425(%rbp, 1)
popq %rbx



setae -5426(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5426(%rbp, 1), %bl


andb %bl, -5426(%rbp, 1)
popq %rbx



jz .L26




pushq %rbx


movq $624, %rbx


movq %rbx, -5450(%rbp, 1)

popq %rbx




pushq %rbx


movq $1, %rbx


movq %rbx, -5458(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -5458(%rbp, 1), %rbx


subq %rbx, -5450(%rbp, 1)
popq %rbx





cmpq $624, -5450(%rbp, 1)

jb .L25

movq -5450(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L25:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5466(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5466(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5450(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5470(%rbp, 1)
popq %r13








pushq %rbx


movq $0, %rbx


movq %rbx, -5434(%rbp, 1)

popq %rbx




cmpq $624, -5434(%rbp, 1)

jb .L24

movq -5434(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L24:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5442(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5442(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5434(%rbp, 1), %r12


movl -5470(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13






movl $1, -5474(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5474(%rbp, 1), %ebx


movl %ebx, -5478(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5478(%rbp, 1), %ebx


movl %ebx, -44(%rbp, 1)
popq %rbx







.L26:




decl -52(%rbp, 1)




jmp .L27

.L28:


movl $2147483648, -5498(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5498(%rbp, 1), %ebx


movl %ebx, -5502(%rbp, 1)
popq %rbx








pushq %rbx


movq $0, %rbx


movq %rbx, -5486(%rbp, 1)

popq %rbx




cmpq $624, -5486(%rbp, 1)

jb .L29

movq -5486(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L29:
pushq %r10


leaq -5052(%rbp, 1), %r10

movq %r10, -5494(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5494(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5486(%rbp, 1), %r12


movl -5502(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








movq -24(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -5052(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $2500, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._init_by_array:
movq %rbp, %rsp

popq %rbp

ret



.string "\0genrand_int32"
.global genrand_int32
genrand_int32:
pushq %rbp

movq %rsp, %rbp

subq $5600, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)




movl $0, -12(%rbp, 1)



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -28(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, %ebx



movl $2567483615, %r12d



// memory reference copy
movl %ebx, -20(%rbp, 1)



movl %r12d, -16(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -20(%rbp, 1), %rsi

leaq -28(%rbp, 1), %rdi

movq $8, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





pushq %rbx


movq $0, %rbx


movq %rbx, -36(%rbp, 1)

popq %rbx




movq -8(%rbp, 1), %r13



xorb %r14b, %r14b

cmpq -36(%rbp, 1), %r13

sete %r14b



andb %r14b, %r14b

jz .L30

pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -5044(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movl $5489, %r13d



leaq -2536(%rbp, 1), %r15

movq %r15, %rdi


movl %r13d, %esi


movq %rsp, %rax



movq $0, %rax


call init_genrand

movq %rax, -2544(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -2536(%rbp, 1), %rsi

leaq -5044(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





pushq %rbx


leaq -5044(%rbp, 1), %rbx

movq %rbx, -5052(%rbp, 1)


popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -5052(%rbp, 1), %rbx


movq %rbx, -5060(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -5060(%rbp, 1), %rbx


movq %rbx, -8(%rbp, 1)
popq %rbx







.L30:






movl $624, -5064(%rbp, 1)



pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


movl 2496(%rbx, 1), %r12d


popq %rbx

movl %r12d, -5068(%rbp, 1)
popq %r12





pushq %rbx

xorq %rbx, %rbx
movb -5069(%rbp, 1), %bl


xorb %bl, -5069(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5064(%rbp, 1), %ebx


cmpl %ebx, -5068(%rbp, 1)
popq %rbx



setae -5069(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5069(%rbp, 1), %bl


andb %bl, -5069(%rbp, 1)
popq %rbx



jz .L50

movl $0, -5073(%rbp, 1)




.L36:

movl $624, -5077(%rbp, 1)



movl $397, -5081(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5081(%rbp, 1), %ebx


subl %ebx, -5077(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5085(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5086(%rbp, 1), %bl


xorb %bl, -5086(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5077(%rbp, 1), %ebx


cmpl %ebx, -5085(%rbp, 1)
popq %rbx



setl -5086(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5086(%rbp, 1), %bl


andb %bl, -5086(%rbp, 1)
popq %rbx



jz .L37






pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5094(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5094(%rbp, 1)

cmpq $624, -5094(%rbp, 1)

jb .L31

movq -5094(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L31:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5102(%rbp, 1)


popq %r10




movl $2147483648, -5106(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5102(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5094(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5110(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5106(%rbp, 1), %ebx


andl %ebx, -5110(%rbp, 1)
popq %rbx










movl $1, -5114(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5118(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5114(%rbp, 1), %ebx


addl %ebx, -5118(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5118(%rbp, 1), %ebx


movl %ebx, -5126(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5126(%rbp, 1)

cmpq $624, -5126(%rbp, 1)

jb .L32

movq -5126(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L32:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5134(%rbp, 1)


popq %r10




movl $2147483647, -5138(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5134(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5126(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5142(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5138(%rbp, 1), %ebx


andl %ebx, -5142(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5142(%rbp, 1), %ebx


orl %ebx, -5110(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5110(%rbp, 1), %ebx


movl %ebx, -5146(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5146(%rbp, 1), %ebx


movl %ebx, -12(%rbp, 1)
popq %rbx











movl $397, -5166(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5170(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5166(%rbp, 1), %ebx


addl %ebx, -5170(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5170(%rbp, 1), %ebx


movl %ebx, -5178(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5178(%rbp, 1)

cmpq $624, -5178(%rbp, 1)

jb .L34

movq -5178(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L34:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5186(%rbp, 1)


popq %r10





movl $1, -5190(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5194(%rbp, 1)
popq %rbx





movl -5190(%rbp, 1), %ecx


shrl %cl, -5194(%rbp, 1)





movl $1, -5198(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5202(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5198(%rbp, 1), %ebx


andl %ebx, -5202(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5202(%rbp, 1), %ebx


movl %ebx, -5210(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5210(%rbp, 1)

cmpq $2, -5210(%rbp, 1)

jb .L35

movq -5210(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L35:
pushq %r10


leaq -28(%rbp, 1), %r10

movq %r10, -5218(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5218(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5210(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

xorl %r13d, -5194(%rbp, 1)
popq %r13





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5186(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5178(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5222(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5194(%rbp, 1), %ebx


xorl %ebx, -5222(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5222(%rbp, 1), %ebx


movl %ebx, -5226(%rbp, 1)
popq %rbx










pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5154(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5154(%rbp, 1)

cmpq $624, -5154(%rbp, 1)

jb .L33

movq -5154(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L33:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5162(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5154(%rbp, 1), %r12


movl -5226(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -5073(%rbp, 1)




jmp .L36

.L37:



.L43:

movl $624, -5230(%rbp, 1)



movl $1, -5234(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5234(%rbp, 1), %ebx


subl %ebx, -5230(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5238(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -5239(%rbp, 1), %bl


xorb %bl, -5239(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -5230(%rbp, 1), %ebx


cmpl %ebx, -5238(%rbp, 1)
popq %rbx



setl -5239(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5239(%rbp, 1), %bl


andb %bl, -5239(%rbp, 1)
popq %rbx



jz .L44






pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5247(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5247(%rbp, 1)

cmpq $624, -5247(%rbp, 1)

jb .L38

movq -5247(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L38:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5255(%rbp, 1)


popq %r10




movl $2147483648, -5259(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5255(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5247(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5263(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5259(%rbp, 1), %ebx


andl %ebx, -5263(%rbp, 1)
popq %rbx










movl $1, -5267(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5271(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5267(%rbp, 1), %ebx


addl %ebx, -5271(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5271(%rbp, 1), %ebx


movl %ebx, -5279(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5279(%rbp, 1)

cmpq $624, -5279(%rbp, 1)

jb .L39

movq -5279(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L39:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5287(%rbp, 1)


popq %r10




movl $2147483647, -5291(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5287(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5279(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5295(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5291(%rbp, 1), %ebx


andl %ebx, -5295(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5295(%rbp, 1), %ebx


orl %ebx, -5263(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5263(%rbp, 1), %ebx


movl %ebx, -5299(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5299(%rbp, 1), %ebx


movl %ebx, -12(%rbp, 1)
popq %rbx











movl $397, -5319(%rbp, 1)



movl $624, -5323(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5323(%rbp, 1), %ebx


subl %ebx, -5319(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5327(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5319(%rbp, 1), %ebx


addl %ebx, -5327(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5327(%rbp, 1), %ebx


movl %ebx, -5335(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5335(%rbp, 1)

cmpq $624, -5335(%rbp, 1)

jb .L41

movq -5335(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L41:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5343(%rbp, 1)


popq %r10





movl $1, -5347(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5351(%rbp, 1)
popq %rbx





movl -5347(%rbp, 1), %ecx


shrl %cl, -5351(%rbp, 1)





movl $1, -5355(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5359(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5355(%rbp, 1), %ebx


andl %ebx, -5359(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5359(%rbp, 1), %ebx


movl %ebx, -5367(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5367(%rbp, 1)

cmpq $2, -5367(%rbp, 1)

jb .L42

movq -5367(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L42:
pushq %r10


leaq -28(%rbp, 1), %r10

movq %r10, -5375(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5375(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5367(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

xorl %r13d, -5351(%rbp, 1)
popq %r13





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5343(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5335(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5379(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5351(%rbp, 1), %ebx


xorl %ebx, -5379(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5379(%rbp, 1), %ebx


movl %ebx, -5383(%rbp, 1)
popq %rbx










pushq %rbx

xorq %rbx, %rbx
movl -5073(%rbp, 1), %ebx


movl %ebx, -5307(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5307(%rbp, 1)

cmpq $624, -5307(%rbp, 1)

jb .L40

movq -5307(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L40:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5315(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5315(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5307(%rbp, 1), %r12


movl -5383(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -5073(%rbp, 1)




jmp .L43

.L44:






pushq %rbx


movq $624, %rbx


movq %rbx, -5391(%rbp, 1)

popq %rbx




pushq %rbx


movq $1, %rbx


movq %rbx, -5399(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -5399(%rbp, 1), %rbx


subq %rbx, -5391(%rbp, 1)
popq %rbx





cmpq $624, -5391(%rbp, 1)

jb .L45

movq -5391(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L45:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5407(%rbp, 1)


popq %r10




movl $2147483648, -5411(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5407(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5391(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5415(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5411(%rbp, 1), %ebx


andl %ebx, -5415(%rbp, 1)
popq %rbx









pushq %rbx


movq $0, %rbx


movq %rbx, -5423(%rbp, 1)

popq %rbx




cmpq $624, -5423(%rbp, 1)

jb .L46

movq -5423(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L46:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5431(%rbp, 1)


popq %r10




movl $2147483647, -5435(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5431(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5423(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5439(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5435(%rbp, 1), %ebx


andl %ebx, -5439(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5439(%rbp, 1), %ebx


orl %ebx, -5415(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5415(%rbp, 1), %ebx


movl %ebx, -5443(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -5443(%rbp, 1), %ebx


movl %ebx, -12(%rbp, 1)
popq %rbx










pushq %rbx


movq $397, %rbx


movq %rbx, -5475(%rbp, 1)

popq %rbx




pushq %rbx


movq $1, %rbx


movq %rbx, -5483(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -5483(%rbp, 1), %rbx


subq %rbx, -5475(%rbp, 1)
popq %rbx





cmpq $624, -5475(%rbp, 1)

jb .L48

movq -5475(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L48:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5491(%rbp, 1)


popq %r10





movl $1, -5495(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5499(%rbp, 1)
popq %rbx





movl -5495(%rbp, 1), %ecx


shrl %cl, -5499(%rbp, 1)





movl $1, -5503(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5507(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5503(%rbp, 1), %ebx


andl %ebx, -5507(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5507(%rbp, 1), %ebx


movl %ebx, -5515(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5515(%rbp, 1)

cmpq $2, -5515(%rbp, 1)

jb .L49

movq -5515(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L49:
pushq %r10


leaq -28(%rbp, 1), %r10

movq %r10, -5523(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5523(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5515(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

xorl %r13d, -5499(%rbp, 1)
popq %r13





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5491(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5475(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5527(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5499(%rbp, 1), %ebx


xorl %ebx, -5527(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5527(%rbp, 1), %ebx


movl %ebx, -5531(%rbp, 1)
popq %rbx









pushq %rbx


movq $624, %rbx


movq %rbx, -5451(%rbp, 1)

popq %rbx




pushq %rbx


movq $1, %rbx


movq %rbx, -5459(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -5459(%rbp, 1), %rbx


subq %rbx, -5451(%rbp, 1)
popq %rbx





cmpq $624, -5451(%rbp, 1)

jb .L47

movq -5451(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L47:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5467(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5467(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5451(%rbp, 1), %r12


movl -5531(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13






movl $0, -5535(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5535(%rbp, 1), %ebx


movl %ebx, -5539(%rbp, 1)
popq %rbx









pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


movl -5539(%rbp, 1), %r12d


movl %r12d, 2496(%rbx, 1)
popq %rbx

popq %r12







.L50:










pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


movl 2496(%rbx, 1), %r12d


popq %rbx

movl %r12d, -5547(%rbp, 1)
popq %r12





movabsq $4294967295, %rax


andq %rax, -5547(%rbp, 1)

cmpq $624, -5547(%rbp, 1)

jb .L51

movq -5547(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L51:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


leaq 0(%rbx, 1), %r10
popq %rbx


movq %r10, -5555(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5555(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5547(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5559(%rbp, 1)
popq %r13






pushq %rbx

xorq %rbx, %rbx
movl -5559(%rbp, 1), %ebx


movl %ebx, -12(%rbp, 1)
popq %rbx










pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


incl 2496(%rbx, 1)
popq %rbx






movl $11, -5563(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5567(%rbp, 1)
popq %rbx





movl -5563(%rbp, 1), %ecx


shrl %cl, -5567(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5567(%rbp, 1), %ebx


xorl %ebx, -12(%rbp, 1)
popq %rbx







movl $7, -5571(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5575(%rbp, 1)
popq %rbx





movl -5571(%rbp, 1), %ecx


shll %cl, -5575(%rbp, 1)



movl $2636928640, -5579(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5579(%rbp, 1), %ebx


andl %ebx, -5575(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5575(%rbp, 1), %ebx


xorl %ebx, -12(%rbp, 1)
popq %rbx







movl $15, -5583(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5587(%rbp, 1)
popq %rbx





movl -5583(%rbp, 1), %ecx


shll %cl, -5587(%rbp, 1)



movl $4022730752, -5591(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5591(%rbp, 1), %ebx


andl %ebx, -5587(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5587(%rbp, 1), %ebx


xorl %ebx, -12(%rbp, 1)
popq %rbx







movl $18, -5595(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -12(%rbp, 1), %ebx


movl %ebx, -5599(%rbp, 1)
popq %rbx





movl -5595(%rbp, 1), %ecx


shrl %cl, -5599(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -5599(%rbp, 1), %ebx


xorl %ebx, -12(%rbp, 1)
popq %rbx







movl -12(%rbp, 1), %eax



._genrand_int32:
movq %rbp, %rsp

popq %rbp

ret



.string "\0genrand_int31"
.global genrand_int31
genrand_int31:
pushq %rbp

movq %rsp, %rbp

subq $16, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)





movq -8(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_int32

movl %eax, %ebx





movl $1, %r12d



movl %r12d, %ecx


shrl %cl, %ebx




movl %ebx, %eax



._genrand_int31:
movq %rbp, %rsp

popq %rbp

ret



.string "\0genrand_real1"
.global genrand_real1
genrand_real1:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)






movq -8(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_int32

movl %eax, %ebx





movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq %xmm0, %r12



movabsq $4607182418800017408, %r13



movabsq $4751297606873776128, %r14



movq %r13, %r15


movq %r15, %xmm0


movq %r14, -16(%rbp, 1)


movsd -16(%rbp, 1), %xmm1


divsd %xmm1, %xmm0

movq %xmm0, %r13




movq %r12, %rax


movq %r12, %r14


movq %r14, %xmm0


movq %r13, -24(%rbp, 1)


movsd -24(%rbp, 1), %xmm1


mulsd %xmm1, %xmm0

movq %xmm0, %r12





movq %r12, %r13


movq %r13, %xmm0



._genrand_real1:
movq %rbp, %rsp

popq %rbp

ret



.string "\0genrand_real2"
.global genrand_real2
genrand_real2:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)






movq -8(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_int32

movl %eax, %ebx





movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq %xmm0, %r12



movabsq $4607182418800017408, %r13



movabsq $4751297606875873280, %r14



movq %r13, %r15


movq %r15, %xmm0


movq %r14, -16(%rbp, 1)


movsd -16(%rbp, 1), %xmm1


divsd %xmm1, %xmm0

movq %xmm0, %r13




movq %r12, %rax


movq %r12, %r14


movq %r14, %xmm0


movq %r13, -24(%rbp, 1)


movsd -24(%rbp, 1), %xmm1


mulsd %xmm1, %xmm0

movq %xmm0, %r12





movq %r12, %r13


movq %r13, %xmm0



._genrand_real2:
movq %rbp, %rsp

popq %rbp

ret



.string "\0genrand_real3"
.global genrand_real3
genrand_real3:
pushq %rbp

movq %rsp, %rbp

subq $48, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)






movq -8(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_int32

movl %eax, %ebx





movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq %xmm0, %r12



movabsq $4602678819172646912, %r13



movq %r12, %r14


movq %r14, %xmm0


movq %r13, %r15


movq %r15, %xmm1


addsd %xmm1, %xmm0

movq %xmm0, %r12




movabsq $4607182418800017408, %r13



pushq %rbx


movabsq $4751297606875873280, %rbx


movq %rbx, -16(%rbp, 1)

popq %rbx




movq %r13, -24(%rbp, 1)


movsd -24(%rbp, 1), %xmm0


divsd -16(%rbp, 1), %xmm0

movq %xmm0, %r13




movq %r12, %rax


movq %r12, -32(%rbp, 1)


movsd -32(%rbp, 1), %xmm0


movq %r13, -40(%rbp, 1)


movsd -40(%rbp, 1), %xmm1


mulsd %xmm1, %xmm0

movq %xmm0, %r12





movq %r12, %r13


movq %r13, %xmm0



._genrand_real3:
movq %rbp, %rsp

popq %rbp

ret



.string "\0genrand_res53"
.global genrand_res53
genrand_res53:
pushq %rbp

movq %rsp, %rbp

subq $64, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)





movq -8(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_int32

movl %eax, %ebx





movl $5, %r12d



movl %r12d, %ecx


shrl %cl, %ebx



movl %ebx, -12(%rbp, 1)




movq -8(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_int32

movl %eax, %r12d





movl $6, %r13d



movl %r13d, %ecx


shrl %cl, %r12d



movl %r12d, -16(%rbp, 1)





movl -12(%rbp, 1), %r13d


movabsq $4294967295, %rax


andq %rax, %r13


cvtsi2sd %r13, %xmm0

movq %xmm0, %r14



movabsq $4724276009111650304, %r13



movq %r14, %rax


movq %r14, %r15


movq %r15, %xmm0


movq %r13, -24(%rbp, 1)


movsd -24(%rbp, 1), %xmm1


mulsd %xmm1, %xmm0

movq %xmm0, %r14






movl -16(%rbp, 1), %r13d


movabsq $4294967295, %rax


andq %rax, %r13


cvtsi2sd %r13, %xmm0

movsd %xmm0, -32(%rbp, 1)



movq %r14, %r13


movq %r13, %xmm0


addsd -32(%rbp, 1), %xmm0

movq %xmm0, %r14




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -40(%rbp, 1)

popq %rbx




pushq %rbx


movabsq $4845873199050653696, %rbx


movq %rbx, -48(%rbp, 1)

popq %rbx




movsd -40(%rbp, 1), %xmm0


divsd -48(%rbp, 1), %xmm0

movsd %xmm0, -40(%rbp, 1)




movq %r14, %rax


movq %r14, -56(%rbp, 1)


movsd -56(%rbp, 1), %xmm0


mulsd -40(%rbp, 1), %xmm0

movq %xmm0, %r14





movq %r14, -64(%rbp, 1)


movsd -64(%rbp, 1), %xmm0



._genrand_res53:
movq %rbp, %rsp

popq %rbp

ret







.string "\0init_normal"
.global init_normal
init_normal:
pushq %rbp

movq %rsp, %rbp

subq $10064, %rsp



movl $0, -2537(%rbp, 1)



pushq %rbx


movq $0, %rbx


movq %rbx, -2545(%rbp, 1)

popq %rbx



movq %rdi, -2545(%rbp, 1)


movl %esi, -2537(%rbp, 1)






leaq -5045(%rbp, 1), %rbx

movq %rbx, %rdi


movl -2537(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call init_genrand

movq %rax, %r12





movq $0, %r13



movb $0, %r14b



movb %r14b, -5046(%rbp, 1)



movq %r13, -5054(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -5045(%rbp, 1), %rsi

leaq -7558(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi







movq -2545(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -10054(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $5009, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._init_normal:
movq %rbp, %rsp

popq %rbp

ret



.string "\0init_normal_by_array"
.global init_normal_by_array
init_normal_by_array:
pushq %rbp

movq %rsp, %rbp

subq $7552, %rsp



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



movq %rdi, -24(%rbp, 1)


movq %rsi, -40(%rbp, 1)


movq %rdx, -32(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -40(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi








leaq -2540(%rbp, 1), %rbx

movq %rbx, %rdi


movq -16(%rbp, 1), %rsi

movq -8(%rbp, 1), %rdx



movq %rsp, %rax



movq $0, %rax


call init_by_array

movq %rax, %r12





movq $0, %r13



movb $0, %r14b



movb %r14b, -2541(%rbp, 1)



movq %r13, -2549(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -2540(%rbp, 1), %rsi

leaq -5053(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi







movq -24(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -7549(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $5009, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._init_normal_by_array:
movq %rbp, %rsp

popq %rbp

ret



.string "\0normal"
.global normal
normal:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp



pushq %rbx


movq $0, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -16(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx




movq %rdi, -8(%rbp, 1)


movsd %xmm0, -16(%rbp, 1)


movsd %xmm1, -24(%rbp, 1)








pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -8(%rbp, 1), %r12


movb 5008(%rbx, 1), %r13b


popq %rbx

andb %r13b, 5008(%r12, 1)
popq %r12

popq %r13



jz .L52

movb $0, %bl







pushq %r12


xorq %r12, %r12

movq -8(%rbp, 1), %r12


movb %bl, 5008(%r12, 1)
popq %r12










pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


movq 5000(%rbx, 1), %r12
popq %rbx




movq %r12, %rax


movq %r12, %r13


movq %r13, %xmm0


mulsd -16(%rbp, 1), %xmm0

movq %xmm0, %r12





movq %r12, %r14


movq %r14, %xmm0


addsd -24(%rbp, 1), %xmm0

movq %xmm0, %r12




movq %r12, %r15


movq %r15, %xmm0



jmp ._normal





.L52:


pushq %rbx


movq $0, %rbx


movq %rbx, -32(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -40(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -48(%rbp, 1)

popq %rbx




.L53:

pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -56(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


movq %rbx, -64(%rbp, 1)
popq %rbx





movsd -64(%rbp, 1), %xmm0


cmpsd $14,  -56(%rbp, 1), %xmm0

movq %xmm0, %rbx


andb $1,  %bh




pushq %rbx


movq $0, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -81(%rbp, 1), %bl


xorb %bl, -81(%rbp, 1)
popq %rbx



movsd -80(%rbp, 1), %xmm0


cmpsd $0,  -72(%rbp, 1), %xmm0

movss %xmm0, -82(%rbp, 1)


andb $1,  -82(%rbp, 1)



orb -82(%rbp, 1), %bh



andb %bh, %bh

jz .L54

pushq %rbx


movabsq $4611686018427387904, %rbx


movq %rbx, -90(%rbp, 1)

popq %rbx








pushq %rbx


pushq %r12


xorq %r12, %r12

movq -8(%rbp, 1), %r12


leaq 2496(%r12, 1), %rbx
popq %r12


movq %rbx, -98(%rbp, 1)


popq %rbx




movq -98(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_real1

movsd %xmm0, -106(%rbp, 1)





movq -90(%rbp, 1), %rax


movsd -90(%rbp, 1), %xmm0


mulsd -106(%rbp, 1), %xmm0

movsd %xmm0, -90(%rbp, 1)




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -114(%rbp, 1)

popq %rbx




movsd -90(%rbp, 1), %xmm0


subsd -114(%rbp, 1), %xmm0

movsd %xmm0, -90(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -90(%rbp, 1), %rbx


movq %rbx, -122(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -122(%rbp, 1), %rbx


movq %rbx, -32(%rbp, 1)
popq %rbx






pushq %rbx


movabsq $4611686018427387904, %rbx


movq %rbx, -130(%rbp, 1)

popq %rbx








pushq %rbx


pushq %r12


xorq %r12, %r12

movq -8(%rbp, 1), %r12


leaq 2496(%r12, 1), %rbx
popq %r12


movq %rbx, -138(%rbp, 1)


popq %rbx




movq -138(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_real1

movsd %xmm0, -146(%rbp, 1)





movq -130(%rbp, 1), %rax


movsd -130(%rbp, 1), %xmm0


mulsd -146(%rbp, 1), %xmm0

movsd %xmm0, -130(%rbp, 1)




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -154(%rbp, 1)

popq %rbx




movsd -130(%rbp, 1), %xmm0


subsd -154(%rbp, 1), %xmm0

movsd %xmm0, -130(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -130(%rbp, 1), %rbx


movq %rbx, -162(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -162(%rbp, 1), %rbx


movq %rbx, -40(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movq -32(%rbp, 1), %rbx


movq %rbx, -170(%rbp, 1)
popq %rbx





movq -170(%rbp, 1), %rax


movsd -170(%rbp, 1), %xmm0


mulsd -32(%rbp, 1), %xmm0

movsd %xmm0, -170(%rbp, 1)






pushq %rbx

xorq %rbx, %rbx
movq -40(%rbp, 1), %rbx


movq %rbx, -178(%rbp, 1)
popq %rbx





movq -178(%rbp, 1), %rax


movsd -178(%rbp, 1), %xmm0


mulsd -40(%rbp, 1), %xmm0

movsd %xmm0, -178(%rbp, 1)




movsd -170(%rbp, 1), %xmm0


addsd -178(%rbp, 1), %xmm0

movsd %xmm0, -170(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -170(%rbp, 1), %rbx


movq %rbx, -186(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -186(%rbp, 1), %rbx


movq %rbx, -48(%rbp, 1)
popq %rbx







jmp .L53

.L54:


pushq %rbx


movabsq $-4611686018427387904, %rbx


movq %rbx, -194(%rbp, 1)

popq %rbx





movsd -48(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call log

movsd %xmm0, -202(%rbp, 1)





movq -194(%rbp, 1), %rax


movsd -194(%rbp, 1), %xmm0


mulsd -202(%rbp, 1), %xmm0

movsd %xmm0, -194(%rbp, 1)





movsd -194(%rbp, 1), %xmm0


divsd -48(%rbp, 1), %xmm0

movsd %xmm0, -194(%rbp, 1)




movsd -194(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call sqrt

movsd %xmm0, -210(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -210(%rbp, 1), %rbx


movq %rbx, -218(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movq -32(%rbp, 1), %rbx


movq %rbx, -226(%rbp, 1)
popq %rbx





movq -226(%rbp, 1), %rax


movsd -226(%rbp, 1), %xmm0


mulsd -218(%rbp, 1), %xmm0

movsd %xmm0, -226(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -226(%rbp, 1), %rbx


movq %rbx, -234(%rbp, 1)
popq %rbx









pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


movq -234(%rbp, 1), %r12


movq %r12, 5000(%rbx, 1)
popq %rbx

popq %r12






movb $1, -235(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -235(%rbp, 1), %bl


movb %bl, -236(%rbp, 1)
popq %rbx









pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -8(%rbp, 1), %rbx


movb -236(%rbp, 1), %r12b


movb %r12b, 5008(%rbx, 1)
popq %rbx

popq %r12









pushq %rbx

xorq %rbx, %rbx
movq -218(%rbp, 1), %rbx


movq %rbx, -244(%rbp, 1)
popq %rbx





movq -244(%rbp, 1), %rax


movsd -244(%rbp, 1), %xmm0


mulsd -16(%rbp, 1), %xmm0

movsd %xmm0, -244(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -40(%rbp, 1), %rbx


movq %rbx, -252(%rbp, 1)
popq %rbx





movq -252(%rbp, 1), %rax


movsd -252(%rbp, 1), %xmm0


mulsd -244(%rbp, 1), %xmm0

movsd %xmm0, -252(%rbp, 1)





movsd -252(%rbp, 1), %xmm0


addsd -24(%rbp, 1), %xmm0

movsd %xmm0, -252(%rbp, 1)




movsd -252(%rbp, 1), %xmm0



jmp ._normal





._normal:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $11136, %rsp





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -10050(%rbp, 1), %rdi

movq $5009, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $291, %r12d



movl $564, %r13d



movl $837, %r14d



movl $1110, %r15d



// memory reference copy
movl %r12d, -16(%rbp, 1)



movl %r13d, -12(%rbp, 1)



movl %r14d, -8(%rbp, 1)



movl %r15d, -4(%rbp, 1)





pushq %rbx


leaq -5025(%rbp, 1), %rbx

subq $8, %rsp

movq %rbx, %rdi


// array reference
pushq %rbx


leaq -16(%rbp, 1), %rbx

movq %rbx, -5033(%rbp, 1)


popq %rbx



movq -5033(%rbp, 1), %rsi


movq $4, %rdx




movq %rsp, %rax



movq $0, %rax


call init_normal_by_array

addq $8, %rsp

popq %rbx


movq %rax, -5041(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -5025(%rbp, 1), %rsi

leaq -10050(%rbp, 1), %rdi

movq $5009, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -10850(%rbp, 1), %rdi

movq $800, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -10854(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -10854(%rbp, 1), %ebx


movl %ebx, -10858(%rbp, 1)
popq %rbx






.L57:

movl $30000, -10862(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -10858(%rbp, 1), %ebx


movl %ebx, -10866(%rbp, 1)
popq %rbx





xorb %bl, %bl

pushq %rbx

xorq %rbx, %rbx
movl -10862(%rbp, 1), %ebx


cmpl %ebx, -10866(%rbp, 1)
popq %rbx



setl %bl



andb %bl, %bl

jz .L58

pushq %rbx


leaq -10050(%rbp, 1), %rbx

movq %rbx, -10874(%rbp, 1)


popq %rbx




pushq %rbx


movabsq $4602678819172646912, %rbx


movq %rbx, -10882(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -10890(%rbp, 1)

popq %rbx




movq -10874(%rbp, 1), %rdi


movsd -10882(%rbp, 1), %xmm0


movsd -10890(%rbp, 1), %xmm1


movq %rsp, %rax



movq $1, %rax


call normal

movsd %xmm0, -10898(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -10898(%rbp, 1), %rbx


movq %rbx, -10906(%rbp, 1)
popq %rbx







pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -10914(%rbp, 1)

popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -10906(%rbp, 1), %rbx


movq %rbx, -10922(%rbp, 1)
popq %rbx





movsd -10922(%rbp, 1), %xmm0


cmpsd $2,  -10914(%rbp, 1), %xmm0

movss %xmm0, -10923(%rbp, 1)


andb $1,  -10923(%rbp, 1)




pushq %rbx


movabsq $-4616189618054758400, %rbx


movq %rbx, -10931(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -10906(%rbp, 1), %rbx


movq %rbx, -10939(%rbp, 1)
popq %rbx





movsd -10939(%rbp, 1), %xmm0


cmpsd $13,  -10931(%rbp, 1), %xmm0

movss %xmm0, -10940(%rbp, 1)


andb $1,  -10940(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -10940(%rbp, 1), %bl


andb %bl, -10923(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -10923(%rbp, 1), %bl


andb %bl, -10923(%rbp, 1)
popq %rbx



jz .L56


pushq %rbx


movabsq $-4616189618054758400, %rbx


movq %rbx, -10948(%rbp, 1)

popq %rbx




movsd -10948(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call fabs

movsd %xmm0, -10956(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -10906(%rbp, 1), %rbx


movq %rbx, -10964(%rbp, 1)
popq %rbx





movsd -10964(%rbp, 1), %xmm0


addsd -10956(%rbp, 1), %xmm0

movsd %xmm0, -10964(%rbp, 1)




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -10972(%rbp, 1)

popq %rbx




pushq %rbx


movabsq $-4616189618054758400, %rbx


movq %rbx, -10980(%rbp, 1)

popq %rbx




movsd -10980(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call fabs

movsd %xmm0, -10988(%rbp, 1)





movsd -10972(%rbp, 1), %xmm0


addsd -10988(%rbp, 1), %xmm0

movsd %xmm0, -10972(%rbp, 1)




movsd -10964(%rbp, 1), %xmm0


divsd -10972(%rbp, 1), %xmm0

movsd %xmm0, -10964(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -10964(%rbp, 1), %rbx


movq %rbx, -10996(%rbp, 1)
popq %rbx







pushq %rbx


movq $200, %rbx


movq %rbx, -11004(%rbp, 1)

popq %rbx




cvtsi2sd -11004(%rbp, 1), %xmm0

movsd %xmm0, -11012(%rbp, 1)



pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -11020(%rbp, 1)

popq %rbx




movsd -11012(%rbp, 1), %xmm0


subsd -11020(%rbp, 1), %xmm0

movsd %xmm0, -11012(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -10996(%rbp, 1), %rbx


movq %rbx, -11028(%rbp, 1)
popq %rbx





movq -11028(%rbp, 1), %rax


movsd -11028(%rbp, 1), %xmm0


mulsd -11012(%rbp, 1), %xmm0

movsd %xmm0, -11028(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -11028(%rbp, 1), %rbx


movq %rbx, -11036(%rbp, 1)
popq %rbx








movq %rbx, -11044(%rbp, 1)


cvtsd2si -11036(%rbp, 1), %rbx

movq %rbx, -11052(%rbp, 1)


movq -11044(%rbp, 1), %rbx



cmpq $200, -11052(%rbp, 1)

jb .L55

movq -11052(%rbp, 1), %rsi


movq $200, %rdx


call err_oob

.L55:
pushq %r10


leaq -10850(%rbp, 1), %r10

movq %r10, -11060(%rbp, 1)


popq %r10




movl $1, -11064(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11060(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11052(%rbp, 1), %r12


movl -11064(%rbp, 1), %r13d


addl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13






.L56:




incl -10858(%rbp, 1)




jmp .L57

.L58:


movl $0, -11068(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11068(%rbp, 1), %ebx


movl %ebx, -11072(%rbp, 1)
popq %rbx






.L62:

movl $200, -11076(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11072(%rbp, 1), %ebx


movl %ebx, -11080(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11081(%rbp, 1), %bl


xorb %bl, -11081(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11076(%rbp, 1), %ebx


cmpl %ebx, -11080(%rbp, 1)
popq %rbx



setl -11081(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11081(%rbp, 1), %bl


andb %bl, -11081(%rbp, 1)
popq %rbx



jz .L63

movl $0, -11085(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11085(%rbp, 1), %ebx


movl %ebx, -11089(%rbp, 1)
popq %rbx






.L60:



pushq %rbx

xorq %rbx, %rbx
movl -11072(%rbp, 1), %ebx


movl %ebx, -11097(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11097(%rbp, 1)

cmpq $200, -11097(%rbp, 1)

jb .L59

movq -11097(%rbp, 1), %rsi


movq $200, %rdx


call err_oob

.L59:
pushq %r10


leaq -10850(%rbp, 1), %r10

movq %r10, -11105(%rbp, 1)


popq %r10




movl $1, -11109(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11105(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11097(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -11113(%rbp, 1)
popq %r13





xorq %rdx, %rdx

xorq %rax, %rax

movl -11113(%rbp, 1), %eax


idivl -11109(%rbp, 1)

movl %eax, -11113(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -11089(%rbp, 1), %ebx


movl %ebx, -11117(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11118(%rbp, 1), %bl


xorb %bl, -11118(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11113(%rbp, 1), %ebx


cmpl %ebx, -11117(%rbp, 1)
popq %rbx



setl -11118(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11118(%rbp, 1), %bl


andb %bl, -11118(%rbp, 1)
popq %rbx



jz .L61

movb $42, -11119(%rbp, 1)



movb -11119(%rbp, 1), %dil


movq %rsp, %rax



movq $0, %rax


call putchar

movl %eax, -11123(%rbp, 1)







incl -11089(%rbp, 1)




jmp .L60

.L61:


movb $10, -11124(%rbp, 1)



movb -11124(%rbp, 1), %dil


movq %rsp, %rax



movq $0, %rax


call putchar

movl %eax, -11128(%rbp, 1)







incl -11072(%rbp, 1)




jmp .L62

.L63:



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













































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"


