.text




















.string "\0foo"
.global foo
foo:
pushq %rbp

movq %rsp, %rbp

subq $240, %rsp





movb $1, %bl



andb %bl, %bl

jz .L1

movq $32456, %r12




movq %r12, %r14


jmp .L2


.L1:
movq $456, %r13




movq %r13, %r14


.L2:



movq %r14, %rax


._foo:
movq %rbp, %rsp

popq %rbp

ret



.string "\0poo"
.global poo
poo:
pushq %rbp

movq %rsp, %rbp

subq $80, %rsp





movl $134, %ebx



movl %ebx, -4(%rbp, 1)



movb $0,  -65(%rbp, 1)


movl $10, -35(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


xorb %bl, -66(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -35(%rbp, 1), %ebx


cmpl %ebx, -4(%rbp, 1)
popq %rbx



sete -66(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movb -66(%rbp, 1), %bl


andb %bl, -66(%rbp, 1)
popq %rbx



jz .L3

movb $0xFF,  -65(%rbp, 1)

movw $30, -30(%rbp, 1)



movw -30(%rbp, 1), %ax


jmp ._poo




movb $10, -31(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movb -31(%rbp, 1), %bl


movb %bl, -64(%rbp, 1)
popq %rbx




.L3:
movl $5, -40(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -67(%rbp, 1), %bl


xorb %bl, -67(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -40(%rbp, 1), %ebx


cmpl %ebx, -4(%rbp, 1)
popq %rbx



sete -67(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movb -67(%rbp, 1), %bl


andb %bl, -67(%rbp, 1)
popq %rbx



jz .L4

movb $0xFF,  -65(%rbp, 1)

movb $97, -36(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movb -36(%rbp, 1), %bl


movb %bl, -64(%rbp, 1)
popq %rbx




.L4:
movl $34, -53(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -68(%rbp, 1), %bl


xorb %bl, -68(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -53(%rbp, 1), %ebx


cmpl %ebx, -4(%rbp, 1)
popq %rbx



sete -68(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movb -68(%rbp, 1), %bl


andb %bl, -68(%rbp, 1)
popq %rbx



jz .L5

movb $0xFF,  -65(%rbp, 1)

movb $23, -49(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movb -49(%rbp, 1), %bl


movb %bl, -64(%rbp, 1)
popq %rbx




.L5:
movl $12, -58(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -69(%rbp, 1), %bl


xorb %bl, -69(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -58(%rbp, 1), %ebx


cmpl %ebx, -4(%rbp, 1)
popq %rbx



sete -69(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movb -69(%rbp, 1), %bl


andb %bl, -69(%rbp, 1)
popq %rbx



jz .L6

movb $0xFF,  -65(%rbp, 1)

movb $99, -54(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movb -54(%rbp, 1), %bl


movb %bl, -64(%rbp, 1)
popq %rbx




.L6:
movl $2, -63(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -70(%rbp, 1), %bl


xorb %bl, -70(%rbp, 1)
popq %rbx



pushq %rbx

xorq %rbx, %rbx
movl -63(%rbp, 1), %ebx


cmpl %ebx, -4(%rbp, 1)
popq %rbx



sete -70(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movb -70(%rbp, 1), %bl


andb %bl, -70(%rbp, 1)
popq %rbx



jz .L7

movb $0xFF,  -65(%rbp, 1)

movb $99, -59(%rbp, 1)




pushq %rbx

xorq %rbx, %rbx
movb -59(%rbp, 1), %bl


movb %bl, -64(%rbp, 1)
popq %rbx




.L7:
pushq %rbx

xorq %rbx, %rbx
movb -65(%rbp, 1), %bl


andb %bl, -65(%rbp, 1)
popq %rbx



jnz .L8

pushq %rbx


movq $117, %rbx


movq %rbx, -48(%rbp, 1)

popq %rbx





pushq %rbx

xorq %rbx, %rbx
movq -48(%rbp, 1), %rbx


movq %rbx, -64(%rbp, 1)
popq %rbx




.L8:


pushq %rbx

xorq %rbx, %rbx
movb -64(%rbp, 1), %bl


movb %bl, -71(%rbp, 1)
popq %rbx








movq $.L9, %rdi


movb -71(%rbp, 1), %sil


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, -75(%rbp, 1)




movw $3, -77(%rbp, 1)



movw -77(%rbp, 1), %ax


jmp ._poo





._poo:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp






movq %rsp, %rax



movq $0, %rax


call poo

movw %ax, %bx




movq $.L10, %rdi


movw %bx, %si


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r12d






movq %rsp, %rax



movq $0, %rax


call foo

movq %rax, %r13




movq $.L11, %rdi


movq %r13, %rsi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r14d





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




































































































.L9: .byte 37, 104, 104, 99, 10, 0























.L10: .byte 37, 104, 100, 10, 0
















.L11: .byte 37, 104, 100, 10, 0




















err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"


