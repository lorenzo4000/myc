uint64
*?
uint64
*MT
uint32
*MT
uint32
*MT
*MT
*MT
*MT
*MT
*MT
*MT
uint32
*MT
*MT
*MT
f64
f64
*NormalDistribution
*NormalDistribution
f64
f64
f64
f64
uint8
uint8
*uint8
int32
uint32
*uint8
*uint8
int32
*uint32
uint64
*uint8
uint32
*uint8
uint32
int32
*uint32
uint64
*uint8
uint32
*uint8
uint32
int32
*uint32
uint64
*uint8
uint32
*uint8
uint32
int32
*uint32
uint64
*uint8
uint32
*uint8
uint32
*uint8
uint32
uint64
int32
*[28][28]uint8
uint64
*uint8
int32
*uint8
*uint8
*uint8
int32
uint32
*uint8
*uint8
int32
*uint32
uint64
*uint8
uint32
*uint8
uint32
int32
*uint32
uint64
*uint8
uint32
*uint8
uint32
uint64
int32
*uint8
uint64
*uint8
int32
*uint8
*uint8
uint64
*uint8
uint64
uint64
uint64
*uint8
uint64
uint64
uint64
*uint8
uint64
f32
f32
f32
f32
f32
int32
f32
*uint8
*uint8
int32
uint32
*uint8
*uint8
*uint8
*?
int32
*f32
uint64
*uint8
*uint8
*uint8
uint64
int32
*?
uint64
*uint8
*uint8
*uint8
uint64
int32
*uint8
*uint8
*uint8
int32
uint32
*uint8
*uint8
*uint8
*?
int32
*f32
uint64
*uint8
*uint8
*uint8
uint64
int32
*?
uint64
*uint8
*uint8
*uint8
uint64
int32
*uint8
*uint8
f64
f64
f64
f64
*MT
*[28][28]f64
f64
f64
f64
f64
f64
f64
*uint8
int32
int32
f64
f64
f64
*uint8
*[28][28]f32
*NormalDistribution
f64
f64
*uint8
uint32
*uint8
uint64
uint64
uint64
*uint8
int32
uint64
uint32
*NormalDistribution
uint32
*NormalDistribution
f64
f64
f32
*NormalDistribution
f64
f64
f32
*NormalDistribution
f64
f64
f32
*NormalDistribution
f64
f64
f32
*uint8
*uint8
f64
*uint8
*uint8
f64
*uint8
*uint8
f64
uint8
*uint8
f64
uint64
uint64
uint64
uint64
uint64
uint64
uint32
*NormalDistribution
uint32
uint64
*NormalDistribution
f32
int32
int32
f32
f32
f32
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





movq -249(%rbp, 1), %rax

movq -241(%rbp, 1), %rdx


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

subq $48, %rsp



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




movq %rdi, -40(%rbp, 1)


movq %rsi, -32(%rbp, 1)



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



xorq %rdx, %rdx

xorq %rax, %rax

movq -8(%rbp, 1), %rax


movq $1, %rbx


idivq %rbx

movq %rax, -8(%rbp, 1)




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





movq -16(%rbp, 1), %rax

movq -8(%rbp, 1), %rdx


jmp ._resize





._resize:
movq %rbp, %rsp

popq %rbp

ret




.string "\0init_genrand"
.global init_genrand
init_genrand:
pushq %rbp

movq %rsp, %rbp

subq $5104, %rsp



movl $0, -2504(%rbp, 1)



pushq %rbx


movq $0, %rbx


movq %rbx, -2512(%rbp, 1)

popq %rbx



movq %rdi, -2512(%rbp, 1)


movl %esi, -2504(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -5012(%rbp, 1), %rdi

movq $2500, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





movl $4294967295, %r12d



movl -2504(%rbp, 1), %r13d



andl %r12d, %r13d






movq $0, %rbx



cmpq $624, %rbx

jb .L1

movq %rbx, %rsi


movq $624, %rdx


call err_oob

.L1:
pushq %r10


leaq -5012(%rbp, 1), %r10

movq %r10, -5020(%rbp, 1)


popq %r10




pushq %r12


xorq %r12, %r12

movq -5020(%rbp, 1), %r12


movl %r13d, 0(%r12, %rbx, 4)
popq %r12





movl $1, %r12d






movl %r12d, -2516(%rbp, 1)





.L5:



movl $624, %r14d



movl -2516(%rbp, 1), %r15d



pushq %rbx

xorq %rbx, %rbx
movb -5021(%rbp, 1), %bl


xorb %bl, -5021(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setb -5021(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -5021(%rbp, 1), %bl


andb %bl, -5021(%rbp, 1)
popq %rbx



jz .L6

movl $1812433253, %r15d









movl $1, -5033(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -2516(%rbp, 1), %ebx


movl %ebx, -5037(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5033(%rbp, 1), %ebx


subl %ebx, -5037(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5037(%rbp, 1), %ebx


movl %ebx, -5045(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5045(%rbp, 1)

cmpq $624, -5045(%rbp, 1)

jb .L3

movq -5045(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L3:
pushq %r10


leaq -5012(%rbp, 1), %r10

movq %r10, -5053(%rbp, 1)


popq %r10










movl $1, -5057(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -2516(%rbp, 1), %ebx


movl %ebx, -5061(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5057(%rbp, 1), %ebx


subl %ebx, -5061(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -5061(%rbp, 1), %ebx


movl %ebx, -5069(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -5069(%rbp, 1)

cmpq $624, -5069(%rbp, 1)

jb .L4

movq -5069(%rbp, 1), %rsi


movq $624, %rdx


call err_oob

.L4:
pushq %r10


leaq -5012(%rbp, 1), %r10

movq %r10, -5077(%rbp, 1)


popq %r10




movl $30, -5081(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5077(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5069(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5085(%rbp, 1)
popq %r13





movl -5081(%rbp, 1), %ecx


shrl %cl, -5085(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -5053(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -5045(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -5089(%rbp, 1)
popq %r13





pushq %rbx

xorq %rbx, %rbx
movl -5085(%rbp, 1), %ebx


xorl %ebx, -5089(%rbp, 1)
popq %rbx





movl %r15d, %eax


imull -5089(%rbp, 1), %eax

movl %eax, %r15d







addl -2516(%rbp, 1), %r15d









movl -2516(%rbp, 1), %r14d



movabsq $4294967295, %rax


andq %rax, %r14

cmpq $624, %r14

jb .L2

movq %r14, %rsi


movq $624, %rdx


call err_oob

.L2:
pushq %r10


leaq -5012(%rbp, 1), %r10

movq %r10, -5029(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -5029(%rbp, 1), %rbx


movl %r15d, 0(%rbx, %r14, 4)
popq %rbx









incl -2516(%rbp, 1)




jmp .L5

.L6:



movq -2512(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -5012(%rbp, 1), %rsi

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



.string "\0test"
.global test
test:
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



._test:
movq %rbp, %rsp

popq %rbp

ret









.string "\0flip32"
.global flip32
flip32:
pushq %rbp

movq %rsp, %rbp

subq $96, %rsp



movl $0, -80(%rbp, 1)



movl %edi, -80(%rbp, 1)




movl $0, %r12d



movl %r12d, -84(%rbp, 1)





movl $255, %r13d



movl $0, %r14d



movl %r14d, %ecx


shll %cl, %r13d



movl -80(%rbp, 1), %r14d



andl %r13d, %r14d



movl $24, %r13d



movl %r13d, %ecx


shll %cl, %r14d



orl %r14d, -84(%rbp, 1)





movl $255, %r13d



movl $8, %r14d



movl %r14d, %ecx


shll %cl, %r13d



movl -80(%rbp, 1), %r14d



andl %r13d, %r14d



movl $8, %r13d



movl %r13d, %ecx


shll %cl, %r14d



orl %r14d, -84(%rbp, 1)





movl $255, %r13d



movl $16, %r14d



movl %r14d, %ecx


shll %cl, %r13d



movl -80(%rbp, 1), %r14d



andl %r13d, %r14d



movl $8, %r13d



movl %r13d, %ecx


shrl %cl, %r14d



orl %r14d, -84(%rbp, 1)





movl $255, %r13d



movl $24, %r14d



movl %r14d, %ecx


shll %cl, %r13d



movl -80(%rbp, 1), %r14d



andl %r13d, %r14d



movl $24, %r13d



movl %r13d, %ecx


shrl %cl, %r14d



orl %r14d, -84(%rbp, 1)




movl -84(%rbp, 1), %eax



jmp ._flip32





._flip32:
movq %rbp, %rsp

popq %rbp

ret



.string "\0max"
.global max
max:
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




movq %rdi, -32(%rbp, 1)


movq %rsi, -24(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -32(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi






pushq %rbx


movq $0, %rbx


movq %rbx, -40(%rbp, 1)

popq %rbx




movq $0, %r12



movq %r12, -48(%rbp, 1)




.L67:




movq -48(%rbp, 1), %r13



xorb %bl, %bl

cmpq -8(%rbp, 1), %r13

setb %bl



andb %bl, %bl

jz .L68



pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -56(%rbp, 1)


movq %r10, -64(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -64(%rbp, 1), %rbx


cmpq %rbx, -48(%rbp, 1)
popq %rbx



jb .L64

movq -48(%rbp, 1), %rsi


movq -64(%rbp, 1), %rdx


call err_oob

.L64:




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -72(%rbp, 1)


movq %r10, -80(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -80(%rbp, 1), %rbx


cmpq %rbx, -40(%rbp, 1)
popq %rbx



jb .L65

movq -40(%rbp, 1), %rsi


movq -80(%rbp, 1), %rdx


call err_oob

.L65:


pushq %rbx


xorq %rbx, %rbx

movq -56(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -48(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d
popq %r12

popq %rbx




movl %r13d, %r14d


movq %r14, %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -72(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -40(%rbp, 1), %r12


cmpss $14,  0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movq %xmm0, %r15


andb $1,  %r15b



andb %r15b, %r15b

jz .L66


movq -48(%rbp, 1), %r13




movq %r13, -40(%rbp, 1)





.L66:




incq -48(%rbp, 1)




jmp .L67

.L68:




movq -40(%rbp, 1), %rax



._max:
movq %rbp, %rsp

popq %rbp

ret



.string "\0read_dataset_image"
.global read_dataset_image
read_dataset_image:
pushq %rbp

movq %rsp, %rbp

subq $624, %rsp



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




movq %rdi, -32(%rbp, 1)


movq %rsi, -24(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -32(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi








movl $0, %r12d



movl $0, %r13d



movq -16(%rbp, 1), %rdi


movl %r12d, %esi


movl %r13d, %edx


movq %rsp, %rax



movq $0, %rax


call open

movl %eax, %r14d





movl %r14d, -36(%rbp, 1)




movl $0, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movl %ebx, -40(%rbp, 1)
popq %rbx





xorb %bl, %bl

cmpl %r15d, -40(%rbp, 1)

setl %bl



andb %bl, %bl

jz .L70





movq $.L69, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r15d





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -56(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -56(%rbp, 1), %rax

movq -48(%rbp, 1), %rdx


jmp ._read_dataset_image





.L70:


movl $0, -60(%rbp, 1)




pushq %rbx


leaq -60(%rbp, 1), %rbx

movq %rbx, -68(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -76(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -68(%rbp, 1), %rsi


movq -76(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -84(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -84(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -100(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -108(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -109(%rbp, 1), %bl


xorb %bl, -109(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -100(%rbp, 1), %rbx


cmpq %rbx, -108(%rbp, 1)
popq %rbx



setb -109(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -109(%rbp, 1), %bl


andb %bl, -109(%rbp, 1)
popq %rbx



jz .L72



movq $.L71, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -113(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -129(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -129(%rbp, 1), %rax

movq -121(%rbp, 1), %rdx


jmp ._read_dataset_image





.L72:



movl -60(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call flip32

movl %eax, -133(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -137(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -137(%rbp, 1), %ebx


movl %ebx, -60(%rbp, 1)
popq %rbx









movq $.L73, %rdi


movl -60(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -141(%rbp, 1)





movl $0, -145(%rbp, 1)




pushq %rbx


leaq -145(%rbp, 1), %rbx

movq %rbx, -153(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -161(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -153(%rbp, 1), %rsi


movq -161(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -169(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -169(%rbp, 1), %rbx


movq %rbx, -177(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -177(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -185(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -193(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -194(%rbp, 1), %bl


xorb %bl, -194(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -185(%rbp, 1), %rbx


cmpq %rbx, -193(%rbp, 1)
popq %rbx



setb -194(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -194(%rbp, 1), %bl


andb %bl, -194(%rbp, 1)
popq %rbx



jz .L75



movq $.L74, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -198(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -214(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -214(%rbp, 1), %rax

movq -206(%rbp, 1), %rdx


jmp ._read_dataset_image





.L75:



movl -145(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call flip32

movl %eax, -218(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -218(%rbp, 1), %ebx


movl %ebx, -222(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -222(%rbp, 1), %ebx


movl %ebx, -145(%rbp, 1)
popq %rbx









movq $.L76, %rdi


movl -145(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -226(%rbp, 1)





movl $0, -230(%rbp, 1)




pushq %rbx


leaq -230(%rbp, 1), %rbx

movq %rbx, -238(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -246(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -238(%rbp, 1), %rsi


movq -246(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -254(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -254(%rbp, 1), %rbx


movq %rbx, -262(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -262(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -270(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -278(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -279(%rbp, 1), %bl


xorb %bl, -279(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -270(%rbp, 1), %rbx


cmpq %rbx, -278(%rbp, 1)
popq %rbx



setb -279(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -279(%rbp, 1), %bl


andb %bl, -279(%rbp, 1)
popq %rbx



jz .L78



movq $.L77, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -283(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -299(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -299(%rbp, 1), %rax

movq -291(%rbp, 1), %rdx


jmp ._read_dataset_image





.L78:



movl -230(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call flip32

movl %eax, -303(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -303(%rbp, 1), %ebx


movl %ebx, -307(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -307(%rbp, 1), %ebx


movl %ebx, -230(%rbp, 1)
popq %rbx









movq $.L79, %rdi


movl -230(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -311(%rbp, 1)





movl $0, -315(%rbp, 1)




pushq %rbx


leaq -315(%rbp, 1), %rbx

movq %rbx, -323(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -331(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -323(%rbp, 1), %rsi


movq -331(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -339(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -339(%rbp, 1), %rbx


movq %rbx, -347(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -347(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -355(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -363(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -364(%rbp, 1), %bl


xorb %bl, -364(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -355(%rbp, 1), %rbx


cmpq %rbx, -363(%rbp, 1)
popq %rbx



setb -364(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -364(%rbp, 1), %bl


andb %bl, -364(%rbp, 1)
popq %rbx



jz .L81



movq $.L80, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -368(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -384(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -384(%rbp, 1), %rax

movq -376(%rbp, 1), %rdx


jmp ._read_dataset_image





.L81:



movl -315(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call flip32

movl %eax, -388(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -388(%rbp, 1), %ebx


movl %ebx, -392(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -392(%rbp, 1), %ebx


movl %ebx, -315(%rbp, 1)
popq %rbx









movq $.L82, %rdi


movl -315(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -396(%rbp, 1)








pushq %rbx

xorq %rbx, %rbx
movl -230(%rbp, 1), %ebx


movl %ebx, -400(%rbp, 1)
popq %rbx





movl -400(%rbp, 1), %eax


imull -315(%rbp, 1), %eax

movl %eax, -400(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -145(%rbp, 1), %ebx


movl %ebx, -404(%rbp, 1)
popq %rbx





movl -404(%rbp, 1), %eax


imull -400(%rbp, 1), %eax

movl %eax, -404(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -404(%rbp, 1), %ebx


movl %ebx, -408(%rbp, 1)
popq %rbx








movq $.L83, %rdi


movl -408(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -412(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -452(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





pushq %rbx

xorq %rbx, %rbx
movq -408(%rbp, 1), %rbx


movq %rbx, -420(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -420(%rbp, 1)


movq -420(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -436(%rbp, 1)


movq %rdx, -428(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -436(%rbp, 1), %rsi

leaq -452(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -444(%rbp, 1), %rax


pushq %rbx


movq $784, %rbx


movq %rbx, -460(%rbp, 1)

popq %rbx



idivq -460(%rbp, 1)

movq %rax, -444(%rbp, 1)





movl $0, -464(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -464(%rbp, 1), %ebx


movl %ebx, -468(%rbp, 1)
popq %rbx






.L87:


pushq %rbx

xorq %rbx, %rbx
movl -468(%rbp, 1), %ebx


movl %ebx, -472(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -473(%rbp, 1), %bl


xorb %bl, -473(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -145(%rbp, 1), %ebx


cmpl %ebx, -472(%rbp, 1)
popq %rbx



setb -473(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -473(%rbp, 1), %bl


andb %bl, -473(%rbp, 1)
popq %rbx



jz .L88




pushq %rbx

xorq %rbx, %rbx
movl -468(%rbp, 1), %ebx


movl %ebx, -481(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -481(%rbp, 1)

pushq %r10


pushq %r11


movq -452(%rbp, 1), %r11

movq -444(%rbp, 1), %r10


movq %r11, -489(%rbp, 1)


movq %r10, -497(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -497(%rbp, 1), %rbx


cmpq %rbx, -481(%rbp, 1)
popq %rbx



jb .L84

movq -481(%rbp, 1), %rsi


movq -497(%rbp, 1), %rdx


call err_oob

.L84:
pushq %rbx

xorq %rbx, %rbx
movq -481(%rbp, 1), %rbx


movq %rbx, -505(%rbp, 1)
popq %rbx




movq -505(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -505(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


pushq %r12


xorq %r12, %r12

movq -489(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -505(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -513(%rbp, 1)


popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -230(%rbp, 1), %rbx


movq %rbx, -521(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -521(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -315(%rbp, 1), %rbx


movq %rbx, -529(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -529(%rbp, 1)


movq -521(%rbp, 1), %rax


imulq -529(%rbp, 1), %rax

movq %rax, -521(%rbp, 1)




movl -36(%rbp, 1), %edi


movq -513(%rbp, 1), %rsi


movq -521(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -537(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -537(%rbp, 1), %rbx


movq %rbx, -545(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -545(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx









pushq %rbx

xorq %rbx, %rbx
movq -230(%rbp, 1), %rbx


movq %rbx, -553(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -553(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -315(%rbp, 1), %rbx


movq %rbx, -561(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -561(%rbp, 1)


movq -553(%rbp, 1), %rax


imulq -561(%rbp, 1), %rax

movq %rax, -553(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -569(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -570(%rbp, 1), %bl


xorb %bl, -570(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -553(%rbp, 1), %rbx


cmpq %rbx, -569(%rbp, 1)
popq %rbx



setb -570(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -570(%rbp, 1), %bl


andb %bl, -570(%rbp, 1)
popq %rbx



jz .L86



movq $.L85, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -574(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -590(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -590(%rbp, 1), %rax

movq -582(%rbp, 1), %rdx


jmp ._read_dataset_image





.L86:




incl -468(%rbp, 1)




jmp .L87

.L88:



movl -36(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -594(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -594(%rbp, 1), %ebx


movl %ebx, -598(%rbp, 1)
popq %rbx






movl $0, -602(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -598(%rbp, 1), %ebx


movl %ebx, -606(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -607(%rbp, 1), %bl


xorb %bl, -607(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -602(%rbp, 1), %ebx


cmpl %ebx, -606(%rbp, 1)
popq %rbx



setl -607(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -607(%rbp, 1), %bl


andb %bl, -607(%rbp, 1)
popq %rbx



jz .L90





movq $.L89, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -611(%rbp, 1)






.L90:



movq -452(%rbp, 1), %rax

movq -444(%rbp, 1), %rdx


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

subq $368, %rsp



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




movq %rdi, -32(%rbp, 1)


movq %rsi, -24(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -32(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi








movl $0, %r12d



movl $0, %r13d



movq -16(%rbp, 1), %rdi


movl %r12d, %esi


movl %r13d, %edx


movq %rsp, %rax



movq $0, %rax


call open

movl %eax, %r14d





movl %r14d, -36(%rbp, 1)




movl $0, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movl %ebx, -40(%rbp, 1)
popq %rbx





xorb %bl, %bl

cmpl %r15d, -40(%rbp, 1)

setl %bl



andb %bl, %bl

jz .L92





movq $.L91, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r15d





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -56(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -56(%rbp, 1), %rax

movq -48(%rbp, 1), %rdx


jmp ._read_dataset_label





.L92:


movl $0, -60(%rbp, 1)




pushq %rbx


leaq -60(%rbp, 1), %rbx

movq %rbx, -68(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -76(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -68(%rbp, 1), %rsi


movq -76(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -84(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -84(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx






pushq %rbx


movq $4, %rbx


movq %rbx, -100(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -108(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -109(%rbp, 1), %bl


xorb %bl, -109(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -100(%rbp, 1), %rbx


cmpq %rbx, -108(%rbp, 1)
popq %rbx



setb -109(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -109(%rbp, 1), %bl


andb %bl, -109(%rbp, 1)
popq %rbx



jz .L94



movq $.L93, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -113(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -129(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -129(%rbp, 1), %rax

movq -121(%rbp, 1), %rdx


jmp ._read_dataset_label





.L94:



movl -60(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call flip32

movl %eax, -133(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -133(%rbp, 1), %ebx


movl %ebx, -137(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -137(%rbp, 1), %ebx


movl %ebx, -60(%rbp, 1)
popq %rbx









movq $.L95, %rdi


movl -60(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -141(%rbp, 1)





movl $0, -145(%rbp, 1)




pushq %rbx


leaq -145(%rbp, 1), %rbx

movq %rbx, -153(%rbp, 1)


popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -161(%rbp, 1)

popq %rbx




movl -36(%rbp, 1), %edi


movq -153(%rbp, 1), %rsi


movq -161(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -169(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -169(%rbp, 1), %rbx


movq %rbx, -177(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -177(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -185(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -193(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -194(%rbp, 1), %bl


xorb %bl, -194(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -185(%rbp, 1), %rbx


cmpq %rbx, -193(%rbp, 1)
popq %rbx



setb -194(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -194(%rbp, 1), %bl


andb %bl, -194(%rbp, 1)
popq %rbx



jz .L97



movq $.L96, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -198(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -214(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -214(%rbp, 1), %rax

movq -206(%rbp, 1), %rdx


jmp ._read_dataset_label





.L97:



movl -145(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call flip32

movl %eax, -218(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -218(%rbp, 1), %ebx


movl %ebx, -222(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -222(%rbp, 1), %ebx


movl %ebx, -145(%rbp, 1)
popq %rbx









movq $.L98, %rdi


movl -145(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -226(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -266(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





pushq %rbx

xorq %rbx, %rbx
movq -145(%rbp, 1), %rbx


movq %rbx, -234(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -234(%rbp, 1)


movq -234(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -250(%rbp, 1)


movq %rdx, -242(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -250(%rbp, 1), %rsi

leaq -266(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -258(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -274(%rbp, 1)

popq %rbx



idivq -274(%rbp, 1)

movq %rax, -258(%rbp, 1)











pushq %rbx

xorq %rbx, %rbx
movq -145(%rbp, 1), %rbx


movq %rbx, -282(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -282(%rbp, 1)


movl -36(%rbp, 1), %edi


movq -266(%rbp, 1), %rsi


movq -282(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -290(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -290(%rbp, 1), %rbx


movq %rbx, -298(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -298(%rbp, 1), %rbx


movq %rbx, -92(%rbp, 1)
popq %rbx









pushq %rbx

xorq %rbx, %rbx
movq -145(%rbp, 1), %rbx


movq %rbx, -306(%rbp, 1)
popq %rbx




movabsq $4294967295, %rax


andq %rax, -306(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


movq %rbx, -314(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -315(%rbp, 1), %bl


xorb %bl, -315(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -306(%rbp, 1), %rbx


cmpq %rbx, -314(%rbp, 1)
popq %rbx



setb -315(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -315(%rbp, 1), %bl


andb %bl, -315(%rbp, 1)
popq %rbx



jz .L100



movq $.L99, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -319(%rbp, 1)





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -335(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -335(%rbp, 1), %rax

movq -327(%rbp, 1), %rdx


jmp ._read_dataset_label





.L100:



movl -36(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -339(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -339(%rbp, 1), %ebx


movl %ebx, -343(%rbp, 1)
popq %rbx






movl $0, -347(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -343(%rbp, 1), %ebx


movl %ebx, -351(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -352(%rbp, 1), %bl


xorb %bl, -352(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -347(%rbp, 1), %ebx


cmpl %ebx, -351(%rbp, 1)
popq %rbx



setl -352(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -352(%rbp, 1), %bl


andb %bl, -352(%rbp, 1)
popq %rbx



jz .L102





movq $.L101, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -356(%rbp, 1)






.L102:



movq -266(%rbp, 1), %rax

movq -258(%rbp, 1), %rdx


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

subq $112, %rsp



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




movq %rdi, -48(%rbp, 1)


movq %rsi, -40(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -48(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %rdx, -64(%rbp, 1)


movq %rcx, -56(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -64(%rbp, 1), %rsi

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi












movq -8(%rbp, 1), %r12



xorb %bl, %bl

cmpq -24(%rbp, 1), %r12

sete %bl


xorb $1, %bl



andb %bl, %bl

jz .L103

movl $0, -68(%rbp, 1)



movss -68(%rbp, 1), %xmm0



jmp ._vecmul





.L103:


movl $0, -72(%rbp, 1)



movl $0, %r12d



movl %r12d, -76(%rbp, 1)




.L106:





movl -8(%rbp, 1), %r13d


movq $-1, %rax


andq %rax, %r13


movl -76(%rbp, 1), %r14d



xorb %r15b, %r15b

cmpl %r13d, %r14d

setl %r15b



andb %r15b, %r15b

jz .L107




movl -76(%rbp, 1), %r13d



movabsq $4294967295, %rax


andq %rax, %r13

pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -84(%rbp, 1)


movq %r10, -92(%rbp, 1)


popq %r11


popq %r10


cmpq -92(%rbp, 1), %r13

jb .L104

movq %r13, %rsi


movq -92(%rbp, 1), %rdx


call err_oob

.L104:




movl -76(%rbp, 1), %r14d



movabsq $4294967295, %rax


andq %rax, %r14

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -100(%rbp, 1)


movq %r10, -108(%rbp, 1)


popq %r11


popq %r10


cmpq -108(%rbp, 1), %r14

jb .L105

movq %r14, %rsi


movq -108(%rbp, 1), %rdx


call err_oob

.L105:


pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -84(%rbp, 1), %rbx


movl 0(%rbx, %r13, 4), %r12d


popq %rbx

movl %r12d, -112(%rbp, 1)
popq %r12





movl -112(%rbp, 1), %eax


movss -112(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -100(%rbp, 1), %rbx


mulss 0(%rbx, %r14, 4), %xmm0
popq %rbx


movss %xmm0, -112(%rbp, 1)




movss -72(%rbp, 1), %xmm0


addss -112(%rbp, 1), %xmm0

movss %xmm0, -72(%rbp, 1)






incl -76(%rbp, 1)




jmp .L106

.L107:




movss -72(%rbp, 1), %xmm0



._vecmul:
movq %rbp, %rsp

popq %rbp

ret




.string "\0nn"
.global nn
nn:
pushq %rbp

movq %rsp, %rbp

subq $720, %rsp





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



movq $2, %r12



movq $16, %r13



movq %r12, %rax


imulq %r13, %rax

movq %rax, %r12




movq %r12, %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -36(%rbp, 1)


movq %rdx, -28(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -36(%rbp, 1), %rsi

leaq -52(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -44(%rbp, 1), %rax


movq $16, %r13


idivq %r13

movq %rax, -44(%rbp, 1)










movq $.L108, %rdi


movq -44(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r13d





movq $800, %r15



pushq %rbx


movq $20, %rbx


movq %rbx, -76(%rbp, 1)

popq %rbx




movq %r15, %rax


imulq -76(%rbp, 1), %rax

movq %rax, %r15




movq %r15, %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -92(%rbp, 1)


movq %rdx, -84(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -92(%rbp, 1), %rsi

leaq -108(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -100(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -116(%rbp, 1)

popq %rbx



idivq -116(%rbp, 1)

movq %rax, -100(%rbp, 1)





movq $0, %r14



pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -60(%rbp, 1)


movq %r10, -68(%rbp, 1)


popq %r11


popq %r10


cmpq -68(%rbp, 1), %r14

jb .L109

movq %r14, %rsi


movq -68(%rbp, 1), %rdx


call err_oob

.L109:
movq %r14, %rax


imulq $16, %rax

movq %rax, %r14





pushq %rsi


pushq %rdi


pushq %rcx


leaq -108(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -60(%rbp, 1), %rbx


leaq 0(%rbx, %r14, 1), %rdi
popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -60(%rbp, 1), %rbx


movq 8(%rbx, %r14, 1), %rax
popq %rbx



pushq %rbx


movq $20, %rbx


movq %rbx, -124(%rbp, 1)

popq %rbx



idivq -124(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -60(%rbp, 1), %rbx


movq %rax, 8(%rbx, %r14, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -132(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -132(%rbp, 1), %rbx


movq %rbx, -140(%rbp, 1)
popq %rbx






.L113:


pushq %rbx


movq $0, %rbx


movq %rbx, -148(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -156(%rbp, 1)


movq %r10, -164(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -164(%rbp, 1), %rbx


cmpq %rbx, -148(%rbp, 1)
popq %rbx



jb .L110

movq -148(%rbp, 1), %rsi


movq -164(%rbp, 1), %rdx


call err_oob

.L110:
pushq %rbx

xorq %rbx, %rbx
movq -148(%rbp, 1), %rbx


movq %rbx, -172(%rbp, 1)
popq %rbx




movq -172(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -172(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -180(%rbp, 1)
popq %rbx





xorb %bl, %bl

pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -156(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -172(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -180(%rbp, 1)
popq %r13



setb %bl



andb %bl, %bl

jz .L114

pushq %rbx


movq $784, %rbx


movq %rbx, -244(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -252(%rbp, 1)

popq %rbx




movq -244(%rbp, 1), %rax


imulq -252(%rbp, 1), %rax

movq %rax, -244(%rbp, 1)




movq -244(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -268(%rbp, 1)


movq %rdx, -260(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -268(%rbp, 1), %rsi

leaq -284(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -276(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -292(%rbp, 1)

popq %rbx



idivq -292(%rbp, 1)

movq %rax, -276(%rbp, 1)





pushq %rbx


movq $0, %rbx


movq %rbx, -188(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -196(%rbp, 1)


movq %r10, -204(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -204(%rbp, 1), %rbx


cmpq %rbx, -188(%rbp, 1)
popq %rbx



jb .L111

movq -188(%rbp, 1), %rsi


movq -204(%rbp, 1), %rdx


call err_oob

.L111:
pushq %rbx

xorq %rbx, %rbx
movq -188(%rbp, 1), %rbx


movq %rbx, -212(%rbp, 1)
popq %rbx




movq -212(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -212(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -196(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -212(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -196(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -212(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -220(%rbp, 1)


movq %r10, -228(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -228(%rbp, 1), %rbx


cmpq %rbx, -140(%rbp, 1)
popq %rbx



jb .L112

movq -140(%rbp, 1), %rsi


movq -228(%rbp, 1), %rdx


call err_oob

.L112:
pushq %rbx

xorq %rbx, %rbx
movq -140(%rbp, 1), %rbx


movq %rbx, -236(%rbp, 1)
popq %rbx




movq -236(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -236(%rbp, 1)



// mul on the CPU up here ^





pushq %rsi


pushq %rdi


pushq %rcx


leaq -284(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -220(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -236(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -220(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -236(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -300(%rbp, 1)

popq %rbx



idivq -300(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -220(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -236(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx








incq -140(%rbp, 1)




jmp .L113

.L114:





pushq %rbx


movq $0, %rbx


movq %rbx, -308(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -316(%rbp, 1)


movq %r10, -324(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -324(%rbp, 1), %rbx


cmpq %rbx, -308(%rbp, 1)
popq %rbx



jb .L116

movq -308(%rbp, 1), %rsi


movq -324(%rbp, 1), %rdx


call err_oob

.L116:
pushq %rbx

xorq %rbx, %rbx
movq -308(%rbp, 1), %rbx


movq %rbx, -332(%rbp, 1)
popq %rbx




movq -332(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -332(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $0, %rbx


movq %rbx, -340(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -316(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -332(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -316(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -332(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -348(%rbp, 1)


movq %r10, -356(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -356(%rbp, 1), %rbx


cmpq %rbx, -340(%rbp, 1)
popq %rbx



jb .L117

movq -340(%rbp, 1), %rsi


movq -356(%rbp, 1), %rdx


call err_oob

.L117:
pushq %rbx

xorq %rbx, %rbx
movq -340(%rbp, 1), %rbx


movq %rbx, -364(%rbp, 1)
popq %rbx




movq -364(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -364(%rbp, 1)



// mul on the CPU up here ^







movq $.L115, %rdi


pushq %rbx


xorq %rbx, %rbx

movq -348(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -364(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -368(%rbp, 1)





pushq %rbx


movq $10, %rbx


movq %rbx, -408(%rbp, 1)

popq %rbx




pushq %rbx


movq $20, %rbx


movq %rbx, -416(%rbp, 1)

popq %rbx




movq -408(%rbp, 1), %rax


imulq -416(%rbp, 1), %rax

movq %rax, -408(%rbp, 1)




movq -408(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -432(%rbp, 1)


movq %rdx, -424(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -432(%rbp, 1), %rsi

leaq -448(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -440(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -456(%rbp, 1)

popq %rbx



idivq -456(%rbp, 1)

movq %rax, -440(%rbp, 1)





pushq %rbx


movq $1, %rbx


movq %rbx, -376(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -384(%rbp, 1)


movq %r10, -392(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -392(%rbp, 1), %rbx


cmpq %rbx, -376(%rbp, 1)
popq %rbx



jb .L118

movq -376(%rbp, 1), %rsi


movq -392(%rbp, 1), %rdx


call err_oob

.L118:
pushq %rbx

xorq %rbx, %rbx
movq -376(%rbp, 1), %rbx


movq %rbx, -400(%rbp, 1)
popq %rbx




movq -400(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -400(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


leaq -448(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -384(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -400(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -384(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -400(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $20, %rbx


movq %rbx, -464(%rbp, 1)

popq %rbx



idivq -464(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -384(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -400(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -472(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -472(%rbp, 1), %rbx


movq %rbx, -480(%rbp, 1)
popq %rbx






.L122:


pushq %rbx


movq $1, %rbx


movq %rbx, -488(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -496(%rbp, 1)


movq %r10, -504(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -504(%rbp, 1), %rbx


cmpq %rbx, -488(%rbp, 1)
popq %rbx



jb .L119

movq -488(%rbp, 1), %rsi


movq -504(%rbp, 1), %rdx


call err_oob

.L119:
pushq %rbx

xorq %rbx, %rbx
movq -488(%rbp, 1), %rbx


movq %rbx, -512(%rbp, 1)
popq %rbx




movq -512(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -512(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx

xorq %rbx, %rbx
movq -480(%rbp, 1), %rbx


movq %rbx, -520(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -521(%rbp, 1), %bl


xorb %bl, -521(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -496(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -512(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -520(%rbp, 1)
popq %r13



setb -521(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -521(%rbp, 1), %bl


andb %bl, -521(%rbp, 1)
popq %rbx



jz .L123

pushq %rbx


movq $800, %rbx


movq %rbx, -585(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -593(%rbp, 1)

popq %rbx




movq -585(%rbp, 1), %rax


imulq -593(%rbp, 1), %rax

movq %rax, -585(%rbp, 1)




movq -585(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -609(%rbp, 1)


movq %rdx, -601(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -609(%rbp, 1), %rsi

leaq -625(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -617(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -633(%rbp, 1)

popq %rbx



idivq -633(%rbp, 1)

movq %rax, -617(%rbp, 1)





pushq %rbx


movq $1, %rbx


movq %rbx, -529(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -537(%rbp, 1)


movq %r10, -545(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -545(%rbp, 1), %rbx


cmpq %rbx, -529(%rbp, 1)
popq %rbx



jb .L120

movq -529(%rbp, 1), %rsi


movq -545(%rbp, 1), %rdx


call err_oob

.L120:
pushq %rbx

xorq %rbx, %rbx
movq -529(%rbp, 1), %rbx


movq %rbx, -553(%rbp, 1)
popq %rbx




movq -553(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -553(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -537(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -553(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -537(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -553(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -561(%rbp, 1)


movq %r10, -569(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -569(%rbp, 1), %rbx


cmpq %rbx, -480(%rbp, 1)
popq %rbx



jb .L121

movq -480(%rbp, 1), %rsi


movq -569(%rbp, 1), %rdx


call err_oob

.L121:
pushq %rbx

xorq %rbx, %rbx
movq -480(%rbp, 1), %rbx


movq %rbx, -577(%rbp, 1)
popq %rbx




movq -577(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -577(%rbp, 1)



// mul on the CPU up here ^





pushq %rsi


pushq %rdi


pushq %rcx


leaq -625(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -561(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -577(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -561(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -577(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -641(%rbp, 1)

popq %rbx



idivq -641(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -561(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -577(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx








incq -480(%rbp, 1)




jmp .L122

.L123:





pushq %rbx


movq $1, %rbx


movq %rbx, -649(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -52(%rbp, 1), %r11

movq -44(%rbp, 1), %r10


movq %r11, -657(%rbp, 1)


movq %r10, -665(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -665(%rbp, 1), %rbx


cmpq %rbx, -649(%rbp, 1)
popq %rbx



jb .L125

movq -649(%rbp, 1), %rsi


movq -665(%rbp, 1), %rdx


call err_oob

.L125:
pushq %rbx

xorq %rbx, %rbx
movq -649(%rbp, 1), %rbx


movq %rbx, -673(%rbp, 1)
popq %rbx




movq -673(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -673(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $0, %rbx


movq %rbx, -681(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -657(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -673(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -657(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -673(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -689(%rbp, 1)


movq %r10, -697(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -697(%rbp, 1), %rbx


cmpq %rbx, -681(%rbp, 1)
popq %rbx



jb .L126

movq -681(%rbp, 1), %rsi


movq -697(%rbp, 1), %rdx


call err_oob

.L126:
pushq %rbx

xorq %rbx, %rbx
movq -681(%rbp, 1), %rbx


movq %rbx, -705(%rbp, 1)
popq %rbx




movq -705(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -705(%rbp, 1)



// mul on the CPU up here ^







movq $.L124, %rdi


pushq %rbx


xorq %rbx, %rbx

movq -689(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -705(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -709(%rbp, 1)






movq -52(%rbp, 1), %rax

movq -44(%rbp, 1), %rdx


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



movl $0, -32(%rbp, 1)



movss %xmm0, -32(%rbp, 1)




movl $1065353216, %r12d



movl %r12d, -36(%rbp, 1)



movl $1065353216, %r13d




movl -32(%rbp, 1), %r14d



movl $0, %r15d


movl %r15d, -40(%rbp, 1)


movss -40(%rbp, 1), %xmm0


movl %r14d, -44(%rbp, 1)


movss -44(%rbp, 1), %xmm1


subss %xmm1, %xmm0

movq %xmm0, %r15



movl %r15d, %r14d




movl %r14d, %r14d


movq %r14, %xmm0


movq %rsp, %rax



movq $1, %rax


call expf

movss %xmm0, -48(%rbp, 1)





movl %r13d, -52(%rbp, 1)


movss -52(%rbp, 1), %xmm0


addss -48(%rbp, 1), %xmm0

movq %xmm0, %r13




movl %r13d, -56(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -36(%rbp, 1), %ebx


movl %ebx, -60(%rbp, 1)
popq %rbx





movss -60(%rbp, 1), %xmm0


divss -56(%rbp, 1), %xmm0

movss %xmm0, -60(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -60(%rbp, 1), %ebx


movl %ebx, -64(%rbp, 1)
popq %rbx






movss -64(%rbp, 1), %xmm0



jmp ._logistic





._logistic:
movq %rbp, %rsp

popq %rbp

ret



.string "\0scaled_tanhf"
.global scaled_tanhf
scaled_tanhf:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp



movl $0, -4(%rbp, 1)



movss %xmm0, -4(%rbp, 1)




movl $1071358620, %r12d



movl $1073741824, %r13d



movl $1077936128, %r14d



movl %r13d, %r15d


movq %r15, %xmm0


movl %r14d, -8(%rbp, 1)


movss -8(%rbp, 1), %xmm1


divss %xmm1, %xmm0

movq %xmm0, %r13





movl %r13d, %eax


movl %r13d, %r14d


movq %r14, %xmm0


mulss -4(%rbp, 1), %xmm0

movq %xmm0, %r13




movl %r13d, -12(%rbp, 1)


movss -12(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call tanhf

movss %xmm0, -16(%rbp, 1)





movl %r12d, %eax


movl %r12d, -20(%rbp, 1)


movss -20(%rbp, 1), %xmm0


mulss -16(%rbp, 1), %xmm0

movq %xmm0, %r12





movl %r12d, -24(%rbp, 1)


movss -24(%rbp, 1), %xmm0



._scaled_tanhf:
movq %rbp, %rsp

popq %rbp

ret



.string "\0softmax"
.global softmax
softmax:
pushq %rbp

movq %rsp, %rbp

subq $96, %rsp



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



movq %rdi, -36(%rbp, 1)


movq %rsi, -28(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -36(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movl %edx, -20(%rbp, 1)




movl $0, %r12d



movl %r12d, -40(%rbp, 1)



movq $0, %r13



movq %r13, -48(%rbp, 1)




.L128:




movq -48(%rbp, 1), %r14



xorb %bl, %bl

cmpq -8(%rbp, 1), %r14

setb %bl



andb %bl, %bl

jz .L129




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -56(%rbp, 1)


movq %r10, -64(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -64(%rbp, 1), %rbx


cmpq %rbx, -48(%rbp, 1)
popq %rbx



jb .L127

movq -48(%rbp, 1), %rsi


movq -64(%rbp, 1), %rdx


call err_oob

.L127:


pushq %rbx


xorq %rbx, %rbx

movq -56(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -48(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



movq %rsp, %rax



movq $1, %rax


call expf

movq %xmm0, %r14





movss -40(%rbp, 1), %xmm0


movl %r14d, %r15d


movq %r15, %xmm1


addss %xmm1, %xmm0

movss %xmm0, -40(%rbp, 1)






incq -48(%rbp, 1)




jmp .L128

.L129:




movl -20(%rbp, 1), %r14d



movabsq $4294967295, %rax


andq %rax, %r14

pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -72(%rbp, 1)


movq %r10, -80(%rbp, 1)


popq %r11


popq %r10


cmpq -80(%rbp, 1), %r14

jb .L130

movq %r14, %rsi


movq -80(%rbp, 1), %rdx


call err_oob

.L130:


pushq %rbx


xorq %rbx, %rbx

movq -72(%rbp, 1), %rbx


movss 0(%rbx, %r14, 4), %xmm0
popq %rbx



movq %rsp, %rax



movq $1, %rax


call expf

movss %xmm0, -84(%rbp, 1)






movss -84(%rbp, 1), %xmm0


divss -40(%rbp, 1), %xmm0

movss %xmm0, -84(%rbp, 1)





movss -84(%rbp, 1), %xmm0



._softmax:
movq %rbp, %rsp

popq %rbp

ret




.string "\0forward"
.global forward
forward:
pushq %rbp

movq %rsp, %rbp

subq $3920, %rsp



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




movq %rdi, -3232(%rbp, 1)


movq %rsi, -3224(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -3232(%rbp, 1), %rsi

leaq -48(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




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



pushq %rsi


pushq %rdi


pushq %rcx


leaq 3152(%rbp, 1), %rsi

leaq -3216(%rbp, 1), %rdi

movq $32, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi






movl $0, %r12d



movl %r12d, -3236(%rbp, 1)




.L140:



movq $0, %r13



pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3244(%rbp, 1)


movq %r10, -3252(%rbp, 1)


popq %r11


popq %r10


cmpq -3252(%rbp, 1), %r13

jb .L131

movq %r13, %rsi


movq -3252(%rbp, 1), %rdx


call err_oob

.L131:
movq %r13, %rax


imulq $16, %rax

movq %rax, %r13







pushq %rbx


xorq %rbx, %rbx

movq -3244(%rbp, 1), %rbx


movl 8(%rbx, %r13, 1), %r14d
popq %rbx



movq $-1, %rax


andq %rax, %r14


movl -3236(%rbp, 1), %r15d



xorb %bl, %bl

cmpl %r14d, %r15d

setl %bl



andb %bl, %bl

jz .L141


movq $0, %r14



pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3260(%rbp, 1)


movq %r10, -3268(%rbp, 1)


popq %r11


popq %r10


cmpq -3268(%rbp, 1), %r14

jb .L132

movq %r14, %rsi


movq -3268(%rbp, 1), %rdx


call err_oob

.L132:
movq %r14, %rax


imulq $16, %rax

movq %rax, %r14






movl -3236(%rbp, 1), %r15d



movabsq $4294967295, %rax


andq %rax, %r15

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3260(%rbp, 1), %rbx


movq 0(%rbx, %r14, 1), %r11
popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3260(%rbp, 1), %rbx


movq 8(%rbx, %r14, 1), %r10
popq %rbx



movq %r11, -3276(%rbp, 1)


movq %r10, -3284(%rbp, 1)


popq %r11


popq %r10


cmpq -3284(%rbp, 1), %r15

jb .L133

movq %r15, %rsi


movq -3284(%rbp, 1), %rdx


call err_oob

.L133:
movq %r15, %rax


imulq $20, %rax

movq %rax, %r15








pushq %rbx


xorq %rbx, %rbx

movq -3276(%rbp, 1), %rbx


movq 0(%rbx, %r15, 1), %rdi
popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3276(%rbp, 1), %rbx


movq 8(%rbx, %r15, 1), %rsi
popq %rbx




// array reference
pushq %rbx


leaq -3184(%rbp, 1), %rbx

movq %rbx, -3292(%rbp, 1)


popq %rbx



movq -3292(%rbp, 1), %rdx


movq $784, %rcx




movq %rsp, %rax



movq $0, %rax


call vecmul

movss %xmm0, -3296(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3296(%rbp, 1), %ebx


movl %ebx, -3300(%rbp, 1)
popq %rbx







pushq %rbx


movq $0, %rbx


movq %rbx, -3308(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3316(%rbp, 1)


movq %r10, -3324(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3324(%rbp, 1), %rbx


cmpq %rbx, -3308(%rbp, 1)
popq %rbx



jb .L134

movq -3308(%rbp, 1), %rsi


movq -3324(%rbp, 1), %rdx


call err_oob

.L134:
pushq %rbx

xorq %rbx, %rbx
movq -3308(%rbp, 1), %rbx


movq %rbx, -3332(%rbp, 1)
popq %rbx




movq -3332(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3332(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3236(%rbp, 1), %ebx


movl %ebx, -3340(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3340(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3316(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3332(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3316(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3332(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3348(%rbp, 1)


movq %r10, -3356(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3356(%rbp, 1), %rbx


cmpq %rbx, -3340(%rbp, 1)
popq %rbx



jb .L135

movq -3340(%rbp, 1), %rsi


movq -3356(%rbp, 1), %rdx


call err_oob

.L135:
pushq %rbx

xorq %rbx, %rbx
movq -3340(%rbp, 1), %rbx


movq %rbx, -3364(%rbp, 1)
popq %rbx




movq -3364(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3364(%rbp, 1)



// mul on the CPU up here ^





movss -3300(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -3348(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3364(%rbp, 1), %r12


addss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movss %xmm0, -3300(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3300(%rbp, 1), %ebx


movl %ebx, -3424(%rbp, 1)
popq %rbx








pushq %rbx


movq $0, %rbx


movq %rbx, -3372(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3200(%rbp, 1), %r11

movq -3192(%rbp, 1), %r10


movq %r11, -3380(%rbp, 1)


movq %r10, -3388(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3388(%rbp, 1), %rbx


cmpq %rbx, -3372(%rbp, 1)
popq %rbx



jb .L136

movq -3372(%rbp, 1), %rsi


movq -3388(%rbp, 1), %rdx


call err_oob

.L136:
pushq %rbx

xorq %rbx, %rbx
movq -3372(%rbp, 1), %rbx


movq %rbx, -3396(%rbp, 1)
popq %rbx




movq -3396(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3396(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3236(%rbp, 1), %ebx


movl %ebx, -3404(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3404(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3380(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3396(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3380(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3396(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3412(%rbp, 1)


movq %r10, -3420(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3420(%rbp, 1), %rbx


cmpq %rbx, -3404(%rbp, 1)
popq %rbx



jb .L137

movq -3404(%rbp, 1), %rsi


movq -3420(%rbp, 1), %rdx


call err_oob

.L137:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3412(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3404(%rbp, 1), %r12


movl -3424(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13







movss -3300(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call scaled_tanhf

movss %xmm0, -3428(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3428(%rbp, 1), %ebx


movl %ebx, -3432(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -3432(%rbp, 1), %ebx


movl %ebx, -3492(%rbp, 1)
popq %rbx








pushq %rbx


movq $0, %rbx


movq %rbx, -3440(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3216(%rbp, 1), %r11

movq -3208(%rbp, 1), %r10


movq %r11, -3448(%rbp, 1)


movq %r10, -3456(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3456(%rbp, 1), %rbx


cmpq %rbx, -3440(%rbp, 1)
popq %rbx



jb .L138

movq -3440(%rbp, 1), %rsi


movq -3456(%rbp, 1), %rdx


call err_oob

.L138:
pushq %rbx

xorq %rbx, %rbx
movq -3440(%rbp, 1), %rbx


movq %rbx, -3464(%rbp, 1)
popq %rbx




movq -3464(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3464(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3236(%rbp, 1), %ebx


movl %ebx, -3472(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3472(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3448(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3464(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3448(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3464(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3480(%rbp, 1)


movq %r10, -3488(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3488(%rbp, 1), %rbx


cmpq %rbx, -3472(%rbp, 1)
popq %rbx



jb .L139

movq -3472(%rbp, 1), %rsi


movq -3488(%rbp, 1), %rdx


call err_oob

.L139:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3480(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3472(%rbp, 1), %r12


movl -3492(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -3236(%rbp, 1)




jmp .L140

.L141:


movl $0, -3496(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3496(%rbp, 1), %ebx


movl %ebx, -3500(%rbp, 1)
popq %rbx






.L150:



pushq %rbx


movq $1, %rbx


movq %rbx, -3508(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3516(%rbp, 1)


movq %r10, -3524(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3524(%rbp, 1), %rbx


cmpq %rbx, -3508(%rbp, 1)
popq %rbx



jb .L142

movq -3508(%rbp, 1), %rsi


movq -3524(%rbp, 1), %rdx


call err_oob

.L142:
pushq %rbx

xorq %rbx, %rbx
movq -3508(%rbp, 1), %rbx


movq %rbx, -3532(%rbp, 1)
popq %rbx




movq -3532(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3532(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3516(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3532(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -3536(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -3536(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3500(%rbp, 1), %ebx


movl %ebx, -3540(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -3541(%rbp, 1), %bl


xorb %bl, -3541(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3536(%rbp, 1), %ebx


cmpl %ebx, -3540(%rbp, 1)
popq %rbx



setl -3541(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3541(%rbp, 1), %bl


andb %bl, -3541(%rbp, 1)
popq %rbx



jz .L151


pushq %rbx


movq $1, %rbx


movq %rbx, -3549(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3557(%rbp, 1)


movq %r10, -3565(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3565(%rbp, 1), %rbx


cmpq %rbx, -3549(%rbp, 1)
popq %rbx



jb .L143

movq -3549(%rbp, 1), %rsi


movq -3565(%rbp, 1), %rdx


call err_oob

.L143:
pushq %rbx

xorq %rbx, %rbx
movq -3549(%rbp, 1), %rbx


movq %rbx, -3573(%rbp, 1)
popq %rbx




movq -3573(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3573(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3500(%rbp, 1), %ebx


movl %ebx, -3581(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3581(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3557(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3573(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3557(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3573(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3589(%rbp, 1)


movq %r10, -3597(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3597(%rbp, 1), %rbx


cmpq %rbx, -3581(%rbp, 1)
popq %rbx



jb .L144

movq -3581(%rbp, 1), %rsi


movq -3597(%rbp, 1), %rdx


call err_oob

.L144:
pushq %rbx

xorq %rbx, %rbx
movq -3581(%rbp, 1), %rbx


movq %rbx, -3605(%rbp, 1)
popq %rbx




movq -3605(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3605(%rbp, 1)



// mul on the CPU up here ^








pushq %rbx


movq $0, %rbx


movq %rbx, -3613(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3216(%rbp, 1), %r11

movq -3208(%rbp, 1), %r10


movq %r11, -3621(%rbp, 1)


movq %r10, -3629(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3629(%rbp, 1), %rbx


cmpq %rbx, -3613(%rbp, 1)
popq %rbx



jb .L145

movq -3613(%rbp, 1), %rsi


movq -3629(%rbp, 1), %rdx


call err_oob

.L145:
pushq %rbx

xorq %rbx, %rbx
movq -3613(%rbp, 1), %rbx


movq %rbx, -3637(%rbp, 1)
popq %rbx




movq -3637(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3637(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


xorq %rbx, %rbx

movq -3589(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3605(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3589(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3605(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx




pushq %rbx


xorq %rbx, %rbx

movq -3621(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3637(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rdx
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3621(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3637(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rcx
popq %r12

popq %rbx




movq %rsp, %rax



movq $0, %rax


call vecmul

movss %xmm0, -3641(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3641(%rbp, 1), %ebx


movl %ebx, -3645(%rbp, 1)
popq %rbx







pushq %rbx


movq $1, %rbx


movq %rbx, -3653(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3661(%rbp, 1)


movq %r10, -3669(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3669(%rbp, 1), %rbx


cmpq %rbx, -3653(%rbp, 1)
popq %rbx



jb .L146

movq -3653(%rbp, 1), %rsi


movq -3669(%rbp, 1), %rdx


call err_oob

.L146:
pushq %rbx

xorq %rbx, %rbx
movq -3653(%rbp, 1), %rbx


movq %rbx, -3677(%rbp, 1)
popq %rbx




movq -3677(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3677(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3500(%rbp, 1), %ebx


movl %ebx, -3685(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3685(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3661(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3677(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3661(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3677(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3693(%rbp, 1)


movq %r10, -3701(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3701(%rbp, 1), %rbx


cmpq %rbx, -3685(%rbp, 1)
popq %rbx



jb .L147

movq -3685(%rbp, 1), %rsi


movq -3701(%rbp, 1), %rdx


call err_oob

.L147:
pushq %rbx

xorq %rbx, %rbx
movq -3685(%rbp, 1), %rbx


movq %rbx, -3709(%rbp, 1)
popq %rbx




movq -3709(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -3709(%rbp, 1)



// mul on the CPU up here ^





movss -3645(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -3693(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3709(%rbp, 1), %r12


addss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movss %xmm0, -3645(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3645(%rbp, 1), %ebx


movl %ebx, -3769(%rbp, 1)
popq %rbx








pushq %rbx


movq $1, %rbx


movq %rbx, -3717(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3200(%rbp, 1), %r11

movq -3192(%rbp, 1), %r10


movq %r11, -3725(%rbp, 1)


movq %r10, -3733(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3733(%rbp, 1), %rbx


cmpq %rbx, -3717(%rbp, 1)
popq %rbx



jb .L148

movq -3717(%rbp, 1), %rsi


movq -3733(%rbp, 1), %rdx


call err_oob

.L148:
pushq %rbx

xorq %rbx, %rbx
movq -3717(%rbp, 1), %rbx


movq %rbx, -3741(%rbp, 1)
popq %rbx




movq -3741(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3741(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3500(%rbp, 1), %ebx


movl %ebx, -3749(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3749(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3725(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3741(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3725(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3741(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3757(%rbp, 1)


movq %r10, -3765(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3765(%rbp, 1), %rbx


cmpq %rbx, -3749(%rbp, 1)
popq %rbx



jb .L149

movq -3749(%rbp, 1), %rsi


movq -3765(%rbp, 1), %rdx


call err_oob

.L149:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3757(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3749(%rbp, 1), %r12


movl -3769(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -3500(%rbp, 1)




jmp .L150

.L151:


movl $0, -3773(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3773(%rbp, 1), %ebx


movl %ebx, -3777(%rbp, 1)
popq %rbx






.L156:



pushq %rbx


movq $1, %rbx


movq %rbx, -3785(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -48(%rbp, 1), %r11

movq -40(%rbp, 1), %r10


movq %r11, -3793(%rbp, 1)


movq %r10, -3801(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3801(%rbp, 1), %rbx


cmpq %rbx, -3785(%rbp, 1)
popq %rbx



jb .L152

movq -3785(%rbp, 1), %rsi


movq -3801(%rbp, 1), %rdx


call err_oob

.L152:
pushq %rbx

xorq %rbx, %rbx
movq -3785(%rbp, 1), %rbx


movq %rbx, -3809(%rbp, 1)
popq %rbx




movq -3809(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3809(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3793(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3809(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -3813(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -3813(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -3777(%rbp, 1), %ebx


movl %ebx, -3817(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -3818(%rbp, 1), %bl


xorb %bl, -3818(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -3813(%rbp, 1), %ebx


cmpl %ebx, -3817(%rbp, 1)
popq %rbx



setl -3818(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3818(%rbp, 1), %bl


andb %bl, -3818(%rbp, 1)
popq %rbx



jz .L157




pushq %rbx


movq $1, %rbx


movq %rbx, -3882(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3200(%rbp, 1), %r11

movq -3192(%rbp, 1), %r10


movq %r11, -3890(%rbp, 1)


movq %r10, -3898(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3898(%rbp, 1), %rbx


cmpq %rbx, -3882(%rbp, 1)
popq %rbx



jb .L155

movq -3882(%rbp, 1), %rsi


movq -3898(%rbp, 1), %rdx


call err_oob

.L155:
pushq %rbx

xorq %rbx, %rbx
movq -3882(%rbp, 1), %rbx


movq %rbx, -3906(%rbp, 1)
popq %rbx




movq -3906(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3906(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx


xorq %rbx, %rbx

movq -3890(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3906(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3890(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3906(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx




movl -3777(%rbp, 1), %edx


movq %rsp, %rax



movq $0, %rax


call softmax

movss %xmm0, -3910(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3910(%rbp, 1), %ebx


movl %ebx, -3914(%rbp, 1)
popq %rbx








pushq %rbx


movq $1, %rbx


movq %rbx, -3826(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3216(%rbp, 1), %r11

movq -3208(%rbp, 1), %r10


movq %r11, -3834(%rbp, 1)


movq %r10, -3842(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3842(%rbp, 1), %rbx


cmpq %rbx, -3826(%rbp, 1)
popq %rbx



jb .L153

movq -3826(%rbp, 1), %rsi


movq -3842(%rbp, 1), %rdx


call err_oob

.L153:
pushq %rbx

xorq %rbx, %rbx
movq -3826(%rbp, 1), %rbx


movq %rbx, -3850(%rbp, 1)
popq %rbx




movq -3850(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -3850(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -3777(%rbp, 1), %ebx


movl %ebx, -3858(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3858(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -3834(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3850(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3834(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3850(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -3866(%rbp, 1)


movq %r10, -3874(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3874(%rbp, 1), %rbx


cmpq %rbx, -3858(%rbp, 1)
popq %rbx



jb .L154

movq -3858(%rbp, 1), %rsi


movq -3874(%rbp, 1), %rdx


call err_oob

.L154:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3866(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3858(%rbp, 1), %r12


movl -3914(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -3777(%rbp, 1)




jmp .L156

.L157:



._forward:
movq %rbp, %rsp

popq %rbp

ret



.string "\0loss"
.global loss
loss:
pushq %rbp

movq %rsp, %rbp

subq $128, %rsp



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




movq %rdi, -48(%rbp, 1)


movq %rsi, -40(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -48(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %rdx, -64(%rbp, 1)


movq %rcx, -56(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -64(%rbp, 1), %rsi

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi






movl $0, -68(%rbp, 1)



movq $0, %r12



movq %r12, -76(%rbp, 1)




.L160:




movq -76(%rbp, 1), %r13



xorb %bl, %bl

cmpq -8(%rbp, 1), %r13

setb %bl



andb %bl, %bl

jz .L161




pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -84(%rbp, 1)


movq %r10, -92(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -92(%rbp, 1), %rbx


cmpq %rbx, -76(%rbp, 1)
popq %rbx



jb .L158

movq -76(%rbp, 1), %rsi


movq -92(%rbp, 1), %rdx


call err_oob

.L158:




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -100(%rbp, 1)


movq %r10, -108(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -108(%rbp, 1), %rbx


cmpq %rbx, -76(%rbp, 1)
popq %rbx



jb .L159

movq -76(%rbp, 1), %rsi


movq -108(%rbp, 1), %rdx


call err_oob

.L159:


pushq %rbx


xorq %rbx, %rbx

movq -100(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -76(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



movq %rsp, %rax



movq $1, %rax


call logf

movq %xmm0, %r13





pushq %rbx


xorq %rbx, %rbx

movq -84(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -76(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r14d
popq %r12

popq %rbx




movl %r14d, %eax


movl %r14d, %r15d


movq %r15, %xmm0


movl %r13d, -112(%rbp, 1)


movss -112(%rbp, 1), %xmm1


mulss %xmm1, %xmm0

movq %xmm0, %r14




movss -68(%rbp, 1), %xmm0


movl %r14d, %r13d


movq %r13, %xmm1


subss %xmm1, %xmm0

movss %xmm0, -68(%rbp, 1)






incq -76(%rbp, 1)




jmp .L160

.L161:







cvtsi2ss -8(%rbp, 1), %xmm0

movq %xmm0, %r14



pushq %rbx

xorq %rbx, %rbx
movl -68(%rbp, 1), %ebx


movl %ebx, -116(%rbp, 1)
popq %rbx





movss -116(%rbp, 1), %xmm0


movl %r14d, -120(%rbp, 1)


movss -120(%rbp, 1), %xmm1


divss %xmm1, %xmm0

movss %xmm0, -116(%rbp, 1)





movss -116(%rbp, 1), %xmm0



._loss:
movq %rbp, %rsp

popq %rbp

ret



.string "\0der_loss"
.global der_loss
der_loss:
pushq %rbp

movq %rsp, %rbp

subq $128, %rsp



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




movq %rdi, -48(%rbp, 1)


movq %rsi, -40(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -48(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %rdx, -64(%rbp, 1)


movq %rcx, -56(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -64(%rbp, 1), %rsi

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi






movq $0, %r12



movq %r12, -72(%rbp, 1)




.L165:




movq -72(%rbp, 1), %r13



xorb %bl, %bl

cmpq -8(%rbp, 1), %r13

setb %bl



andb %bl, %bl

jz .L166



pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -80(%rbp, 1)


movq %r10, -88(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -88(%rbp, 1), %rbx


cmpq %rbx, -72(%rbp, 1)
popq %rbx



jb .L162

movq -72(%rbp, 1), %rsi


movq -88(%rbp, 1), %rdx


call err_oob

.L162:




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -96(%rbp, 1)


movq %r10, -104(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -104(%rbp, 1), %rbx


cmpq %rbx, -72(%rbp, 1)
popq %rbx



jb .L163

movq -72(%rbp, 1), %rsi


movq -104(%rbp, 1), %rdx


call err_oob

.L163:


pushq %rbx


xorq %rbx, %rbx

movq -80(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -72(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -96(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -72(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -80(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -72(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -112(%rbp, 1)


movq %r10, -120(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -120(%rbp, 1), %rbx


cmpq %rbx, -72(%rbp, 1)
popq %rbx



jb .L164

movq -72(%rbp, 1), %rsi


movq -120(%rbp, 1), %rdx


call err_oob

.L164:


movl $3212836864, %r13d



pushq %rbx


xorq %rbx, %rbx

movq -112(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -72(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %eax
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -112(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -72(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



movl %r13d, %r14d


movq %r14, %xmm1


mulss %xmm1, %xmm0

pushq %rbx


xorq %rbx, %rbx

movq -112(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -72(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -72(%rbp, 1)




jmp .L165

.L166:




movq -32(%rbp, 1), %rax

movq -24(%rbp, 1), %rdx


._der_loss:
movq %rbp, %rsp

popq %rbp

ret



.string "\0back"
.global back
back:
pushq %rbp

movq %rsp, %rbp

subq $2558384, %rsp



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



movq %rdi, -3228(%rbp, 1)


movq %rsi, -3220(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -3228(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




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



movq %rdx, -3244(%rbp, 1)


movq %rcx, -3236(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -3244(%rbp, 1), %rsi

leaq -3168(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




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

leaq -3292(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq $1, %r12



pushq %r10


pushq %r11


movq -3168(%rbp, 1), %r11

movq -3160(%rbp, 1), %r10


movq %r11, -3252(%rbp, 1)


movq %r10, -3260(%rbp, 1)


popq %r11


popq %r10


cmpq -3260(%rbp, 1), %r12

jb .L167

movq %r12, %rsi


movq -3260(%rbp, 1), %rdx


call err_oob

.L167:
movq %r12, %rax


imulq $16, %rax

movq %rax, %r12






pushq %rbx


xorq %rbx, %rbx

movq -3252(%rbp, 1), %rbx


movq 0(%rbx, %r12, 1), %rdi
popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -3252(%rbp, 1), %rbx


movq 8(%rbx, %r12, 1), %rsi
popq %rbx




// array reference
leaq -3208(%rbp, 1), %r13


movq %r13, %rdx


movq $10, %rcx




movq %rsp, %rax



movq $0, %rax


call der_loss

movq %rax, -3276(%rbp, 1)


movq %rdx, -3268(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -3276(%rbp, 1), %rsi

leaq -3292(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -35292(%rbp, 1), %rdi

movq $32000, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -35332(%rbp, 1), %rdi

movq $40, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, %r14d



movl %r14d, -35336(%rbp, 1)




.L178:





movl -3284(%rbp, 1), %r15d


movq $-1, %rax


andq %rax, %r15


pushq %rbx

xorq %rbx, %rbx
movl -35336(%rbp, 1), %ebx


movl %ebx, -35340(%rbp, 1)
popq %rbx





xorb %bl, %bl

cmpl %r15d, -35340(%rbp, 1)

setl %bl



andb %bl, %bl

jz .L179

movl $0, %r15d



movl %r15d, -35344(%rbp, 1)




.L174:



pushq %rbx


movq $0, %rbx


movq %rbx, -35352(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3168(%rbp, 1), %r11

movq -3160(%rbp, 1), %r10


movq %r11, -35360(%rbp, 1)


movq %r10, -35368(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35368(%rbp, 1), %rbx


cmpq %rbx, -35352(%rbp, 1)
popq %rbx



jb .L168

movq -35352(%rbp, 1), %rsi


movq -35368(%rbp, 1), %rdx


call err_oob

.L168:
pushq %rbx

xorq %rbx, %rbx
movq -35352(%rbp, 1), %rbx


movq %rbx, -35376(%rbp, 1)
popq %rbx




movq -35376(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -35376(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35360(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35376(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -35380(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -35380(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -35344(%rbp, 1), %ebx


movl %ebx, -35384(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -35385(%rbp, 1), %bl


xorb %bl, -35385(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -35380(%rbp, 1), %ebx


cmpl %ebx, -35384(%rbp, 1)
popq %rbx



setl -35385(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -35385(%rbp, 1), %bl


andb %bl, -35385(%rbp, 1)
popq %rbx



jz .L175



pushq %rbx

xorq %rbx, %rbx
movl -35336(%rbp, 1), %ebx


movl %ebx, -35433(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -35433(%rbp, 1)

pushq %r10


pushq %r11


movq -3292(%rbp, 1), %r11

movq -3284(%rbp, 1), %r10


movq %r11, -35441(%rbp, 1)


movq %r10, -35449(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35449(%rbp, 1), %rbx


cmpq %rbx, -35433(%rbp, 1)
popq %rbx



jb .L171

movq -35433(%rbp, 1), %rsi


movq -35449(%rbp, 1), %rdx


call err_oob

.L171:



pushq %rbx


movq $0, %rbx


movq %rbx, -35457(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3168(%rbp, 1), %r11

movq -3160(%rbp, 1), %r10


movq %r11, -35465(%rbp, 1)


movq %r10, -35473(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35473(%rbp, 1), %rbx


cmpq %rbx, -35457(%rbp, 1)
popq %rbx



jb .L172

movq -35457(%rbp, 1), %rsi


movq -35473(%rbp, 1), %rdx


call err_oob

.L172:
pushq %rbx

xorq %rbx, %rbx
movq -35457(%rbp, 1), %rbx


movq %rbx, -35481(%rbp, 1)
popq %rbx




movq -35481(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -35481(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -35344(%rbp, 1), %ebx


movl %ebx, -35489(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -35489(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -35465(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35481(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35465(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35481(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -35497(%rbp, 1)


movq %r10, -35505(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35505(%rbp, 1), %rbx


cmpq %rbx, -35489(%rbp, 1)
popq %rbx



jb .L173

movq -35489(%rbp, 1), %rsi


movq -35505(%rbp, 1), %rdx


call err_oob

.L173:



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35497(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35489(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -35509(%rbp, 1)
popq %r13





movl -35509(%rbp, 1), %eax


movss -35509(%rbp, 1), %xmm0


mulss -3212(%rbp, 1), %xmm0

movss %xmm0, -35509(%rbp, 1)




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35441(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35433(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -35513(%rbp, 1)
popq %r13





movl -35513(%rbp, 1), %eax


movss -35513(%rbp, 1), %xmm0


mulss -35509(%rbp, 1), %xmm0

movss %xmm0, -35513(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -35513(%rbp, 1), %ebx


movl %ebx, -35517(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -35336(%rbp, 1), %ebx


movl %ebx, -35393(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -35393(%rbp, 1)

cmpq $10, -35393(%rbp, 1)

jb .L169

movq -35393(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L169:
pushq %r10


leaq -35292(%rbp, 1), %r10

movq %r10, -35401(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35393(%rbp, 1), %rbx


movq %rbx, -35409(%rbp, 1)
popq %rbx




movq -35409(%rbp, 1), %rax


imulq $3200, %rax

movq %rax, -35409(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -35344(%rbp, 1), %ebx


movl %ebx, -35417(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -35417(%rbp, 1)

cmpq $800, -35417(%rbp, 1)

jb .L170

movq -35417(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L170:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -35401(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35409(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -35425(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35425(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35417(%rbp, 1), %r12


movl -35517(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -35344(%rbp, 1)




jmp .L174

.L175:




pushq %rbx

xorq %rbx, %rbx
movl -35336(%rbp, 1), %ebx


movl %ebx, -35541(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -35541(%rbp, 1)

pushq %r10


pushq %r11


movq -3292(%rbp, 1), %r11

movq -3284(%rbp, 1), %r10


movq %r11, -35549(%rbp, 1)


movq %r10, -35557(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35557(%rbp, 1), %rbx


cmpq %rbx, -35541(%rbp, 1)
popq %rbx



jb .L177

movq -35541(%rbp, 1), %rsi


movq -35557(%rbp, 1), %rdx


call err_oob

.L177:



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35549(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35541(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -35561(%rbp, 1)
popq %r13





movl -35561(%rbp, 1), %eax


movss -35561(%rbp, 1), %xmm0


mulss -3212(%rbp, 1), %xmm0

movss %xmm0, -35561(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -35561(%rbp, 1), %ebx


movl %ebx, -35565(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -35336(%rbp, 1), %ebx


movl %ebx, -35525(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -35525(%rbp, 1)

cmpq $10, -35525(%rbp, 1)

jb .L176

movq -35525(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L176:
pushq %r10


leaq -35332(%rbp, 1), %r10

movq %r10, -35533(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35533(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35525(%rbp, 1), %r12


movl -35565(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -35336(%rbp, 1)




jmp .L178

.L179:




pushq %rbx


movq $1, %rbx


movq %rbx, -35573(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -35581(%rbp, 1)


movq %r10, -35589(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35589(%rbp, 1), %rbx


cmpq %rbx, -35573(%rbp, 1)
popq %rbx



jb .L180

movq -35573(%rbp, 1), %rsi


movq -35589(%rbp, 1), %rdx


call err_oob

.L180:
pushq %rbx

xorq %rbx, %rbx
movq -35573(%rbp, 1), %rbx


movq %rbx, -35597(%rbp, 1)
popq %rbx




movq -35597(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -35597(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35581(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35597(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

movq %r13, -35605(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -35605(%rbp, 1)


pushq %rbx


movq $1, %rbx


movq %rbx, -35613(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -35613(%rbp, 1), %rbx


subq %rbx, -35605(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -35605(%rbp, 1), %rbx


movq %rbx, -35621(%rbp, 1)
popq %rbx






.L193:

pushq %rbx


movq $0, %rbx


movq %rbx, -35629(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -35621(%rbp, 1), %rbx


movq %rbx, -35637(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -35638(%rbp, 1), %bl


xorb %bl, -35638(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -35629(%rbp, 1), %rbx


cmpq %rbx, -35637(%rbp, 1)
popq %rbx



setge -35638(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -35638(%rbp, 1), %bl


andb %bl, -35638(%rbp, 1)
popq %rbx



jz .L194

pushq %rbx


movq $0, %rbx


movq %rbx, -35646(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -35646(%rbp, 1), %rbx


movq %rbx, -35654(%rbp, 1)
popq %rbx






.L188:


pushq %rbx


movq $1, %rbx


movq %rbx, -35662(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -35670(%rbp, 1)


movq %r10, -35678(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35678(%rbp, 1), %rbx


cmpq %rbx, -35662(%rbp, 1)
popq %rbx



jb .L181

movq -35662(%rbp, 1), %rsi


movq -35678(%rbp, 1), %rdx


call err_oob

.L181:
pushq %rbx

xorq %rbx, %rbx
movq -35662(%rbp, 1), %rbx


movq %rbx, -35686(%rbp, 1)
popq %rbx




movq -35686(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -35686(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -35670(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35686(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35670(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35686(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -35694(%rbp, 1)


movq %r10, -35702(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35702(%rbp, 1), %rbx


cmpq %rbx, -35621(%rbp, 1)
popq %rbx



jb .L182

movq -35621(%rbp, 1), %rsi


movq -35702(%rbp, 1), %rdx


call err_oob

.L182:
pushq %rbx

xorq %rbx, %rbx
movq -35621(%rbp, 1), %rbx


movq %rbx, -35710(%rbp, 1)
popq %rbx




movq -35710(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -35710(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx

xorq %rbx, %rbx
movq -35654(%rbp, 1), %rbx


movq %rbx, -35718(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -35719(%rbp, 1), %bl


xorb %bl, -35719(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -35694(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35710(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -35718(%rbp, 1)
popq %r13



setb -35719(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -35719(%rbp, 1), %bl


andb %bl, -35719(%rbp, 1)
popq %rbx



jz .L189


pushq %rbx


movq $1, %rbx


movq %rbx, -35727(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -35735(%rbp, 1)


movq %r10, -35743(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35743(%rbp, 1), %rbx


cmpq %rbx, -35727(%rbp, 1)
popq %rbx



jb .L183

movq -35727(%rbp, 1), %rsi


movq -35743(%rbp, 1), %rdx


call err_oob

.L183:
pushq %rbx

xorq %rbx, %rbx
movq -35727(%rbp, 1), %rbx


movq %rbx, -35751(%rbp, 1)
popq %rbx




movq -35751(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -35751(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -35735(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35751(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35735(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35751(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -35759(%rbp, 1)


movq %r10, -35767(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35767(%rbp, 1), %rbx


cmpq %rbx, -35621(%rbp, 1)
popq %rbx



jb .L184

movq -35621(%rbp, 1), %rsi


movq -35767(%rbp, 1), %rdx


call err_oob

.L184:
pushq %rbx

xorq %rbx, %rbx
movq -35621(%rbp, 1), %rbx


movq %rbx, -35775(%rbp, 1)
popq %rbx




movq -35775(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -35775(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -35759(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35775(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35759(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35775(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -35783(%rbp, 1)


movq %r10, -35791(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35791(%rbp, 1), %rbx


cmpq %rbx, -35654(%rbp, 1)
popq %rbx



jb .L185

movq -35654(%rbp, 1), %rsi


movq -35791(%rbp, 1), %rdx


call err_oob

.L185:




cmpq $10, -35621(%rbp, 1)

jb .L186

movq -35621(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L186:
pushq %r10


leaq -35292(%rbp, 1), %r10

movq %r10, -35799(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35621(%rbp, 1), %rbx


movq %rbx, -35807(%rbp, 1)
popq %rbx




movq -35807(%rbp, 1), %rax


imulq $3200, %rax

movq %rax, -35807(%rbp, 1)



// mul on the CPU up here ^




cmpq $800, -35654(%rbp, 1)

jb .L187

movq -35654(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L187:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -35799(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35807(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -35815(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -35783(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35654(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -35815(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35654(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35783(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35654(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -35654(%rbp, 1)




jmp .L188

.L189:



pushq %rbx


movq $1, %rbx


movq %rbx, -35823(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -35831(%rbp, 1)


movq %r10, -35839(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35839(%rbp, 1), %rbx


cmpq %rbx, -35823(%rbp, 1)
popq %rbx



jb .L190

movq -35823(%rbp, 1), %rsi


movq -35839(%rbp, 1), %rdx


call err_oob

.L190:
pushq %rbx

xorq %rbx, %rbx
movq -35823(%rbp, 1), %rbx


movq %rbx, -35847(%rbp, 1)
popq %rbx




movq -35847(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -35847(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -35831(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35847(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35831(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35847(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -35855(%rbp, 1)


movq %r10, -35863(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -35863(%rbp, 1), %rbx


cmpq %rbx, -35621(%rbp, 1)
popq %rbx



jb .L191

movq -35621(%rbp, 1), %rsi


movq -35863(%rbp, 1), %rdx


call err_oob

.L191:
pushq %rbx

xorq %rbx, %rbx
movq -35621(%rbp, 1), %rbx


movq %rbx, -35871(%rbp, 1)
popq %rbx




movq -35871(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -35871(%rbp, 1)



// mul on the CPU up here ^







cmpq $10, -35621(%rbp, 1)

jb .L192

movq -35621(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L192:
pushq %r10


leaq -35332(%rbp, 1), %r10

movq %r10, -35879(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -35855(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35871(%rbp, 1), %r12


movss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -35879(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35621(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -35855(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -35871(%rbp, 1), %r12


movss %xmm0, 16(%rbx, %r12, 1)
popq %r12

popq %rbx







decq -35621(%rbp, 1)




jmp .L193

.L194:



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -39079(%rbp, 1), %rdi

movq $3200, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -39083(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -39083(%rbp, 1), %ebx


movl %ebx, -39087(%rbp, 1)
popq %rbx






.L202:



pushq %rbx


movq $800, %rbx


movq %rbx, -39095(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -39095(%rbp, 1), %ebx


movl %ebx, -39099(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -39099(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -39087(%rbp, 1), %ebx


movl %ebx, -39103(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -39104(%rbp, 1), %bl


xorb %bl, -39104(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -39099(%rbp, 1), %ebx


cmpl %ebx, -39103(%rbp, 1)
popq %rbx



setl -39104(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -39104(%rbp, 1), %bl


andb %bl, -39104(%rbp, 1)
popq %rbx



jz .L203

pushq %rbx


movq $0, %rbx


movq %rbx, -39112(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -39112(%rbp, 1), %rbx


movq %rbx, -39120(%rbp, 1)
popq %rbx






.L200:




pushq %rbx

xorq %rbx, %rbx
movq -39120(%rbp, 1), %rbx


movq %rbx, -39128(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -39129(%rbp, 1), %bl


xorb %bl, -39129(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -3284(%rbp, 1), %rbx


cmpq %rbx, -39128(%rbp, 1)
popq %rbx



setb -39129(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -39129(%rbp, 1), %bl


andb %bl, -39129(%rbp, 1)
popq %rbx



jz .L201



pushq %rbx

xorq %rbx, %rbx
movl -39087(%rbp, 1), %ebx


movl %ebx, -39137(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -39137(%rbp, 1)

cmpq $800, -39137(%rbp, 1)

jb .L195

movq -39137(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L195:
pushq %r10


leaq -39079(%rbp, 1), %r10

movq %r10, -39145(%rbp, 1)


popq %r10





pushq %rbx


movq $1, %rbx


movq %rbx, -39153(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -39161(%rbp, 1)


movq %r10, -39169(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -39169(%rbp, 1), %rbx


cmpq %rbx, -39153(%rbp, 1)
popq %rbx



jb .L196

movq -39153(%rbp, 1), %rsi


movq -39169(%rbp, 1), %rdx


call err_oob

.L196:
pushq %rbx

xorq %rbx, %rbx
movq -39153(%rbp, 1), %rbx


movq %rbx, -39177(%rbp, 1)
popq %rbx




movq -39177(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -39177(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -39161(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39177(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -39161(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39177(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -39185(%rbp, 1)


movq %r10, -39193(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -39193(%rbp, 1), %rbx


cmpq %rbx, -39120(%rbp, 1)
popq %rbx



jb .L197

movq -39120(%rbp, 1), %rsi


movq -39193(%rbp, 1), %rdx


call err_oob

.L197:
pushq %rbx

xorq %rbx, %rbx
movq -39120(%rbp, 1), %rbx


movq %rbx, -39201(%rbp, 1)
popq %rbx




movq -39201(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -39201(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

xorq %rbx, %rbx
movl -39087(%rbp, 1), %ebx


movl %ebx, -39209(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -39209(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -39185(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39201(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -39185(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39201(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -39217(%rbp, 1)


movq %r10, -39225(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -39225(%rbp, 1), %rbx


cmpq %rbx, -39209(%rbp, 1)
popq %rbx



jb .L198

movq -39209(%rbp, 1), %rsi


movq -39225(%rbp, 1), %rdx


call err_oob

.L198:




pushq %r10


pushq %r11


movq -3292(%rbp, 1), %r11

movq -3284(%rbp, 1), %r10


movq %r11, -39233(%rbp, 1)


movq %r10, -39241(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -39241(%rbp, 1), %rbx


cmpq %rbx, -39120(%rbp, 1)
popq %rbx



jb .L199

movq -39120(%rbp, 1), %rsi


movq -39241(%rbp, 1), %rdx


call err_oob

.L199:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -39217(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39209(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -39245(%rbp, 1)
popq %r13





movl -39245(%rbp, 1), %eax


movss -39245(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -39233(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39120(%rbp, 1), %r12


mulss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movss %xmm0, -39245(%rbp, 1)




pushq %rbx


xorq %rbx, %rbx

movq -39145(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39137(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



addss -39245(%rbp, 1), %xmm0

pushq %rbx


xorq %rbx, %rbx

movq -39145(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -39137(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -39120(%rbp, 1)




jmp .L200

.L201:




incl -39087(%rbp, 1)




jmp .L202

.L203:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -42445(%rbp, 1), %rdi

movq $3200, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -42449(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -42449(%rbp, 1), %ebx


movl %ebx, -42453(%rbp, 1)
popq %rbx






.L209:



pushq %rbx


movq $800, %rbx


movq %rbx, -42461(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -42461(%rbp, 1), %ebx


movl %ebx, -42465(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -42465(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -42453(%rbp, 1), %ebx


movl %ebx, -42469(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -42470(%rbp, 1), %bl


xorb %bl, -42470(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -42465(%rbp, 1), %ebx


cmpl %ebx, -42469(%rbp, 1)
popq %rbx



setl -42470(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -42470(%rbp, 1), %bl


andb %bl, -42470(%rbp, 1)
popq %rbx



jz .L210

movl $1071358620, -42490(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -42498(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3168(%rbp, 1), %r11

movq -3160(%rbp, 1), %r10


movq %r11, -42506(%rbp, 1)


movq %r10, -42514(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -42514(%rbp, 1), %rbx


cmpq %rbx, -42498(%rbp, 1)
popq %rbx



jb .L205

movq -42498(%rbp, 1), %rsi


movq -42514(%rbp, 1), %rdx


call err_oob

.L205:
pushq %rbx

xorq %rbx, %rbx
movq -42498(%rbp, 1), %rbx


movq %rbx, -42522(%rbp, 1)
popq %rbx




movq -42522(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -42522(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -42453(%rbp, 1), %ebx


movl %ebx, -42530(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -42530(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -42506(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42522(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -42506(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42522(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -42538(%rbp, 1)


movq %r10, -42546(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -42546(%rbp, 1), %rbx


cmpq %rbx, -42530(%rbp, 1)
popq %rbx



jb .L206

movq -42530(%rbp, 1), %rsi


movq -42546(%rbp, 1), %rdx


call err_oob

.L206:


movl $1071358620, -42550(%rbp, 1)



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -42538(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42530(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -42554(%rbp, 1)
popq %r13





movss -42554(%rbp, 1), %xmm0


divss -42550(%rbp, 1), %xmm0

movss %xmm0, -42554(%rbp, 1)





pushq %rbx


movq $0, %rbx


movq %rbx, -42562(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -3168(%rbp, 1), %r11

movq -3160(%rbp, 1), %r10


movq %r11, -42570(%rbp, 1)


movq %r10, -42578(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -42578(%rbp, 1), %rbx


cmpq %rbx, -42562(%rbp, 1)
popq %rbx



jb .L207

movq -42562(%rbp, 1), %rsi


movq -42578(%rbp, 1), %rdx


call err_oob

.L207:
pushq %rbx

xorq %rbx, %rbx
movq -42562(%rbp, 1), %rbx


movq %rbx, -42586(%rbp, 1)
popq %rbx




movq -42586(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -42586(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -42453(%rbp, 1), %ebx


movl %ebx, -42594(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -42594(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -42570(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42586(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -42570(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42586(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -42602(%rbp, 1)


movq %r10, -42610(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -42610(%rbp, 1), %rbx


cmpq %rbx, -42594(%rbp, 1)
popq %rbx



jb .L208

movq -42594(%rbp, 1), %rsi


movq -42610(%rbp, 1), %rdx


call err_oob

.L208:


movl -42554(%rbp, 1), %eax


movss -42554(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -42602(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42594(%rbp, 1), %r12


mulss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movss %xmm0, -42554(%rbp, 1)




movss -42490(%rbp, 1), %xmm0


subss -42554(%rbp, 1), %xmm0

movss %xmm0, -42490(%rbp, 1)




movl $1073741824, -42614(%rbp, 1)



movl $1077936128, -42618(%rbp, 1)



movss -42614(%rbp, 1), %xmm0


divss -42618(%rbp, 1), %xmm0

movss %xmm0, -42614(%rbp, 1)




movl -42490(%rbp, 1), %eax


movss -42490(%rbp, 1), %xmm0


mulss -42614(%rbp, 1), %xmm0

movss %xmm0, -42490(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -42490(%rbp, 1), %ebx


movl %ebx, -42622(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -42453(%rbp, 1), %ebx


movl %ebx, -42478(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -42478(%rbp, 1)

cmpq $800, -42478(%rbp, 1)

jb .L204

movq -42478(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L204:
pushq %r10


leaq -42445(%rbp, 1), %r10

movq %r10, -42486(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -42486(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -42478(%rbp, 1), %r12


movl -42622(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -42453(%rbp, 1)




jmp .L209

.L210:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -45822(%rbp, 1), %rdi

movq $3200, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -45826(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -45826(%rbp, 1), %ebx


movl %ebx, -45830(%rbp, 1)
popq %rbx






.L214:



pushq %rbx


movq $800, %rbx


movq %rbx, -45838(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -45838(%rbp, 1), %ebx


movl %ebx, -45842(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -45842(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -45830(%rbp, 1), %ebx


movl %ebx, -45846(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -45847(%rbp, 1), %bl


xorb %bl, -45847(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -45842(%rbp, 1), %ebx


cmpl %ebx, -45846(%rbp, 1)
popq %rbx



setl -45847(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -45847(%rbp, 1), %bl


andb %bl, -45847(%rbp, 1)
popq %rbx



jz .L215



pushq %rbx

xorq %rbx, %rbx
movl -45830(%rbp, 1), %ebx


movl %ebx, -45871(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -45871(%rbp, 1)

cmpq $800, -45871(%rbp, 1)

jb .L212

movq -45871(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L212:
pushq %r10


leaq -42445(%rbp, 1), %r10

movq %r10, -45879(%rbp, 1)


popq %r10






pushq %rbx

xorq %rbx, %rbx
movl -45830(%rbp, 1), %ebx


movl %ebx, -45887(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -45887(%rbp, 1)

cmpq $800, -45887(%rbp, 1)

jb .L213

movq -45887(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L213:
pushq %r10


leaq -39079(%rbp, 1), %r10

movq %r10, -45895(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -45879(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -45871(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -45899(%rbp, 1)
popq %r13





movl -45899(%rbp, 1), %eax


movss -45899(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -45895(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -45887(%rbp, 1), %r12


mulss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movss %xmm0, -45899(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -45899(%rbp, 1), %ebx


movl %ebx, -45903(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -45830(%rbp, 1), %ebx


movl %ebx, -45855(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -45855(%rbp, 1)

cmpq $800, -45855(%rbp, 1)

jb .L211

movq -45855(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L211:
pushq %r10


leaq -45822(%rbp, 1), %r10

movq %r10, -45863(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -45863(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -45855(%rbp, 1), %r12


movl -45903(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -45830(%rbp, 1)




jmp .L214

.L215:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -49103(%rbp, 1), %rdi

movq $3200, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rsi


pushq %rdi


pushq %rcx


leaq -45822(%rbp, 1), %rsi

leaq -49103(%rbp, 1), %rdi

movq $3200, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -2557903(%rbp, 1), %rdi

movq $2508800, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, -2557907(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -2557907(%rbp, 1), %ebx


movl %ebx, -2557911(%rbp, 1)
popq %rbx






.L223:



pushq %rbx


movq $800, %rbx


movq %rbx, -2557919(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -2557919(%rbp, 1), %ebx


movl %ebx, -2557923(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -2557923(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -2557911(%rbp, 1), %ebx


movl %ebx, -2557927(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -2557928(%rbp, 1), %bl


xorb %bl, -2557928(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -2557923(%rbp, 1), %ebx


cmpl %ebx, -2557927(%rbp, 1)
popq %rbx



setl -2557928(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -2557928(%rbp, 1), %bl


andb %bl, -2557928(%rbp, 1)
popq %rbx



jz .L224

movl $0, -2557932(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -2557932(%rbp, 1), %ebx


movl %ebx, -2557936(%rbp, 1)
popq %rbx






.L220:



pushq %rbx


movq $784, %rbx


movq %rbx, -2557944(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -2557944(%rbp, 1), %ebx


movl %ebx, -2557948(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -2557948(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -2557936(%rbp, 1), %ebx


movl %ebx, -2557952(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -2557953(%rbp, 1), %bl


xorb %bl, -2557953(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -2557948(%rbp, 1), %ebx


cmpl %ebx, -2557952(%rbp, 1)
popq %rbx



setl -2557953(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -2557953(%rbp, 1), %bl


andb %bl, -2557953(%rbp, 1)
popq %rbx



jz .L221



pushq %rbx

xorq %rbx, %rbx
movl -2557911(%rbp, 1), %ebx


movl %ebx, -2558001(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -2558001(%rbp, 1)

cmpq $800, -2558001(%rbp, 1)

jb .L218

movq -2558001(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L218:
pushq %r10


leaq -45822(%rbp, 1), %r10

movq %r10, -2558009(%rbp, 1)


popq %r10






pushq %rbx

xorq %rbx, %rbx
movl -2557936(%rbp, 1), %ebx


movl %ebx, -2558017(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -2558017(%rbp, 1)

cmpq $784, -2558017(%rbp, 1)

jb .L219

movq -2558017(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L219:
pushq %r10


leaq -3152(%rbp, 1), %r10

movq %r10, -2558025(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -2558025(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558017(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -2558029(%rbp, 1)
popq %r13





movl -2558029(%rbp, 1), %eax


movss -2558029(%rbp, 1), %xmm0


mulss -3212(%rbp, 1), %xmm0

movss %xmm0, -2558029(%rbp, 1)




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -2558009(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558001(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -2558033(%rbp, 1)
popq %r13





movl -2558033(%rbp, 1), %eax


movss -2558033(%rbp, 1), %xmm0


mulss -2558029(%rbp, 1), %xmm0

movss %xmm0, -2558033(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -2558033(%rbp, 1), %ebx


movl %ebx, -2558037(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -2557911(%rbp, 1), %ebx


movl %ebx, -2557961(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -2557961(%rbp, 1)

cmpq $800, -2557961(%rbp, 1)

jb .L216

movq -2557961(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L216:
pushq %r10


leaq -2557903(%rbp, 1), %r10

movq %r10, -2557969(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2557961(%rbp, 1), %rbx


movq %rbx, -2557977(%rbp, 1)
popq %rbx




movq -2557977(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -2557977(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -2557936(%rbp, 1), %ebx


movl %ebx, -2557985(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -2557985(%rbp, 1)

cmpq $784, -2557985(%rbp, 1)

jb .L217

movq -2557985(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L217:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -2557969(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2557977(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -2557993(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -2557993(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2557985(%rbp, 1), %r12


movl -2558037(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -2557936(%rbp, 1)




jmp .L220

.L221:




pushq %rbx

xorq %rbx, %rbx
movl -2557911(%rbp, 1), %ebx


movl %ebx, -2558045(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -2558045(%rbp, 1)

cmpq $800, -2558045(%rbp, 1)

jb .L222

movq -2558045(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L222:
pushq %r10


leaq -49103(%rbp, 1), %r10

movq %r10, -2558053(%rbp, 1)


popq %r10





pushq %rbx


xorq %rbx, %rbx

movq -2558053(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558045(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %eax
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -2558053(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558045(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



mulss -3212(%rbp, 1), %xmm0

pushq %rbx


xorq %rbx, %rbx

movq -2558053(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558045(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incl -2557911(%rbp, 1)




jmp .L223

.L224:




pushq %rbx


movq $0, %rbx


movq %rbx, -2558061(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -2558069(%rbp, 1)


movq %r10, -2558077(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558077(%rbp, 1), %rbx


cmpq %rbx, -2558061(%rbp, 1)
popq %rbx



jb .L225

movq -2558061(%rbp, 1), %rsi


movq -2558077(%rbp, 1), %rdx


call err_oob

.L225:
pushq %rbx

xorq %rbx, %rbx
movq -2558061(%rbp, 1), %rbx


movq %rbx, -2558085(%rbp, 1)
popq %rbx




movq -2558085(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -2558085(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -2558069(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558085(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

movq %r13, -2558093(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -2558093(%rbp, 1)


pushq %rbx


movq $1, %rbx


movq %rbx, -2558101(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -2558101(%rbp, 1), %rbx


subq %rbx, -2558093(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -2558093(%rbp, 1), %rbx


movq %rbx, -2558109(%rbp, 1)
popq %rbx






.L239:

pushq %rbx


movq $0, %rbx


movq %rbx, -2558117(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -2558109(%rbp, 1), %rbx


movq %rbx, -2558125(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -2558126(%rbp, 1), %bl


xorb %bl, -2558126(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -2558117(%rbp, 1), %rbx


cmpq %rbx, -2558125(%rbp, 1)
popq %rbx



setge -2558126(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -2558126(%rbp, 1), %bl


andb %bl, -2558126(%rbp, 1)
popq %rbx



jz .L240



movq $.L226, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -2558130(%rbp, 1)





pushq %rbx


movq $0, %rbx


movq %rbx, -2558138(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -2558138(%rbp, 1), %rbx


movq %rbx, -2558146(%rbp, 1)
popq %rbx






.L234:


pushq %rbx


movq $0, %rbx


movq %rbx, -2558154(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -2558162(%rbp, 1)


movq %r10, -2558170(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558170(%rbp, 1), %rbx


cmpq %rbx, -2558154(%rbp, 1)
popq %rbx



jb .L227

movq -2558154(%rbp, 1), %rsi


movq -2558170(%rbp, 1), %rdx


call err_oob

.L227:
pushq %rbx

xorq %rbx, %rbx
movq -2558154(%rbp, 1), %rbx


movq %rbx, -2558178(%rbp, 1)
popq %rbx




movq -2558178(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -2558178(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -2558162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558178(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -2558162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558178(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -2558186(%rbp, 1)


movq %r10, -2558194(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558194(%rbp, 1), %rbx


cmpq %rbx, -2558109(%rbp, 1)
popq %rbx



jb .L228

movq -2558109(%rbp, 1), %rsi


movq -2558194(%rbp, 1), %rdx


call err_oob

.L228:
pushq %rbx

xorq %rbx, %rbx
movq -2558109(%rbp, 1), %rbx


movq %rbx, -2558202(%rbp, 1)
popq %rbx




movq -2558202(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -2558202(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx

xorq %rbx, %rbx
movq -2558146(%rbp, 1), %rbx


movq %rbx, -2558210(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -2558211(%rbp, 1), %bl


xorb %bl, -2558211(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -2558186(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558202(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

cmpq %r13, -2558210(%rbp, 1)
popq %r13



setb -2558211(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -2558211(%rbp, 1), %bl


andb %bl, -2558211(%rbp, 1)
popq %rbx



jz .L235


pushq %rbx


movq $0, %rbx


movq %rbx, -2558219(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -2558227(%rbp, 1)


movq %r10, -2558235(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558235(%rbp, 1), %rbx


cmpq %rbx, -2558219(%rbp, 1)
popq %rbx



jb .L229

movq -2558219(%rbp, 1), %rsi


movq -2558235(%rbp, 1), %rdx


call err_oob

.L229:
pushq %rbx

xorq %rbx, %rbx
movq -2558219(%rbp, 1), %rbx


movq %rbx, -2558243(%rbp, 1)
popq %rbx




movq -2558243(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -2558243(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -2558227(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558243(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -2558227(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558243(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -2558251(%rbp, 1)


movq %r10, -2558259(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558259(%rbp, 1), %rbx


cmpq %rbx, -2558109(%rbp, 1)
popq %rbx



jb .L230

movq -2558109(%rbp, 1), %rsi


movq -2558259(%rbp, 1), %rdx


call err_oob

.L230:
pushq %rbx

xorq %rbx, %rbx
movq -2558109(%rbp, 1), %rbx


movq %rbx, -2558267(%rbp, 1)
popq %rbx




movq -2558267(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -2558267(%rbp, 1)



// mul on the CPU up here ^






pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -2558251(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558267(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -2558251(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558267(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -2558275(%rbp, 1)


movq %r10, -2558283(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558283(%rbp, 1), %rbx


cmpq %rbx, -2558146(%rbp, 1)
popq %rbx



jb .L231

movq -2558146(%rbp, 1), %rsi


movq -2558283(%rbp, 1), %rdx


call err_oob

.L231:




cmpq $800, -2558109(%rbp, 1)

jb .L232

movq -2558109(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L232:
pushq %r10


leaq -2557903(%rbp, 1), %r10

movq %r10, -2558291(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558109(%rbp, 1), %rbx


movq %rbx, -2558299(%rbp, 1)
popq %rbx




movq -2558299(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -2558299(%rbp, 1)



// mul on the CPU up here ^




cmpq $784, -2558146(%rbp, 1)

jb .L233

movq -2558146(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L233:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -2558291(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558299(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -2558307(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -2558275(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558146(%rbp, 1), %r12


movss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -2558307(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558146(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -2558275(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558146(%rbp, 1), %r12


movss %xmm0, 0(%rbx, %r12, 4)
popq %r12

popq %rbx







incq -2558146(%rbp, 1)




jmp .L234

.L235:



pushq %rbx


movq $0, %rbx


movq %rbx, -2558315(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -16(%rbp, 1), %r11

movq -8(%rbp, 1), %r10


movq %r11, -2558323(%rbp, 1)


movq %r10, -2558331(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558331(%rbp, 1), %rbx


cmpq %rbx, -2558315(%rbp, 1)
popq %rbx



jb .L236

movq -2558315(%rbp, 1), %rsi


movq -2558331(%rbp, 1), %rdx


call err_oob

.L236:
pushq %rbx

xorq %rbx, %rbx
movq -2558315(%rbp, 1), %rbx


movq %rbx, -2558339(%rbp, 1)
popq %rbx




movq -2558339(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -2558339(%rbp, 1)



// mul on the CPU up here ^




pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -2558323(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558339(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -2558323(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558339(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -2558347(%rbp, 1)


movq %r10, -2558355(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -2558355(%rbp, 1), %rbx


cmpq %rbx, -2558109(%rbp, 1)
popq %rbx



jb .L237

movq -2558109(%rbp, 1), %rsi


movq -2558355(%rbp, 1), %rdx


call err_oob

.L237:
pushq %rbx

xorq %rbx, %rbx
movq -2558109(%rbp, 1), %rbx


movq %rbx, -2558363(%rbp, 1)
popq %rbx




movq -2558363(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -2558363(%rbp, 1)



// mul on the CPU up here ^







cmpq $800, -2558109(%rbp, 1)

jb .L238

movq -2558109(%rbp, 1), %rsi


movq $800, %rdx


call err_oob

.L238:
pushq %r10


leaq -49103(%rbp, 1), %r10

movq %r10, -2558371(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -2558347(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558363(%rbp, 1), %r12


movss 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -2558371(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558109(%rbp, 1), %r12


subss 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -2558347(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -2558363(%rbp, 1), %r12


movss %xmm0, 16(%rbx, %r12, 1)
popq %r12

popq %rbx







decq -2558109(%rbp, 1)




jmp .L239

.L240:




._back:
movq %rbp, %rsp

popq %rbp

ret



.string "\0save_model"
.global save_model
save_model:
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




movq %rdi, -48(%rbp, 1)


movq %rsi, -40(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -48(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %rdx, -64(%rbp, 1)


movq %rcx, -56(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -64(%rbp, 1), %rsi

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi








movl $577, %r12d



movl $420, %r13d



movq -16(%rbp, 1), %rdi


movl %r12d, %esi


movl %r13d, %edx


movq %rsp, %rax



movq $0, %rax


call open

movl %eax, %r14d





movl %r14d, -68(%rbp, 1)




movl $0, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -68(%rbp, 1), %ebx


movl %ebx, -72(%rbp, 1)
popq %rbx





xorb %bl, %bl

cmpl %r15d, -72(%rbp, 1)

setl %bl



andb %bl, %bl

jz .L242





movq $.L241, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r15d






.L242:


pushq %rbx


movq $0, %rbx


movq %rbx, -80(%rbp, 1)

popq %rbx




movl $0, -84(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -84(%rbp, 1), %ebx


movl %ebx, -88(%rbp, 1)
popq %rbx






.L261:





pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -92(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -92(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -96(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -97(%rbp, 1), %bl


xorb %bl, -97(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -92(%rbp, 1), %ebx


cmpl %ebx, -96(%rbp, 1)
popq %rbx



setl -97(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -97(%rbp, 1), %bl


andb %bl, -97(%rbp, 1)
popq %rbx



jz .L262

movl $0, -101(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -101(%rbp, 1), %ebx


movl %ebx, -105(%rbp, 1)
popq %rbx






.L259:




pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -113(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -113(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -121(%rbp, 1)


movq %r10, -129(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -129(%rbp, 1), %rbx


cmpq %rbx, -113(%rbp, 1)
popq %rbx



jb .L243

movq -113(%rbp, 1), %rsi


movq -129(%rbp, 1), %rdx


call err_oob

.L243:
pushq %rbx

xorq %rbx, %rbx
movq -113(%rbp, 1), %rbx


movq %rbx, -137(%rbp, 1)
popq %rbx




movq -137(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -137(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -121(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -137(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -141(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -141(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -145(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -146(%rbp, 1), %bl


xorb %bl, -146(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -141(%rbp, 1), %ebx


cmpl %ebx, -145(%rbp, 1)
popq %rbx



setl -146(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -146(%rbp, 1), %bl


andb %bl, -146(%rbp, 1)
popq %rbx



jz .L260



pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -154(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -154(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -162(%rbp, 1)


movq %r10, -170(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -170(%rbp, 1), %rbx


cmpq %rbx, -154(%rbp, 1)
popq %rbx



jb .L244

movq -154(%rbp, 1), %rsi


movq -170(%rbp, 1), %rdx


call err_oob

.L244:
pushq %rbx

xorq %rbx, %rbx
movq -154(%rbp, 1), %rbx


movq %rbx, -178(%rbp, 1)
popq %rbx




movq -178(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -178(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -186(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -186(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -178(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -178(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -194(%rbp, 1)


movq %r10, -202(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -202(%rbp, 1), %rbx


cmpq %rbx, -186(%rbp, 1)
popq %rbx



jb .L245

movq -186(%rbp, 1), %rsi


movq -202(%rbp, 1), %rdx


call err_oob

.L245:
pushq %rbx

xorq %rbx, %rbx
movq -186(%rbp, 1), %rbx


movq %rbx, -210(%rbp, 1)
popq %rbx




movq -210(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -210(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


pushq %r12


xorq %r12, %r12

movq -194(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -210(%rbp, 1), %r13


leaq 16(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -218(%rbp, 1)


popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -218(%rbp, 1), %rbx


movq %rbx, -226(%rbp, 1)
popq %rbx








movq $.L246, %rdi


movq -226(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -230(%rbp, 1)








pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -238(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -238(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -246(%rbp, 1)


movq %r10, -254(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -254(%rbp, 1), %rbx


cmpq %rbx, -238(%rbp, 1)
popq %rbx



jb .L247

movq -238(%rbp, 1), %rsi


movq -254(%rbp, 1), %rdx


call err_oob

.L247:
pushq %rbx

xorq %rbx, %rbx
movq -238(%rbp, 1), %rbx


movq %rbx, -262(%rbp, 1)
popq %rbx




movq -262(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -262(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -270(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -270(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -246(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -262(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -246(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -262(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -278(%rbp, 1)


movq %r10, -286(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -286(%rbp, 1), %rbx


cmpq %rbx, -270(%rbp, 1)
popq %rbx



jb .L248

movq -270(%rbp, 1), %rsi


movq -286(%rbp, 1), %rdx


call err_oob

.L248:
pushq %rbx

xorq %rbx, %rbx
movq -270(%rbp, 1), %rbx


movq %rbx, -294(%rbp, 1)
popq %rbx




movq -294(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -294(%rbp, 1)



// mul on the CPU up here ^









pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -302(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -302(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -310(%rbp, 1)


movq %r10, -318(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -318(%rbp, 1), %rbx


cmpq %rbx, -302(%rbp, 1)
popq %rbx



jb .L249

movq -302(%rbp, 1), %rsi


movq -318(%rbp, 1), %rdx


call err_oob

.L249:
pushq %rbx

xorq %rbx, %rbx
movq -302(%rbp, 1), %rbx


movq %rbx, -326(%rbp, 1)
popq %rbx




movq -326(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -326(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -334(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -334(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -310(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -326(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -310(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -326(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -342(%rbp, 1)


movq %r10, -350(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -350(%rbp, 1), %rbx


cmpq %rbx, -334(%rbp, 1)
popq %rbx



jb .L250

movq -334(%rbp, 1), %rsi


movq -350(%rbp, 1), %rdx


call err_oob

.L250:
pushq %rbx

xorq %rbx, %rbx
movq -334(%rbp, 1), %rbx


movq %rbx, -358(%rbp, 1)
popq %rbx




movq -358(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -358(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx


movq $4, %rbx


movq %rbx, -366(%rbp, 1)

popq %rbx




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -342(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -358(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

movq %r13, -374(%rbp, 1)
popq %r13





movq -374(%rbp, 1), %rax


imulq -366(%rbp, 1), %rax

movq %rax, -374(%rbp, 1)




movl -68(%rbp, 1), %edi


pushq %rbx


xorq %rbx, %rbx

movq -278(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -294(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq -374(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call write

movq %rax, -382(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -382(%rbp, 1), %rbx


movq %rbx, -390(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -390(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx







pushq %rbx


movq $-1, %rbx


movq %rbx, -398(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -80(%rbp, 1), %rbx


movq %rbx, -406(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -407(%rbp, 1), %bl


xorb %bl, -407(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -398(%rbp, 1), %rbx


cmpq %rbx, -406(%rbp, 1)
popq %rbx



sete -407(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -407(%rbp, 1), %bl


andb %bl, -407(%rbp, 1)
popq %rbx



jz .L253





movq $.L251, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -411(%rbp, 1)






jmp .L254


.L253:



movq $.L252, %rdi


movq -80(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -415(%rbp, 1)






.L254:




pushq %rbx


movq $4, %rbx


movq %rbx, -423(%rbp, 1)

popq %rbx




movl -68(%rbp, 1), %edi


movq -226(%rbp, 1), %rsi


movq -423(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call write

movq %rax, -431(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -431(%rbp, 1), %rbx


movq %rbx, -439(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -439(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx







pushq %rbx


movq $-1, %rbx


movq %rbx, -447(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -80(%rbp, 1), %rbx


movq %rbx, -455(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -456(%rbp, 1), %bl


xorb %bl, -456(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -447(%rbp, 1), %rbx


cmpq %rbx, -455(%rbp, 1)
popq %rbx



sete -456(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -456(%rbp, 1), %bl


andb %bl, -456(%rbp, 1)
popq %rbx



jz .L257





movq $.L255, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -460(%rbp, 1)






jmp .L258


.L257:



movq $.L256, %rdi


movq -80(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -464(%rbp, 1)






.L258:




incl -105(%rbp, 1)




jmp .L259

.L260:




incl -88(%rbp, 1)




jmp .L261

.L262:



movl -68(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -468(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -468(%rbp, 1), %ebx


movl %ebx, -472(%rbp, 1)
popq %rbx






movl $0, -476(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -472(%rbp, 1), %ebx


movl %ebx, -480(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -481(%rbp, 1), %bl


xorb %bl, -481(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -476(%rbp, 1), %ebx


cmpl %ebx, -480(%rbp, 1)
popq %rbx



setl -481(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -481(%rbp, 1), %bl


andb %bl, -481(%rbp, 1)
popq %rbx



jz .L264





movq $.L263, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -485(%rbp, 1)






.L264:



._save_model:
movq %rbp, %rsp

popq %rbp

ret



.string "\0read_model"
.global read_model
read_model:
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




movq %rdi, -48(%rbp, 1)


movq %rsi, -40(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -48(%rbp, 1), %rsi

leaq -16(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %rdx, -64(%rbp, 1)


movq %rcx, -56(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -64(%rbp, 1), %rsi

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi








movl $0, %r12d



movl $0, %r13d



movq -16(%rbp, 1), %rdi


movl %r12d, %esi


movl %r13d, %edx


movq %rsp, %rax



movq $0, %rax


call open

movl %eax, %r14d





movl %r14d, -68(%rbp, 1)




movl $0, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -68(%rbp, 1), %ebx


movl %ebx, -72(%rbp, 1)
popq %rbx





xorb %bl, %bl

cmpl %r15d, -72(%rbp, 1)

setl %bl



andb %bl, %bl

jz .L266





movq $.L265, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r15d






.L266:


pushq %rbx


movq $0, %rbx


movq %rbx, -80(%rbp, 1)

popq %rbx




movl $0, -84(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -84(%rbp, 1), %ebx


movl %ebx, -88(%rbp, 1)
popq %rbx






.L285:





pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -92(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -92(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -96(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -97(%rbp, 1), %bl


xorb %bl, -97(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -92(%rbp, 1), %ebx


cmpl %ebx, -96(%rbp, 1)
popq %rbx



setl -97(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -97(%rbp, 1), %bl


andb %bl, -97(%rbp, 1)
popq %rbx



jz .L286

movl $0, -101(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -101(%rbp, 1), %ebx


movl %ebx, -105(%rbp, 1)
popq %rbx






.L283:




pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -113(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -113(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -121(%rbp, 1)


movq %r10, -129(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -129(%rbp, 1), %rbx


cmpq %rbx, -113(%rbp, 1)
popq %rbx



jb .L267

movq -113(%rbp, 1), %rsi


movq -129(%rbp, 1), %rdx


call err_oob

.L267:
pushq %rbx

xorq %rbx, %rbx
movq -113(%rbp, 1), %rbx


movq %rbx, -137(%rbp, 1)
popq %rbx




movq -137(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -137(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -121(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -137(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -141(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -141(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -145(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -146(%rbp, 1), %bl


xorb %bl, -146(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -141(%rbp, 1), %ebx


cmpl %ebx, -145(%rbp, 1)
popq %rbx



setl -146(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -146(%rbp, 1), %bl


andb %bl, -146(%rbp, 1)
popq %rbx



jz .L284



pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -154(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -154(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -162(%rbp, 1)


movq %r10, -170(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -170(%rbp, 1), %rbx


cmpq %rbx, -154(%rbp, 1)
popq %rbx



jb .L268

movq -154(%rbp, 1), %rsi


movq -170(%rbp, 1), %rdx


call err_oob

.L268:
pushq %rbx

xorq %rbx, %rbx
movq -154(%rbp, 1), %rbx


movq %rbx, -178(%rbp, 1)
popq %rbx




movq -178(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -178(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -186(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -186(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -178(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -162(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -178(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -194(%rbp, 1)


movq %r10, -202(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -202(%rbp, 1), %rbx


cmpq %rbx, -186(%rbp, 1)
popq %rbx



jb .L269

movq -186(%rbp, 1), %rsi


movq -202(%rbp, 1), %rdx


call err_oob

.L269:
pushq %rbx

xorq %rbx, %rbx
movq -186(%rbp, 1), %rbx


movq %rbx, -210(%rbp, 1)
popq %rbx




movq -210(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -210(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


pushq %r12


xorq %r12, %r12

movq -194(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -210(%rbp, 1), %r13


leaq 16(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -218(%rbp, 1)


popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -218(%rbp, 1), %rbx


movq %rbx, -226(%rbp, 1)
popq %rbx








movq $.L270, %rdi


movq -226(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -230(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -238(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -238(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -246(%rbp, 1)


movq %r10, -254(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -254(%rbp, 1), %rbx


cmpq %rbx, -238(%rbp, 1)
popq %rbx



jb .L271

movq -238(%rbp, 1), %rsi


movq -254(%rbp, 1), %rdx


call err_oob

.L271:
pushq %rbx

xorq %rbx, %rbx
movq -238(%rbp, 1), %rbx


movq %rbx, -262(%rbp, 1)
popq %rbx




movq -262(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -262(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -270(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -270(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -246(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -262(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -246(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -262(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -278(%rbp, 1)


movq %r10, -286(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -286(%rbp, 1), %rbx


cmpq %rbx, -270(%rbp, 1)
popq %rbx



jb .L272

movq -270(%rbp, 1), %rsi


movq -286(%rbp, 1), %rdx


call err_oob

.L272:
pushq %rbx

xorq %rbx, %rbx
movq -270(%rbp, 1), %rbx


movq %rbx, -294(%rbp, 1)
popq %rbx




movq -294(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -294(%rbp, 1)



// mul on the CPU up here ^







pushq %rbx


movq $4, %rbx


movq %rbx, -302(%rbp, 1)

popq %rbx




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -278(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -294(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r13


popq %r12

popq %rbx

movq %r13, -310(%rbp, 1)
popq %r13





movq -310(%rbp, 1), %rax


imulq -302(%rbp, 1), %rax

movq %rax, -310(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -310(%rbp, 1), %rbx


movq %rbx, -318(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movl -88(%rbp, 1), %ebx


movl %ebx, -326(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -326(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -334(%rbp, 1)


movq %r10, -342(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -342(%rbp, 1), %rbx


cmpq %rbx, -326(%rbp, 1)
popq %rbx



jb .L273

movq -326(%rbp, 1), %rsi


movq -342(%rbp, 1), %rdx


call err_oob

.L273:
pushq %rbx

xorq %rbx, %rbx
movq -326(%rbp, 1), %rbx


movq %rbx, -350(%rbp, 1)
popq %rbx




movq -350(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -350(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -105(%rbp, 1), %ebx


movl %ebx, -358(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -358(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -334(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -350(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -334(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -350(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -366(%rbp, 1)


movq %r10, -374(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -374(%rbp, 1), %rbx


cmpq %rbx, -358(%rbp, 1)
popq %rbx



jb .L274

movq -358(%rbp, 1), %rsi


movq -374(%rbp, 1), %rdx


call err_oob

.L274:
pushq %rbx

xorq %rbx, %rbx
movq -358(%rbp, 1), %rbx


movq %rbx, -382(%rbp, 1)
popq %rbx




movq -382(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -382(%rbp, 1)



// mul on the CPU up here ^








movl -68(%rbp, 1), %edi


pushq %rbx


xorq %rbx, %rbx

movq -366(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -382(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx



movq -318(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -390(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -390(%rbp, 1), %rbx


movq %rbx, -398(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -398(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movq -80(%rbp, 1), %rbx


movq %rbx, -406(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -407(%rbp, 1), %bl


xorb %bl, -407(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -318(%rbp, 1), %rbx


cmpq %rbx, -406(%rbp, 1)
popq %rbx



setb -407(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -407(%rbp, 1), %bl


andb %bl, -407(%rbp, 1)
popq %rbx



jz .L277





movq $.L275, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -411(%rbp, 1)






jmp .L278


.L277:



movq $.L276, %rdi


movq -80(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -415(%rbp, 1)






.L278:




pushq %rbx


movq $4, %rbx


movq %rbx, -423(%rbp, 1)

popq %rbx




movl -68(%rbp, 1), %edi


movq -226(%rbp, 1), %rsi


movq -423(%rbp, 1), %rdx


movq %rsp, %rax



movq $0, %rax


call read

movq %rax, -431(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -431(%rbp, 1), %rbx


movq %rbx, -439(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -439(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -447(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -80(%rbp, 1), %rbx


movq %rbx, -455(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -456(%rbp, 1), %bl


xorb %bl, -456(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -447(%rbp, 1), %rbx


cmpq %rbx, -455(%rbp, 1)
popq %rbx



setb -456(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -456(%rbp, 1), %bl


andb %bl, -456(%rbp, 1)
popq %rbx



jz .L281





movq $.L279, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -460(%rbp, 1)






jmp .L282


.L281:



movq $.L280, %rdi


movq -80(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -464(%rbp, 1)






.L282:




incl -105(%rbp, 1)




jmp .L283

.L284:




incl -88(%rbp, 1)




jmp .L285

.L286:



movl -68(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call close

movl %eax, -468(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -468(%rbp, 1), %ebx


movl %ebx, -472(%rbp, 1)
popq %rbx






movl $0, -476(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -472(%rbp, 1), %ebx


movl %ebx, -480(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -481(%rbp, 1), %bl


xorb %bl, -481(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -476(%rbp, 1), %ebx


cmpl %ebx, -480(%rbp, 1)
popq %rbx



setl -481(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -481(%rbp, 1), %bl


andb %bl, -481(%rbp, 1)
popq %rbx



jz .L288





movq $.L287, %rdi


movq -16(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -485(%rbp, 1)






.L288:



._read_model:
movq %rbp, %rsp

popq %rbp

ret



.string "\0gaussian2d"
.global gaussian2d
gaussian2d:
pushq %rbp

movq %rsp, %rbp

subq $144, %rsp



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




movsd %xmm0, -8(%rbp, 1)


movsd %xmm1, -16(%rbp, 1)


movsd %xmm2, -24(%rbp, 1)




movabsq $4607182418800017408, %r12



movabsq $4611686018427387904, %r13



movabsq $4614256656552045848, %r14





movq -24(%rbp, 1), %r15



movq %r15, %rax


movq %r15, -32(%rbp, 1)


movsd -32(%rbp, 1), %xmm0


mulsd -24(%rbp, 1), %xmm0

movq %xmm0, %r15




movq %r14, %rax


movq %r14, -40(%rbp, 1)


movsd -40(%rbp, 1), %xmm0


movq %r15, -48(%rbp, 1)


movsd -48(%rbp, 1), %xmm1


mulsd %xmm1, %xmm0

movq %xmm0, %r14




movq %r13, %rax


movq %r13, %r15


movq %r15, %xmm0


movq %r14, -56(%rbp, 1)


movsd -56(%rbp, 1), %xmm1


mulsd %xmm1, %xmm0

movq %xmm0, %r13




movq %r12, %r14


movq %r14, %xmm0


movq %r13, -64(%rbp, 1)


movsd -64(%rbp, 1), %xmm1


divsd %xmm1, %xmm0

movq %xmm0, %r12






movq -8(%rbp, 1), %r13



movq %r13, %rax


movq %r13, -72(%rbp, 1)


movsd -72(%rbp, 1), %xmm0


mulsd -8(%rbp, 1), %xmm0

movq %xmm0, %r13






pushq %rbx

xorq %rbx, %rbx
movq -16(%rbp, 1), %rbx


movq %rbx, -80(%rbp, 1)
popq %rbx





movq -80(%rbp, 1), %rax


movsd -80(%rbp, 1), %xmm0


mulsd -16(%rbp, 1), %xmm0

movsd %xmm0, -80(%rbp, 1)




movq %r13, -88(%rbp, 1)


movsd -88(%rbp, 1), %xmm0


addsd -80(%rbp, 1), %xmm0

movq %xmm0, %r13




pushq %rbx


movabsq $4611686018427387904, %rbx


movq %rbx, -96(%rbp, 1)

popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -104(%rbp, 1)
popq %rbx





movq -104(%rbp, 1), %rax


movsd -104(%rbp, 1), %xmm0


mulsd -24(%rbp, 1), %xmm0

movsd %xmm0, -104(%rbp, 1)




movq -96(%rbp, 1), %rax


movsd -96(%rbp, 1), %xmm0


mulsd -104(%rbp, 1), %xmm0

movsd %xmm0, -96(%rbp, 1)




movq %r13, -112(%rbp, 1)


movsd -112(%rbp, 1), %xmm0


divsd -96(%rbp, 1), %xmm0

movq %xmm0, %r13




pushq %rbx


movq $0, %rbx


movq %rbx, -120(%rbp, 1)

popq %rbx



movsd -120(%rbp, 1), %xmm0


movq %r13, -128(%rbp, 1)


movsd -128(%rbp, 1), %xmm1


subsd %xmm1, %xmm0

movsd %xmm0, -120(%rbp, 1)



movq -120(%rbp, 1), %r13




movq %r13, %r13


movq %r13, %xmm0


movq %rsp, %rax



movq $1, %rax


call exp

movsd %xmm0, -136(%rbp, 1)





movq %r12, %rax


movq %r12, -144(%rbp, 1)


movsd -144(%rbp, 1), %xmm0


mulsd -136(%rbp, 1), %xmm0

movq %xmm0, %r12





movq %r12, -152(%rbp, 1)


movsd -152(%rbp, 1), %xmm0



._gaussian2d:
movq %rbp, %rsp

popq %rbp

ret



.string "\0gaussian_filter"
.global gaussian_filter
gaussian_filter:
pushq %rbp

movq %rsp, %rbp

subq $19056, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -6272(%rbp, 1), %rdi

movq $6272, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $0, %rbx


movq %rbx, -6280(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -6288(%rbp, 1)

popq %rbx



movq %rdi, -6288(%rbp, 1)


pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -6272(%rbp, 1), %rdi

movq $6272, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



movsd %xmm0, -6280(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -12120(%rbp, 1), %rdi

movq $5832, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, %r12d



movl %r12d, -12124(%rbp, 1)




.L293:

movl $27, %r13d



movl -12124(%rbp, 1), %r14d



xorb %bl, %bl

cmpl %r13d, %r14d

setl %bl



andb %bl, %bl

jz .L294

movl $0, %r13d



movl %r13d, -12128(%rbp, 1)




.L291:

movl $27, %r14d



movl -12128(%rbp, 1), %r15d



pushq %rbx

xorq %rbx, %rbx
movb -12129(%rbp, 1), %bl


xorb %bl, -12129(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setl -12129(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -12129(%rbp, 1), %bl


andb %bl, -12129(%rbp, 1)
popq %rbx



jz .L292



movq %rbx, -12153(%rbp, 1)


movl -12124(%rbp, 1), %ebx


movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq -12153(%rbp, 1), %rbx


movsd %xmm0, -12161(%rbp, 1)




pushq %rbx


movq $27, %rbx


movq %rbx, -12169(%rbp, 1)

popq %rbx




cvtsi2sd -12169(%rbp, 1), %xmm0

movsd %xmm0, -12177(%rbp, 1)



pushq %rbx


movabsq $4611686018427387904, %rbx


movq %rbx, -12185(%rbp, 1)

popq %rbx




movsd -12177(%rbp, 1), %xmm0


divsd -12185(%rbp, 1), %xmm0

movsd %xmm0, -12177(%rbp, 1)




movsd -12161(%rbp, 1), %xmm0


subsd -12177(%rbp, 1), %xmm0

movsd %xmm0, -12161(%rbp, 1)






movq %rbx, -12193(%rbp, 1)


movl -12128(%rbp, 1), %ebx


movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq -12193(%rbp, 1), %rbx


movsd %xmm0, -12201(%rbp, 1)




pushq %rbx


movq $27, %rbx


movq %rbx, -12209(%rbp, 1)

popq %rbx




cvtsi2sd -12209(%rbp, 1), %xmm0

movsd %xmm0, -12217(%rbp, 1)



pushq %rbx


movabsq $4611686018427387904, %rbx


movq %rbx, -12225(%rbp, 1)

popq %rbx




movsd -12217(%rbp, 1), %xmm0


divsd -12225(%rbp, 1), %xmm0

movsd %xmm0, -12217(%rbp, 1)




movsd -12201(%rbp, 1), %xmm0


subsd -12217(%rbp, 1), %xmm0

movsd %xmm0, -12201(%rbp, 1)





movsd -12161(%rbp, 1), %xmm0


movsd -12201(%rbp, 1), %xmm1


movsd -6280(%rbp, 1), %xmm2


movq %rsp, %rax



movq $1, %rax


call gaussian2d

movsd %xmm0, -12233(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -12233(%rbp, 1), %rbx


movq %rbx, -12241(%rbp, 1)
popq %rbx







movl -12124(%rbp, 1), %r14d



movabsq $4294967295, %rax


andq %rax, %r14

cmpq $27, %r14

jb .L289

movq %r14, %rsi


movq $27, %rdx


call err_oob

.L289:
pushq %r10


leaq -12120(%rbp, 1), %r10

movq %r10, -12137(%rbp, 1)


popq %r10


movq %r14, %rax


imulq $216, %rax

movq %rax, %r14






movl -12128(%rbp, 1), %r15d



movabsq $4294967295, %rax


andq %rax, %r15

cmpq $27, %r15

jb .L290

movq %r15, %rsi


movq $27, %rdx


call err_oob

.L290:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -12137(%rbp, 1), %rbx


leaq 0(%rbx, %r14, 1), %r10
popq %rbx


movq %r10, -12145(%rbp, 1)


popq %r10




pushq %r12

xorq %r12, %r12
pushq %rbx


xorq %rbx, %rbx

movq -12145(%rbp, 1), %rbx


movq -12241(%rbp, 1), %r12


movq %r12, 0(%rbx, %r15, 8)
popq %rbx

popq %r12








incl -12128(%rbp, 1)




jmp .L291

.L292:




incl -12124(%rbp, 1)




jmp .L293

.L294:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -18513(%rbp, 1), %rdi

movq $6272, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax





pushq %rbx


movq $27, %rbx


movq %rbx, -18521(%rbp, 1)

popq %rbx




pushq %rbx


movq $2, %rbx


movq %rbx, -18529(%rbp, 1)

popq %rbx




xorq %rdx, %rdx

xorq %rax, %rax

movq -18521(%rbp, 1), %rax


idivq -18529(%rbp, 1)

movq %rax, -18521(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -18521(%rbp, 1), %rbx


movq %rbx, -18537(%rbp, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -18545(%rbp, 1)

popq %rbx




cmpq $27, -18545(%rbp, 1)

jb .L295

movq -18545(%rbp, 1), %rsi


movq $27, %rdx


call err_oob

.L295:
pushq %r10


leaq -12120(%rbp, 1), %r10

movq %r10, -18553(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18545(%rbp, 1), %rbx


movq %rbx, -18561(%rbp, 1)
popq %rbx




movq -18561(%rbp, 1), %rax


imulq $216, %rax

movq %rax, -18561(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $27, %rbx


movq %rbx, -18569(%rbp, 1)

popq %rbx




pushq %rbx


movq $2, %rbx


movq %rbx, -18577(%rbp, 1)

popq %rbx




xorq %rdx, %rdx

xorq %rax, %rax

movq -18569(%rbp, 1), %rax


idivq -18577(%rbp, 1)

movq %rax, -18569(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -18569(%rbp, 1), %rbx


movq %rbx, -18585(%rbp, 1)
popq %rbx





pushq %rbx


movq $0, %rbx


movq %rbx, -18593(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18593(%rbp, 1), %rbx


movq %rbx, -18601(%rbp, 1)
popq %rbx






.L313:


pushq %rbx


movq $28, %rbx


movq %rbx, -18609(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18601(%rbp, 1), %rbx


movq %rbx, -18617(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18618(%rbp, 1), %bl


xorb %bl, -18618(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18609(%rbp, 1), %rbx


cmpq %rbx, -18617(%rbp, 1)
popq %rbx



setb -18618(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18618(%rbp, 1), %bl


andb %bl, -18618(%rbp, 1)
popq %rbx



jz .L314

pushq %rbx


movq $0, %rbx


movq %rbx, -18626(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18626(%rbp, 1), %rbx


movq %rbx, -18634(%rbp, 1)
popq %rbx






.L311:



cmpq $28, -18601(%rbp, 1)

jb .L296

movq -18601(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L296:
pushq %r10


leaq -6272(%rbp, 1), %r10

movq %r10, -18642(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18601(%rbp, 1), %rbx


movq %rbx, -18650(%rbp, 1)
popq %rbx




movq -18650(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -18650(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $28, %rbx


movq %rbx, -18658(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18634(%rbp, 1), %rbx


movq %rbx, -18666(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18667(%rbp, 1), %bl


xorb %bl, -18667(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18658(%rbp, 1), %rbx


cmpq %rbx, -18666(%rbp, 1)
popq %rbx



setb -18667(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18667(%rbp, 1), %bl


andb %bl, -18667(%rbp, 1)
popq %rbx



jz .L312

pushq %rbx


movq $0, %rbx


movq %rbx, -18675(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18675(%rbp, 1), %rbx


movq %rbx, -18683(%rbp, 1)
popq %rbx





pushq %rbx


movq $0, %rbx


movq %rbx, -18691(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18691(%rbp, 1), %rbx


movq %rbx, -18699(%rbp, 1)
popq %rbx






.L306:


pushq %rbx


movq $27, %rbx


movq %rbx, -18707(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18699(%rbp, 1), %rbx


movq %rbx, -18715(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18716(%rbp, 1), %bl


xorb %bl, -18716(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18707(%rbp, 1), %rbx


cmpq %rbx, -18715(%rbp, 1)
popq %rbx



setb -18716(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18716(%rbp, 1), %bl


andb %bl, -18716(%rbp, 1)
popq %rbx



jz .L307

pushq %rbx


movq $0, %rbx


movq %rbx, -18724(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18724(%rbp, 1), %rbx


movq %rbx, -18732(%rbp, 1)
popq %rbx






.L304:



cmpq $27, -18699(%rbp, 1)

jb .L297

movq -18699(%rbp, 1), %rsi


movq $27, %rdx


call err_oob

.L297:
pushq %r10


leaq -12120(%rbp, 1), %r10

movq %r10, -18740(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18699(%rbp, 1), %rbx


movq %rbx, -18748(%rbp, 1)
popq %rbx




movq -18748(%rbp, 1), %rax


imulq $216, %rax

movq %rax, -18748(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $27, %rbx


movq %rbx, -18756(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18732(%rbp, 1), %rbx


movq %rbx, -18764(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18765(%rbp, 1), %bl


xorb %bl, -18765(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18756(%rbp, 1), %rbx


cmpq %rbx, -18764(%rbp, 1)
popq %rbx



setb -18765(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18765(%rbp, 1), %bl


andb %bl, -18765(%rbp, 1)
popq %rbx



jz .L305




pushq %rbx

xorq %rbx, %rbx
movq -18699(%rbp, 1), %rbx


movq %rbx, -18773(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18537(%rbp, 1), %rbx


subq %rbx, -18773(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18601(%rbp, 1), %rbx


movq %rbx, -18781(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18773(%rbp, 1), %rbx


addq %rbx, -18781(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18781(%rbp, 1), %rbx


movq %rbx, -18789(%rbp, 1)
popq %rbx








pushq %rbx

xorq %rbx, %rbx
movq -18732(%rbp, 1), %rbx


movq %rbx, -18797(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18585(%rbp, 1), %rbx


subq %rbx, -18797(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18634(%rbp, 1), %rbx


movq %rbx, -18805(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18797(%rbp, 1), %rbx


addq %rbx, -18805(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -18805(%rbp, 1), %rbx


movq %rbx, -18813(%rbp, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -18821(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18789(%rbp, 1), %rbx


movq %rbx, -18829(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18830(%rbp, 1), %bl


xorb %bl, -18830(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18821(%rbp, 1), %rbx


cmpq %rbx, -18829(%rbp, 1)
popq %rbx



setae -18830(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -18838(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18813(%rbp, 1), %rbx


movq %rbx, -18846(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18847(%rbp, 1), %bl


xorb %bl, -18847(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18838(%rbp, 1), %rbx


cmpq %rbx, -18846(%rbp, 1)
popq %rbx



setae -18847(%rbp, 1)





pushq %rbx


movq $28, %rbx


movq %rbx, -18855(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18789(%rbp, 1), %rbx


movq %rbx, -18863(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18864(%rbp, 1), %bl


xorb %bl, -18864(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18855(%rbp, 1), %rbx


cmpq %rbx, -18863(%rbp, 1)
popq %rbx



setb -18864(%rbp, 1)






cmpq $28, -18601(%rbp, 1)

jb .L298

movq -18601(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L298:
pushq %r10


leaq -6272(%rbp, 1), %r10

movq %r10, -18872(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18601(%rbp, 1), %rbx


movq %rbx, -18880(%rbp, 1)
popq %rbx




movq -18880(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -18880(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $28, %rbx


movq %rbx, -18888(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -18813(%rbp, 1), %rbx


movq %rbx, -18896(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18897(%rbp, 1), %bl


xorb %bl, -18897(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movq -18888(%rbp, 1), %rbx


cmpq %rbx, -18896(%rbp, 1)
popq %rbx



setb -18897(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18897(%rbp, 1), %bl


andb %bl, -18864(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18864(%rbp, 1), %bl


andb %bl, -18847(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18847(%rbp, 1), %bl


andb %bl, -18830(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18830(%rbp, 1), %bl


andb %bl, -18830(%rbp, 1)
popq %rbx



jz .L303




cmpq $28, -18789(%rbp, 1)

jb .L299

movq -18789(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L299:
pushq %r10


leaq -6272(%rbp, 1), %r10

movq %r10, -18905(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18789(%rbp, 1), %rbx


movq %rbx, -18913(%rbp, 1)
popq %rbx




movq -18913(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -18913(%rbp, 1)



// mul on the CPU up here ^




cmpq $28, -18813(%rbp, 1)

jb .L300

movq -18813(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L300:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -18905(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18913(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -18921(%rbp, 1)


popq %r10






cmpq $27, -18699(%rbp, 1)

jb .L301

movq -18699(%rbp, 1), %rsi


movq $27, %rdx


call err_oob

.L301:
pushq %r10


leaq -12120(%rbp, 1), %r10

movq %r10, -18929(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18699(%rbp, 1), %rbx


movq %rbx, -18937(%rbp, 1)
popq %rbx




movq -18937(%rbp, 1), %rax


imulq $216, %rax

movq %rax, -18937(%rbp, 1)



// mul on the CPU up here ^




cmpq $27, -18732(%rbp, 1)

jb .L302

movq -18732(%rbp, 1), %rsi


movq $27, %rdx


call err_oob

.L302:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -18929(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18937(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -18945(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -18921(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18813(%rbp, 1), %r12


movq 0(%rbx, %r12, 8), %r13


popq %r12

popq %rbx

movq %r13, -18953(%rbp, 1)
popq %r13





movq -18953(%rbp, 1), %rax


movsd -18953(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -18945(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18732(%rbp, 1), %r12


mulsd 0(%rbx, %r12, 8), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -18953(%rbp, 1)




movsd -18683(%rbp, 1), %xmm0


addsd -18953(%rbp, 1), %xmm0

movsd %xmm0, -18683(%rbp, 1)





.L303:




incq -18732(%rbp, 1)




jmp .L304

.L305:




incq -18699(%rbp, 1)




jmp .L306

.L307:





pushq %rbx


movq $27, %rbx


movq %rbx, -18985(%rbp, 1)

popq %rbx





pushq %rbx


movq $0, %rbx


movq %rbx, -18993(%rbp, 1)

popq %rbx




cmpq $27, -18993(%rbp, 1)

jb .L310

movq -18993(%rbp, 1), %rsi


movq $27, %rdx


call err_oob

.L310:
pushq %r10


leaq -12120(%rbp, 1), %r10

movq %r10, -19001(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18993(%rbp, 1), %rbx


movq %rbx, -19009(%rbp, 1)
popq %rbx




movq -19009(%rbp, 1), %rax


imulq $216, %rax

movq %rax, -19009(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx


movq $27, %rbx


movq %rbx, -19017(%rbp, 1)

popq %rbx




movq -18985(%rbp, 1), %rax


imulq -19017(%rbp, 1), %rax

movq %rax, -18985(%rbp, 1)




cvtsi2sd -18985(%rbp, 1), %xmm0

movsd %xmm0, -19025(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movq -18683(%rbp, 1), %rbx


movq %rbx, -19033(%rbp, 1)
popq %rbx





movsd -19033(%rbp, 1), %xmm0


divsd -19025(%rbp, 1), %xmm0

movsd %xmm0, -19033(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -19033(%rbp, 1), %rbx


movq %rbx, -19041(%rbp, 1)
popq %rbx







cmpq $28, -18601(%rbp, 1)

jb .L308

movq -18601(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L308:
pushq %r10


leaq -18513(%rbp, 1), %r10

movq %r10, -18961(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18601(%rbp, 1), %rbx


movq %rbx, -18969(%rbp, 1)
popq %rbx




movq -18969(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -18969(%rbp, 1)



// mul on the CPU up here ^




cmpq $28, -18634(%rbp, 1)

jb .L309

movq -18634(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L309:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -18961(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18969(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -18977(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -18977(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18634(%rbp, 1), %r12


movq -19041(%rbp, 1), %r13


movq %r13, 0(%rbx, %r12, 8)
popq %r12

popq %rbx

popq %r13








incq -18634(%rbp, 1)




jmp .L311

.L312:




incq -18601(%rbp, 1)




jmp .L313

.L314:




movq -6288(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -18513(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $6272, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._gaussian_filter:
movq %rbp, %rsp

popq %rbp

ret



.string "\0elastic_distortion"
.global elastic_distortion
elastic_distortion:
pushq %rbp

movq %rsp, %rbp

subq $32896, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3136(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $0, %rbx


movq %rbx, -3144(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -3152(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -3160(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -3168(%rbp, 1)

popq %rbx



movq %rdi, -3168(%rbp, 1)


pushq %rsi


pushq %rdi


pushq %rcx


leaq 16(%rbp, 1), %rsi

leaq -3136(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



movq %rsi, -3144(%rbp, 1)


movsd %xmm0, -3152(%rbp, 1)


movsd %xmm1, -3160(%rbp, 1)




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -6304(%rbp, 1), %rdi

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

leaq -18848(%rbp, 1), %rdi

movq $12544, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, %r12d



movl %r12d, -18852(%rbp, 1)




.L324:

movl $2, %r13d



movl -18852(%rbp, 1), %r14d



xorb %bl, %bl

cmpl %r13d, %r14d

setl %bl



andb %bl, %bl

jz .L325

movl $0, %r13d



movl %r13d, -18856(%rbp, 1)




.L320:

movl $28, %r14d



movl -18856(%rbp, 1), %r15d



pushq %rbx

xorq %rbx, %rbx
movb -18857(%rbp, 1), %bl


xorb %bl, -18857(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setb -18857(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18857(%rbp, 1), %bl


andb %bl, -18857(%rbp, 1)
popq %rbx



jz .L321

movl $0, %r14d



movl %r14d, -18861(%rbp, 1)




.L318:

movl $28, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -18861(%rbp, 1), %ebx


movl %ebx, -18865(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -18866(%rbp, 1), %bl


xorb %bl, -18866(%rbp, 1)
popq %rbx



cmpl %r15d, -18865(%rbp, 1)

setb -18866(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -18866(%rbp, 1), %bl


andb %bl, -18866(%rbp, 1)
popq %rbx



jz .L319





pushq %rbx


pushq %r12


xorq %r12, %r12

movq -3144(%rbp, 1), %r12


leaq 2496(%r12, 1), %rbx
popq %r12


movq %rbx, -18922(%rbp, 1)


popq %rbx




movq -18922(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call genrand_real1

movsd %xmm0, -18930(%rbp, 1)





pushq %rbx


movabsq $4611686018427387904, %rbx


movq %rbx, -18938(%rbp, 1)

popq %rbx




movq -18930(%rbp, 1), %rax


movsd -18930(%rbp, 1), %xmm0


mulsd -18938(%rbp, 1), %xmm0

movsd %xmm0, -18930(%rbp, 1)




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -18946(%rbp, 1)

popq %rbx




movsd -18930(%rbp, 1), %xmm0


subsd -18946(%rbp, 1), %xmm0

movsd %xmm0, -18930(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -18930(%rbp, 1), %rbx


movq %rbx, -18954(%rbp, 1)
popq %rbx







movl -18852(%rbp, 1), %r15d



movabsq $4294967295, %rax


andq %rax, %r15

cmpq $2, %r15

jb .L315

movq %r15, %rsi


movq $2, %rdx


call err_oob

.L315:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -18874(%rbp, 1)


popq %r10


movq %r15, %rax


imulq $6272, %rax

movq %rax, %r15






pushq %rbx

xorq %rbx, %rbx
movl -18856(%rbp, 1), %ebx


movl %ebx, -18882(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -18882(%rbp, 1)

cmpq $28, -18882(%rbp, 1)

jb .L316

movq -18882(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L316:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -18874(%rbp, 1), %rbx


leaq 0(%rbx, %r15, 1), %r10
popq %rbx


movq %r10, -18890(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18882(%rbp, 1), %rbx


movq %rbx, -18898(%rbp, 1)
popq %rbx




movq -18898(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -18898(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -18861(%rbp, 1), %ebx


movl %ebx, -18906(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -18906(%rbp, 1)

cmpq $28, -18906(%rbp, 1)

jb .L317

movq -18906(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L317:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -18890(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18898(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -18914(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -18914(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18906(%rbp, 1), %r12


movq -18954(%rbp, 1), %r13


movq %r13, 0(%rbx, %r12, 8)
popq %r12

popq %rbx

popq %r13








incl -18861(%rbp, 1)




jmp .L318

.L319:




incl -18856(%rbp, 1)




jmp .L320

.L321:




pushq %rbx

xorq %rbx, %rbx
movl -18852(%rbp, 1), %ebx


movl %ebx, -18986(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -18986(%rbp, 1)

cmpq $2, -18986(%rbp, 1)

jb .L323

movq -18986(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L323:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -18994(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18986(%rbp, 1), %rbx


movq %rbx, -19002(%rbp, 1)
popq %rbx




movq -19002(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -19002(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx


leaq -25274(%rbp, 1), %rbx

subq $8, %rsp

movq %rbx, %rdi


movsd -3152(%rbp, 1), %xmm0


subq $6272, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -18994(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -19002(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx


leaq 0(%rax, 1), %rdi

movq $6272, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



addq $6272, %rax


movq $1, %rax


call gaussian_filter

addq $8, %rsp

addq $6272, %rsp

popq %rbx


movq %rax, -25282(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -25274(%rbp, 1), %rsi

leaq -31554(%rbp, 1), %rdi

movq $6272, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





pushq %rbx

xorq %rbx, %rbx
movl -18852(%rbp, 1), %ebx


movl %ebx, -18962(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -18962(%rbp, 1)

cmpq $2, -18962(%rbp, 1)

jb .L322

movq -18962(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L322:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -18970(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -18962(%rbp, 1), %rbx


movq %rbx, -18978(%rbp, 1)
popq %rbx




movq -18978(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -18978(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


leaq -31554(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -18970(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -18978(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $6272, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi






incl -18852(%rbp, 1)




jmp .L324

.L325:


movl $0, -31558(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31558(%rbp, 1), %ebx


movl %ebx, -31562(%rbp, 1)
popq %rbx






.L344:

movl $2, -31566(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31562(%rbp, 1), %ebx


movl %ebx, -31570(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31571(%rbp, 1), %bl


xorb %bl, -31571(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31566(%rbp, 1), %ebx


cmpl %ebx, -31570(%rbp, 1)
popq %rbx



setl -31571(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31571(%rbp, 1), %bl


andb %bl, -31571(%rbp, 1)
popq %rbx



jz .L345

pushq %rbx


movq $0, %rbx


movq %rbx, -31579(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -31579(%rbp, 1), %rbx


movq %rbx, -31587(%rbp, 1)
popq %rbx





movl $0, -31591(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31591(%rbp, 1), %ebx


movl %ebx, -31595(%rbp, 1)
popq %rbx






.L332:

movl $28, -31599(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31595(%rbp, 1), %ebx


movl %ebx, -31603(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31604(%rbp, 1), %bl


xorb %bl, -31604(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31599(%rbp, 1), %ebx


cmpl %ebx, -31603(%rbp, 1)
popq %rbx



setb -31604(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31604(%rbp, 1), %bl


andb %bl, -31604(%rbp, 1)
popq %rbx



jz .L333

movl $0, -31608(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31608(%rbp, 1), %ebx


movl %ebx, -31612(%rbp, 1)
popq %rbx






.L330:

movl $28, -31616(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31612(%rbp, 1), %ebx


movl %ebx, -31620(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31621(%rbp, 1), %bl


xorb %bl, -31621(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31616(%rbp, 1), %ebx


cmpl %ebx, -31620(%rbp, 1)
popq %rbx



setb -31621(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31621(%rbp, 1), %bl


andb %bl, -31621(%rbp, 1)
popq %rbx



jz .L331



pushq %rbx

xorq %rbx, %rbx
movl -31562(%rbp, 1), %ebx


movl %ebx, -31629(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31629(%rbp, 1)

cmpq $2, -31629(%rbp, 1)

jb .L326

movq -31629(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L326:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -31637(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31629(%rbp, 1), %rbx


movq %rbx, -31645(%rbp, 1)
popq %rbx




movq -31645(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -31645(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31595(%rbp, 1), %ebx


movl %ebx, -31653(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31653(%rbp, 1)

cmpq $28, -31653(%rbp, 1)

jb .L327

movq -31653(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L327:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31637(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31645(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -31661(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31653(%rbp, 1), %rbx


movq %rbx, -31669(%rbp, 1)
popq %rbx




movq -31669(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -31669(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31612(%rbp, 1), %ebx


movl %ebx, -31677(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31677(%rbp, 1)

cmpq $28, -31677(%rbp, 1)

jb .L328

movq -31677(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L328:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31661(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31669(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -31685(%rbp, 1)


popq %r10




pushq %rbx


xorq %rbx, %rbx

movq -31685(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31677(%rbp, 1), %r12


movsd 0(%rbx, %r12, 8), %xmm0
popq %r12

popq %rbx



movq %rsp, %rax



movq $1, %rax


call fabs

movsd %xmm0, -31693(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -31693(%rbp, 1), %rbx


movq %rbx, -31701(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movq -31587(%rbp, 1), %rbx


movq %rbx, -31709(%rbp, 1)
popq %rbx





movsd -31709(%rbp, 1), %xmm0


cmpsd $1,  -31701(%rbp, 1), %xmm0

movss %xmm0, -31710(%rbp, 1)


andb $1,  -31710(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31710(%rbp, 1), %bl


andb %bl, -31710(%rbp, 1)
popq %rbx



jz .L329


pushq %rbx

xorq %rbx, %rbx
movq -31701(%rbp, 1), %rbx


movq %rbx, -31718(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -31718(%rbp, 1), %rbx


movq %rbx, -31587(%rbp, 1)
popq %rbx







.L329:




incl -31612(%rbp, 1)




jmp .L330

.L331:




incl -31595(%rbp, 1)




jmp .L332

.L333:


movl $0, -31722(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31722(%rbp, 1), %ebx


movl %ebx, -31726(%rbp, 1)
popq %rbx






.L342:

movl $28, -31730(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31726(%rbp, 1), %ebx


movl %ebx, -31734(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31735(%rbp, 1), %bl


xorb %bl, -31735(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31730(%rbp, 1), %ebx


cmpl %ebx, -31734(%rbp, 1)
popq %rbx



setb -31735(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31735(%rbp, 1), %bl


andb %bl, -31735(%rbp, 1)
popq %rbx



jz .L343

movl $0, -31739(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31739(%rbp, 1), %ebx


movl %ebx, -31743(%rbp, 1)
popq %rbx






.L340:

movl $28, -31747(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31743(%rbp, 1), %ebx


movl %ebx, -31751(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31752(%rbp, 1), %bl


xorb %bl, -31752(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31747(%rbp, 1), %ebx


cmpl %ebx, -31751(%rbp, 1)
popq %rbx



setb -31752(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31752(%rbp, 1), %bl


andb %bl, -31752(%rbp, 1)
popq %rbx



jz .L341



pushq %rbx

xorq %rbx, %rbx
movl -31562(%rbp, 1), %ebx


movl %ebx, -31760(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31760(%rbp, 1)

cmpq $2, -31760(%rbp, 1)

jb .L334

movq -31760(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L334:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -31768(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31760(%rbp, 1), %rbx


movq %rbx, -31776(%rbp, 1)
popq %rbx




movq -31776(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -31776(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31726(%rbp, 1), %ebx


movl %ebx, -31784(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31784(%rbp, 1)

cmpq $28, -31784(%rbp, 1)

jb .L335

movq -31784(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L335:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31768(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31776(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -31792(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31784(%rbp, 1), %rbx


movq %rbx, -31800(%rbp, 1)
popq %rbx




movq -31800(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -31800(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31743(%rbp, 1), %ebx


movl %ebx, -31808(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31808(%rbp, 1)

cmpq $28, -31808(%rbp, 1)

jb .L336

movq -31808(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L336:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31792(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31800(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -31816(%rbp, 1)


popq %r10





pushq %rbx


xorq %rbx, %rbx

movq -31816(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31808(%rbp, 1), %r12


movsd 0(%rbx, %r12, 8), %xmm0
popq %r12

popq %rbx



divsd -31587(%rbp, 1), %xmm0

pushq %rbx


xorq %rbx, %rbx

movq -31816(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31808(%rbp, 1), %r12


movsd %xmm0, 0(%rbx, %r12, 8)
popq %r12

popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -31562(%rbp, 1), %ebx


movl %ebx, -31824(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31824(%rbp, 1)

cmpq $2, -31824(%rbp, 1)

jb .L337

movq -31824(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L337:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -31832(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31824(%rbp, 1), %rbx


movq %rbx, -31840(%rbp, 1)
popq %rbx




movq -31840(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -31840(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31726(%rbp, 1), %ebx


movl %ebx, -31848(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31848(%rbp, 1)

cmpq $28, -31848(%rbp, 1)

jb .L338

movq -31848(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L338:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31832(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31840(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -31856(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31848(%rbp, 1), %rbx


movq %rbx, -31864(%rbp, 1)
popq %rbx




movq -31864(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -31864(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31743(%rbp, 1), %ebx


movl %ebx, -31872(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31872(%rbp, 1)

cmpq $28, -31872(%rbp, 1)

jb .L339

movq -31872(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L339:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31856(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31864(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -31880(%rbp, 1)


popq %r10





pushq %rbx


xorq %rbx, %rbx

movq -31880(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31872(%rbp, 1), %r12


movq 0(%rbx, %r12, 8), %rax
popq %r12

popq %rbx



pushq %rbx


xorq %rbx, %rbx

movq -31880(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31872(%rbp, 1), %r12


movsd 0(%rbx, %r12, 8), %xmm0
popq %r12

popq %rbx



mulsd -3160(%rbp, 1), %xmm0

pushq %rbx


xorq %rbx, %rbx

movq -31880(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31872(%rbp, 1), %r12


movsd %xmm0, 0(%rbx, %r12, 8)
popq %r12

popq %rbx







incl -31743(%rbp, 1)




jmp .L340

.L341:




incl -31726(%rbp, 1)




jmp .L342

.L343:




incl -31562(%rbp, 1)




jmp .L344

.L345:


movl $0, -31884(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31884(%rbp, 1), %ebx


movl %ebx, -31888(%rbp, 1)
popq %rbx






.L372:

movl $28, -31892(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31888(%rbp, 1), %ebx


movl %ebx, -31896(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31897(%rbp, 1), %bl


xorb %bl, -31897(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31892(%rbp, 1), %ebx


cmpl %ebx, -31896(%rbp, 1)
popq %rbx



setb -31897(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31897(%rbp, 1), %bl


andb %bl, -31897(%rbp, 1)
popq %rbx



jz .L373

movl $0, -31901(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31901(%rbp, 1), %ebx


movl %ebx, -31905(%rbp, 1)
popq %rbx






.L370:

movl $28, -31909(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -31905(%rbp, 1), %ebx


movl %ebx, -31913(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -31914(%rbp, 1), %bl


xorb %bl, -31914(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -31909(%rbp, 1), %ebx


cmpl %ebx, -31913(%rbp, 1)
popq %rbx



setb -31914(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -31914(%rbp, 1), %bl


andb %bl, -31914(%rbp, 1)
popq %rbx



jz .L371



movq %rbx, -31922(%rbp, 1)


movl -31905(%rbp, 1), %ebx


movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq -31922(%rbp, 1), %rbx


movsd %xmm0, -31930(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movq -31930(%rbp, 1), %rbx


movq %rbx, -31938(%rbp, 1)
popq %rbx







movq %rbx, -31946(%rbp, 1)


movl -31888(%rbp, 1), %ebx


movabsq $4294967295, %rax


andq %rax, %rbx


cvtsi2sd %rbx, %xmm0

movq -31946(%rbp, 1), %rbx


movsd %xmm0, -31954(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movq -31954(%rbp, 1), %rbx


movq %rbx, -31962(%rbp, 1)
popq %rbx







pushq %rbx


movq $0, %rbx


movq %rbx, -31970(%rbp, 1)

popq %rbx




cmpq $2, -31970(%rbp, 1)

jb .L346

movq -31970(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L346:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -31978(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31970(%rbp, 1), %rbx


movq %rbx, -31986(%rbp, 1)
popq %rbx




movq -31986(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -31986(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31888(%rbp, 1), %ebx


movl %ebx, -31994(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -31994(%rbp, 1)

cmpq $28, -31994(%rbp, 1)

jb .L347

movq -31994(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L347:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -31978(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -31986(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32002(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -31994(%rbp, 1), %rbx


movq %rbx, -32010(%rbp, 1)
popq %rbx




movq -32010(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -32010(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31905(%rbp, 1), %ebx


movl %ebx, -32018(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32018(%rbp, 1)

cmpq $28, -32018(%rbp, 1)

jb .L348

movq -32018(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L348:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32002(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32010(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32026(%rbp, 1)


popq %r10




pushq %rbx

xorq %rbx, %rbx
movq -31938(%rbp, 1), %rbx


movq %rbx, -32034(%rbp, 1)
popq %rbx





movsd -32034(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -32026(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32018(%rbp, 1), %r12


addsd 0(%rbx, %r12, 8), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -32034(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -32034(%rbp, 1), %rbx


movq %rbx, -32042(%rbp, 1)
popq %rbx







pushq %rbx


movq $1, %rbx


movq %rbx, -32050(%rbp, 1)

popq %rbx




cmpq $2, -32050(%rbp, 1)

jb .L349

movq -32050(%rbp, 1), %rsi


movq $2, %rdx


call err_oob

.L349:
pushq %r10


leaq -18848(%rbp, 1), %r10

movq %r10, -32058(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32050(%rbp, 1), %rbx


movq %rbx, -32066(%rbp, 1)
popq %rbx




movq -32066(%rbp, 1), %rax


imulq $6272, %rax

movq %rax, -32066(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31888(%rbp, 1), %ebx


movl %ebx, -32074(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32074(%rbp, 1)

cmpq $28, -32074(%rbp, 1)

jb .L350

movq -32074(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L350:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32058(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32066(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32082(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32074(%rbp, 1), %rbx


movq %rbx, -32090(%rbp, 1)
popq %rbx




movq -32090(%rbp, 1), %rax


imulq $224, %rax

movq %rax, -32090(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31905(%rbp, 1), %ebx


movl %ebx, -32098(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32098(%rbp, 1)

cmpq $28, -32098(%rbp, 1)

jb .L351

movq -32098(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L351:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32082(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32090(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32106(%rbp, 1)


popq %r10




pushq %rbx

xorq %rbx, %rbx
movq -31962(%rbp, 1), %rbx


movq %rbx, -32114(%rbp, 1)
popq %rbx





movsd -32114(%rbp, 1), %xmm0


pushq %rbx


xorq %rbx, %rbx

movq -32106(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32098(%rbp, 1), %r12


addsd 0(%rbx, %r12, 8), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -32114(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -32114(%rbp, 1), %rbx


movq %rbx, -32122(%rbp, 1)
popq %rbx






movsd -32042(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call floor

movsd %xmm0, -32130(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -32130(%rbp, 1), %rbx


movq %rbx, -32138(%rbp, 1)
popq %rbx






movsd -32122(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call floor

movsd %xmm0, -32146(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -32146(%rbp, 1), %rbx


movq %rbx, -32154(%rbp, 1)
popq %rbx






movsd -32042(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call ceil

movsd %xmm0, -32162(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -32162(%rbp, 1), %rbx


movq %rbx, -32170(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -32154(%rbp, 1), %rbx


movq %rbx, -32178(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -32138(%rbp, 1), %rbx


movq %rbx, -32186(%rbp, 1)
popq %rbx






movsd -32122(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call ceil

movsd %xmm0, -32194(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -32194(%rbp, 1), %rbx


movq %rbx, -32202(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -32170(%rbp, 1), %rbx


movq %rbx, -32210(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movq -32202(%rbp, 1), %rbx


movq %rbx, -32218(%rbp, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -32226(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32138(%rbp, 1), %rbx


movq %rbx, -32234(%rbp, 1)
popq %rbx





movsd -32234(%rbp, 1), %xmm0


cmpsd $1,  -32226(%rbp, 1), %xmm0

movss %xmm0, -32235(%rbp, 1)


andb $1,  -32235(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -32243(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32154(%rbp, 1), %rbx


movq %rbx, -32251(%rbp, 1)
popq %rbx





movsd -32251(%rbp, 1), %xmm0


cmpsd $1,  -32243(%rbp, 1), %xmm0

movss %xmm0, -32252(%rbp, 1)


andb $1,  -32252(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32260(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32138(%rbp, 1), %rbx


movq %rbx, -32268(%rbp, 1)
popq %rbx





movsd -32268(%rbp, 1), %xmm0


cmpsd $13,  -32260(%rbp, 1), %xmm0

movss %xmm0, -32269(%rbp, 1)


andb $1,  -32269(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32277(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32154(%rbp, 1), %rbx


movq %rbx, -32285(%rbp, 1)
popq %rbx





movsd -32285(%rbp, 1), %xmm0


cmpsd $13,  -32277(%rbp, 1), %xmm0

movss %xmm0, -32286(%rbp, 1)


andb $1,  -32286(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -32286(%rbp, 1), %bl


orb %bl, -32269(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32269(%rbp, 1), %bl


orb %bl, -32252(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32252(%rbp, 1), %bl


orb %bl, -32235(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32235(%rbp, 1), %bl


andb %bl, -32235(%rbp, 1)
popq %rbx



jz .L354

movl $3212836864, -32290(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32290(%rbp, 1), %ebx


movl %ebx, -32350(%rbp, 1)
popq %rbx




jmp .L355


.L354:



movl %ebx, -32294(%rbp, 1)


cvtsd2si -32154(%rbp, 1), %ebx

movl %ebx, -32298(%rbp, 1)


movl -32294(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32298(%rbp, 1), %ebx


movl %ebx, -32306(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32306(%rbp, 1)

cmpq $28, -32306(%rbp, 1)

jb .L352

movq -32306(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L352:
pushq %r10


leaq -3136(%rbp, 1), %r10

movq %r10, -32314(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32306(%rbp, 1), %rbx


movq %rbx, -32322(%rbp, 1)
popq %rbx




movq -32322(%rbp, 1), %rax


imulq $112, %rax

movq %rax, -32322(%rbp, 1)



// mul on the CPU up here ^





movl %ebx, -32326(%rbp, 1)


cvtsd2si -32138(%rbp, 1), %ebx

movl %ebx, -32330(%rbp, 1)


movl -32326(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32330(%rbp, 1), %ebx


movl %ebx, -32338(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32338(%rbp, 1)

cmpq $28, -32338(%rbp, 1)

jb .L353

movq -32338(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L353:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32314(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32322(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32346(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -32346(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32338(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -32350(%rbp, 1)
popq %r13




.L355:


pushq %rbx

xorq %rbx, %rbx
movl -32350(%rbp, 1), %ebx


movl %ebx, -32354(%rbp, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -32362(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32170(%rbp, 1), %rbx


movq %rbx, -32370(%rbp, 1)
popq %rbx





movsd -32370(%rbp, 1), %xmm0


cmpsd $1,  -32362(%rbp, 1), %xmm0

movss %xmm0, -32371(%rbp, 1)


andb $1,  -32371(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -32379(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32178(%rbp, 1), %rbx


movq %rbx, -32387(%rbp, 1)
popq %rbx





movsd -32387(%rbp, 1), %xmm0


cmpsd $1,  -32379(%rbp, 1), %xmm0

movss %xmm0, -32388(%rbp, 1)


andb $1,  -32388(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32396(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32170(%rbp, 1), %rbx


movq %rbx, -32404(%rbp, 1)
popq %rbx





movsd -32404(%rbp, 1), %xmm0


cmpsd $13,  -32396(%rbp, 1), %xmm0

movss %xmm0, -32405(%rbp, 1)


andb $1,  -32405(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32413(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32178(%rbp, 1), %rbx


movq %rbx, -32421(%rbp, 1)
popq %rbx





movsd -32421(%rbp, 1), %xmm0


cmpsd $13,  -32413(%rbp, 1), %xmm0

movss %xmm0, -32422(%rbp, 1)


andb $1,  -32422(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -32422(%rbp, 1), %bl


orb %bl, -32405(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32405(%rbp, 1), %bl


orb %bl, -32388(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32388(%rbp, 1), %bl


orb %bl, -32371(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32371(%rbp, 1), %bl


andb %bl, -32371(%rbp, 1)
popq %rbx



jz .L358

movl $3212836864, -32426(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32426(%rbp, 1), %ebx


movl %ebx, -32486(%rbp, 1)
popq %rbx




jmp .L359


.L358:



movl %ebx, -32430(%rbp, 1)


cvtsd2si -32178(%rbp, 1), %ebx

movl %ebx, -32434(%rbp, 1)


movl -32430(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32434(%rbp, 1), %ebx


movl %ebx, -32442(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32442(%rbp, 1)

cmpq $28, -32442(%rbp, 1)

jb .L356

movq -32442(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L356:
pushq %r10


leaq -3136(%rbp, 1), %r10

movq %r10, -32450(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32442(%rbp, 1), %rbx


movq %rbx, -32458(%rbp, 1)
popq %rbx




movq -32458(%rbp, 1), %rax


imulq $112, %rax

movq %rax, -32458(%rbp, 1)



// mul on the CPU up here ^





movl %ebx, -32462(%rbp, 1)


cvtsd2si -32170(%rbp, 1), %ebx

movl %ebx, -32466(%rbp, 1)


movl -32462(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32466(%rbp, 1), %ebx


movl %ebx, -32474(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32474(%rbp, 1)

cmpq $28, -32474(%rbp, 1)

jb .L357

movq -32474(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L357:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32450(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32458(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32482(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -32482(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32474(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -32486(%rbp, 1)
popq %r13




.L359:


pushq %rbx

xorq %rbx, %rbx
movl -32486(%rbp, 1), %ebx


movl %ebx, -32490(%rbp, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -32498(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32186(%rbp, 1), %rbx


movq %rbx, -32506(%rbp, 1)
popq %rbx





movsd -32506(%rbp, 1), %xmm0


cmpsd $1,  -32498(%rbp, 1), %xmm0

movss %xmm0, -32507(%rbp, 1)


andb $1,  -32507(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -32515(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32202(%rbp, 1), %rbx


movq %rbx, -32523(%rbp, 1)
popq %rbx





movsd -32523(%rbp, 1), %xmm0


cmpsd $1,  -32515(%rbp, 1), %xmm0

movss %xmm0, -32524(%rbp, 1)


andb $1,  -32524(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32532(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32186(%rbp, 1), %rbx


movq %rbx, -32540(%rbp, 1)
popq %rbx





movsd -32540(%rbp, 1), %xmm0


cmpsd $13,  -32532(%rbp, 1), %xmm0

movss %xmm0, -32541(%rbp, 1)


andb $1,  -32541(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32549(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32202(%rbp, 1), %rbx


movq %rbx, -32557(%rbp, 1)
popq %rbx





movsd -32557(%rbp, 1), %xmm0


cmpsd $13,  -32549(%rbp, 1), %xmm0

movss %xmm0, -32558(%rbp, 1)


andb $1,  -32558(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -32558(%rbp, 1), %bl


orb %bl, -32541(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32541(%rbp, 1), %bl


orb %bl, -32524(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32524(%rbp, 1), %bl


orb %bl, -32507(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32507(%rbp, 1), %bl


andb %bl, -32507(%rbp, 1)
popq %rbx



jz .L362

movl $3212836864, -32562(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32562(%rbp, 1), %ebx


movl %ebx, -32622(%rbp, 1)
popq %rbx




jmp .L363


.L362:



movl %ebx, -32566(%rbp, 1)


cvtsd2si -32202(%rbp, 1), %ebx

movl %ebx, -32570(%rbp, 1)


movl -32566(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32570(%rbp, 1), %ebx


movl %ebx, -32578(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32578(%rbp, 1)

cmpq $28, -32578(%rbp, 1)

jb .L360

movq -32578(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L360:
pushq %r10


leaq -3136(%rbp, 1), %r10

movq %r10, -32586(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32578(%rbp, 1), %rbx


movq %rbx, -32594(%rbp, 1)
popq %rbx




movq -32594(%rbp, 1), %rax


imulq $112, %rax

movq %rax, -32594(%rbp, 1)



// mul on the CPU up here ^





movl %ebx, -32598(%rbp, 1)


cvtsd2si -32186(%rbp, 1), %ebx

movl %ebx, -32602(%rbp, 1)


movl -32598(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32602(%rbp, 1), %ebx


movl %ebx, -32610(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32610(%rbp, 1)

cmpq $28, -32610(%rbp, 1)

jb .L361

movq -32610(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L361:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32586(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32594(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32618(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -32618(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32610(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -32622(%rbp, 1)
popq %r13




.L363:


pushq %rbx

xorq %rbx, %rbx
movl -32622(%rbp, 1), %ebx


movl %ebx, -32626(%rbp, 1)
popq %rbx






pushq %rbx


movq $0, %rbx


movq %rbx, -32634(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32210(%rbp, 1), %rbx


movq %rbx, -32642(%rbp, 1)
popq %rbx





movsd -32642(%rbp, 1), %xmm0


cmpsd $1,  -32634(%rbp, 1), %xmm0

movss %xmm0, -32643(%rbp, 1)


andb $1,  -32643(%rbp, 1)




pushq %rbx


movq $0, %rbx


movq %rbx, -32651(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32218(%rbp, 1), %rbx


movq %rbx, -32659(%rbp, 1)
popq %rbx





movsd -32659(%rbp, 1), %xmm0


cmpsd $1,  -32651(%rbp, 1), %xmm0

movss %xmm0, -32660(%rbp, 1)


andb $1,  -32660(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32668(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32210(%rbp, 1), %rbx


movq %rbx, -32676(%rbp, 1)
popq %rbx





movsd -32676(%rbp, 1), %xmm0


cmpsd $13,  -32668(%rbp, 1), %xmm0

movss %xmm0, -32677(%rbp, 1)


andb $1,  -32677(%rbp, 1)




pushq %rbx


movabsq $4628574517030027264, %rbx


movq %rbx, -32685(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -32218(%rbp, 1), %rbx


movq %rbx, -32693(%rbp, 1)
popq %rbx





movsd -32693(%rbp, 1), %xmm0


cmpsd $13,  -32685(%rbp, 1), %xmm0

movss %xmm0, -32694(%rbp, 1)


andb $1,  -32694(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -32694(%rbp, 1), %bl


orb %bl, -32677(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32677(%rbp, 1), %bl


orb %bl, -32660(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32660(%rbp, 1), %bl


orb %bl, -32643(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -32643(%rbp, 1), %bl


andb %bl, -32643(%rbp, 1)
popq %rbx



jz .L366

movl $3212836864, -32698(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32698(%rbp, 1), %ebx


movl %ebx, -32758(%rbp, 1)
popq %rbx




jmp .L367


.L366:



movl %ebx, -32702(%rbp, 1)


cvtsd2si -32218(%rbp, 1), %ebx

movl %ebx, -32706(%rbp, 1)


movl -32702(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32706(%rbp, 1), %ebx


movl %ebx, -32714(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32714(%rbp, 1)

cmpq $28, -32714(%rbp, 1)

jb .L364

movq -32714(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L364:
pushq %r10


leaq -3136(%rbp, 1), %r10

movq %r10, -32722(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32714(%rbp, 1), %rbx


movq %rbx, -32730(%rbp, 1)
popq %rbx




movq -32730(%rbp, 1), %rax


imulq $112, %rax

movq %rax, -32730(%rbp, 1)



// mul on the CPU up here ^





movl %ebx, -32734(%rbp, 1)


cvtsd2si -32210(%rbp, 1), %ebx

movl %ebx, -32738(%rbp, 1)


movl -32734(%rbp, 1), %ebx



pushq %rbx

xorq %rbx, %rbx
movl -32738(%rbp, 1), %ebx


movl %ebx, -32746(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32746(%rbp, 1)

cmpq $28, -32746(%rbp, 1)

jb .L365

movq -32746(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L365:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32722(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32730(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32754(%rbp, 1)


popq %r10





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -32754(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32746(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -32758(%rbp, 1)
popq %r13




.L367:


pushq %rbx

xorq %rbx, %rbx
movl -32758(%rbp, 1), %ebx


movl %ebx, -32762(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movq -32042(%rbp, 1), %rbx


movq %rbx, -32770(%rbp, 1)
popq %rbx





movsd -32770(%rbp, 1), %xmm0


subsd -32138(%rbp, 1), %xmm0

movsd %xmm0, -32770(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -32770(%rbp, 1), %rbx


movq %rbx, -32778(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movq -32122(%rbp, 1), %rbx


movq %rbx, -32786(%rbp, 1)
popq %rbx





movsd -32786(%rbp, 1), %xmm0


subsd -32154(%rbp, 1), %xmm0

movsd %xmm0, -32786(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -32786(%rbp, 1), %rbx


movq %rbx, -32794(%rbp, 1)
popq %rbx








cvtsd2ss -32778(%rbp, 1), %xmm0

movss %xmm0, -32798(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -32490(%rbp, 1), %ebx


movl %ebx, -32802(%rbp, 1)
popq %rbx





movss -32802(%rbp, 1), %xmm0


subss -32354(%rbp, 1), %xmm0

movss %xmm0, -32802(%rbp, 1)




movl -32798(%rbp, 1), %eax


movss -32798(%rbp, 1), %xmm0


mulss -32802(%rbp, 1), %xmm0

movss %xmm0, -32798(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32354(%rbp, 1), %ebx


movl %ebx, -32806(%rbp, 1)
popq %rbx





movss -32806(%rbp, 1), %xmm0


addss -32798(%rbp, 1), %xmm0

movss %xmm0, -32806(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32806(%rbp, 1), %ebx


movl %ebx, -32810(%rbp, 1)
popq %rbx








cvtsd2ss -32778(%rbp, 1), %xmm0

movss %xmm0, -32814(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -32762(%rbp, 1), %ebx


movl %ebx, -32818(%rbp, 1)
popq %rbx





movss -32818(%rbp, 1), %xmm0


subss -32626(%rbp, 1), %xmm0

movss %xmm0, -32818(%rbp, 1)




movl -32814(%rbp, 1), %eax


movss -32814(%rbp, 1), %xmm0


mulss -32818(%rbp, 1), %xmm0

movss %xmm0, -32814(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32626(%rbp, 1), %ebx


movl %ebx, -32822(%rbp, 1)
popq %rbx





movss -32822(%rbp, 1), %xmm0


addss -32814(%rbp, 1), %xmm0

movss %xmm0, -32822(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32822(%rbp, 1), %ebx


movl %ebx, -32826(%rbp, 1)
popq %rbx








cvtsd2ss -32794(%rbp, 1), %xmm0

movss %xmm0, -32830(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -32826(%rbp, 1), %ebx


movl %ebx, -32834(%rbp, 1)
popq %rbx





movss -32834(%rbp, 1), %xmm0


subss -32810(%rbp, 1), %xmm0

movss %xmm0, -32834(%rbp, 1)




movl -32830(%rbp, 1), %eax


movss -32830(%rbp, 1), %xmm0


mulss -32834(%rbp, 1), %xmm0

movss %xmm0, -32830(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32810(%rbp, 1), %ebx


movl %ebx, -32838(%rbp, 1)
popq %rbx





movss -32838(%rbp, 1), %xmm0


addss -32830(%rbp, 1), %xmm0

movss %xmm0, -32838(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -32838(%rbp, 1), %ebx


movl %ebx, -32842(%rbp, 1)
popq %rbx






pushq %rbx

xorq %rbx, %rbx
movl -32842(%rbp, 1), %ebx


movl %ebx, -32886(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -31888(%rbp, 1), %ebx


movl %ebx, -32850(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32850(%rbp, 1)

cmpq $28, -32850(%rbp, 1)

jb .L368

movq -32850(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L368:
pushq %r10


leaq -6304(%rbp, 1), %r10

movq %r10, -32858(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -32850(%rbp, 1), %rbx


movq %rbx, -32866(%rbp, 1)
popq %rbx




movq -32866(%rbp, 1), %rax


imulq $112, %rax

movq %rax, -32866(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -31905(%rbp, 1), %ebx


movl %ebx, -32874(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -32874(%rbp, 1)

cmpq $28, -32874(%rbp, 1)

jb .L369

movq -32874(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L369:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -32858(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32866(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -32882(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -32882(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -32874(%rbp, 1), %r12


movl -32886(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -31905(%rbp, 1)




jmp .L370

.L371:




incl -31888(%rbp, 1)




jmp .L372

.L373:




movq -3168(%rbp, 1), %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -6304(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



._elastic_distortion:
movq %rbp, %rsp

popq %rbp

ret



.string "\0print_status"
.global print_status
print_status:
pushq %rbp

movq %rsp, %rbp

subq $48, %rsp



movl $0, -4(%rbp, 1)



movl $0, -8(%rbp, 1)



movl $0, -12(%rbp, 1)



movl $0, -16(%rbp, 1)



movl $0, -20(%rbp, 1)



movl %edi, -4(%rbp, 1)


movl %esi, -8(%rbp, 1)


movss %xmm0, -12(%rbp, 1)


movss %xmm1, -16(%rbp, 1)


movss %xmm2, -20(%rbp, 1)










cvtss2sd -12(%rbp, 1), %xmm0

movq %xmm0, %r12





cvtss2sd -16(%rbp, 1), %xmm0

movq %xmm0, %r13





cvtss2sd -20(%rbp, 1), %xmm0

movq %xmm0, %r14



movq $.L374, %rdi


movl -4(%rbp, 1), %esi


movl -8(%rbp, 1), %edx


movq %r12, %r15


movq %r15, %xmm0


movq %r13, -28(%rbp, 1)


movsd -28(%rbp, 1), %xmm1


movq %r14, -36(%rbp, 1)


movsd -36(%rbp, 1), %xmm2


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -40(%rbp, 1)






._print_status:
movq %rbp, %rsp

popq %rbp

ret



.string "\0clear_line"
.global clear_line
clear_line:
pushq %rbp

movq %rsp, %rbp






movq $.L375, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r12d






._clear_line:
movq %rbp, %rsp

popq %rbp

ret






















.string "\0distort_set"
.global distort_set
distort_set:
pushq %rbp

movq %rsp, %rbp

subq $9840, %rsp



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




pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -128(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $0, %rbx


movq %rbx, -136(%rbp, 1)

popq %rbx




movq %rdi, -152(%rbp, 1)


movq %rsi, -144(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -152(%rbp, 1), %rsi

leaq -112(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %rdx, -168(%rbp, 1)


movq %rcx, -160(%rbp, 1)



pushq %rsi


pushq %rdi


pushq %rcx


leaq -168(%rbp, 1), %rsi

leaq -128(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movq %r8, -136(%rbp, 1)




movl $0, %r12d



movl %r12d, -172(%rbp, 1)




.L393:





movl -104(%rbp, 1), %r13d


movq $-1, %rax


andq %rax, %r13


movl -172(%rbp, 1), %r14d



xorb %bl, %bl

cmpl %r13d, %r14d

setb %bl



andb %bl, %bl

jz .L394

pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -3308(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movl $0, %r13d



movl %r13d, -3312(%rbp, 1)




.L382:

movl $28, %r14d



movl -3312(%rbp, 1), %r15d



pushq %rbx

xorq %rbx, %rbx
movb -3313(%rbp, 1), %bl


xorb %bl, -3313(%rbp, 1)
popq %rbx



cmpl %r14d, %r15d

setb -3313(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3313(%rbp, 1), %bl


andb %bl, -3313(%rbp, 1)
popq %rbx



jz .L383

movl $0, %r14d



movl %r14d, -3317(%rbp, 1)




.L380:

movl $28, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -3317(%rbp, 1), %ebx


movl %ebx, -3321(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -3322(%rbp, 1), %bl


xorb %bl, -3322(%rbp, 1)
popq %rbx



cmpl %r15d, -3321(%rbp, 1)

setb -3322(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -3322(%rbp, 1), %bl


andb %bl, -3322(%rbp, 1)
popq %rbx



jz .L381



pushq %rbx

xorq %rbx, %rbx
movl -172(%rbp, 1), %ebx


movl %ebx, -3354(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3354(%rbp, 1)

pushq %r10


pushq %r11


movq -112(%rbp, 1), %r11

movq -104(%rbp, 1), %r10


movq %r11, -3362(%rbp, 1)


movq %r10, -3370(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -3370(%rbp, 1), %rbx


cmpq %rbx, -3354(%rbp, 1)
popq %rbx



jb .L378

movq -3354(%rbp, 1), %rsi


movq -3370(%rbp, 1), %rdx


call err_oob

.L378:
pushq %rbx

xorq %rbx, %rbx
movq -3354(%rbp, 1), %rbx


movq %rbx, -3378(%rbp, 1)
popq %rbx




movq -3378(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -3378(%rbp, 1)



// mul on the CPU up here ^




movl $28, -3382(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -3312(%rbp, 1), %ebx


movl %ebx, -3386(%rbp, 1)
popq %rbx





movl -3386(%rbp, 1), %eax


imull -3382(%rbp, 1), %eax

movl %eax, -3386(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -3317(%rbp, 1), %ebx


addl %ebx, -3386(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -3386(%rbp, 1), %ebx


movl %ebx, -3394(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3394(%rbp, 1)

cmpq $784, -3394(%rbp, 1)

jb .L379

movq -3394(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L379:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3362(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3378(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -3402(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3402(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3394(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -3406(%rbp, 1)
popq %r13







movl -3312(%rbp, 1), %r15d



movabsq $4294967295, %rax


andq %rax, %r15

cmpq $28, %r15

jb .L376

movq %r15, %rsi


movq $28, %rdx


call err_oob

.L376:
pushq %r10


leaq -3308(%rbp, 1), %r10

movq %r10, -3330(%rbp, 1)


popq %r10


movq %r15, %rax


imulq $112, %rax

movq %rax, %r15






pushq %rbx

xorq %rbx, %rbx
movl -3317(%rbp, 1), %ebx


movl %ebx, -3338(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -3338(%rbp, 1)

cmpq $28, -3338(%rbp, 1)

jb .L377

movq -3338(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L377:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -3330(%rbp, 1), %rbx


leaq 0(%rbx, %r15, 1), %r10
popq %rbx


movq %r10, -3346(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -3346(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -3338(%rbp, 1), %r12


movl -3406(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -3317(%rbp, 1)




jmp .L380

.L381:




incl -3312(%rbp, 1)




jmp .L382

.L383:




pushq %rbx


movabsq $4620693217682128896, %rbx


movq %rbx, -3414(%rbp, 1)

popq %rbx




pushq %rbx


movabsq $4617315517961601024, %rbx


movq %rbx, -3422(%rbp, 1)

popq %rbx




pushq %rbx


leaq -6558(%rbp, 1), %rbx

subq $8, %rsp

movq %rbx, %rdi


movq -136(%rbp, 1), %rsi


movsd -3414(%rbp, 1), %xmm0


movsd -3422(%rbp, 1), %xmm1


subq $3136, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


leaq -3308(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



addq $3136, %rax


movq $1, %rax


call elastic_distortion

addq $8, %rsp

addq $3136, %rsp

popq %rbx


movq %rax, -6566(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -6558(%rbp, 1), %rsi

leaq -9702(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




pushq %rsi


pushq %rdi


pushq %rcx


leaq -9702(%rbp, 1), %rsi

leaq -3308(%rbp, 1), %rdi

movq $3136, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




movl $0, -9706(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -9706(%rbp, 1), %ebx


movl %ebx, -9710(%rbp, 1)
popq %rbx






.L390:

movl $28, -9714(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -9710(%rbp, 1), %ebx


movl %ebx, -9718(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -9719(%rbp, 1), %bl


xorb %bl, -9719(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -9714(%rbp, 1), %ebx


cmpl %ebx, -9718(%rbp, 1)
popq %rbx



setb -9719(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -9719(%rbp, 1), %bl


andb %bl, -9719(%rbp, 1)
popq %rbx



jz .L391

movl $0, -9723(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -9723(%rbp, 1), %ebx


movl %ebx, -9727(%rbp, 1)
popq %rbx






.L388:

movl $28, -9731(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -9727(%rbp, 1), %ebx


movl %ebx, -9735(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -9736(%rbp, 1), %bl


xorb %bl, -9736(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -9731(%rbp, 1), %ebx


cmpl %ebx, -9735(%rbp, 1)
popq %rbx



setb -9736(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -9736(%rbp, 1), %bl


andb %bl, -9736(%rbp, 1)
popq %rbx



jz .L389



pushq %rbx

xorq %rbx, %rbx
movl -9710(%rbp, 1), %ebx


movl %ebx, -9800(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -9800(%rbp, 1)

cmpq $28, -9800(%rbp, 1)

jb .L386

movq -9800(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L386:
pushq %r10


leaq -3308(%rbp, 1), %r10

movq %r10, -9808(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -9800(%rbp, 1), %rbx


movq %rbx, -9816(%rbp, 1)
popq %rbx




movq -9816(%rbp, 1), %rax


imulq $112, %rax

movq %rax, -9816(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -9727(%rbp, 1), %ebx


movl %ebx, -9824(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -9824(%rbp, 1)

cmpq $28, -9824(%rbp, 1)

jb .L387

movq -9824(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L387:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -9808(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -9816(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -9832(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -9832(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -9824(%rbp, 1), %r12


movl 0(%rbx, %r12, 4), %r13d


popq %r12

popq %rbx

movl %r13d, -9836(%rbp, 1)
popq %r13







pushq %rbx

xorq %rbx, %rbx
movl -172(%rbp, 1), %ebx


movl %ebx, -9744(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -9744(%rbp, 1)

pushq %r10


pushq %r11


movq -128(%rbp, 1), %r11

movq -120(%rbp, 1), %r10


movq %r11, -9752(%rbp, 1)


movq %r10, -9760(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -9760(%rbp, 1), %rbx


cmpq %rbx, -9744(%rbp, 1)
popq %rbx



jb .L384

movq -9744(%rbp, 1), %rsi


movq -9760(%rbp, 1), %rdx


call err_oob

.L384:
pushq %rbx

xorq %rbx, %rbx
movq -9744(%rbp, 1), %rbx


movq %rbx, -9768(%rbp, 1)
popq %rbx




movq -9768(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -9768(%rbp, 1)



// mul on the CPU up here ^




movl $28, -9772(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -9710(%rbp, 1), %ebx


movl %ebx, -9776(%rbp, 1)
popq %rbx





movl -9776(%rbp, 1), %eax


imull -9772(%rbp, 1), %eax

movl %eax, -9776(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -9727(%rbp, 1), %ebx


addl %ebx, -9776(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -9776(%rbp, 1), %ebx


movl %ebx, -9784(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -9784(%rbp, 1)

cmpq $784, -9784(%rbp, 1)

jb .L385

movq -9784(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L385:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -9752(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -9768(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -9792(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -9792(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -9784(%rbp, 1), %r12


movl -9836(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -9727(%rbp, 1)




jmp .L388

.L389:




incl -9710(%rbp, 1)




jmp .L390

.L391:





movq $.L392, %rdi


movl -172(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -9840(%rbp, 1)







incl -172(%rbp, 1)




jmp .L393

.L394:



._distort_set:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $22896, %rsp





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




movq $.L395, %rax


// array reference
leaq 0(%rax, 1), %r12


movq %r12, %rdi


movq $60, %rsi





movq %rsp, %rax



movq $0, %rax


call read_dataset_image

movq %rax, -16(%rbp, 1)


movq %rdx, -8(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -16(%rbp, 1), %rsi

leaq -32(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





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




movq $.L396, %rax


// array reference
leaq 0(%rax, 1), %r13


movq %r13, %rdi


movq $60, %rsi





movq %rsp, %rax



movq $0, %rax


call read_dataset_label

movq %rax, -48(%rbp, 1)


movq %rdx, -40(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -48(%rbp, 1), %rsi

leaq -64(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi










movq $.L397, %rdi


movq -24(%rbp, 1), %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r14d





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -120(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movq $28, %r15



pushq %rbx


movq $28, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -80(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -88(%rbp, 1)
popq %rbx





movq -88(%rbp, 1), %rax


imulq -80(%rbp, 1), %rax

movq %rax, -88(%rbp, 1)




movq -72(%rbp, 1), %rax


imulq -88(%rbp, 1), %rax

movq %rax, -72(%rbp, 1)




movq %r15, %rax


imulq -72(%rbp, 1), %rax

movq %rax, %r15




movq %r15, %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -104(%rbp, 1)


movq %rdx, -96(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -104(%rbp, 1), %rsi

leaq -120(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -112(%rbp, 1), %rax


pushq %rbx


movq $3136, %rbx


movq %rbx, -128(%rbp, 1)

popq %rbx



idivq -128(%rbp, 1)

movq %rax, -112(%rbp, 1)





movl $0, -132(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -132(%rbp, 1), %ebx


movl %ebx, -136(%rbp, 1)
popq %rbx






.L407:





pushq %rbx

xorq %rbx, %rbx
movl -112(%rbp, 1), %ebx


movl %ebx, -140(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -140(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -136(%rbp, 1), %ebx


movl %ebx, -144(%rbp, 1)
popq %rbx





xorb %bl, %bl

pushq %rbx

xorq %rbx, %rbx
movl -140(%rbp, 1), %ebx


cmpl %ebx, -144(%rbp, 1)
popq %rbx



setb %bl



andb %bl, %bl

jz .L408

movl $0, -148(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -148(%rbp, 1), %ebx


movl %ebx, -152(%rbp, 1)
popq %rbx






.L405:

movl $28, -156(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -152(%rbp, 1), %ebx


movl %ebx, -160(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -161(%rbp, 1), %bl


xorb %bl, -161(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -156(%rbp, 1), %ebx


cmpl %ebx, -160(%rbp, 1)
popq %rbx



setb -161(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -161(%rbp, 1), %bl


andb %bl, -161(%rbp, 1)
popq %rbx



jz .L406

movl $0, -165(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -165(%rbp, 1), %ebx


movl %ebx, -169(%rbp, 1)
popq %rbx






.L403:

movl $28, -173(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -169(%rbp, 1), %ebx


movl %ebx, -177(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -178(%rbp, 1), %bl


xorb %bl, -178(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -173(%rbp, 1), %ebx


cmpl %ebx, -177(%rbp, 1)
popq %rbx



setb -178(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -178(%rbp, 1), %bl


andb %bl, -178(%rbp, 1)
popq %rbx



jz .L404



pushq %rbx

xorq %rbx, %rbx
movl -136(%rbp, 1), %ebx


movl %ebx, -186(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -186(%rbp, 1)

pushq %r10


pushq %r11


movq -32(%rbp, 1), %r11

movq -24(%rbp, 1), %r10


movq %r11, -194(%rbp, 1)


movq %r10, -202(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -202(%rbp, 1), %rbx


cmpq %rbx, -186(%rbp, 1)
popq %rbx



jb .L398

movq -186(%rbp, 1), %rsi


movq -202(%rbp, 1), %rdx


call err_oob

.L398:
pushq %rbx

xorq %rbx, %rbx
movq -186(%rbp, 1), %rbx


movq %rbx, -210(%rbp, 1)
popq %rbx




movq -210(%rbp, 1), %rax


imulq $784, %rax

movq %rax, -210(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -152(%rbp, 1), %ebx


movl %ebx, -218(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -218(%rbp, 1)

cmpq $28, -218(%rbp, 1)

jb .L399

movq -218(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L399:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -194(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -210(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -226(%rbp, 1)


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -218(%rbp, 1), %rbx


movq %rbx, -234(%rbp, 1)
popq %rbx




movq -234(%rbp, 1), %rax


imulq $28, %rax

movq %rax, -234(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -169(%rbp, 1), %ebx


movl %ebx, -242(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -242(%rbp, 1)

cmpq $28, -242(%rbp, 1)

jb .L400

movq -242(%rbp, 1), %rsi


movq $28, %rdx


call err_oob

.L400:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -226(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -234(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -250(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -250(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -242(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

popq %rbx

movb %r13b, -251(%rbp, 1)
popq %r13







movq %rbx, -315(%rbp, 1)


movb -251(%rbp, 1), %bl


andq $255, %rbx


cvtsi2ss %rbx, %xmm0

movq -315(%rbp, 1), %rbx


movss %xmm0, -319(%rbp, 1)



movl $1124007936, -323(%rbp, 1)



movss -319(%rbp, 1), %xmm0


divss -323(%rbp, 1), %xmm0

movss %xmm0, -319(%rbp, 1)




movl $1065353216, -327(%rbp, 1)



movss -319(%rbp, 1), %xmm0


subss -327(%rbp, 1), %xmm0

movss %xmm0, -319(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -319(%rbp, 1), %ebx


movl %ebx, -331(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -136(%rbp, 1), %ebx


movl %ebx, -259(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -259(%rbp, 1)

pushq %r10


pushq %r11


movq -120(%rbp, 1), %r11

movq -112(%rbp, 1), %r10


movq %r11, -267(%rbp, 1)


movq %r10, -275(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -275(%rbp, 1), %rbx


cmpq %rbx, -259(%rbp, 1)
popq %rbx



jb .L401

movq -259(%rbp, 1), %rsi


movq -275(%rbp, 1), %rdx


call err_oob

.L401:
pushq %rbx

xorq %rbx, %rbx
movq -259(%rbp, 1), %rbx


movq %rbx, -283(%rbp, 1)
popq %rbx




movq -283(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -283(%rbp, 1)



// mul on the CPU up here ^




movl $28, -287(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -152(%rbp, 1), %ebx


movl %ebx, -291(%rbp, 1)
popq %rbx





movl -291(%rbp, 1), %eax


imull -287(%rbp, 1), %eax

movl %eax, -291(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -169(%rbp, 1), %ebx


addl %ebx, -291(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -291(%rbp, 1), %ebx


movl %ebx, -299(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -299(%rbp, 1)

cmpq $784, -299(%rbp, 1)

jb .L402

movq -299(%rbp, 1), %rsi


movq $784, %rdx


call err_oob

.L402:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -267(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -283(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -307(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -307(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -299(%rbp, 1), %r12


movl -331(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -169(%rbp, 1)




jmp .L403

.L404:




incl -152(%rbp, 1)




jmp .L405

.L406:




incl -136(%rbp, 1)




jmp .L407

.L408:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -387(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax






pushq %rbx


movq $4, %rbx


movq %rbx, -339(%rbp, 1)

popq %rbx




pushq %rbx


movq $10, %rbx


movq %rbx, -347(%rbp, 1)

popq %rbx




movq -339(%rbp, 1), %rax


imulq -347(%rbp, 1), %rax

movq %rax, -339(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movq -56(%rbp, 1), %rbx


movq %rbx, -355(%rbp, 1)
popq %rbx





movq -355(%rbp, 1), %rax


imulq -339(%rbp, 1), %rax

movq %rax, -355(%rbp, 1)




movq -355(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -371(%rbp, 1)


movq %rdx, -363(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -371(%rbp, 1), %rsi

leaq -387(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -379(%rbp, 1), %rax


pushq %rbx


movq $40, %rbx


movq %rbx, -395(%rbp, 1)

popq %rbx



idivq -395(%rbp, 1)

movq %rax, -379(%rbp, 1)





movl $0, -399(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -399(%rbp, 1), %ebx


movl %ebx, -403(%rbp, 1)
popq %rbx






.L412:





pushq %rbx

xorq %rbx, %rbx
movl -379(%rbp, 1), %ebx


movl %ebx, -407(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -407(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -403(%rbp, 1), %ebx


movl %ebx, -411(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -412(%rbp, 1), %bl


xorb %bl, -412(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -407(%rbp, 1), %ebx


cmpl %ebx, -411(%rbp, 1)
popq %rbx



setb -412(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -412(%rbp, 1), %bl


andb %bl, -412(%rbp, 1)
popq %rbx



jz .L413



pushq %rbx

xorq %rbx, %rbx
movl -403(%rbp, 1), %ebx


movl %ebx, -420(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -420(%rbp, 1)

pushq %r10


pushq %r11


movq -64(%rbp, 1), %r11

movq -56(%rbp, 1), %r10


movq %r11, -428(%rbp, 1)


movq %r10, -436(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -436(%rbp, 1), %rbx


cmpq %rbx, -420(%rbp, 1)
popq %rbx



jb .L409

movq -420(%rbp, 1), %rsi


movq -436(%rbp, 1), %rdx


call err_oob

.L409:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -428(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -420(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

popq %rbx

movb %r13b, -437(%rbp, 1)
popq %r13





movl $1065353216, -489(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -489(%rbp, 1), %ebx


movl %ebx, -493(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -403(%rbp, 1), %ebx


movl %ebx, -445(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -445(%rbp, 1)

pushq %r10


pushq %r11


movq -387(%rbp, 1), %r11

movq -379(%rbp, 1), %r10


movq %r11, -453(%rbp, 1)


movq %r10, -461(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -461(%rbp, 1), %rbx


cmpq %rbx, -445(%rbp, 1)
popq %rbx



jb .L410

movq -445(%rbp, 1), %rsi


movq -461(%rbp, 1), %rdx


call err_oob

.L410:
pushq %rbx

xorq %rbx, %rbx
movq -445(%rbp, 1), %rbx


movq %rbx, -469(%rbp, 1)
popq %rbx




movq -469(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -469(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movb -437(%rbp, 1), %bl


movb %bl, -477(%rbp, 1)
popq %rbx





movq $255, %rax


andq %rax, -477(%rbp, 1)

cmpq $10, -477(%rbp, 1)

jb .L411

movq -477(%rbp, 1), %rsi


movq $10, %rdx


call err_oob

.L411:
pushq %r10


pushq %rbx


xorq %rbx, %rbx

movq -453(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -469(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %r10
popq %r12

popq %rbx


movq %r10, -485(%rbp, 1)


popq %r10




pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -485(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -477(%rbp, 1), %r12


movl -493(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -403(%rbp, 1)




jmp .L412

.L413:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -525(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movq %rsp, %rax



movq $0, %rax


call nn

movq %rax, -509(%rbp, 1)


movq %rdx, -501(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -509(%rbp, 1), %rsi

leaq -525(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





movl $0, -529(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -529(%rbp, 1), %ebx


movl %ebx, -533(%rbp, 1)
popq %rbx






.L416:





pushq %rbx

xorq %rbx, %rbx
movl -517(%rbp, 1), %ebx


movl %ebx, -537(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -537(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -533(%rbp, 1), %ebx


movl %ebx, -541(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -542(%rbp, 1), %bl


xorb %bl, -542(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -537(%rbp, 1), %ebx


cmpl %ebx, -541(%rbp, 1)
popq %rbx



setl -542(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -542(%rbp, 1), %bl


andb %bl, -542(%rbp, 1)
popq %rbx



jz .L417






pushq %rbx

xorq %rbx, %rbx
movl -533(%rbp, 1), %ebx


movl %ebx, -550(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -550(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -558(%rbp, 1)


movq %r10, -566(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -566(%rbp, 1), %rbx


cmpq %rbx, -550(%rbp, 1)
popq %rbx



jb .L415

movq -550(%rbp, 1), %rsi


movq -566(%rbp, 1), %rdx


call err_oob

.L415:
pushq %rbx

xorq %rbx, %rbx
movq -550(%rbp, 1), %rbx


movq %rbx, -574(%rbp, 1)
popq %rbx




movq -574(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -574(%rbp, 1)



// mul on the CPU up here ^





movq $.L414, %rdi


movl -533(%rbp, 1), %esi


pushq %rbx


xorq %rbx, %rbx

movq -558(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -574(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rdx
popq %r12

popq %rbx



movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -578(%rbp, 1)







incl -533(%rbp, 1)




jmp .L416

.L417:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -10612(%rbp, 1), %rdi

movq $5009, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movl $0, -582(%rbp, 1)



movl -582(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call time

movl %eax, -586(%rbp, 1)





pushq %rbx


leaq -5595(%rbp, 1), %rbx

subq $8, %rsp

movq %rbx, %rdi


movl -586(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call init_normal

addq $8, %rsp

popq %rbx


movq %rax, -5603(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -5595(%rbp, 1), %rsi

leaq -10612(%rbp, 1), %rdi

movq $5009, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





movl $0, -10616(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -10616(%rbp, 1), %ebx


movl %ebx, -10620(%rbp, 1)
popq %rbx





movl $0, -10624(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -10624(%rbp, 1), %ebx


movl %ebx, -10628(%rbp, 1)
popq %rbx






.L428:




pushq %rbx

xorq %rbx, %rbx
movl -10620(%rbp, 1), %ebx


movl %ebx, -10636(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10636(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -10644(%rbp, 1)


movq %r10, -10652(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10652(%rbp, 1), %rbx


cmpq %rbx, -10636(%rbp, 1)
popq %rbx



jb .L418

movq -10636(%rbp, 1), %rsi


movq -10652(%rbp, 1), %rdx


call err_oob

.L418:
pushq %rbx

xorq %rbx, %rbx
movq -10636(%rbp, 1), %rbx


movq %rbx, -10660(%rbp, 1)
popq %rbx




movq -10660(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -10660(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -10644(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10660(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -10664(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -10664(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -10628(%rbp, 1), %ebx


movl %ebx, -10668(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -10669(%rbp, 1), %bl


xorb %bl, -10669(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -10664(%rbp, 1), %ebx


cmpl %ebx, -10668(%rbp, 1)
popq %rbx



setl -10669(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -10669(%rbp, 1), %bl


andb %bl, -10669(%rbp, 1)
popq %rbx



jz .L429

movl $0, -10673(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -10673(%rbp, 1), %ebx


movl %ebx, -10677(%rbp, 1)
popq %rbx






.L424:




pushq %rbx

xorq %rbx, %rbx
movl -10620(%rbp, 1), %ebx


movl %ebx, -10685(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10685(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -10693(%rbp, 1)


movq %r10, -10701(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10701(%rbp, 1), %rbx


cmpq %rbx, -10685(%rbp, 1)
popq %rbx



jb .L419

movq -10685(%rbp, 1), %rsi


movq -10701(%rbp, 1), %rdx


call err_oob

.L419:
pushq %rbx

xorq %rbx, %rbx
movq -10685(%rbp, 1), %rbx


movq %rbx, -10709(%rbp, 1)
popq %rbx




movq -10709(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -10709(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -10628(%rbp, 1), %ebx


movl %ebx, -10717(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10717(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -10693(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10709(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -10693(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10709(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -10725(%rbp, 1)


movq %r10, -10733(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10733(%rbp, 1), %rbx


cmpq %rbx, -10717(%rbp, 1)
popq %rbx



jb .L420

movq -10717(%rbp, 1), %rsi


movq -10733(%rbp, 1), %rdx


call err_oob

.L420:
pushq %rbx

xorq %rbx, %rbx
movq -10717(%rbp, 1), %rbx


movq %rbx, -10741(%rbp, 1)
popq %rbx




movq -10741(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -10741(%rbp, 1)



// mul on the CPU up here ^







pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -10725(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10741(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -10745(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -10745(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -10677(%rbp, 1), %ebx


movl %ebx, -10749(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -10750(%rbp, 1), %bl


xorb %bl, -10750(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -10745(%rbp, 1), %ebx


cmpl %ebx, -10749(%rbp, 1)
popq %rbx



setl -10750(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -10750(%rbp, 1), %bl


andb %bl, -10750(%rbp, 1)
popq %rbx



jz .L425


pushq %rbx


leaq -10612(%rbp, 1), %rbx

movq %rbx, -10846(%rbp, 1)


popq %rbx




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -10854(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -10862(%rbp, 1)

popq %rbx




movq -10846(%rbp, 1), %rdi


movsd -10854(%rbp, 1), %xmm0


movsd -10862(%rbp, 1), %xmm1


movq %rsp, %rax



movq $1, %rax


call normal

movsd %xmm0, -10870(%rbp, 1)





cvtsd2ss -10870(%rbp, 1), %xmm0

movss %xmm0, -10874(%rbp, 1)



movl $1065353216, -10878(%rbp, 1)



movl $1145307136, -10882(%rbp, 1)



movss -10878(%rbp, 1), %xmm0


divss -10882(%rbp, 1), %xmm0

movss %xmm0, -10878(%rbp, 1)




movss -10878(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call sqrtf

movss %xmm0, -10886(%rbp, 1)





movl -10874(%rbp, 1), %eax


movss -10874(%rbp, 1), %xmm0


mulss -10886(%rbp, 1), %xmm0

movss %xmm0, -10874(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -10874(%rbp, 1), %ebx


movl %ebx, -10890(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -10620(%rbp, 1), %ebx


movl %ebx, -10758(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10758(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -10766(%rbp, 1)


movq %r10, -10774(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10774(%rbp, 1), %rbx


cmpq %rbx, -10758(%rbp, 1)
popq %rbx



jb .L421

movq -10758(%rbp, 1), %rsi


movq -10774(%rbp, 1), %rdx


call err_oob

.L421:
pushq %rbx

xorq %rbx, %rbx
movq -10758(%rbp, 1), %rbx


movq %rbx, -10782(%rbp, 1)
popq %rbx




movq -10782(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -10782(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -10628(%rbp, 1), %ebx


movl %ebx, -10790(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10790(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -10766(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10782(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -10766(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10782(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -10798(%rbp, 1)


movq %r10, -10806(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10806(%rbp, 1), %rbx


cmpq %rbx, -10790(%rbp, 1)
popq %rbx



jb .L422

movq -10790(%rbp, 1), %rsi


movq -10806(%rbp, 1), %rdx


call err_oob

.L422:
pushq %rbx

xorq %rbx, %rbx
movq -10790(%rbp, 1), %rbx


movq %rbx, -10814(%rbp, 1)
popq %rbx




movq -10814(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -10814(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

xorq %rbx, %rbx
movl -10677(%rbp, 1), %ebx


movl %ebx, -10822(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10822(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -10798(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10814(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -10798(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10814(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -10830(%rbp, 1)


movq %r10, -10838(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10838(%rbp, 1), %rbx


cmpq %rbx, -10822(%rbp, 1)
popq %rbx



jb .L423

movq -10822(%rbp, 1), %rsi


movq -10838(%rbp, 1), %rdx


call err_oob

.L423:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -10830(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10822(%rbp, 1), %r12


movl -10890(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -10677(%rbp, 1)




jmp .L424

.L425:



pushq %rbx


leaq -10612(%rbp, 1), %rbx

movq %rbx, -10962(%rbp, 1)


popq %rbx




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -10970(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -10978(%rbp, 1)

popq %rbx




movq -10962(%rbp, 1), %rdi


movsd -10970(%rbp, 1), %xmm0


movsd -10978(%rbp, 1), %xmm1


movq %rsp, %rax



movq $1, %rax


call normal

movsd %xmm0, -10986(%rbp, 1)





cvtsd2ss -10986(%rbp, 1), %xmm0

movss %xmm0, -10990(%rbp, 1)



movl $1065353216, -10994(%rbp, 1)



movl $1145307136, -10998(%rbp, 1)



movss -10994(%rbp, 1), %xmm0


divss -10998(%rbp, 1), %xmm0

movss %xmm0, -10994(%rbp, 1)




movss -10994(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call sqrtf

movss %xmm0, -11002(%rbp, 1)





movl -10990(%rbp, 1), %eax


movss -10990(%rbp, 1), %xmm0


mulss -11002(%rbp, 1), %xmm0

movss %xmm0, -10990(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -10990(%rbp, 1), %ebx


movl %ebx, -11006(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -10620(%rbp, 1), %ebx


movl %ebx, -10898(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10898(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -10906(%rbp, 1)


movq %r10, -10914(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10914(%rbp, 1), %rbx


cmpq %rbx, -10898(%rbp, 1)
popq %rbx



jb .L426

movq -10898(%rbp, 1), %rsi


movq -10914(%rbp, 1), %rdx


call err_oob

.L426:
pushq %rbx

xorq %rbx, %rbx
movq -10898(%rbp, 1), %rbx


movq %rbx, -10922(%rbp, 1)
popq %rbx




movq -10922(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -10922(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -10628(%rbp, 1), %ebx


movl %ebx, -10930(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -10930(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -10906(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10922(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -10906(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10922(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -10938(%rbp, 1)


movq %r10, -10946(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -10946(%rbp, 1), %rbx


cmpq %rbx, -10930(%rbp, 1)
popq %rbx



jb .L427

movq -10930(%rbp, 1), %rsi


movq -10946(%rbp, 1), %rdx


call err_oob

.L427:
pushq %rbx

xorq %rbx, %rbx
movq -10930(%rbp, 1), %rbx


movq %rbx, -10954(%rbp, 1)
popq %rbx




movq -10954(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -10954(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -10938(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -10954(%rbp, 1), %r12


movl -11006(%rbp, 1), %r13d


movl %r13d, 16(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13








incl -10628(%rbp, 1)




jmp .L428

.L429:



movl $1, -11010(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11010(%rbp, 1), %ebx


movl %ebx, -11014(%rbp, 1)
popq %rbx





movl $0, -11018(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11018(%rbp, 1), %ebx


movl %ebx, -11022(%rbp, 1)
popq %rbx






.L440:




pushq %rbx

xorq %rbx, %rbx
movl -11014(%rbp, 1), %ebx


movl %ebx, -11030(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11030(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11038(%rbp, 1)


movq %r10, -11046(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11046(%rbp, 1), %rbx


cmpq %rbx, -11030(%rbp, 1)
popq %rbx



jb .L430

movq -11030(%rbp, 1), %rsi


movq -11046(%rbp, 1), %rdx


call err_oob

.L430:
pushq %rbx

xorq %rbx, %rbx
movq -11030(%rbp, 1), %rbx


movq %rbx, -11054(%rbp, 1)
popq %rbx




movq -11054(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11054(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11038(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11054(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -11058(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -11058(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -11022(%rbp, 1), %ebx


movl %ebx, -11062(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11063(%rbp, 1), %bl


xorb %bl, -11063(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11058(%rbp, 1), %ebx


cmpl %ebx, -11062(%rbp, 1)
popq %rbx



setl -11063(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11063(%rbp, 1), %bl


andb %bl, -11063(%rbp, 1)
popq %rbx



jz .L441

movl $0, -11067(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11067(%rbp, 1), %ebx


movl %ebx, -11071(%rbp, 1)
popq %rbx






.L436:




pushq %rbx

xorq %rbx, %rbx
movl -11014(%rbp, 1), %ebx


movl %ebx, -11079(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11079(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11087(%rbp, 1)


movq %r10, -11095(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11095(%rbp, 1), %rbx


cmpq %rbx, -11079(%rbp, 1)
popq %rbx



jb .L431

movq -11079(%rbp, 1), %rsi


movq -11095(%rbp, 1), %rdx


call err_oob

.L431:
pushq %rbx

xorq %rbx, %rbx
movq -11079(%rbp, 1), %rbx


movq %rbx, -11103(%rbp, 1)
popq %rbx




movq -11103(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11103(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11022(%rbp, 1), %ebx


movl %ebx, -11111(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11111(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11087(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11103(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11087(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11103(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11119(%rbp, 1)


movq %r10, -11127(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11127(%rbp, 1), %rbx


cmpq %rbx, -11111(%rbp, 1)
popq %rbx



jb .L432

movq -11111(%rbp, 1), %rsi


movq -11127(%rbp, 1), %rdx


call err_oob

.L432:
pushq %rbx

xorq %rbx, %rbx
movq -11111(%rbp, 1), %rbx


movq %rbx, -11135(%rbp, 1)
popq %rbx




movq -11135(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11135(%rbp, 1)



// mul on the CPU up here ^







pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11119(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11135(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -11139(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -11139(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -11071(%rbp, 1), %ebx


movl %ebx, -11143(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11144(%rbp, 1), %bl


xorb %bl, -11144(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11139(%rbp, 1), %ebx


cmpl %ebx, -11143(%rbp, 1)
popq %rbx



setl -11144(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11144(%rbp, 1), %bl


andb %bl, -11144(%rbp, 1)
popq %rbx



jz .L437


pushq %rbx


leaq -10612(%rbp, 1), %rbx

movq %rbx, -11240(%rbp, 1)


popq %rbx




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -11248(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -11256(%rbp, 1)

popq %rbx




movq -11240(%rbp, 1), %rdi


movsd -11248(%rbp, 1), %xmm0


movsd -11256(%rbp, 1), %xmm1


movq %rsp, %rax



movq $1, %rax


call normal

movsd %xmm0, -11264(%rbp, 1)





cvtsd2ss -11264(%rbp, 1), %xmm0

movss %xmm0, -11268(%rbp, 1)



movl $1065353216, -11272(%rbp, 1)



movl $1145569280, -11276(%rbp, 1)



movss -11272(%rbp, 1), %xmm0


divss -11276(%rbp, 1), %xmm0

movss %xmm0, -11272(%rbp, 1)




movss -11272(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call sqrtf

movss %xmm0, -11280(%rbp, 1)





movl -11268(%rbp, 1), %eax


movss -11268(%rbp, 1), %xmm0


mulss -11280(%rbp, 1), %xmm0

movss %xmm0, -11268(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -11268(%rbp, 1), %ebx


movl %ebx, -11284(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -11014(%rbp, 1), %ebx


movl %ebx, -11152(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11152(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11160(%rbp, 1)


movq %r10, -11168(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11168(%rbp, 1), %rbx


cmpq %rbx, -11152(%rbp, 1)
popq %rbx



jb .L433

movq -11152(%rbp, 1), %rsi


movq -11168(%rbp, 1), %rdx


call err_oob

.L433:
pushq %rbx

xorq %rbx, %rbx
movq -11152(%rbp, 1), %rbx


movq %rbx, -11176(%rbp, 1)
popq %rbx




movq -11176(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11176(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11022(%rbp, 1), %ebx


movl %ebx, -11184(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11184(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11160(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11176(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11160(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11176(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11192(%rbp, 1)


movq %r10, -11200(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11200(%rbp, 1), %rbx


cmpq %rbx, -11184(%rbp, 1)
popq %rbx



jb .L434

movq -11184(%rbp, 1), %rsi


movq -11200(%rbp, 1), %rdx


call err_oob

.L434:
pushq %rbx

xorq %rbx, %rbx
movq -11184(%rbp, 1), %rbx


movq %rbx, -11208(%rbp, 1)
popq %rbx




movq -11208(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11208(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

xorq %rbx, %rbx
movl -11071(%rbp, 1), %ebx


movl %ebx, -11216(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11216(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11192(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11208(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11192(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11208(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11224(%rbp, 1)


movq %r10, -11232(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11232(%rbp, 1), %rbx


cmpq %rbx, -11216(%rbp, 1)
popq %rbx



jb .L435

movq -11216(%rbp, 1), %rsi


movq -11232(%rbp, 1), %rdx


call err_oob

.L435:


pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11224(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11216(%rbp, 1), %r12


movl -11284(%rbp, 1), %r13d


movl %r13d, 0(%rbx, %r12, 4)
popq %r12

popq %rbx

popq %r13








incl -11071(%rbp, 1)




jmp .L436

.L437:



pushq %rbx


leaq -10612(%rbp, 1), %rbx

movq %rbx, -11356(%rbp, 1)


popq %rbx




pushq %rbx


movabsq $4607182418800017408, %rbx


movq %rbx, -11364(%rbp, 1)

popq %rbx




pushq %rbx


movq $0, %rbx


movq %rbx, -11372(%rbp, 1)

popq %rbx




movq -11356(%rbp, 1), %rdi


movsd -11364(%rbp, 1), %xmm0


movsd -11372(%rbp, 1), %xmm1


movq %rsp, %rax



movq $1, %rax


call normal

movsd %xmm0, -11380(%rbp, 1)





cvtsd2ss -11380(%rbp, 1), %xmm0

movss %xmm0, -11384(%rbp, 1)



movl $1065353216, -11388(%rbp, 1)



movl $1145569280, -11392(%rbp, 1)



movss -11388(%rbp, 1), %xmm0


divss -11392(%rbp, 1), %xmm0

movss %xmm0, -11388(%rbp, 1)




movss -11388(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call sqrtf

movss %xmm0, -11396(%rbp, 1)





movl -11384(%rbp, 1), %eax


movss -11384(%rbp, 1), %xmm0


mulss -11396(%rbp, 1), %xmm0

movss %xmm0, -11384(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -11384(%rbp, 1), %ebx


movl %ebx, -11400(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movl -11014(%rbp, 1), %ebx


movl %ebx, -11292(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11292(%rbp, 1)

pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11300(%rbp, 1)


movq %r10, -11308(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11308(%rbp, 1), %rbx


cmpq %rbx, -11292(%rbp, 1)
popq %rbx



jb .L438

movq -11292(%rbp, 1), %rsi


movq -11308(%rbp, 1), %rdx


call err_oob

.L438:
pushq %rbx

xorq %rbx, %rbx
movq -11292(%rbp, 1), %rbx


movq %rbx, -11316(%rbp, 1)
popq %rbx




movq -11316(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11316(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11022(%rbp, 1), %ebx


movl %ebx, -11324(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11324(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11300(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11316(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11300(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11316(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11332(%rbp, 1)


movq %r10, -11340(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11340(%rbp, 1), %rbx


cmpq %rbx, -11324(%rbp, 1)
popq %rbx



jb .L439

movq -11324(%rbp, 1), %rsi


movq -11340(%rbp, 1), %rdx


call err_oob

.L439:
pushq %rbx

xorq %rbx, %rbx
movq -11324(%rbp, 1), %rbx


movq %rbx, -11348(%rbp, 1)
popq %rbx




movq -11348(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11348(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11332(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11348(%rbp, 1), %r12


movl -11400(%rbp, 1), %r13d


movl %r13d, 16(%rbx, %r12, 1)
popq %r12

popq %rbx

popq %r13








incl -11022(%rbp, 1)




jmp .L440

.L441:



movl $0, -11404(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11404(%rbp, 1), %ebx


movl %ebx, -11408(%rbp, 1)
popq %rbx






.L456:



pushq %rbx


movq $0, %rbx


movq %rbx, -11416(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11424(%rbp, 1)


movq %r10, -11432(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11432(%rbp, 1), %rbx


cmpq %rbx, -11416(%rbp, 1)
popq %rbx



jb .L442

movq -11416(%rbp, 1), %rsi


movq -11432(%rbp, 1), %rdx


call err_oob

.L442:
pushq %rbx

xorq %rbx, %rbx
movq -11416(%rbp, 1), %rbx


movq %rbx, -11440(%rbp, 1)
popq %rbx




movq -11440(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11440(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11424(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11440(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -11444(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -11444(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -11408(%rbp, 1), %ebx


movl %ebx, -11448(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11449(%rbp, 1), %bl


xorb %bl, -11449(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11444(%rbp, 1), %ebx


cmpl %ebx, -11448(%rbp, 1)
popq %rbx



setl -11449(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11449(%rbp, 1), %bl


andb %bl, -11449(%rbp, 1)
popq %rbx



jz .L457



movq $.L443, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -11453(%rbp, 1)





movl $0, -11457(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11457(%rbp, 1), %ebx


movl %ebx, -11461(%rbp, 1)
popq %rbx






.L451:

movl $28, -11465(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11461(%rbp, 1), %ebx


movl %ebx, -11469(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11470(%rbp, 1), %bl


xorb %bl, -11470(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11465(%rbp, 1), %ebx


cmpl %ebx, -11469(%rbp, 1)
popq %rbx



setb -11470(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11470(%rbp, 1), %bl


andb %bl, -11470(%rbp, 1)
popq %rbx



jz .L452

movl $0, -11474(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11474(%rbp, 1), %ebx


movl %ebx, -11478(%rbp, 1)
popq %rbx






.L448:

movl $28, -11482(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11478(%rbp, 1), %ebx


movl %ebx, -11486(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11487(%rbp, 1), %bl


xorb %bl, -11487(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11482(%rbp, 1), %ebx


cmpl %ebx, -11486(%rbp, 1)
popq %rbx



setb -11487(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11487(%rbp, 1), %bl


andb %bl, -11487(%rbp, 1)
popq %rbx



jz .L449





pushq %rbx


movq $0, %rbx


movq %rbx, -11495(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11503(%rbp, 1)


movq %r10, -11511(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11511(%rbp, 1), %rbx


cmpq %rbx, -11495(%rbp, 1)
popq %rbx



jb .L445

movq -11495(%rbp, 1), %rsi


movq -11511(%rbp, 1), %rdx


call err_oob

.L445:
pushq %rbx

xorq %rbx, %rbx
movq -11495(%rbp, 1), %rbx


movq %rbx, -11519(%rbp, 1)
popq %rbx




movq -11519(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11519(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11408(%rbp, 1), %ebx


movl %ebx, -11527(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11527(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11503(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11519(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11503(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11519(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11535(%rbp, 1)


movq %r10, -11543(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11543(%rbp, 1), %rbx


cmpq %rbx, -11527(%rbp, 1)
popq %rbx



jb .L446

movq -11527(%rbp, 1), %rsi


movq -11543(%rbp, 1), %rdx


call err_oob

.L446:
pushq %rbx

xorq %rbx, %rbx
movq -11527(%rbp, 1), %rbx


movq %rbx, -11551(%rbp, 1)
popq %rbx




movq -11551(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11551(%rbp, 1)



// mul on the CPU up here ^






movl $28, -11555(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11461(%rbp, 1), %ebx


movl %ebx, -11559(%rbp, 1)
popq %rbx





movl -11559(%rbp, 1), %eax


imull -11555(%rbp, 1), %eax

movl %eax, -11559(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -11478(%rbp, 1), %ebx


addl %ebx, -11559(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -11559(%rbp, 1), %ebx


movl %ebx, -11567(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11567(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11535(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11551(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11535(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11551(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11575(%rbp, 1)


movq %r10, -11583(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11583(%rbp, 1), %rbx


cmpq %rbx, -11567(%rbp, 1)
popq %rbx



jb .L447

movq -11567(%rbp, 1), %rsi


movq -11583(%rbp, 1), %rdx


call err_oob

.L447:


pushq %rbx


xorq %rbx, %rbx

movq -11575(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11567(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -11591(%rbp, 1)



movq $.L444, %rdi


movsd -11591(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -11595(%rbp, 1)







incl -11478(%rbp, 1)




jmp .L448

.L449:




movq $.L450, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -11599(%rbp, 1)







incl -11461(%rbp, 1)




jmp .L451

.L452:






pushq %rbx


movq $0, %rbx


movq %rbx, -11607(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11615(%rbp, 1)


movq %r10, -11623(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11623(%rbp, 1), %rbx


cmpq %rbx, -11607(%rbp, 1)
popq %rbx



jb .L454

movq -11607(%rbp, 1), %rsi


movq -11623(%rbp, 1), %rdx


call err_oob

.L454:
pushq %rbx

xorq %rbx, %rbx
movq -11607(%rbp, 1), %rbx


movq %rbx, -11631(%rbp, 1)
popq %rbx




movq -11631(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11631(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11408(%rbp, 1), %ebx


movl %ebx, -11639(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11639(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11615(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11631(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11615(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11631(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11647(%rbp, 1)


movq %r10, -11655(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11655(%rbp, 1), %rbx


cmpq %rbx, -11639(%rbp, 1)
popq %rbx



jb .L455

movq -11639(%rbp, 1), %rsi


movq -11655(%rbp, 1), %rdx


call err_oob

.L455:
pushq %rbx

xorq %rbx, %rbx
movq -11639(%rbp, 1), %rbx


movq %rbx, -11663(%rbp, 1)
popq %rbx




movq -11663(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11663(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


xorq %rbx, %rbx

movq -11647(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11663(%rbp, 1), %r12


cvtss2sd 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -11671(%rbp, 1)



movq $.L453, %rdi


movsd -11671(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -11675(%rbp, 1)







incl -11408(%rbp, 1)




jmp .L456

.L457:


movl $0, -11679(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11679(%rbp, 1), %ebx


movl %ebx, -11683(%rbp, 1)
popq %rbx






.L469:



pushq %rbx


movq $1, %rbx


movq %rbx, -11691(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11699(%rbp, 1)


movq %r10, -11707(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11707(%rbp, 1), %rbx


cmpq %rbx, -11691(%rbp, 1)
popq %rbx



jb .L458

movq -11691(%rbp, 1), %rsi


movq -11707(%rbp, 1), %rdx


call err_oob

.L458:
pushq %rbx

xorq %rbx, %rbx
movq -11691(%rbp, 1), %rbx


movq %rbx, -11715(%rbp, 1)
popq %rbx




movq -11715(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11715(%rbp, 1)



// mul on the CPU up here ^





pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -11699(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11715(%rbp, 1), %r12


movl 8(%rbx, %r12, 1), %r13d


popq %r12

popq %rbx

movl %r13d, -11719(%rbp, 1)
popq %r13




movq $-1, %rax


andq %rax, -11719(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -11683(%rbp, 1), %ebx


movl %ebx, -11723(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11724(%rbp, 1), %bl


xorb %bl, -11724(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11719(%rbp, 1), %ebx


cmpl %ebx, -11723(%rbp, 1)
popq %rbx



setl -11724(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11724(%rbp, 1), %bl


andb %bl, -11724(%rbp, 1)
popq %rbx



jz .L470



movq $.L459, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -11728(%rbp, 1)





movl $0, -11732(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11732(%rbp, 1), %ebx


movl %ebx, -11736(%rbp, 1)
popq %rbx






.L464:

movl $800, -11740(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -11736(%rbp, 1), %ebx


movl %ebx, -11744(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -11745(%rbp, 1), %bl


xorb %bl, -11745(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -11740(%rbp, 1), %ebx


cmpl %ebx, -11744(%rbp, 1)
popq %rbx



setb -11745(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -11745(%rbp, 1), %bl


andb %bl, -11745(%rbp, 1)
popq %rbx



jz .L465





pushq %rbx


movq $1, %rbx


movq %rbx, -11753(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11761(%rbp, 1)


movq %r10, -11769(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11769(%rbp, 1), %rbx


cmpq %rbx, -11753(%rbp, 1)
popq %rbx



jb .L461

movq -11753(%rbp, 1), %rsi


movq -11769(%rbp, 1), %rdx


call err_oob

.L461:
pushq %rbx

xorq %rbx, %rbx
movq -11753(%rbp, 1), %rbx


movq %rbx, -11777(%rbp, 1)
popq %rbx




movq -11777(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11777(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11683(%rbp, 1), %ebx


movl %ebx, -11785(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11785(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11761(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11777(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11761(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11777(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11793(%rbp, 1)


movq %r10, -11801(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11801(%rbp, 1), %rbx


cmpq %rbx, -11785(%rbp, 1)
popq %rbx



jb .L462

movq -11785(%rbp, 1), %rsi


movq -11801(%rbp, 1), %rdx


call err_oob

.L462:
pushq %rbx

xorq %rbx, %rbx
movq -11785(%rbp, 1), %rbx


movq %rbx, -11809(%rbp, 1)
popq %rbx




movq -11809(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11809(%rbp, 1)



// mul on the CPU up here ^






pushq %rbx

xorq %rbx, %rbx
movl -11736(%rbp, 1), %ebx


movl %ebx, -11817(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11817(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11793(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11809(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11793(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11809(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11825(%rbp, 1)


movq %r10, -11833(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11833(%rbp, 1), %rbx


cmpq %rbx, -11817(%rbp, 1)
popq %rbx



jb .L463

movq -11817(%rbp, 1), %rsi


movq -11833(%rbp, 1), %rdx


call err_oob

.L463:


pushq %rbx


xorq %rbx, %rbx

movq -11825(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11817(%rbp, 1), %r12


cvtss2sd 0(%rbx, %r12, 4), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -11841(%rbp, 1)



movq $.L460, %rdi


movsd -11841(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -11845(%rbp, 1)







incl -11736(%rbp, 1)




jmp .L464

.L465:


movb $10, -11846(%rbp, 1)



movb -11846(%rbp, 1), %dil


movq %rsp, %rax



movq $0, %rax


call putchar

movl %eax, -11850(%rbp, 1)









pushq %rbx


movq $1, %rbx


movq %rbx, -11858(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -525(%rbp, 1), %r11

movq -517(%rbp, 1), %r10


movq %r11, -11866(%rbp, 1)


movq %r10, -11874(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11874(%rbp, 1), %rbx


cmpq %rbx, -11858(%rbp, 1)
popq %rbx



jb .L467

movq -11858(%rbp, 1), %rsi


movq -11874(%rbp, 1), %rdx


call err_oob

.L467:
pushq %rbx

xorq %rbx, %rbx
movq -11858(%rbp, 1), %rbx


movq %rbx, -11882(%rbp, 1)
popq %rbx




movq -11882(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -11882(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx

xorq %rbx, %rbx
movl -11683(%rbp, 1), %ebx


movl %ebx, -11890(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -11890(%rbp, 1)

pushq %r10


pushq %r11


pushq %rbx


xorq %rbx, %rbx

movq -11866(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11882(%rbp, 1), %r12


movq 0(%rbx, %r12, 1), %r11
popq %r12

popq %rbx


pushq %rbx


xorq %rbx, %rbx

movq -11866(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11882(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %r10
popq %r12

popq %rbx



movq %r11, -11898(%rbp, 1)


movq %r10, -11906(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -11906(%rbp, 1), %rbx


cmpq %rbx, -11890(%rbp, 1)
popq %rbx



jb .L468

movq -11890(%rbp, 1), %rsi


movq -11906(%rbp, 1), %rdx


call err_oob

.L468:
pushq %rbx

xorq %rbx, %rbx
movq -11890(%rbp, 1), %rbx


movq %rbx, -11914(%rbp, 1)
popq %rbx




movq -11914(%rbp, 1), %rax


imulq $20, %rax

movq %rax, -11914(%rbp, 1)



// mul on the CPU up here ^





pushq %rbx


xorq %rbx, %rbx

movq -11898(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -11914(%rbp, 1), %r12


cvtss2sd 16(%rbx, %r12, 1), %xmm0
popq %r12

popq %rbx


movsd %xmm0, -11922(%rbp, 1)



movq $.L466, %rdi


movsd -11922(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -11926(%rbp, 1)







incl -11683(%rbp, 1)




jmp .L469

.L470:


pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -12070(%rbp, 1), %rdi

movq $32, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx


movq $2, %rbx


movq %rbx, -11934(%rbp, 1)

popq %rbx




pushq %rbx


movq $16, %rbx


movq %rbx, -11942(%rbp, 1)

popq %rbx




movq -11934(%rbp, 1), %rax


imulq -11942(%rbp, 1), %rax

movq %rax, -11934(%rbp, 1)




movq -11934(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -11958(%rbp, 1)


movq %rdx, -11950(%rbp, 1)





pushq %rbx


movq $2, %rbx


movq %rbx, -11966(%rbp, 1)

popq %rbx




pushq %rbx


movq $16, %rbx


movq %rbx, -11974(%rbp, 1)

popq %rbx




movq -11966(%rbp, 1), %rax


imulq -11974(%rbp, 1), %rax

movq %rax, -11966(%rbp, 1)




movq -11966(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -11990(%rbp, 1)


movq %rdx, -11982(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -11990(%rbp, 1), %rsi

leaq -12006(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -11998(%rbp, 1), %rax


pushq %rbx


movq $16, %rbx


movq %rbx, -12030(%rbp, 1)

popq %rbx



idivq -12030(%rbp, 1)

movq %rax, -11998(%rbp, 1)




pushq %rsi


pushq %rdi


pushq %rcx


leaq -11958(%rbp, 1), %rsi

leaq -12022(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -12014(%rbp, 1), %rax


pushq %rbx


movq $16, %rbx


movq %rbx, -12038(%rbp, 1)

popq %rbx



idivq -12038(%rbp, 1)

movq %rax, -12014(%rbp, 1)






// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -12022(%rbp, 1), %rsi

leaq -12070(%rbp, 1), %rdi

movq $32, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi





pushq %rbx


movq $800, %rbx


movq %rbx, -12110(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -12118(%rbp, 1)

popq %rbx




movq -12110(%rbp, 1), %rax


imulq -12118(%rbp, 1), %rax

movq %rax, -12110(%rbp, 1)




movq -12110(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -12134(%rbp, 1)


movq %rdx, -12126(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -12134(%rbp, 1), %rsi

leaq -12150(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -12142(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -12158(%rbp, 1)

popq %rbx



idivq -12158(%rbp, 1)

movq %rax, -12142(%rbp, 1)







pushq %rbx


movq $0, %rbx


movq %rbx, -12078(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -12070(%rbp, 1), %r11

movq -12062(%rbp, 1), %r10


movq %r11, -12086(%rbp, 1)


movq %r10, -12094(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -12094(%rbp, 1), %rbx


cmpq %rbx, -12078(%rbp, 1)
popq %rbx



jb .L471

movq -12078(%rbp, 1), %rsi


movq -12094(%rbp, 1), %rdx


call err_oob

.L471:
pushq %rbx

xorq %rbx, %rbx
movq -12078(%rbp, 1), %rbx


movq %rbx, -12102(%rbp, 1)
popq %rbx




movq -12102(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -12102(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


leaq -12150(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -12086(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12102(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -12086(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12102(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -12166(%rbp, 1)

popq %rbx



idivq -12166(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -12086(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12102(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx






pushq %rbx


movq $10, %rbx


movq %rbx, -12206(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -12214(%rbp, 1)

popq %rbx




movq -12206(%rbp, 1), %rax


imulq -12214(%rbp, 1), %rax

movq %rax, -12206(%rbp, 1)




movq -12206(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -12230(%rbp, 1)


movq %rdx, -12222(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -12230(%rbp, 1), %rsi

leaq -12246(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -12238(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -12254(%rbp, 1)

popq %rbx



idivq -12254(%rbp, 1)

movq %rax, -12238(%rbp, 1)







pushq %rbx


movq $1, %rbx


movq %rbx, -12174(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -12070(%rbp, 1), %r11

movq -12062(%rbp, 1), %r10


movq %r11, -12182(%rbp, 1)


movq %r10, -12190(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -12190(%rbp, 1), %rbx


cmpq %rbx, -12174(%rbp, 1)
popq %rbx



jb .L472

movq -12174(%rbp, 1), %rsi


movq -12190(%rbp, 1), %rdx


call err_oob

.L472:
pushq %rbx

xorq %rbx, %rbx
movq -12174(%rbp, 1), %rbx


movq %rbx, -12198(%rbp, 1)
popq %rbx




movq -12198(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -12198(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


leaq -12246(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -12182(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12198(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -12182(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12198(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -12262(%rbp, 1)

popq %rbx



idivq -12262(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -12182(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12198(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx






pushq %rbx


movq $800, %rbx


movq %rbx, -12302(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -12310(%rbp, 1)

popq %rbx




movq -12302(%rbp, 1), %rax


imulq -12310(%rbp, 1), %rax

movq %rax, -12302(%rbp, 1)




movq -12302(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -12326(%rbp, 1)


movq %rdx, -12318(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -12326(%rbp, 1), %rsi

leaq -12342(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -12334(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -12350(%rbp, 1)

popq %rbx



idivq -12350(%rbp, 1)

movq %rax, -12334(%rbp, 1)







pushq %rbx


movq $0, %rbx


movq %rbx, -12270(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -12054(%rbp, 1), %r11

movq -12046(%rbp, 1), %r10


movq %r11, -12278(%rbp, 1)


movq %r10, -12286(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -12286(%rbp, 1), %rbx


cmpq %rbx, -12270(%rbp, 1)
popq %rbx



jb .L473

movq -12270(%rbp, 1), %rsi


movq -12286(%rbp, 1), %rdx


call err_oob

.L473:
pushq %rbx

xorq %rbx, %rbx
movq -12270(%rbp, 1), %rbx


movq %rbx, -12294(%rbp, 1)
popq %rbx




movq -12294(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -12294(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


leaq -12342(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -12278(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12294(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -12278(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12294(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -12358(%rbp, 1)

popq %rbx



idivq -12358(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -12278(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12294(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx






pushq %rbx


movq $10, %rbx


movq %rbx, -12398(%rbp, 1)

popq %rbx




pushq %rbx


movq $4, %rbx


movq %rbx, -12406(%rbp, 1)

popq %rbx




movq -12398(%rbp, 1), %rax


imulq -12406(%rbp, 1), %rax

movq %rax, -12398(%rbp, 1)




movq -12398(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -12422(%rbp, 1)


movq %rdx, -12414(%rbp, 1)





pushq %rsi


pushq %rdi


pushq %rcx


leaq -12422(%rbp, 1), %rsi

leaq -12438(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -12430(%rbp, 1), %rax


pushq %rbx


movq $1, %rbx


movq %rbx, -12446(%rbp, 1)

popq %rbx



idivq -12446(%rbp, 1)

movq %rax, -12430(%rbp, 1)







pushq %rbx


movq $1, %rbx


movq %rbx, -12366(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -12054(%rbp, 1), %r11

movq -12046(%rbp, 1), %r10


movq %r11, -12374(%rbp, 1)


movq %r10, -12382(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -12382(%rbp, 1), %rbx


cmpq %rbx, -12366(%rbp, 1)
popq %rbx



jb .L474

movq -12366(%rbp, 1), %rsi


movq -12382(%rbp, 1), %rdx


call err_oob

.L474:
pushq %rbx

xorq %rbx, %rbx
movq -12366(%rbp, 1), %rbx


movq %rbx, -12390(%rbp, 1)
popq %rbx




movq -12390(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -12390(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi


pushq %rdi


pushq %rcx


leaq -12438(%rbp, 1), %rsi

pushq %rbx


xorq %rbx, %rbx

movq -12374(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12390(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rdi
popq %r12

popq %rbx


movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

pushq %rbx


xorq %rbx, %rbx

movq -12374(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12390(%rbp, 1), %r12


movq 8(%rbx, %r12, 1), %rax
popq %r12

popq %rbx



pushq %rbx


movq $4, %rbx


movq %rbx, -12454(%rbp, 1)

popq %rbx



idivq -12454(%rbp, 1)

pushq %rbx


xorq %rbx, %rbx

movq -12374(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -12390(%rbp, 1), %r12


movq %rax, 8(%rbx, %r12, 1)
popq %r12

popq %rbx






pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -22488(%rbp, 1), %rdi

movq $5009, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movl $0, -12458(%rbp, 1)



movl -12458(%rbp, 1), %edi


movq %rsp, %rax



movq $0, %rax


call time

movl %eax, -12462(%rbp, 1)





pushq %rbx


leaq -17471(%rbp, 1), %rbx

subq $8, %rsp

movq %rbx, %rdi


movl -12462(%rbp, 1), %esi


movq %rsp, %rax



movq $0, %rax


call init_normal

addq $8, %rsp

popq %rbx


movq %rax, -17479(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -17471(%rbp, 1), %rsi

leaq -22488(%rbp, 1), %rdi

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

leaq -22552(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



pushq %rbx


movq $28, %rbx


movq %rbx, -22496(%rbp, 1)

popq %rbx




pushq %rbx


movq $28, %rbx


movq %rbx, -22504(%rbp, 1)

popq %rbx







pushq %rbx


movq $4, %rbx


movq %rbx, -22512(%rbp, 1)

popq %rbx




pushq %rbx

xorq %rbx, %rbx
movq -24(%rbp, 1), %rbx


movq %rbx, -22520(%rbp, 1)
popq %rbx





movq -22520(%rbp, 1), %rax


imulq -22512(%rbp, 1), %rax

movq %rax, -22520(%rbp, 1)




movq -22504(%rbp, 1), %rax


imulq -22520(%rbp, 1), %rax

movq %rax, -22504(%rbp, 1)




movq -22496(%rbp, 1), %rax


imulq -22504(%rbp, 1), %rax

movq %rax, -22496(%rbp, 1)




movq -22496(%rbp, 1), %rdi


movq %rsp, %rax



movq $0, %rax


call allocate

movq %rax, -22536(%rbp, 1)


movq %rdx, -22528(%rbp, 1)





// initialization
pushq %rsi


pushq %rdi


pushq %rcx


leaq -22536(%rbp, 1), %rsi

leaq -22552(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi



xorq %rdx, %rdx

xorq %rax, %rax

movq -22544(%rbp, 1), %rax


pushq %rbx


movq $3136, %rbx


movq %rbx, -22560(%rbp, 1)

popq %rbx



idivq -22560(%rbp, 1)

movq %rax, -22544(%rbp, 1)





movl $0, -22564(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -22564(%rbp, 1), %ebx


movl %ebx, -22568(%rbp, 1)
popq %rbx





.L485:
movb $1, -22569(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -22569(%rbp, 1), %bl


andb %bl, -22569(%rbp, 1)
popq %rbx



jz .L486


incl -22568(%rbp, 1)





pushq %rbx


leaq -22488(%rbp, 1), %rbx

movq %rbx, -22577(%rbp, 1)


popq %rbx




movq -120(%rbp, 1), %rdi

movq -112(%rbp, 1), %rsi



movq -22552(%rbp, 1), %rdx

movq -22544(%rbp, 1), %rcx



movq -22577(%rbp, 1), %r8


movq %rsp, %rax



movq $0, %rax


call distort_set



movl $0, -22581(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -22581(%rbp, 1), %ebx


movl %ebx, -22585(%rbp, 1)
popq %rbx





movl $0, -22589(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -22589(%rbp, 1), %ebx


movl %ebx, -22593(%rbp, 1)
popq %rbx





movl $0, -22597(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -22597(%rbp, 1), %ebx


movl %ebx, -22601(%rbp, 1)
popq %rbx






.L482:





pushq %rbx

xorq %rbx, %rbx
movl -22544(%rbp, 1), %ebx


movl %ebx, -22605(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -22605(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22609(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movb -22610(%rbp, 1), %bl


xorb %bl, -22610(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -22605(%rbp, 1), %ebx


cmpl %ebx, -22609(%rbp, 1)
popq %rbx



setl -22610(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -22610(%rbp, 1), %bl


andb %bl, -22610(%rbp, 1)
popq %rbx



jz .L483




pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22618(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -22618(%rbp, 1)

pushq %r10


pushq %r11


movq -22552(%rbp, 1), %r11

movq -22544(%rbp, 1), %r10


movq %r11, -22626(%rbp, 1)


movq %r10, -22634(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -22634(%rbp, 1), %rbx


cmpq %rbx, -22618(%rbp, 1)
popq %rbx



jb .L475

movq -22618(%rbp, 1), %rsi


movq -22634(%rbp, 1), %rdx


call err_oob

.L475:
pushq %rbx

xorq %rbx, %rbx
movq -22618(%rbp, 1), %rbx


movq %rbx, -22642(%rbp, 1)
popq %rbx




movq -22642(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -22642(%rbp, 1)



// mul on the CPU up here ^




movq -525(%rbp, 1), %rdi

movq -517(%rbp, 1), %rsi



subq $3136, %rsp

subq $32, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -22626(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -22642(%rbp, 1), %r12


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

pushq %rsi


pushq %rdi


pushq %rcx


leaq -12070(%rbp, 1), %rsi

leaq 0(%rax, 1), %rdi

movq $32, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi




addq $32, %rax


movq $0, %rax


call forward

addq $32, %rsp

addq $3136, %rsp






pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22650(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -22650(%rbp, 1)

pushq %r10


pushq %r11


movq -22552(%rbp, 1), %r11

movq -22544(%rbp, 1), %r10


movq %r11, -22658(%rbp, 1)


movq %r10, -22666(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -22666(%rbp, 1), %rbx


cmpq %rbx, -22650(%rbp, 1)
popq %rbx



jb .L476

movq -22650(%rbp, 1), %rsi


movq -22666(%rbp, 1), %rdx


call err_oob

.L476:
pushq %rbx

xorq %rbx, %rbx
movq -22650(%rbp, 1), %rbx


movq %rbx, -22674(%rbp, 1)
popq %rbx




movq -22674(%rbp, 1), %rax


imulq $3136, %rax

movq %rax, -22674(%rbp, 1)



// mul on the CPU up here ^








pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22682(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -22682(%rbp, 1)

pushq %r10


pushq %r11


movq -387(%rbp, 1), %r11

movq -379(%rbp, 1), %r10


movq %r11, -22690(%rbp, 1)


movq %r10, -22698(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -22698(%rbp, 1), %rbx


cmpq %rbx, -22682(%rbp, 1)
popq %rbx



jb .L477

movq -22682(%rbp, 1), %rsi


movq -22698(%rbp, 1), %rdx


call err_oob

.L477:
pushq %rbx

xorq %rbx, %rbx
movq -22682(%rbp, 1), %rbx


movq %rbx, -22706(%rbp, 1)
popq %rbx




movq -22706(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -22706(%rbp, 1)



// mul on the CPU up here ^



movl $981668463, -22710(%rbp, 1)



movq -525(%rbp, 1), %rdi

movq -517(%rbp, 1), %rsi



movq -12070(%rbp, 1), %rdx

movq -12062(%rbp, 1), %rcx



movss -22710(%rbp, 1), %xmm0


subq $3136, %rsp

subq $32, %rsp

movq %rsp, %rax


pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -22658(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -22674(%rbp, 1), %r12


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

pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -22690(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -22706(%rbp, 1), %r12


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


movq $1, %rax


call back

addq $32, %rsp

addq $3136, %rsp



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -22758(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax






pushq %rbx


movq $1, %rbx


movq %rbx, -22718(%rbp, 1)

popq %rbx




pushq %r10


pushq %r11


movq -12070(%rbp, 1), %r11

movq -12062(%rbp, 1), %r10


movq %r11, -22726(%rbp, 1)


movq %r10, -22734(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -22734(%rbp, 1), %rbx


cmpq %rbx, -22718(%rbp, 1)
popq %rbx



jb .L478

movq -22718(%rbp, 1), %rsi


movq -22734(%rbp, 1), %rdx


call err_oob

.L478:
pushq %rbx

xorq %rbx, %rbx
movq -22718(%rbp, 1), %rbx


movq %rbx, -22742(%rbp, 1)
popq %rbx




movq -22742(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -22742(%rbp, 1)



// mul on the CPU up here ^



// initialization
pushq %rsi


pushq %rdi


pushq %rcx


pushq %rbx


xorq %rbx, %rbx

movq -22726(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -22742(%rbp, 1), %r12


leaq 0(%rbx, %r12, 1), %rsi
popq %r12

popq %rbx


leaq -22758(%rbp, 1), %rdi

movq $16, %rcx


cld

rep movsb

popq %rcx


popq %rdi


popq %rsi








pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22766(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -22766(%rbp, 1)

pushq %r10


pushq %r11


movq -387(%rbp, 1), %r11

movq -379(%rbp, 1), %r10


movq %r11, -22774(%rbp, 1)


movq %r10, -22782(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -22782(%rbp, 1), %rbx


cmpq %rbx, -22766(%rbp, 1)
popq %rbx



jb .L479

movq -22766(%rbp, 1), %rsi


movq -22782(%rbp, 1), %rdx


call err_oob

.L479:
pushq %rbx

xorq %rbx, %rbx
movq -22766(%rbp, 1), %rbx


movq %rbx, -22790(%rbp, 1)
popq %rbx




movq -22790(%rbp, 1), %rax


imulq $40, %rax

movq %rax, -22790(%rbp, 1)



// mul on the CPU up here ^



movq -22758(%rbp, 1), %rdi

movq -22750(%rbp, 1), %rsi



// array reference
pushq %rbx


pushq %r12


xorq %r12, %r12

movq -22774(%rbp, 1), %r12


pushq %r13


xorq %r13, %r13

movq -22790(%rbp, 1), %r13


leaq 0(%r12, %r13, 1), %rbx
popq %r13

popq %r12


movq %rbx, -22798(%rbp, 1)


popq %rbx



movq -22798(%rbp, 1), %rdx


movq $10, %rcx




movq %rsp, %rax



movq $0, %rax


call loss

movss %xmm0, -22802(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movl -22802(%rbp, 1), %ebx


movl %ebx, -22806(%rbp, 1)
popq %rbx









movl $1, -22810(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -22544(%rbp, 1), %ebx


movl %ebx, -22814(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -22814(%rbp, 1)



movl -22814(%rbp, 1), %eax


imull -22568(%rbp, 1), %eax

movl %eax, -22814(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -22814(%rbp, 1), %ebx


addl %ebx, -22810(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22818(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -22810(%rbp, 1), %ebx


addl %ebx, -22818(%rbp, 1)
popq %rbx





cvtsi2ss -22818(%rbp, 1), %xmm0

movss %xmm0, -22822(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -22806(%rbp, 1), %ebx


movl %ebx, -22826(%rbp, 1)
popq %rbx





movss -22826(%rbp, 1), %xmm0


divss -22822(%rbp, 1), %xmm0

movss %xmm0, -22826(%rbp, 1)




movss -22585(%rbp, 1), %xmm0


addss -22826(%rbp, 1), %xmm0

movss %xmm0, -22585(%rbp, 1)





movq -22758(%rbp, 1), %rdi

movq -22750(%rbp, 1), %rsi



movq %rsp, %rax



movq $0, %rax


call max

movq %rax, -22834(%rbp, 1)





pushq %rbx

xorq %rbx, %rbx
movq -22834(%rbp, 1), %rbx


movq %rbx, -22842(%rbp, 1)
popq %rbx







pushq %rbx

xorq %rbx, %rbx
movb -22842(%rbp, 1), %bl


movb %bl, -22843(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -22843(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22851(%rbp, 1)
popq %rbx





movabsq $4294967295, %rax


andq %rax, -22851(%rbp, 1)

pushq %r10


pushq %r11


movq -64(%rbp, 1), %r11

movq -56(%rbp, 1), %r10


movq %r11, -22859(%rbp, 1)


movq %r10, -22867(%rbp, 1)


popq %r11


popq %r10


pushq %rbx

xorq %rbx, %rbx
movq -22867(%rbp, 1), %rbx


cmpq %rbx, -22851(%rbp, 1)
popq %rbx



jb .L480

movq -22851(%rbp, 1), %rsi


movq -22867(%rbp, 1), %rdx


call err_oob

.L480:


pushq %rbx

xorq %rbx, %rbx
movb -22868(%rbp, 1), %bl


xorb %bl, -22868(%rbp, 1)
popq %rbx



pushq %r13

xorq %r13, %r13
pushq %rbx


xorq %rbx, %rbx

movq -22859(%rbp, 1), %rbx


pushq %r12


xorq %r12, %r12

movq -22851(%rbp, 1), %r12


movb 0(%rbx, %r12, 1), %r13b


popq %r12

popq %rbx

cmpb %r13b, -22843(%rbp, 1)
popq %r13



sete -22868(%rbp, 1)


xorb $1, -22868(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -22868(%rbp, 1), %bl


andb %bl, -22868(%rbp, 1)
popq %rbx



jz .L481


movl $1065353216, -22872(%rbp, 1)





movl $1, -22876(%rbp, 1)







pushq %rbx

xorq %rbx, %rbx
movl -22544(%rbp, 1), %ebx


movl %ebx, -22880(%rbp, 1)
popq %rbx




movq $-1, %rax


andq %rax, -22880(%rbp, 1)



movl -22880(%rbp, 1), %eax


imull -22568(%rbp, 1), %eax

movl %eax, -22880(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movl -22880(%rbp, 1), %ebx


addl %ebx, -22876(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -22601(%rbp, 1), %ebx


movl %ebx, -22884(%rbp, 1)
popq %rbx





pushq %rbx

xorq %rbx, %rbx
movl -22876(%rbp, 1), %ebx


addl %ebx, -22884(%rbp, 1)
popq %rbx





cvtsi2ss -22884(%rbp, 1), %xmm0

movss %xmm0, -22888(%rbp, 1)



movss -22872(%rbp, 1), %xmm0


divss -22888(%rbp, 1), %xmm0

movss %xmm0, -22872(%rbp, 1)




movss -22593(%rbp, 1), %xmm0


addss -22872(%rbp, 1), %xmm0

movss %xmm0, -22593(%rbp, 1)





.L481:


movq %rsp, %rax



movq $0, %rax


call clear_line








movl -22568(%rbp, 1), %edi


movl -22601(%rbp, 1), %esi


movss -22806(%rbp, 1), %xmm0


movss -22585(%rbp, 1), %xmm1


movss -22593(%rbp, 1), %xmm2


movq %rsp, %rax



movq $1, %rax


call print_status





incl -22601(%rbp, 1)




jmp .L482

.L483:




movq $.L484, %rax


// array reference
pushq %rbx


leaq 0(%rax, 1), %rbx

movq %rbx, -22896(%rbp, 1)


popq %rbx



movq -22896(%rbp, 1), %rdi


movq $55, %rsi





movq -525(%rbp, 1), %rdx

movq -517(%rbp, 1), %rcx



movq %rsp, %rax



movq $0, %rax


call save_model




jmp .L485

.L486:



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






































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































.L69: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 100, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 0




















































.L71: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



































.L73: .byte 109, 97, 103, 105, 99, 32, 110, 117, 109, 98, 101, 114, 58, 32, 37, 120, 10, 0













































.L74: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



































.L76: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 105, 109, 97, 103, 101, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0













































.L77: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



































.L79: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 114, 111, 119, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0













































.L80: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



































.L82: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 99, 111, 108, 117, 109, 110, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0





























.L83: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 112, 105, 120, 101, 108, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0





















































































































.L85: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0













































.L89: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 105, 109, 97, 103, 101, 32, 115, 101, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0






























































.L91: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 111, 112, 101, 110, 100, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 0




















































.L93: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



































.L95: .byte 109, 97, 103, 105, 99, 32, 110, 117, 109, 98, 101, 114, 58, 32, 37, 120, 10, 0













































.L96: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0



































.L98: .byte 110, 117, 109, 98, 101, 114, 32, 111, 102, 32, 108, 97, 98, 101, 108, 115, 32, 105, 110, 32, 115, 101, 116, 58, 32, 37, 100, 10, 0








































































.L99: .byte 101, 114, 114, 111, 114, 58, 32, 99, 111, 117, 108, 100, 32, 110, 111, 116, 32, 114, 101, 97, 100, 32, 102, 105, 108, 101, 32, 105, 110, 32, 109, 101, 109, 111, 114, 121, 33, 10, 0






































.L101: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 108, 97, 98, 101, 108, 32, 115, 101, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0







































































































































































.L108: .byte 110, 101, 116, 32, 108, 97, 121, 101, 114, 115, 58, 32, 37, 117, 10, 0


































































































































































.L115: .byte 110, 101, 116, 91, 48, 93, 32, 119, 101, 105, 103, 104, 116, 115, 58, 32, 37, 117, 10, 0



































































































































































































.L124: .byte 110, 101, 116, 91, 49, 93, 32, 119, 101, 105, 103, 104, 116, 115, 58, 32, 37, 117, 10, 0

































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































.L226: .byte 0























































































































































































































.L241: .byte 101, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0










































































































.L246: .byte 37, 108, 108, 120, 10, 0




















































































































.L251: .byte 101, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 105, 110, 116, 111, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0















.L252: .byte 119, 114, 105, 116, 116, 101, 110, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0












































.L255: .byte 101, 114, 114, 111, 114, 32, 119, 114, 105, 116, 105, 110, 103, 32, 105, 110, 116, 111, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0















.L256: .byte 119, 114, 105, 116, 116, 101, 110, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0















































.L263: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0


































































.L265: .byte 101, 114, 114, 111, 114, 32, 111, 112, 101, 110, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0










































































































.L270: .byte 37, 108, 108, 120, 10, 0





















































































































.L275: .byte 101, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 114, 111, 109, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0















.L276: .byte 114, 101, 97, 100, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0












































.L279: .byte 101, 114, 114, 111, 114, 32, 114, 101, 97, 100, 105, 110, 103, 32, 102, 114, 111, 109, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0















.L280: .byte 114, 101, 97, 100, 32, 37, 108, 108, 117, 32, 98, 121, 116, 101, 115, 10, 0















































.L287: .byte 101, 114, 114, 111, 114, 32, 99, 108, 111, 115, 105, 110, 103, 32, 109, 111, 100, 101, 108, 32, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 32, 102, 105, 108, 101, 32, 96, 37, 115, 96, 33, 10, 0














































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































.L374: .byte 101, 112, 111, 99, 104, 32, 35, 37, 51, 117, 59, 32, 101, 120, 97, 109, 112, 108, 101, 32, 35, 37, 53, 117, 58, 32, 108, 111, 115, 115, 32, 37, 49, 48, 102, 32, 99, 111, 115, 116, 32, 37, 49, 48, 102, 32, 101, 114, 114, 111, 114, 32, 37, 49, 48, 102, 10, 0






































.L375: .byte 27, 91, 50, 74, 0




















































































































































































































































































































.L392: .byte 105, 109, 97, 103, 101, 58, 32, 37, 117, 10, 0




























.L395: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 105, 110, 103, 95, 115, 101, 116, 47, 116, 114, 97, 105, 110, 45, 105, 109, 97, 103, 101, 115, 45, 105, 100, 120, 51, 45, 117, 98, 121, 116, 101, 0






















.L396: .byte 46, 47, 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 116, 114, 97, 105, 110, 105, 110, 103, 95, 115, 101, 116, 47, 116, 114, 97, 105, 110, 45, 108, 97, 98, 101, 108, 115, 45, 105, 100, 120, 49, 45, 117, 98, 121, 116, 101, 0




















.L397: .byte 37, 108, 108, 120, 10, 0










































































































































































































































































































































































.L414: .byte 108, 97, 121, 101, 114, 115, 91, 37, 117, 93, 58, 32, 37, 117, 10, 0
































































































































































































































































































































































































































































































































































































































































.L443: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0


































.L444: .byte 37, 102, 32, 0











































































.L450: .byte 10, 0

















.L453: .byte 98, 105, 97, 115, 58, 32, 37, 102, 10, 0




















































































.L459: .byte 119, 101, 105, 103, 104, 116, 115, 58, 10, 0






















.L460: .byte 37, 102, 32, 0










































































.L466: .byte 98, 105, 97, 115, 58, 32, 37, 102, 10, 0
















































































































































































































































































































































































































































































































































































































































































































































.L484: .byte 101, 120, 97, 109, 112, 108, 101, 115, 47, 115, 111, 102, 116, 109, 97, 120, 95, 109, 99, 110, 110, 47, 115, 97, 118, 101, 100, 95, 109, 111, 100, 101, 108, 115, 47, 109, 111, 100, 101, 108, 95, 99, 104, 101, 99, 107, 112, 111, 105, 110, 116, 46, 98, 105, 110, 0
























err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"


