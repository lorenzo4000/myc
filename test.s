.text
.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $112, %rsp





movabsq $49, %rbx


movq %rbx, %r12

andq $-1, %r12


movq %r12, -64(%rbp, 1)




movq $.L1, %rdi

movq -64(%rbp, 1), %rsi


call printf

movq %rax, %r13


movabsq $43, %r14


movq %r14, -80(%rbp, 1)


leaq -80(%rbp, 1), %r15



movq %r15, -72(%rbp, 1)




pushq %rbx
movabsq $0, %rbx

movq %rbx, -88(%rbp, 1)
popq %rbx


pushq %rbx
movq -88(%rbp, 1), %rbx

movq %rax, -96(%rbp, 1)

movq %rcx, -104(%rbp, 1)

movq -64(%rbp, 1), %rax

movq -72(%rbp, 1), %rcx



pop %rbx

movq $.L2, %rdi

movq $0, %rbx
movq 0(%rcx, %rbx, 1), %rsi


call printf
addq $16, %rsp

movq %rax, -104(%rbp, 1)



._main:
movq %rbp, %rsp
popq %rbp
ret



.data












.L1: .string "%d\n"

















.L2: .string "%d"
























