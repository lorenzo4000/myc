.text





















.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $288, %rsp





pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -249(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax



pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -241(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




pushq %rbx

xorq %rbx, %rbx
movl -237(%rbp, 1), %ebx


movl %ebx, -245(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movl -241(%rbp, 1), %ebx


movl %ebx, -249(%rbp, 1)
popq %rbx








pushq %rax


pushq %rdi


pushq %rcx


xorq %rax, %rax

leaq -257(%rbp, 1), %rdi

movq $8, %rcx


cld

rep stosb

popq %rcx


popq %rdi


popq %rax




movq -249(%rbp, 1), %rbx



xorb %r12b, %r12b

cmpq -257(%rbp, 1), %rbx

sete %r12b



andb %r12b, %r12b

jz .L2



movq $.L1, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %ebx





.L2:


movl $0, -261(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movl -261(%rbp, 1), %ebx


movl %ebx, -265(%rbp, 1)
popq %rbx






movl $0, -269(%rbp, 1)



movl -265(%rbp, 1), %r13d


xorb %r14b, %r14b

cmpl -269(%rbp, 1), %r13d

sete %r14b



andb %r14b, %r14b

jz .L4



movq $.L3, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r13d





.L4:



movl $0, %r15d



pushq %rbx

xorq %rbx, %rbx
movl -265(%rbp, 1), %ebx


movl %ebx, -273(%rbp, 1)
popq %rbx




pushq %rbx

xorq %rbx, %rbx
movb -274(%rbp, 1), %bl


xorb %bl, -274(%rbp, 1)
popq %rbx



cmpl %r15d, -273(%rbp, 1)

sete -274(%rbp, 1)



pushq %rbx

xorq %rbx, %rbx
movb -274(%rbp, 1), %bl


andb %bl, -274(%rbp, 1)
popq %rbx



jz .L6



movq $.L5, %rdi


movq %rsp, %rax



movq $0, %rax


call printf

movl %eax, %r15d





.L6:



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











































.L1: .byte 72, 101, 108, 108, 111, 33, 10, 0






















.L3: .byte 72, 101, 108, 108, 111, 33, 10, 0


















.L5: .byte 72, 101, 108, 108, 111, 33, 10, 0
















err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"


