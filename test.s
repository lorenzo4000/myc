.text




















.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $304, %rsp





movq $1085401989, %rbx



movq $1079362191, %r12



movq %rbx, %xmm0


movq %r12, %xmm1


addss %xmm1, %xmm0



movq %xmm0, -229(%rbp, 1)







cvtss2sd -229(%rbp, 1), %xmm1

movq %xmm1, %r13




movabsq $4644782549876468613, %r14





movabsq $4632156286108670362, %r15





pushq %rbx
movabsq $4632156286108670362, %rbx


movq %rbx, -237(%rbp, 1)

popq %rbx




pushq %rbx
movabsq $4632156286108670362, %rbx


movq %rbx, -245(%rbp, 1)

popq %rbx




pushq %rbx
movq $45, %rbx


movq %rbx, -253(%rbp, 1)

popq %rbx


pushq %rbx
xorq %rbx, %rbx
movq -253(%rbp, 1), %rbx


movq %rbx, -261(%rbp, 1)
popq %rbx



movq $-1, %rax


andq %rax, -261(%rbp, 1)



pushq %rbx
movq $235, %rbx


movq %rbx, -269(%rbp, 1)

popq %rbx


pushq %rbx
xorq %rbx, %rbx
movq -269(%rbp, 1), %rbx


movq %rbx, -277(%rbp, 1)
popq %rbx



movq $-1, %rax


andq %rax, -277(%rbp, 1)



pushq %rbx
movq $434, %rbx


movq %rbx, -285(%rbp, 1)

popq %rbx


pushq %rbx
xorq %rbx, %rbx
movq -285(%rbp, 1), %rbx


movq %rbx, -293(%rbp, 1)
popq %rbx



movq $-1, %rax


andq %rax, -293(%rbp, 1)


movq $.L1, %rdi


movq %r13, %xmm0


movq %r14, %xmm1


movq %r15, %xmm2


movq -237(%rbp, 1), %xmm3


movq -245(%rbp, 1), %xmm4


movq -261(%rbp, 1), %rsi


movq -277(%rbp, 1), %rdx


movq -293(%rbp, 1), %rcx



movq $1, %rax


call printf

addq $32, %rsp

movl %eax, -297(%rbp, 1)





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


































.L1: .byte 37, 102, 44, 32, 37, 102, 44, 32, 37, 102, 44, 32, 37, 102, 44, 32, 37, 102, 44, 32, 37, 117, 44, 32, 37, 117, 44, 32, 37, 117, 10, 0































































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


