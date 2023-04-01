.text





















.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp




movabsq $10, %r13


movq %r13, -8(%rbp, 1)



movq -16(%rbp, 1), %r14


movq $.L1, %rdi

movq %r14, %rsi


call printf
movl %eax, %r15d




._main:
movq %rbp, %rsp
popq %rbp
ret



.data





























.L1: .string "%d\n"













