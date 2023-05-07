.text




















.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $352, %rsp





movabsq $4617946021909432893, %rbx



movabsq $4614703430177726136, %r12



movq %rbx, %xmm0


movq %r12, %xmm1


addsd %xmm1, %xmm0

movq %xmm0, %rbx




movq %rbx, -233(%rbp, 1)








movq $.L1, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, %r13d





movabsq $4614703430177726136, %r14



movq -233(%rbp, 1), %xmm0


movq %r14, %xmm1


subsd %xmm1, %xmm0

movq %xmm0, -233(%rbp, 1)









movq $.L2, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, %r15d





pushq %rbx
movabsq $4611731054423661609, %rbx


movq %rbx, -241(%rbp, 1)

popq %rbx


movq -233(%rbp, 1), %rax


movq -233(%rbp, 1), %xmm0


mulsd -241(%rbp, 1), %xmm0

movq %xmm0, -233(%rbp, 1)









movq $.L3, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -245(%rbp, 1)





pushq %rbx
movabsq $4616752568008179712, %rbx


movq %rbx, -253(%rbp, 1)

popq %rbx


movq -233(%rbp, 1), %xmm0


divsd -253(%rbp, 1), %xmm0

movq %xmm0, -233(%rbp, 1)









movq $.L4, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -257(%rbp, 1)




pushq %rbx
movabsq $4618829853336304353, %rbx


movq %rbx, -265(%rbp, 1)

popq %rbx


pushq %rbx
xorq %rbx, %rbx
movq -265(%rbp, 1), %rbx


movq %rbx, -273(%rbp, 1)
popq %rbx




pushq %rbx
xorq %rbx, %rbx
movq -273(%rbp, 1), %rbx


movq %rbx, -233(%rbp, 1)
popq %rbx





pushq %rbx
xorq %rbx, %rbx
movq -233(%rbp, 1), %rbx


movq %rbx, -281(%rbp, 1)
popq %rbx



pushq %rbx
movq $0, %rbx


movq %rbx, -289(%rbp, 1)

popq %rbx

movq -289(%rbp, 1), %xmm0


subsd -281(%rbp, 1), %xmm0

movq %xmm0, -289(%rbp, 1)



pushq %rbx
xorq %rbx, %rbx
movq -289(%rbp, 1), %rbx


movq %rbx, -281(%rbp, 1)
popq %rbx





pushq %rbx
xorq %rbx, %rbx
movq -281(%rbp, 1), %rbx


movq %rbx, -297(%rbp, 1)
popq %rbx




pushq %rbx
xorq %rbx, %rbx
movq -297(%rbp, 1), %rbx


movq %rbx, -233(%rbp, 1)
popq %rbx





pushq %rbx
movabsq $4618829853336304353, %rbx


movq %rbx, -305(%rbp, 1)

popq %rbx


pushq %rbx
xorq %rbx, %rbx
movq -233(%rbp, 1), %rbx


movq %rbx, -313(%rbp, 1)
popq %rbx



pushq %rbx
xorq %rbx, %rbx
movb -314(%rbp, 1), %bl


xorb %bl, -314(%rbp, 1)
popq %rbx


movq -313(%rbp, 1), %xmm1


cmpsd $0,  -305(%rbp, 1), %xmm1

movq %xmm1, -315(%rbp, 1)


andb $1,  -315(%rbp, 1)



pushq %rbx
xorq %rbx, %rbx
movb -315(%rbp, 1), %bl


andb %bl, -315(%rbp, 1)
popq %rbx


jz .L7




movq $.L5, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -319(%rbp, 1)





jmp .L8


.L7:



movq $.L6, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -323(%rbp, 1)





.L8:



pushq %rbx
movabsq $4617653287933653811, %rbx


movq %rbx, -331(%rbp, 1)

popq %rbx


pushq %rbx
xorq %rbx, %rbx
movq -233(%rbp, 1), %rbx


movq %rbx, -339(%rbp, 1)
popq %rbx



movq -339(%rbp, 1), %xmm0


cmpsd $14,  -331(%rbp, 1), %xmm0

movq %xmm0, -340(%rbp, 1)


andb $1,  -340(%rbp, 1)



pushq %rbx
xorq %rbx, %rbx
movb -340(%rbp, 1), %bl


andb %bl, -340(%rbp, 1)
popq %rbx


jz .L11




movq $.L9, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -344(%rbp, 1)





jmp .L12


.L11:



movq $.L10, %rdi


movq -233(%rbp, 1), %xmm0



movq $1, %rax


call printf

movl %eax, -348(%rbp, 1)





.L12:



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



































.L1: .byte 37, 71, 10, 0




















.L2: .byte 37, 71, 10, 0





















.L3: .byte 37, 71, 10, 0




















.L4: .byte 37, 71, 10, 0










































.L5: .byte 37, 102, 32, 61, 61, 32, 54, 46, 51, 52, 53, 10, 0












.L6: .byte 37, 102, 32, 33, 61, 32, 54, 46, 51, 52, 53, 10, 0






















.L9: .byte 37, 102, 32, 62, 32, 53, 46, 51, 10, 0












.L10: .byte 37, 102, 32, 60, 61, 32, 53, 46, 51, 10, 0

















err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


