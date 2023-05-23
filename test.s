.text





















.string "\0foo"
.global foo
foo:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp



movl $0, -237(%rbp, 1)



movl %edi, -237(%rbp, 1)





movl $0, %ebx



movl -237(%rbp, 1), %r12d


xorb %r13b, %r13b

cmpl %ebx, %r12d

sete %r13b



andb %r13b, %r13b

jz .L1

pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -245(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -245(%rbp, 1), %rax



jmp ._foo





.L1:



movl $10, %ebx



movl $1069547520, %r12d



movl %r12d, -249(%rbp, 1)


movl %ebx, -253(%rbp, 1)




movq -253(%rbp, 1), %rax



jmp ._foo





._foo:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $48, %rsp





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -16(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



movl $4, %ebx



movl %ebx, %edi


movq %rsp, %rax



movq $0, %rax


call foo

movq %rax, -8(%rbp, 1)


movq -8(%rbp, 1), %r12





movq %r12, -24(%rbp, 1)


pushq %rbx

xorq %rbx, %rbx
movl -20(%rbp, 1), %ebx


movl %ebx, -12(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -24(%rbp, 1), %ebx


movl %ebx, -16(%rbp, 1)
popq %rbx








pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -32(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -16(%rbp, 1), %r13



xorb %r14b, %r14b

cmpq -32(%rbp, 1), %r13

sete %r14b



andb %r14b, %r14b

jz .L3



movq $.L2, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r13d




jmp ._main





.L3:








cvtss2sd -12(%rbp, 1), %xmm0

movq %xmm0, %r15



movq $.L4, %rdi


movq %r15, -40(%rbp, 1)


movsd -40(%rbp, 1), %xmm0


movq %rsp, %rax



movq $1, %rax


call printf

movl %eax, -44(%rbp, 1)





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





























































































.L2: .byte 72, 101, 108, 108, 111, 33, 10, 0















.L4: .byte 37, 102, 10, 0





















err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"


