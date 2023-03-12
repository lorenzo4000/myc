.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp


movw %di, -4(%rbp, 1)





movabsq $0, %rbx


movb %bl, %r12b

andq $-1, %r12

xorb %r13b, %r13b
cmpb %r12b, -4(%rbp, 1)
setb %r13b


andb %r13b, %r13b
jz .L1
movb $1, %r12b


movb %r12b, %al

jmp ._print_line



.L1:



movabsq $1, %r14


movb %r14b, %r15b

andq $-1, %r15

movb %r15b, -5(%rbp, 1)



.L3:


pushq %rbx
movb -6(%rbp, 1), %bl

xorb %bl, -6(%rbp, 1)
popq %rbx

pushq %rbx
movb -4(%rbp, 1), %bl

cmpb %bl, -5(%rbp, 1)
popq %rbx

setb -6(%rbp, 1)


pushq %rbx
movb -6(%rbp, 1), %bl

andb %bl, -6(%rbp, 1)
popq %rbx

jz .L4


movb -3(%rbp, 1), %sil



call printf

movq %rax, -23(%rbp, 1)





pushq %rbx
movabsq $1, %rbx

movq %rbx, -14(%rbp, 1)
popq %rbx


pushq %rbx
movb -14(%rbp, 1), %bl

movb %bl, -15(%rbp, 1)
popq %rbx


andq $-1, -15(%rbp, 1)

pushq %rbx
movb -15(%rbp, 1), %bl

addb %bl, -5(%rbp, 1)
popq %rbx



pushq %rbx
movb -5(%rbp, 1), %bl

movb %bl, -5(%rbp, 1)
popq %rbx





jmp .L3
.L4:





call printf

movq %rax, -31(%rbp, 1)


movb $0, -32(%rbp, 1)



movb -32(%rbp, 1), %al

._print_line:
movq %rbp, %rsp
popq %rbp
ret




.global test_big_things
test_big_things:
pushq %rbp
movq %rsp, %rbp
subq $288, %rsp





movabsq $49, %rbx


movq %rbx, -56(%rbp, 1)


movabsq $420, %r12


movq %r12, -48(%rbp, 1)


movabsq $69, %r13


movq %r13, -80(%rbp, 1)


movabsq $42, %r14


movq %r14, -72(%rbp, 1)


movabsq $118, %r15


movq %r15, -64(%rbp, 1)



movq -48(%rbp, 1), %rsi

movq -56(%rbp, 1), %rdi


call undefined_function_a

movq %rax, -88(%rbp, 1)



pushq $0
pushq -64(%rbp, 1)
pushq -72(%rbp, 1)
pushq -80(%rbp, 1)

call undefined_function_b

movq %rax, -96(%rbp, 1)


movb $0, -97(%rbp, 1)


movb -97(%rbp, 1), %al

jmp ._test_big_things



._test_big_things:
movq %rbp, %rsp
popq %rbp
ret


.global main
main:
pushq %rbp
movq %rsp, %rbp




call test_big_things

movb %al, %bl



._main:
movq %rbp, %rsp
popq %rbp
ret



.data


































.L2: .string "%c"
























.L5: .string "\n"




































































