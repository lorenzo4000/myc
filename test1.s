.text























.string "\0foo"
.global foo
foo:
pushq %rbp

movq %rsp, %rbp

subq $352, %rsp







leaq -287(%rbp, 1), %rbx


movq %rbx, -303(%rbp, 1)


pushq %rbx
movq $10, %rbx


movq %rbx, -295(%rbp, 1)

popq %rbx




movq $60, %r12



pushq %r10

pushq %r11

movq -295(%rbp, 1), %r10


movq -303(%rbp, 1), %r11



movq %r11, -311(%rbp, 1)


movq %r10, -319(%rbp, 1)


popq %r11

popq %r10

cmpq -319(%rbp, 1), %r12

jb .L1

movq %r12, %rsi


movq -319(%rbp, 1), %rdx


call err_oob

.L1:


movq $0, %r13



movq %r13, -327(%rbp, 1)




.L4:

movq $15, %r14



movq -327(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -328(%rbp, 1), %bl


xorb %bl, -328(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setl -328(%rbp, 1)



// hello 

 // byee 
// hello 

 // byee 
movb -328(%rbp, 1), %r15b


andb %r15b, -328(%rbp, 1)

jz .L5






pushq %r10

pushq %r11

movq -295(%rbp, 1), %r10


movq -303(%rbp, 1), %r11



movq %r11, -336(%rbp, 1)


movq %r10, -344(%rbp, 1)


popq %r11

popq %r10

// hello 

 // byee 
// hello 

 // byee 
movq -344(%rbp, 1), %r14


cmpq %r14, -327(%rbp, 1)

jb .L3

movq -327(%rbp, 1), %rsi


movq -344(%rbp, 1), %rdx


call err_oob

.L3:


movq $.L2, %rdi


movq -327(%rbp, 1), %rsi


// using rax
// the index is very cute! : -327(%rbp, 1)
// using r10
pushq %rax
movq -336(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -327(%rbp, 1), %r10

movb 0(%rax, %r10, 1), %dl
popq %r10
popq %rax



call printf

movl %eax, %r14d






incq -327(%rbp, 1)




jmp .L4

.L5:



._foo:
movq %rbp, %rsp

popq %rbp

ret



.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp





call foo




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
	cmpq %r12d, $main
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
	call main

	call exit
	


.data


























































.L2: .byte 100, 121, 110, 91, 37, 100, 93, 32, 61, 32, 37, 104, 104, 117, 10, 0









































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


