.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp


movq %rdi, -10(%rbp, 1)





movabsq $0, %rbx


movb %bl, %r12b

andq $-1, %r12

xorb %r13b, %r13b
cmpb %r12b, -10(%rbp, 1)
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

movb %r15b, -11(%rbp, 1)



.L3:


pushq %rbx
movb -12(%rbp, 1), %bl

xorb %bl, -12(%rbp, 1)
popq %rbx

pushq %rbx
movb -10(%rbp, 1), %bl

cmpb %bl, -11(%rbp, 1)
popq %rbx

setb -12(%rbp, 1)


pushq %rbx
movb -12(%rbp, 1), %bl

andb %bl, -12(%rbp, 1)
popq %rbx

jz .L4


movq $.L2, %rdi

movb -6(%rbp, 1), %sil


call printf

movq %rax, -29(%rbp, 1)





pushq %rbx
movabsq $1, %rbx

movq %rbx, -20(%rbp, 1)
popq %rbx


pushq %rbx
movb -20(%rbp, 1), %bl

movb %bl, -21(%rbp, 1)
popq %rbx


andq $-1, -21(%rbp, 1)

pushq %rbx
movb -21(%rbp, 1), %bl

addb %bl, -11(%rbp, 1)
popq %rbx



pushq %rbx
movb -11(%rbp, 1), %bl

movb %bl, -11(%rbp, 1)
popq %rbx





jmp .L3
.L4:



movq $.L5, %rdi


call printf

movq %rax, -37(%rbp, 1)


movb $0, -38(%rbp, 1)



movb -38(%rbp, 1), %al

._print_line:
movq %rbp, %rsp
popq %rbp
ret



.global print_bytes6
print_bytes6:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp


movq %rdi, -14(%rbp, 1)






movq $.L6, %rdi

movw -14(%rbp, 1), %si

movl -10(%rbp, 1), %edx


call printf

movq %rax, %rbx



._print_bytes6:
movq %rbp, %rsp
popq %rbp
ret


.global test_struct_paddings
test_struct_paddings:
pushq %rbp
movq %rsp, %rbp
subq $16, %rsp





movabsq $111, %rbx


movw %bx, %r12w

andq $-1, %r12

movw %r12w, -8(%rbp, 1)



movabsq $222, %r13


movl %r13d, %r14d

andq $-1, %r14

movl %r14d, -4(%rbp, 1)



movq -8(%rbp, 1), %rdi


call print_bytes6



._test_struct_paddings:
movq %rbp, %rsp
popq %rbp
ret





.global undefined_function_a
undefined_function_a:
pushq %rbp
movq %rsp, %rbp
subq $112, %rsp



movq %rsi, -88(%rbp, 1)

movq %rdi, -96(%rbp, 1)


movq %rcx, -104(%rbp, 1)

movq %rdx, -112(%rbp, 1)







movq $.L7, %rdi

movq -96(%rbp, 1), %rsi

movq -88(%rbp, 1), %rdx


call printf

movq %rax, %rbx





movq $.L8, %rdi

movq -112(%rbp, 1), %rsi

movq -104(%rbp, 1), %rdx


call printf

movq %rax, %r12



._undefined_function_a:
movq %rbp, %rsp
popq %rbp
ret


.global undefined_function_b
undefined_function_b:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp


movq 32(%rbp, 1), %rbx

movq %rbx, -8(%rbp, 1)


movq 24(%rbp, 1), %rbx

movq %rbx, -16(%rbp, 1)


movq 16(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)









movq $.L9, %rdi

movq -24(%rbp, 1), %rsi

movq -16(%rbp, 1), %rdx

movq -8(%rbp, 1), %rcx


call printf

movq %rax, %rbx



._undefined_function_b:
movq %rbp, %rsp
popq %rbp
ret


.global undefined_function_c
undefined_function_c:
pushq %rbp
movq %rsp, %rbp
subq $48, %rsp


movq 48(%rbp, 1), %rbx

movq %rbx, -8(%rbp, 1)


movq 40(%rbp, 1), %rbx

movq %rbx, -16(%rbp, 1)



movq 32(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)


movq 24(%rbp, 1), %rbx

movq %rbx, -32(%rbp, 1)


movq 16(%rbp, 1), %rbx

movq %rbx, -40(%rbp, 1)












movq $.L10, %rdi

movq -40(%rbp, 1), %rsi

movq -32(%rbp, 1), %rdx

movq -24(%rbp, 1), %rcx

movq -16(%rbp, 1), %r8

movq -8(%rbp, 1), %r9


call printf

movq %rax, %rbx



._undefined_function_c:
movq %rbp, %rsp
popq %rbp
ret


.global test_big_things
test_big_things:
pushq %rbp
movq %rsp, %rbp
subq $240, %rsp







movabsq $345, %rbx


movabsq $420, %r12


movq %r12, -64(%rbp, 1)

movq %rbx, -72(%rbp, 1)



movq -64(%rbp, 1), %r13

movq %r13, -8(%rbp, 1)


movq -72(%rbp, 1), %r13

movq %r13, -16(%rbp, 1)





movabsq $69, %r13


movq %r13, -56(%rbp, 1)


movabsq $42, %r14


movq %r14, -48(%rbp, 1)


movabsq $118, %r15


movq %r15, -40(%rbp, 1)



pushq %rbx
movq -8(%rbp, 1), %rbx

movq %rbx, -24(%rbp, 1)
popq %rbx


pushq %rbx
movq -16(%rbp, 1), %rbx

movq %rbx, -32(%rbp, 1)
popq %rbx







movq -8(%rbp, 1), %rsi

movq -16(%rbp, 1), %rdi


movq -24(%rbp, 1), %rcx

movq -32(%rbp, 1), %rdx



call undefined_function_a



movq $.L11, %rdi


call printf

movq %rax, -80(%rbp, 1)



subq $32, %rsp
movq %rsp, %rax

pushq %rbx
movq -40(%rbp, 1), %rbx

movq %rbx, 16(%rax, 1)
popq %rbx


pushq %rbx
movq -48(%rbp, 1), %rbx

movq %rbx, 8(%rax, 1)
popq %rbx


pushq %rbx
movq -56(%rbp, 1), %rbx

movq %rbx, 0(%rax, 1)
popq %rbx




call undefined_function_b
addq $32, %rsp





pushq %rbx
movabsq $34578, %rbx

movq %rbx, -128(%rbp, 1)
popq %rbx


pushq %rbx
movabsq $283, %rbx

movq %rbx, -136(%rbp, 1)
popq %rbx


pushq %rbx
movabsq $283, %rbx

movq %rbx, -144(%rbp, 1)
popq %rbx


pushq %rbx
movq -144(%rbp, 1), %rbx

movq %rbx, -152(%rbp, 1)
popq %rbx


pushq %rbx
movq -136(%rbp, 1), %rbx

movq %rbx, -160(%rbp, 1)
popq %rbx


pushq %rbx
movq -128(%rbp, 1), %rbx

movq %rbx, -168(%rbp, 1)
popq %rbx





pushq %rbx
movabsq $23, %rbx

movq %rbx, -176(%rbp, 1)
popq %rbx


pushq %rbx
movabsq $4, %rbx

movq %rbx, -184(%rbp, 1)
popq %rbx


pushq %rbx
movq -184(%rbp, 1), %rbx

movq %rbx, -192(%rbp, 1)
popq %rbx


pushq %rbx
movq -176(%rbp, 1), %rbx

movq %rbx, -200(%rbp, 1)
popq %rbx




pushq %rbx
movq -192(%rbp, 1), %rbx

movq %rbx, -208(%rbp, 1)
popq %rbx


pushq %rbx
movq -200(%rbp, 1), %rbx

movq %rbx, -216(%rbp, 1)
popq %rbx



pushq %rbx
movq -152(%rbp, 1), %rbx

movq %rbx, -224(%rbp, 1)
popq %rbx


pushq %rbx
movq -160(%rbp, 1), %rbx

movq %rbx, -232(%rbp, 1)
popq %rbx


pushq %rbx
movq -168(%rbp, 1), %rbx

movq %rbx, -240(%rbp, 1)
popq %rbx





pushq %rbx
movq -208(%rbp, 1), %rbx

movq %rbx, -88(%rbp, 1)
popq %rbx


pushq %rbx
movq -216(%rbp, 1), %rbx

movq %rbx, -96(%rbp, 1)
popq %rbx



pushq %rbx
movq -224(%rbp, 1), %rbx

movq %rbx, -104(%rbp, 1)
popq %rbx


pushq %rbx
movq -232(%rbp, 1), %rbx

movq %rbx, -112(%rbp, 1)
popq %rbx


pushq %rbx
movq -240(%rbp, 1), %rbx

movq %rbx, -120(%rbp, 1)
popq %rbx







subq $48, %rsp
movq %rsp, %rax

pushq %rbx
movq -88(%rbp, 1), %rbx

movq %rbx, 32(%rax, 1)
popq %rbx


pushq %rbx
movq -96(%rbp, 1), %rbx

movq %rbx, 24(%rax, 1)
popq %rbx



pushq %rbx
movq -104(%rbp, 1), %rbx

movq %rbx, 16(%rax, 1)
popq %rbx


pushq %rbx
movq -112(%rbp, 1), %rbx

movq %rbx, 8(%rax, 1)
popq %rbx


pushq %rbx
movq -120(%rbp, 1), %rbx

movq %rbx, 0(%rax, 1)
popq %rbx





call undefined_function_c
addq $48, %rsp



._test_big_things:
movq %rbp, %rsp
popq %rbp
ret


.global main
main:
pushq %rbp
movq %rsp, %rbp




call test_big_things



call test_struct_paddings



._main:
movq %rbp, %rsp
popq %rbp
ret



.data


































.L2: .string "%c"
























.L5: .string "\n"


















.L6: .string "x: %hu, y: %lu\n"





















































.L7: .string "x: %lld, y: %lld\n"










.L8: .string "x: %lld, y: %lld\n"





















.L9: .string "x: %lld, y: %lld, z: %lld\n"



























.L10: .string "x.x: %lld, x.y: %lld, x.z: %lld\ny.x: %lld, y.y: %lld\n"




































































.L11: .string "\n\n"




























































































