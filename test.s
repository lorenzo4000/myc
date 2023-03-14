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


movq $.L2, %rdi

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



movq $.L5, %rdi


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
subq $304, %rsp






movabsq $49, %rbx


movq %rbx, -96(%rbp, 1)


movabsq $420, %r12


movq %r12, -88(%rbp, 1)


movabsq $58, %r13


movq %r13, -112(%rbp, 1)


movabsq $1248, %r14


movq %r14, -104(%rbp, 1)


movabsq $69, %r15


movq %r15, -136(%rbp, 1)


pushq %rbx
movabsq $42, %rbx

movq %rbx, -144(%rbp, 1)
popq %rbx


pushq %rbx
movq -144(%rbp, 1), %rbx

movq %rbx, -128(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $118, %rbx

movq %rbx, -152(%rbp, 1)
popq %rbx


pushq %rbx
movq -152(%rbp, 1), %rbx

movq %rbx, -120(%rbp, 1)
popq %rbx





movq -88(%rbp, 1), %rsi

movq -96(%rbp, 1), %rdi


movq -104(%rbp, 1), %rcx

movq -112(%rbp, 1), %rdx



call undefined_function_a

movq %rax, -160(%rbp, 1)



movq $.L6, %rdi


call printf

movq %rax, -168(%rbp, 1)



subq $24, %rsp
movq %rsp, %rax

pushq %rbx
movq -120(%rbp, 1), %rbx

movq %rbx, 16(%rax, 1)
popq %rbx


pushq %rbx
movq -128(%rbp, 1), %rbx

movq %rbx, 8(%rax, 1)
popq %rbx


pushq %rbx
movq -136(%rbp, 1), %rbx

movq %rbx, 0(%rax, 1)
popq %rbx




call undefined_function_b
addq $24, %rsp

movq %rax, -176(%rbp, 1)



pushq %rbx
movabsq $1, %rbx

movq %rbx, -224(%rbp, 1)
popq %rbx


pushq %rbx
movq -224(%rbp, 1), %rbx

movq %rbx, -216(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $2, %rbx

movq %rbx, -232(%rbp, 1)
popq %rbx


pushq %rbx
movq -232(%rbp, 1), %rbx

movq %rbx, -208(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $3, %rbx

movq %rbx, -240(%rbp, 1)
popq %rbx


pushq %rbx
movq -240(%rbp, 1), %rbx

movq %rbx, -200(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $4, %rbx

movq %rbx, -248(%rbp, 1)
popq %rbx


pushq %rbx
movq -248(%rbp, 1), %rbx

movq %rbx, -192(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $5, %rbx

movq %rbx, -256(%rbp, 1)
popq %rbx


pushq %rbx
movq -256(%rbp, 1), %rbx

movq %rbx, -184(%rbp, 1)
popq %rbx




subq $40, %rsp
movq %rsp, %rax

pushq %rbx
movq -184(%rbp, 1), %rbx

movq %rbx, 32(%rax, 1)
popq %rbx


pushq %rbx
movq -192(%rbp, 1), %rbx

movq %rbx, 24(%rax, 1)
popq %rbx



pushq %rbx
movq -200(%rbp, 1), %rbx

movq %rbx, 16(%rax, 1)
popq %rbx


pushq %rbx
movq -208(%rbp, 1), %rbx

movq %rbx, 8(%rax, 1)
popq %rbx


pushq %rbx
movq -216(%rbp, 1), %rbx

movq %rbx, 0(%rax, 1)
popq %rbx





call undefined_function_c
addq $40, %rsp

movq %rax, -264(%rbp, 1)


movb $0, -265(%rbp, 1)


movb -265(%rbp, 1), %al

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































































.L6: .string "\n\n"
