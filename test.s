codegen error: undefined `a`
codegen error: undefined `a`
codegen error: undefined `len`
.text

.global allocate
allocate:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp

pushq %rbx
movabsq $0, %rbx

movq %rbx, -8(%rbp, 1)
popq %rbx


movq %rdi, -8(%rbp, 1)





movq -8(%rbp, 1), %rdi


call malloc
movq %rax, %rbx




movq %rbx, -24(%rbp, 1)




movq -8(%rbp, 1), %r12

movq %r12, -16(%rbp, 1)




movq -16(%rbp, 1), %rdx

movq -24(%rbp, 1), %rax


jmp ._allocate




._allocate:
movq %rbp, %rsp
popq %rbp
ret























.global foo
foo:
pushq %rbp
movq %rsp, %rbp
subq $64, %rsp

pushq %rbx
movabsq $0, %rbx

movq %rbx, -32(%rbp, 1)
popq %rbx

movq %rdi, -32(%rbp, 1)





movabsq $54, %rbx


movq %rbx, %r12

andq $-1, %r12


movq %r12, -56(%rbp, 1)



movq -32(%rbp, 1), %rax

movq -40(%rbp, 1), %r13

movq %r13, 16(%rax, 1)


movq -48(%rbp, 1), %r13

movq %r13, 8(%rax, 1)


movq -56(%rbp, 1), %r13

movq %r13, 0(%rax, 1)



jmp ._foo




._foo:
movq %rbp, %rsp
popq %rbp
ret


.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $144, %rsp



leaq -24(%rbp, 1), %rbx
movq %rbx, %rdi


call foo
movq %rax, %r12




leaq -72(%rbp, 1), %r13
movq %r13, %rdi


call foo
movq %rax, %r14



movq %r14, -48(%rbp, 1)





movq $.L1, %rdi

movq -48(%rbp, 1), %rsi


call printf
movl %eax, %r14d




movabsq $256, %r15


movq %r15, %rdi


call allocate
movq %rdx, -96(%rbp, 1)

movq %rax, -104(%rbp, 1)




pushq %rbx
movq -96(%rbp, 1), %rbx

movq %rbx, -80(%rbp, 1)
popq %rbx


pushq %rbx
movq -104(%rbp, 1), %rbx

movq %rbx, -88(%rbp, 1)
popq %rbx







movq $.L2, %rdi

movq -80(%rbp, 1), %rsi


call printf
movl %eax, -108(%rbp, 1)



pushq %rbx
movabsq $64, %rbx

movq %rbx, -124(%rbp, 1)
popq %rbx



pushq %rbx
movabsq $0, %rbx

movq %rbx, -116(%rbp, 1)
popq %rbx


movq -116(%rbp, 1), %rax

movq -80(%rbp, 1), %r10

movq -88(%rbp, 1), %r11




pushq %rbx
movq -124(%rbp, 1), %rbx

movq %rbx, 0(%r11, %rax, 1)
popq %rbx





pushq %rbx
movabsq $0, %rbx

movq %rbx, -132(%rbp, 1)
popq %rbx


movq -132(%rbp, 1), %rax

movq -80(%rbp, 1), %r10

movq -88(%rbp, 1), %r11




movq $.L3, %rdi

movq 0(%r11, %rax, 1), %rsi


call printf
movl %eax, -136(%rbp, 1)




._main:
movq %rbp, %rsp
popq %rbp
ret



.data

































































































.L1: .string "big.a: %lld\n"























.L2: .string "%d\n"























.L3: .string "%d\n"





















