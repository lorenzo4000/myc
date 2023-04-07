.text




















.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp






movq $.L1, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, -24(%rbp, 1)


pushq %rbx
movq $15, %rbx


movq %rbx, -16(%rbp, 1)

popq %rbx







movq $.L2, %rdi


movq -24(%rbp, 1), %rsi



call printf

movl %eax, %r12d





._main:
movq %rbp, %rsp

popq %rbp

ret




.data
























.L1: .string "Hello, World!\n"









.L2: .string "%s\n"













