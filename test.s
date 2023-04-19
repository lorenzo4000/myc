<<=
<<
>>
AST_HEAD : 
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = getchar ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(*uint8) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = gets ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = perror ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = printf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = putchar ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
				AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = puts ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = remove ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = filename ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = rename ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = oldname ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = newname ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = scanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format_string ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = snprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = outbuf ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = n ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format_string ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format_string ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(*int8) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = tmpnam ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(*int8) : [ int_value = 0, string_value = *int8 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vsprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = target_string ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vsnprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = outbuf ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = n ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vsscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vswscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE(*uint32) : [ int_value = 0, string_value = *uint32 ]
			AST_VARIABLE_DEFINITION(*uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format ]
				AST_DATATYPE(*uint32) : [ int_value = 0, string_value = *uint32 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vwscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = format ]
				AST_DATATYPE(*uint32) : [ int_value = 0, string_value = *uint32 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = a ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int64) : [ int_value = 65280, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = b ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int64) : [ int_value = 255, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = x ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_OP_BNOT(int64) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = b ]
			AST_OP_GOE(bool) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_LOE(bool) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EQU(bool) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_NEQ(bool) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = x before the operations : %llx
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
			AST_OP_ESUM(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_ESUB(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EMUL(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EDIV(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EMOD(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EBAND(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EBORI(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EBORE(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_ASN(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
			AST_OP_ESHL(int64) : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
				AST_LITERAL(int64) : [ int_value = 3, string_value =  ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = x after the operations : %llx
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = %x
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_OP_INC(int64) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = a ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = %x
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_OP_DEC(int64) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = b ]
			AST_OP_AND(bool) : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
			AST_OP_OR(bool) : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = %llx
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_OP_SHL(int64) : 
					AST_LITERAL(int64) : [ int_value = 255, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 3, string_value =  ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = %llx
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_OP_SHR(int64) : 
					AST_LITERAL(int64) : [ int_value = 240, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 2, string_value =  ]
.text




















.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $320, %rsp





movq $65280, %rbx



movq %rbx, -233(%rbp, 1)



movq $255, %r12



movq %r12, -241(%rbp, 1)




movq -241(%rbp, 1), %r13


notq %r13



movq %r13, -249(%rbp, 1)




movq $30, %r14



movq -249(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -250(%rbp, 1), %bl


xorb %bl, -250(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setge -250(%rbp, 1)




movq $30, %r14



movq -249(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -251(%rbp, 1), %bl


xorb %bl, -251(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setle -251(%rbp, 1)




movq $30, %r14



movq -249(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -252(%rbp, 1), %bl


xorb %bl, -252(%rbp, 1)
popq %rbx

cmpq %r14, %r15

sete -252(%rbp, 1)




movq $30, %r14



movq -249(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -253(%rbp, 1), %bl


xorb %bl, -253(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setne -253(%rbp, 1)






movq $.L1, %rdi


movq -249(%rbp, 1), %rsi



call printf

movl %eax, %r14d





movq $30, %r15



addq %r15, -249(%rbp, 1)




movq $30, %r15



subq %r15, -249(%rbp, 1)




movq $30, %r15



movq -249(%rbp, 1), %rax


imulq %r15, %rax

movq %rax, -249(%rbp, 1)





movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq -249(%rbp, 1), %rax


idivq %r15

movq %rax, -249(%rbp, 1)





movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq -249(%rbp, 1), %rax


idivq %r15

movq %rdx, -249(%rbp, 1)





movq $30, %r15



andq %r15, -249(%rbp, 1)




movq $30, %r15



orq %r15, -249(%rbp, 1)




movq $30, %r15



xorq %r15, -249(%rbp, 1)



movq $1, %r15




movq %r15, -249(%rbp, 1)




pushq %rbx
movq $3, %rbx


movq %rbx, -261(%rbp, 1)

popq %rbx


movq -261(%rbp, 1), %rcx


shlq %cl, -249(%rbp, 1)






movq $.L2, %rdi


movq -249(%rbp, 1), %rsi



call printf

movl %eax, -265(%rbp, 1)







incq -233(%rbp, 1)



movq $.L3, %rdi


movq -233(%rbp, 1), %rsi



call printf

movl %eax, -269(%rbp, 1)







decq -241(%rbp, 1)



movq $.L4, %rdi


movq -241(%rbp, 1), %rsi



call printf

movl %eax, -273(%rbp, 1)




movb $1, -274(%rbp, 1)



movb $0, -275(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -275(%rbp, 1), %bl


andb %bl, -274(%rbp, 1)
popq %rbx



movb $1, -276(%rbp, 1)



movb $0, -277(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -277(%rbp, 1), %bl


orb %bl, -276(%rbp, 1)
popq %rbx





pushq %rbx
movq $255, %rbx


movq %rbx, -285(%rbp, 1)

popq %rbx


pushq %rbx
movq $3, %rbx


movq %rbx, -293(%rbp, 1)

popq %rbx


movq -293(%rbp, 1), %rcx


shlq %cl, -285(%rbp, 1)



movq $.L5, %rdi


movq -285(%rbp, 1), %rsi



call printf

movl %eax, -297(%rbp, 1)






pushq %rbx
movq $240, %rbx


movq %rbx, -305(%rbp, 1)

popq %rbx


pushq %rbx
movq $2, %rbx


movq %rbx, -313(%rbp, 1)

popq %rbx


movq -313(%rbp, 1), %rcx


shrq %cl, -305(%rbp, 1)



movq $.L6, %rdi


movq -305(%rbp, 1), %rsi



call printf

movl %eax, -317(%rbp, 1)





._main:
movq %rbp, %rsp

popq %rbp

ret




.data






























































.L1: .byte 120, 32, 98, 101, 102, 111, 114, 101, 32, 116, 104, 101, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 115, 32, 58, 32, 37, 108, 108, 120, 10, 0



































































.L2: .byte 120, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 115, 32, 58, 32, 37, 108, 108, 120, 10, 0









.L3: .byte 37, 120, 10, 0











.L4: .byte 37, 120, 10, 0























.L5: .byte 37, 108, 108, 120, 10, 0

















.L6: .byte 37, 108, 108, 120, 10, 0





















