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
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = %x
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
			AST_OP_GOE(bool) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_LOE(bool) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EQU(bool) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_NEQ(bool) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_ESUM(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_ESUB(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EMUL(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EDIV(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EMOD(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EBAND(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EBORI(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_EBORE(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_INC(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
			AST_OP_DEC(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
			AST_OP_AND(bool) : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
			AST_OP_OR(bool) : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
			AST_OP_SHL(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
			AST_OP_SHR(int64) : 
				AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
				AST_LITERAL(int64) : [ int_value = 30, string_value =  ]
.text




















.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $464, %rsp





movq $65280, %rbx



movq %rbx, -233(%rbp, 1)



movq $255, %r12



movq %r12, -241(%rbp, 1)




movq -241(%rbp, 1), %r13


notq %r13



movq %r13, -249(%rbp, 1)






movq $.L1, %rdi


movq -249(%rbp, 1), %rsi



call printf

movl %eax, %r14d




movq $10, %r15



pushq %rbx
movq $30, %rbx


movq %rbx, -257(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -258(%rbp, 1), %bl


xorb %bl, -258(%rbp, 1)
popq %rbx

cmpq -257(%rbp, 1), %r15

setge -258(%rbp, 1)



movq $10, %r15



pushq %rbx
movq $30, %rbx


movq %rbx, -266(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -267(%rbp, 1), %bl


xorb %bl, -267(%rbp, 1)
popq %rbx

cmpq -266(%rbp, 1), %r15

setle -267(%rbp, 1)



movq $10, %r15



pushq %rbx
movq $30, %rbx


movq %rbx, -275(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -276(%rbp, 1), %bl


xorb %bl, -276(%rbp, 1)
popq %rbx

cmpq -275(%rbp, 1), %r15

sete -276(%rbp, 1)



movq $10, %r15



pushq %rbx
movq $30, %rbx


movq %rbx, -284(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -285(%rbp, 1), %bl


xorb %bl, -285(%rbp, 1)
popq %rbx

cmpq -284(%rbp, 1), %r15

setne -285(%rbp, 1)













movb $1, -422(%rbp, 1)



movb $0, -423(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -423(%rbp, 1), %bl


andb %bl, -422(%rbp, 1)
popq %rbx



movb $1, -424(%rbp, 1)



movb $0, -425(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -425(%rbp, 1), %bl


orb %bl, -424(%rbp, 1)
popq %rbx






._main:
movq %rbp, %rsp

popq %rbp

ret




.data






































.L1: .byte 37, 120, 10, 0

































































