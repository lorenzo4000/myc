.text
.global print_line
print_line:
pushq %rbp
movq %rsp, %rbp
subq $32, %rsp
movq $0, -8(%rbp, 1)

movq %rdi, -8(%rbp, 1)

.L2:
movq -8(%rbp, 1), %rbx

movq $0, %r12

xorb %r13b, %r13b
cmpb %r12, %rbx
setg %r13b

andb %r13b, %r13b
jz .L3

movq $.L1, %rdi
call printf
movq %rax, %r14

pushq %rbx
movq -8(%rbp, 1), %rbx
movq %rbx, -16(%rbp, 1)
popq %rbx


movq $1, -24(%rbp, 1)

pushq %rbx
movq -24(%rbp, 1), %rbx
subq %rbx, -16(%rbp, 1)
popq %rbx


pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -8(%rbp, 1)
popq %rbx

movq -8(%rbp, 1), %r15



jmp .L2
.L3:


movq $.L4, %rdi
call printf
movq %rax, -32(%rbp, 1)


movq %rbp, %rsp
popq %rbp
ret

.global main
main:
pushq %rbp
movq %rsp, %rbp
subq $208, %rsp

movq $0, -8(%rbp, 1)

pushq %rbx
movq -8(%rbp, 1), %rbx
movq %rbx, -16(%rbp, 1)
popq %rbx


movq $1, -24(%rbp, 1)

pushq %rbx
movq -24(%rbp, 1), %rbx
movq %rbx, -32(%rbp, 1)
popq %rbx


.L11:
movb $1, -33(%rbp, 1)

pushb %bl
movb -33(%rbp, 1), %bl
andb %bl, -33(%rbp, 1)
popb %bl

jz .L12
pushq %rbx
movq -32(%rbp, 1), %rbx
movq %rbx, -41(%rbp, 1)
popq %rbx


movq $0, -49(%rbp, 1)

pushb %bl
movb -57(%rbp, 1), %bl
xorb %bl, -57(%rbp, 1)
popb %bl

pushb %bl
movb -49(%rbp, 1), %bl
cmpb %bl, -41(%rbp, 1)
popb %bl

setg -57(%rbp, 1)

pushb %bl
movb -57(%rbp, 1), %bl
andb %bl, -57(%rbp, 1)
popb %bl

jz .L5
pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -73(%rbp, 1)
popq %rbx


movq $1, -81(%rbp, 1)

pushq %rbx
movq -81(%rbp, 1), %rbx
addq %rbx, -73(%rbp, 1)
popq %rbx


pushq %rbx
movq -73(%rbp, 1), %rbx
movq %rbx, -16(%rbp, 1)
popq %rbx

pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -65(%rbp, 1)
popq %rbx




jmp .L6
.L5:
pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -97(%rbp, 1)
popq %rbx


movq $1, -105(%rbp, 1)

pushq %rbx
movq -105(%rbp, 1), %rbx
subq %rbx, -97(%rbp, 1)
popq %rbx


pushq %rbx
movq -97(%rbp, 1), %rbx
movq %rbx, -16(%rbp, 1)
popq %rbx

pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -89(%rbp, 1)
popq %rbx




.L6:

pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -113(%rbp, 1)
popq %rbx


movq $10, -121(%rbp, 1)

pushb %bl
movb -129(%rbp, 1), %bl
xorb %bl, -129(%rbp, 1)
popb %bl

pushb %bl
movb -121(%rbp, 1), %bl
cmpb %bl, -113(%rbp, 1)
popb %bl

setge -129(%rbp, 1)

pushb %bl
movb -129(%rbp, 1), %bl
andb %bl, -129(%rbp, 1)
popb %bl

jz .L8
movq $0, -145(%rbp, 1)

pushq %rbx
movq -145(%rbp, 1), %rbx
movq %rbx, -32(%rbp, 1)
popq %rbx

pushq %rbx
movq -32(%rbp, 1), %rbx
movq %rbx, -137(%rbp, 1)
popq %rbx




.L8:

pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -153(%rbp, 1)
popq %rbx


movq $0, -161(%rbp, 1)

pushb %bl
movb -169(%rbp, 1), %bl
xorb %bl, -169(%rbp, 1)
popb %bl

pushb %bl
movb -161(%rbp, 1), %bl
cmpb %bl, -153(%rbp, 1)
popb %bl

setle -169(%rbp, 1)

pushb %bl
movb -169(%rbp, 1), %bl
andb %bl, -169(%rbp, 1)
popb %bl

jz .L10
movq $1, -185(%rbp, 1)

pushq %rbx
movq -185(%rbp, 1), %rbx
movq %rbx, -32(%rbp, 1)
popq %rbx

pushq %rbx
movq -32(%rbp, 1), %rbx
movq %rbx, -177(%rbp, 1)
popq %rbx




.L10:

pushq %rbx
movq -16(%rbp, 1), %rbx
movq %rbx, -193(%rbp, 1)
popq %rbx


movq -193(%rbp, 1), %rdi
call print_line
movq %rax, -201(%rbp, 1)


jmp .L11
.L12:


movq %rbp, %rsp
popq %rbp
ret

.data

.L1: .string "@"
.L4: .string "\n"
