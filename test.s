.text























.string "\0foo"
.global foo
foo:
pushq %rbp

movq %rsp, %rbp

subq $432, %rsp





pushq %rax

pushq %rdi

pushq %rcx

xorq %rax, %rax

leaq -377(%rbp, 1), %rdi

movq $100, %rcx


cld

rep stosb

popq %rcx

popq %rdi

popq %rax



pushq %rax

pushq %rdi

pushq %rcx

xorq %rax, %rax

leaq -393(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

popq %rdi

popq %rax



leaq -377(%rbp, 1), %rbx


movq %rbx, -393(%rbp, 1)


pushq %rbx
movq $100, %rbx


movq %rbx, -385(%rbp, 1)

popq %rbx



movq $0, %r12



movq %r12, -401(%rbp, 1)




.L3:





movq -385(%rbp, 1), %r13


movq $-1, %rax


andq %rax, %r13


movq -401(%rbp, 1), %r14


xorb %r15b, %r15b

cmpq %r13, %r14

setl %r15b



andb %r15b, %r15b

jz .L4






pushq %r10

pushq %r11

movq -385(%rbp, 1), %r10


movq -393(%rbp, 1), %r11



movq %r11, -409(%rbp, 1)


movq %r10, -417(%rbp, 1)


popq %r11

popq %r10

// hello 

 // byee 
// hello 

 // byee 
movq -417(%rbp, 1), %r13


cmpq %r13, -401(%rbp, 1)

jb .L2

movq -401(%rbp, 1), %rsi


movq -417(%rbp, 1), %rdx


call err_oob

.L2:


movq $.L1, %rdi


movq -401(%rbp, 1), %rsi


// using rax
// the index is very cute! : -401(%rbp, 1)
// using r10
pushq %rax
movq -409(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -401(%rbp, 1), %r10

movb 0(%rax, %r10, 1), %dl
popq %r10
popq %rax



call printf

movl %eax, %r13d






incq -401(%rbp, 1)




jmp .L3

.L4:



._foo:
movq %rbp, %rsp

popq %rbp

ret




.string "\0main"
.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $160, %rsp



pushq %rax

pushq %rdi

pushq %rcx

xorq %rax, %rax

leaq -40(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

popq %rdi

popq %rax



pushq %rax

pushq %rdi

pushq %rcx

xorq %rax, %rax

leaq -56(%rbp, 1), %rdi

movq $16, %rcx


cld

rep stosb

popq %rcx

popq %rdi

popq %rax



movq %rsi, -32(%rbp, 1)


movq %rdi, -40(%rbp, 1)



movq %rcx, -48(%rbp, 1)


movq %rdx, -56(%rbp, 1)





pushq %rax

pushq %rdi

pushq %rcx

xorq %rax, %rax

leaq -80(%rbp, 1), %rdi

movq $24, %rcx


cld

rep stosb

popq %rcx

popq %rdi

popq %rax














movq $.L5, %rdi


movq -80(%rbp, 1), %rsi


movq -72(%rbp, 1), %rdx


movq -64(%rbp, 1), %rcx



call printf

movl %eax, %ebx




jmp ._main




movq $0, %r12



movq %r12, -88(%rbp, 1)




.L8:





movq -32(%rbp, 1), %r13


movq $-1, %rax


andq %rax, %r13


movq -88(%rbp, 1), %r14


xorb %r15b, %r15b

cmpq %r13, %r14

setl %r15b



andb %r15b, %r15b

jz .L9






pushq %r10

pushq %r11

movq -32(%rbp, 1), %r10


movq -40(%rbp, 1), %r11



movq %r11, -96(%rbp, 1)


movq %r10, -104(%rbp, 1)


popq %r11

popq %r10

// hello 

 // byee 
// hello 

 // byee 
movq -104(%rbp, 1), %r13


cmpq %r13, -88(%rbp, 1)

jb .L7

movq -88(%rbp, 1), %rsi


movq -104(%rbp, 1), %rdx


call err_oob

.L7:


movq $.L6, %rdi


movq -88(%rbp, 1), %rsi


// using rax
// the index is very cute! : -88(%rbp, 1)
// using r10
pushq %rax
movq -96(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -88(%rbp, 1), %r10

movq 0(%rax, %r10, 8), %rdx
popq %r10
popq %rax



call printf

movl %eax, %r13d






incq -88(%rbp, 1)




jmp .L8

.L9:


movq $0, %r14



movq %r14, -112(%rbp, 1)




.L12:





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -48(%rbp, 1), %rbx


movq %rbx, -120(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -120(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -112(%rbp, 1), %rbx


movq %rbx, -128(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -129(%rbp, 1), %bl


xorb %bl, -129(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -120(%rbp, 1), %rbx


cmpq %rbx, -128(%rbp, 1)
popq %rbx

setl -129(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -129(%rbp, 1), %bl


andb %bl, -129(%rbp, 1)
popq %rbx

jz .L13






pushq %r10

pushq %r11

movq -48(%rbp, 1), %r10


movq -56(%rbp, 1), %r11



movq %r11, -137(%rbp, 1)


movq %r10, -145(%rbp, 1)


popq %r11

popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -145(%rbp, 1), %rbx


cmpq %rbx, -112(%rbp, 1)
popq %rbx

jb .L11

movq -112(%rbp, 1), %rsi


movq -145(%rbp, 1), %rdx


call err_oob

.L11:


movq $.L10, %rdi


movq -112(%rbp, 1), %rsi


// using rax
// the index is very cute! : -112(%rbp, 1)
// using r10
pushq %rax
movq -137(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -112(%rbp, 1), %r10

movq 0(%rax, %r10, 8), %rdx
popq %r10
popq %rax



call printf

movl %eax, -149(%rbp, 1)






incq -112(%rbp, 1)




jmp .L12

.L13:



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























































.L1: .byte 100, 121, 110, 91, 37, 100, 93, 32, 61, 32, 37, 104, 104, 117, 10, 0



















































.L5: .byte 97, 58, 32, 37, 108, 108, 100, 44, 32, 98, 58, 32, 37, 108, 108, 100, 44, 32, 99, 58, 32, 37, 108, 108, 100, 10, 0






































.L6: .byte 97, 114, 103, 115, 91, 37, 100, 93, 32, 61, 32, 37, 115, 10, 0












































.L10: .byte 101, 110, 118, 115, 91, 37, 100, 93, 32, 61, 32, 37, 115, 10, 0



































err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


