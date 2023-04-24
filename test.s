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
	AST_STRUCT_DEFINITION(A) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = A ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = a ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = b ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = d ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = e ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = f ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
			AST_VARIABLE_DEFINITION(string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = g ]
				AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
	AST_STRUCT_DEFINITION(B) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = B ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = a ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(A) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = b ]
				AST_DATATYPE(A) : [ int_value = 0, string_value = A ]
	AST_STRUCT_DEFINITION(Test) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = Test ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = a ]
				AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
			AST_VARIABLE_DEFINITION(string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = b ]
				AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
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
			AST_BODY() : 
				AST_VARIABLE_DEFINITION(string) : 
					AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = foo ]
					AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = helio! ]
				AST_VARIABLE_DEFINITION(string) : 
					AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bar ]
					AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = hello! ]
				AST_IF() : 
					AST_LITERAL(bool) : [ int_value = 0, string_value =  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = heilo! ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = hello! ]
					AST_BODY() | ASTO_BODY_IF : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
							AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
								AST_LITERAL(static_string) : [ int_value = 0, string_value = static is equal to static!
 ]
								AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_IF() : 
					AST_OP_EQU(bool) : 
						AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = helio! ]
					AST_BODY() | ASTO_BODY_IF : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
							AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
								AST_LITERAL(static_string) : [ int_value = 0, string_value = dynamic is equal to static!
 ]
								AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_IF() : 
					AST_OP_EQU(bool) : 
						AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = bar ]
						AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
					AST_BODY() | ASTO_BODY_IF : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
							AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
								AST_LITERAL(static_string) : [ int_value = 0, string_value = dynamic is equal to dynamic!
 ]
								AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(string) : 
							AST_OP_MUL(string) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = x ]
								AST_LITERAL(static_string) : [ int_value = 0, string_value = hello, 
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = %s   len : %d
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(string) : 
							AST_OP_SUM(string) : 
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
								AST_LITERAL(static_string) : [ int_value = 0, string_value = hey ,  ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_EXPRESSION(string) : 
							AST_OP_SUM(string) : 
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
								AST_LITERAL(static_string) : [ int_value = 0, string_value = hey ,  ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = %s   len : %d
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(string) : 
							AST_OP_SUM(string) : 
								AST_LITERAL(static_string) : [ int_value = 0, string_value = hey ,  ]
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_EXPRESSION(string) : 
							AST_OP_SUM(string) : 
								AST_LITERAL(static_string) : [ int_value = 0, string_value = hey ,  ]
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = %s   len : %d
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(static_string) : 
							AST_LITERAL(static_string) : [ int_value = 0, string_value = hey!hey!hey!hey!hey! ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_EXPRESSION(static_string) : 
							AST_LITERAL(static_string) : [ int_value = 0, string_value = hey!hey!hey!hey!hey! ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = %s   len : %d
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(static_string) : 
							AST_LITERAL(static_string) : [ int_value = 0, string_value = hey!hey!hey!hey!hey! ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_EXPRESSION(static_string) : 
							AST_LITERAL(static_string) : [ int_value = 0, string_value = hey!hey!hey!hey!hey! ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = %s   len : %d
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(string) : 
							AST_OP_MUL(string) : 
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
								AST_LITERAL(int64) : [ int_value = 5, string_value =  ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_EXPRESSION(string) : 
							AST_OP_MUL(string) : 
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
								AST_LITERAL(int64) : [ int_value = 5, string_value =  ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = %s   len : %d
 ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_EXPRESSION(string) : 
							AST_OP_MUL(string) : 
								AST_LITERAL(int64) : [ int_value = 5, string_value =  ]
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_EXPRESSION(string) : 
							AST_OP_MUL(string) : 
								AST_LITERAL(int64) : [ int_value = 5, string_value =  ]
								AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = foo ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_BODY() : 
				AST_VARIABLE_DEFINITION(B) : 
					AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = foo ]
					AST_DATATYPE(B) : [ int_value = 0, string_value = B ]
					AST_COMPOSITE_LITERAL(B) : 
						AST_DATATYPE(B) : [ int_value = 0, string_value = B ]
						AST_LITERAL(int32) : [ int_value = 1, string_value =  ]
						AST_COMPOSITE_LITERAL(A) : 
							AST_DATATYPE(A) : [ int_value = 0, string_value = A ]
							AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
							AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
							AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
							AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
							AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
							AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = hey! ]
				AST_VARIABLE_DEFINITION(B) : 
					AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bar ]
					AST_DATATYPE(B) : [ int_value = 0, string_value = B ]
					AST_COMPOSITE_LITERAL(B) : 
						AST_DATATYPE(B) : [ int_value = 0, string_value = B ]
						AST_LITERAL(int32) : [ int_value = 1, string_value =  ]
						AST_COMPOSITE_LITERAL(A) : 
							AST_DATATYPE(A) : [ int_value = 0, string_value = A ]
							AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
							AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
							AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
							AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
							AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
							AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = hay! ]
				AST_BODY_RESULT() : 
					AST_IF() : 
						AST_OP_NEQ(bool) : 
							AST_VARIABLE_NAME(B) : [ int_value = 0, string_value = foo ]
							AST_VARIABLE_NAME(B) : [ int_value = 0, string_value = bar ]
						AST_BODY() | ASTO_BODY_IF : 
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
								AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
									AST_LITERAL(static_string) : [ int_value = 0, string_value = struct is not equal to struct!
 ]
									AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
			AST_BODY() : 
				AST_VARIABLE_DEFINITION([3]Test) : 
					AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = foo ]
					AST_DATATYPE([3]Test) : [ int_value = 0, string_value = [3]Test ]
					AST_COMPOSITE_LITERAL([3]Test) : 
						AST_DATATYPE([3]Test) : [ int_value = 0, string_value = [3]Test ]
						AST_COMPOSITE_LITERAL(Test) : 
							AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
						AST_COMPOSITE_LITERAL(Test) : 
							AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
						AST_COMPOSITE_LITERAL(Test) : 
							AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
				AST_VARIABLE_DEFINITION([3]Test) : 
					AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bar ]
					AST_DATATYPE([3]Test) : [ int_value = 0, string_value = [3]Test ]
					AST_COMPOSITE_LITERAL([3]Test) : 
						AST_DATATYPE([3]Test) : [ int_value = 0, string_value = [3]Test ]
						AST_COMPOSITE_LITERAL(Test) : 
							AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
						AST_COMPOSITE_LITERAL(Test) : 
							AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeeiloo ]
						AST_COMPOSITE_LITERAL(Test) : 
							AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = heeelloo ]
				AST_BODY_RESULT() : 
					AST_IF() : 
						AST_OP_EQU(bool) : 
							AST_VARIABLE_NAME([3]Test) : [ int_value = 0, string_value = foo ]
							AST_VARIABLE_NAME([3]Test) : [ int_value = 0, string_value = bar ]
						AST_BODY() | ASTO_BODY_IF : 
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
								AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
									AST_LITERAL(static_string) : [ int_value = 0, string_value = array is equal to array!
 ]
									AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
						AST_BODY() | ASTO_BODY_ELSE : 
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
								AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
									AST_LITERAL(static_string) : [ int_value = 0, string_value = array is not equal to array!
 ]
									AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
.text























.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $2672, %rsp





movq $65280, %rbx



movq %rbx, -385(%rbp, 1)



movq $255, %r12



movq %r12, -393(%rbp, 1)




movq -393(%rbp, 1), %r13


notq %r13



movq %r13, -401(%rbp, 1)




movq $30, %r14



movq -401(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -402(%rbp, 1), %bl


xorb %bl, -402(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setge -402(%rbp, 1)




movq $30, %r14



movq -401(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -403(%rbp, 1), %bl


xorb %bl, -403(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setle -403(%rbp, 1)




movq $30, %r14



movq -401(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -404(%rbp, 1), %bl


xorb %bl, -404(%rbp, 1)
popq %rbx

cmpq %r14, %r15

sete -404(%rbp, 1)




movq $30, %r14



movq -401(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -405(%rbp, 1), %bl


xorb %bl, -405(%rbp, 1)
popq %rbx

cmpq %r14, %r15

sete -405(%rbp, 1)


xorb $1, -405(%rbp, 1)






movq $.L1, %rdi


movq -401(%rbp, 1), %rsi



call printf

movl %eax, %r14d





movq $30, %r15



addq %r15, -401(%rbp, 1)




movq $30, %r15



subq %r15, -401(%rbp, 1)




movq $30, %r15



movq -401(%rbp, 1), %rax


imulq %r15, %rax

movq %rax, -401(%rbp, 1)





movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq -401(%rbp, 1), %rax


idivq %r15

movq %rax, -401(%rbp, 1)





movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq -401(%rbp, 1), %rax


idivq %r15

movq %rdx, -401(%rbp, 1)





movq $30, %r15



andq %r15, -401(%rbp, 1)




movq $30, %r15



orq %r15, -401(%rbp, 1)




movq $30, %r15



xorq %r15, -401(%rbp, 1)



movq $1, %r15




movq %r15, -401(%rbp, 1)




pushq %rbx
movq $3, %rbx


movq %rbx, -413(%rbp, 1)

popq %rbx


movq -413(%rbp, 1), %rcx


shlq %cl, -401(%rbp, 1)






movq $.L2, %rdi


movq -401(%rbp, 1), %rsi



call printf

movl %eax, -417(%rbp, 1)







incq -385(%rbp, 1)



movq $.L3, %rdi


movq -385(%rbp, 1), %rsi



call printf

movl %eax, -421(%rbp, 1)







decq -393(%rbp, 1)



movq $.L4, %rdi


movq -393(%rbp, 1), %rsi



call printf

movl %eax, -425(%rbp, 1)




movb $1, -426(%rbp, 1)



movb $0, -427(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -427(%rbp, 1), %bl


andb %bl, -426(%rbp, 1)
popq %rbx



movb $1, -428(%rbp, 1)



movb $0, -429(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -429(%rbp, 1), %bl


orb %bl, -428(%rbp, 1)
popq %rbx




movq $.L5, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -453(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -453(%rbp, 1), %rbx


movq %rbx, -445(%rbp, 1)
popq %rbx


pushq %rbx
movq $6, %rbx


movq %rbx, -437(%rbp, 1)

popq %rbx





movq $.L6, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -477(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -477(%rbp, 1), %rbx


movq %rbx, -469(%rbp, 1)
popq %rbx


pushq %rbx
movq $6, %rbx


movq %rbx, -461(%rbp, 1)

popq %rbx




movb $0, -478(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -478(%rbp, 1), %bl


andb %bl, -478(%rbp, 1)
popq %rbx

jz .L10



movq $.L9, %rdi



call printf

movl %eax, -482(%rbp, 1)





.L10:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -490(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -445(%rbp, 1), %rbx


movq %rbx, -498(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -499(%rbp, 1), %bl


xorb %bl, -499(%rbp, 1)
popq %rbx

pushq %rcx

pushq %rdi

pushq %r10

pushq %rsi

movq $.L11, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -507(%rbp, 1)


popq %rbx


movq -507(%rbp, 1), %rdi


movq $6, %rcx




movq -490(%rbp, 1), %r10


movq -498(%rbp, 1), %rsi




cmpq %rcx, %r10

jne .L12

cld

repe cmpsb

.L12:

popq %rsi

popq %r10

popq %rdi

popq %rcx

sete -499(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -499(%rbp, 1), %bl


andb %bl, -499(%rbp, 1)
popq %rbx

jz .L14



movq $.L13, %rdi



call printf

movl %eax, -511(%rbp, 1)





.L14:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -461(%rbp, 1), %rbx


movq %rbx, -519(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -469(%rbp, 1), %rbx


movq %rbx, -527(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -528(%rbp, 1), %bl


xorb %bl, -528(%rbp, 1)
popq %rbx

pushq %rcx

pushq %rdi

pushq %r10

pushq %rsi

movq -437(%rbp, 1), %rcx


movq -445(%rbp, 1), %rdi




movq -519(%rbp, 1), %r10


movq -527(%rbp, 1), %rsi




cmpq %rcx, %r10

jne .L15

cld

repe cmpsb

.L15:

popq %rsi

popq %r10

popq %rdi

popq %rcx

sete -528(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -528(%rbp, 1), %bl


andb %bl, -528(%rbp, 1)
popq %rbx

jz .L17



movq $.L16, %rdi



call printf

movl %eax, -532(%rbp, 1)





.L17:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -401(%rbp, 1), %rbx


movq %rbx, -540(%rbp, 1)
popq %rbx


movq $.L18, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -564(%rbp, 1)


popq %rbx


movq -564(%rbp, 1), %r10


movq $8, %rax




movq -540(%rbp, 1), %rdi


movq %rdi, %rax


imulq %rax, %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -556(%rbp, 1)


movq $.L18, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -572(%rbp, 1)


popq %rbx


movq -572(%rbp, 1), %r10


movq $8, %rax




xorq %r11, %r11

.L19:
cmpq %r11, -540(%rbp, 1)

jle .L20

movq %r10, %rsi


movq %rax, %rdi


movq %rdi, %rax


imulq %r11, %rax

movq %rax, %rdi



addq -556(%rbp, 1), %rdi


movq $.L18, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -580(%rbp, 1)


popq %rbx


movq -580(%rbp, 1), %r10


movq $8, %rax




movq %rax, %rcx


cld

rep movsb

incq %r11

jmp .L19

.L20:
movq %rax, -548(%rbp, 1)


movq -548(%rbp, 1), %rax


imulq -540(%rbp, 1), %rax

movq %rax, -548(%rbp, 1)



movq -548(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -548(%rbp, 1), %r10


movq -556(%rbp, 1), %r11



movq %r11, -588(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -588(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq -556(%rbp, 1), %rdi



call printf

movl %eax, -592(%rbp, 1)








pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -600(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -445(%rbp, 1), %rbx


movq %rbx, -608(%rbp, 1)
popq %rbx




movq $.L22, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -632(%rbp, 1)


popq %rbx


movq -632(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -600(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -624(%rbp, 1)


movq -608(%rbp, 1), %rsi


movq -624(%rbp, 1), %rdi


movq -600(%rbp, 1), %rcx


cld

rep movsb

movq $.L22, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -640(%rbp, 1)


popq %rbx


movq -640(%rbp, 1), %r10


movq $6, %rax




movq %r10, %rsi


movq -624(%rbp, 1), %rdi


addq -600(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -600(%rbp, 1), %rbx


movq %rbx, -616(%rbp, 1)
popq %rbx


addq %rax, -616(%rbp, 1)


movq -616(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -616(%rbp, 1), %r10


movq -624(%rbp, 1), %r11



movq %r11, -648(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -648(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)







pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -656(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -445(%rbp, 1), %rbx


movq %rbx, -664(%rbp, 1)
popq %rbx




movq $.L23, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -688(%rbp, 1)


popq %rbx


movq -688(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -656(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -680(%rbp, 1)


movq -664(%rbp, 1), %rsi


movq -680(%rbp, 1), %rdi


movq -656(%rbp, 1), %rcx


cld

rep movsb

movq $.L23, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -696(%rbp, 1)


popq %rbx


movq -696(%rbp, 1), %r10


movq $6, %rax




movq %r10, %rsi


movq -680(%rbp, 1), %rdi


addq -656(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -656(%rbp, 1), %rbx


movq %rbx, -672(%rbp, 1)
popq %rbx


addq %rax, -672(%rbp, 1)


movq -672(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -672(%rbp, 1), %r10


movq -680(%rbp, 1), %r11



movq %r11, -704(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -704(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L21, %rdi


movq -624(%rbp, 1), %rsi


movq -672(%rbp, 1), %rdx



call printf

movl %eax, -708(%rbp, 1)








movq $.L25, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -732(%rbp, 1)


popq %rbx


movq -732(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -437(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -724(%rbp, 1)


movq $.L25, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -740(%rbp, 1)


popq %rbx


movq -740(%rbp, 1), %r10


movq $6, %rax




movq -445(%rbp, 1), %rsi


movq -724(%rbp, 1), %rdi


addq %rax, %rdi


movq -437(%rbp, 1), %rcx


cld

rep movsb

movq %r10, %rsi


movq -724(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -716(%rbp, 1)
popq %rbx


addq %rax, -716(%rbp, 1)


movq -716(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -716(%rbp, 1), %r10


movq -724(%rbp, 1), %r11



movq %r11, -748(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -748(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)







movq $.L26, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -772(%rbp, 1)


popq %rbx


movq -772(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -437(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -764(%rbp, 1)


movq $.L26, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -780(%rbp, 1)


popq %rbx


movq -780(%rbp, 1), %r10


movq $6, %rax




movq -445(%rbp, 1), %rsi


movq -764(%rbp, 1), %rdi


addq %rax, %rdi


movq -437(%rbp, 1), %rcx


cld

rep movsb

movq %r10, %rsi


movq -764(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -756(%rbp, 1)
popq %rbx


addq %rax, -756(%rbp, 1)


movq -756(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -756(%rbp, 1), %r10


movq -764(%rbp, 1), %r11



movq %r11, -788(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -788(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L24, %rdi


movq -724(%rbp, 1), %rsi


movq -756(%rbp, 1), %rdx



call printf

movl %eax, -792(%rbp, 1)









pushq %rbx
movq $20, %rbx


movq %rbx, -800(%rbp, 1)

popq %rbx


movq $.L27, %rdi


movq $.L28, %rsi


movq -800(%rbp, 1), %rdx



call printf

movl %eax, -804(%rbp, 1)









pushq %rbx
movq $20, %rbx


movq %rbx, -812(%rbp, 1)

popq %rbx


movq $.L30, %rdi


movq $.L31, %rsi


movq -812(%rbp, 1), %rdx



call printf

movl %eax, -816(%rbp, 1)







pushq %rbx
movq $5, %rbx


movq %rbx, -824(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -832(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -445(%rbp, 1), %rbx


movq %rbx, -840(%rbp, 1)
popq %rbx




movq -824(%rbp, 1), %rdi


movq %rdi, %rax


imulq -832(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -856(%rbp, 1)


xorq %r10, %r10

.L34:
cmpq %r10, -824(%rbp, 1)

jle .L35

movq -840(%rbp, 1), %rsi


movq -832(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -856(%rbp, 1), %rdi


movq -832(%rbp, 1), %rcx


cld

rep movsb

incq %r10

jmp .L34

.L35:
pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -832(%rbp, 1), %rbx


movq %rbx, -848(%rbp, 1)
popq %rbx


movq -848(%rbp, 1), %rax


imulq -824(%rbp, 1), %rax

movq %rax, -848(%rbp, 1)



movq -848(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -848(%rbp, 1), %r10


movq -856(%rbp, 1), %r11



movq %r11, -864(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -864(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)






pushq %rbx
movq $5, %rbx


movq %rbx, -872(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -880(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -445(%rbp, 1), %rbx


movq %rbx, -888(%rbp, 1)
popq %rbx




movq -872(%rbp, 1), %rdi


movq %rdi, %rax


imulq -880(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -904(%rbp, 1)


xorq %r10, %r10

.L36:
cmpq %r10, -872(%rbp, 1)

jle .L37

movq -888(%rbp, 1), %rsi


movq -880(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -904(%rbp, 1), %rdi


movq -880(%rbp, 1), %rcx


cld

rep movsb

incq %r10

jmp .L36

.L37:
pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -880(%rbp, 1), %rbx


movq %rbx, -896(%rbp, 1)
popq %rbx


movq -896(%rbp, 1), %rax


imulq -872(%rbp, 1), %rax

movq %rax, -896(%rbp, 1)



movq -896(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -896(%rbp, 1), %r10


movq -904(%rbp, 1), %r11



movq %r11, -912(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -912(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L33, %rdi


movq -856(%rbp, 1), %rsi


movq -896(%rbp, 1), %rdx



call printf

movl %eax, -916(%rbp, 1)






pushq %rbx
movq $5, %rbx


movq %rbx, -924(%rbp, 1)

popq %rbx



movq -924(%rbp, 1), %rdi


movq %rdi, %rax


imulq -437(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -940(%rbp, 1)


xorq %r10, %r10

.L39:
cmpq %r10, -924(%rbp, 1)

jle .L40

movq -445(%rbp, 1), %rsi


movq -437(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -940(%rbp, 1), %rdi


movq -437(%rbp, 1), %rcx


cld

rep movsb

incq %r10

jmp .L39

.L40:
pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -932(%rbp, 1)
popq %rbx


movq -932(%rbp, 1), %rax


imulq -924(%rbp, 1), %rax

movq %rax, -932(%rbp, 1)



movq -932(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -932(%rbp, 1), %r10


movq -940(%rbp, 1), %r11



movq %r11, -948(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -948(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





pushq %rbx
movq $5, %rbx


movq %rbx, -956(%rbp, 1)

popq %rbx



movq -956(%rbp, 1), %rdi


movq %rdi, %rax


imulq -437(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -972(%rbp, 1)


xorq %r10, %r10

.L41:
cmpq %r10, -956(%rbp, 1)

jle .L42

movq -445(%rbp, 1), %rsi


movq -437(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -972(%rbp, 1), %rdi


movq -437(%rbp, 1), %rcx


cld

rep movsb

incq %r10

jmp .L41

.L42:
pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -437(%rbp, 1), %rbx


movq %rbx, -964(%rbp, 1)
popq %rbx


movq -964(%rbp, 1), %rax


imulq -956(%rbp, 1), %rax

movq %rax, -964(%rbp, 1)



movq -964(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -964(%rbp, 1), %r10


movq -972(%rbp, 1), %r11



movq %r11, -980(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -980(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L38, %rdi


movq -940(%rbp, 1), %rsi


movq -964(%rbp, 1), %rdx



call printf

movl %eax, -984(%rbp, 1)






movl $1, -988(%rbp, 1)




movl $5, -992(%rbp, 1)



pushq %rbx
movq $9, %rbx


movq %rbx, -1000(%rbp, 1)

popq %rbx


movl $5, -1004(%rbp, 1)



movl $5, -1008(%rbp, 1)



pushq %rbx
movq $9, %rbx


movq %rbx, -1016(%rbp, 1)

popq %rbx


pushq %rbx
movq $9, %rbx


movq %rbx, -1024(%rbp, 1)

popq %rbx



movq $.L43, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1096(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1096(%rbp, 1), %rbx


movq %rbx, -1040(%rbp, 1)
popq %rbx


pushq %rbx
movq $4, %rbx


movq %rbx, -1032(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1024(%rbp, 1), %rbx


movq %rbx, -1056(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1016(%rbp, 1), %rbx


movq %rbx, -1064(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1008(%rbp, 1), %ebx


movl %ebx, -1068(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1004(%rbp, 1), %ebx


movl %ebx, -1072(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1000(%rbp, 1), %rbx


movq %rbx, -1080(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -992(%rbp, 1), %ebx


movl %ebx, -1088(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1032(%rbp, 1), %rbx


movq %rbx, -1104(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1040(%rbp, 1), %rbx


movq %rbx, -1112(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1056(%rbp, 1), %rbx


movq %rbx, -1128(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1064(%rbp, 1), %rbx


movq %rbx, -1136(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1068(%rbp, 1), %ebx


movl %ebx, -1140(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1072(%rbp, 1), %ebx


movl %ebx, -1144(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1080(%rbp, 1), %rbx


movq %rbx, -1152(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1088(%rbp, 1), %ebx


movl %ebx, -1160(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -988(%rbp, 1), %ebx


movl %ebx, -1224(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1104(%rbp, 1), %rbx


movq %rbx, -1232(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1112(%rbp, 1), %rbx


movq %rbx, -1240(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1128(%rbp, 1), %rbx


movq %rbx, -1256(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1136(%rbp, 1), %rbx


movq %rbx, -1264(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1140(%rbp, 1), %ebx


movl %ebx, -1268(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1144(%rbp, 1), %ebx


movl %ebx, -1272(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1152(%rbp, 1), %rbx


movq %rbx, -1280(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1160(%rbp, 1), %ebx


movl %ebx, -1288(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1224(%rbp, 1), %ebx


movl %ebx, -1352(%rbp, 1)
popq %rbx






movl $1, -1356(%rbp, 1)




movl $5, -1360(%rbp, 1)



pushq %rbx
movq $9, %rbx


movq %rbx, -1368(%rbp, 1)

popq %rbx


movl $5, -1372(%rbp, 1)



movl $5, -1376(%rbp, 1)



pushq %rbx
movq $9, %rbx


movq %rbx, -1384(%rbp, 1)

popq %rbx


pushq %rbx
movq $9, %rbx


movq %rbx, -1392(%rbp, 1)

popq %rbx



movq $.L44, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1464(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1464(%rbp, 1), %rbx


movq %rbx, -1408(%rbp, 1)
popq %rbx


pushq %rbx
movq $4, %rbx


movq %rbx, -1400(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1392(%rbp, 1), %rbx


movq %rbx, -1424(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1384(%rbp, 1), %rbx


movq %rbx, -1432(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1376(%rbp, 1), %ebx


movl %ebx, -1436(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1372(%rbp, 1), %ebx


movl %ebx, -1440(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1368(%rbp, 1), %rbx


movq %rbx, -1448(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1360(%rbp, 1), %ebx


movl %ebx, -1456(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1400(%rbp, 1), %rbx


movq %rbx, -1472(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1408(%rbp, 1), %rbx


movq %rbx, -1480(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1424(%rbp, 1), %rbx


movq %rbx, -1496(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1432(%rbp, 1), %rbx


movq %rbx, -1504(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1436(%rbp, 1), %ebx


movl %ebx, -1508(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1440(%rbp, 1), %ebx


movl %ebx, -1512(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1448(%rbp, 1), %rbx


movq %rbx, -1520(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1456(%rbp, 1), %ebx


movl %ebx, -1528(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1356(%rbp, 1), %ebx


movl %ebx, -1592(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1472(%rbp, 1), %rbx


movq %rbx, -1600(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1480(%rbp, 1), %rbx


movq %rbx, -1608(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1496(%rbp, 1), %rbx


movq %rbx, -1624(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1504(%rbp, 1), %rbx


movq %rbx, -1632(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1508(%rbp, 1), %ebx


movl %ebx, -1636(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1512(%rbp, 1), %ebx


movl %ebx, -1640(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1520(%rbp, 1), %rbx


movq %rbx, -1648(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1528(%rbp, 1), %ebx


movl %ebx, -1656(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1592(%rbp, 1), %ebx


movl %ebx, -1720(%rbp, 1)
popq %rbx







pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1232(%rbp, 1), %rbx


movq %rbx, -1728(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1240(%rbp, 1), %rbx


movq %rbx, -1736(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1256(%rbp, 1), %rbx


movq %rbx, -1752(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1264(%rbp, 1), %rbx


movq %rbx, -1760(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1268(%rbp, 1), %ebx


movl %ebx, -1764(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1272(%rbp, 1), %ebx


movl %ebx, -1768(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1280(%rbp, 1), %rbx


movq %rbx, -1776(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1288(%rbp, 1), %ebx


movl %ebx, -1784(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1352(%rbp, 1), %ebx


movl %ebx, -1848(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1849(%rbp, 1), %bl


xorb %bl, -1849(%rbp, 1)
popq %rbx

movb $1, -1849(%rbp, 1)

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1850(%rbp, 1), %bl


xorb %bl, -1850(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1720(%rbp, 1), %ebx


cmpl %ebx, -1848(%rbp, 1)
popq %rbx

sete -1850(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1850(%rbp, 1), %bl


andb %bl, -1849(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1851(%rbp, 1), %bl


xorb %bl, -1851(%rbp, 1)
popq %rbx

movb $1, -1851(%rbp, 1)

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1852(%rbp, 1), %bl


xorb %bl, -1852(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1656(%rbp, 1), %ebx


cmpl %ebx, -1784(%rbp, 1)
popq %rbx

sete -1852(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1852(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1853(%rbp, 1), %bl


xorb %bl, -1853(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1648(%rbp, 1), %rbx


cmpq %rbx, -1776(%rbp, 1)
popq %rbx

sete -1853(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1853(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1854(%rbp, 1), %bl


xorb %bl, -1854(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1640(%rbp, 1), %ebx


cmpl %ebx, -1768(%rbp, 1)
popq %rbx

sete -1854(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1854(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1855(%rbp, 1), %bl


xorb %bl, -1855(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1636(%rbp, 1), %ebx


cmpl %ebx, -1764(%rbp, 1)
popq %rbx

sete -1855(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1855(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1856(%rbp, 1), %bl


xorb %bl, -1856(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1632(%rbp, 1), %rbx


cmpq %rbx, -1760(%rbp, 1)
popq %rbx

sete -1856(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1856(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1857(%rbp, 1), %bl


xorb %bl, -1857(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1624(%rbp, 1), %rbx


cmpq %rbx, -1752(%rbp, 1)
popq %rbx

sete -1857(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1857(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1858(%rbp, 1), %bl


xorb %bl, -1858(%rbp, 1)
popq %rbx

pushq %rcx

pushq %rdi

pushq %r10

pushq %rsi

movq -1600(%rbp, 1), %rcx


movq -1608(%rbp, 1), %rdi




movq -1728(%rbp, 1), %r10


movq -1736(%rbp, 1), %rsi




cmpq %rcx, %r10

jne .L45

cld

repe cmpsb

.L45:

popq %rsi

popq %r10

popq %rdi

popq %rcx

sete -1858(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1858(%rbp, 1), %bl


andb %bl, -1851(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1851(%rbp, 1), %bl


andb %bl, -1849(%rbp, 1)
popq %rbx



xorb $1, -1849(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1849(%rbp, 1), %bl


andb %bl, -1849(%rbp, 1)
popq %rbx

jz .L47



movq $.L46, %rdi



call printf

movl %eax, -1862(%rbp, 1)





.L47:







movq $.L49, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1902(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1902(%rbp, 1), %rbx


movq %rbx, -1878(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -1870(%rbp, 1)

popq %rbx



movq $.L48, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1910(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1910(%rbp, 1), %rbx


movq %rbx, -1894(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -1886(%rbp, 1)

popq %rbx








movq $.L51, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1950(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1950(%rbp, 1), %rbx


movq %rbx, -1926(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -1918(%rbp, 1)

popq %rbx



movq $.L50, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1958(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1958(%rbp, 1), %rbx


movq %rbx, -1942(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -1934(%rbp, 1)

popq %rbx








movq $.L53, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1998(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1998(%rbp, 1), %rbx


movq %rbx, -1974(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -1966(%rbp, 1)

popq %rbx



movq $.L52, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2006(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2006(%rbp, 1), %rbx


movq %rbx, -1990(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -1982(%rbp, 1)

popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1966(%rbp, 1), %rbx


movq %rbx, -2014(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1974(%rbp, 1), %rbx


movq %rbx, -2022(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1982(%rbp, 1), %rbx


movq %rbx, -2030(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1990(%rbp, 1), %rbx


movq %rbx, -2038(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1918(%rbp, 1), %rbx


movq %rbx, -2046(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1926(%rbp, 1), %rbx


movq %rbx, -2054(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1934(%rbp, 1), %rbx


movq %rbx, -2062(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1942(%rbp, 1), %rbx


movq %rbx, -2070(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1870(%rbp, 1), %rbx


movq %rbx, -2078(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1878(%rbp, 1), %rbx


movq %rbx, -2086(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1886(%rbp, 1), %rbx


movq %rbx, -2094(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1894(%rbp, 1), %rbx


movq %rbx, -2102(%rbp, 1)
popq %rbx








pushq %rsi

pushq %rdi

pushq %rcx

leaq -2102(%rbp, 1), %rsi

leaq -2198(%rbp, 1), %rdi

movq $96, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi







movq $.L55, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2238(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2238(%rbp, 1), %rbx


movq %rbx, -2214(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -2206(%rbp, 1)

popq %rbx



movq $.L54, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2246(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2246(%rbp, 1), %rbx


movq %rbx, -2230(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -2222(%rbp, 1)

popq %rbx








movq $.L57, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2286(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2286(%rbp, 1), %rbx


movq %rbx, -2262(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -2254(%rbp, 1)

popq %rbx



movq $.L56, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2294(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2294(%rbp, 1), %rbx


movq %rbx, -2278(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -2270(%rbp, 1)

popq %rbx








movq $.L59, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2334(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2334(%rbp, 1), %rbx


movq %rbx, -2310(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -2302(%rbp, 1)

popq %rbx



movq $.L58, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -2342(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2342(%rbp, 1), %rbx


movq %rbx, -2326(%rbp, 1)
popq %rbx


pushq %rbx
movq $8, %rbx


movq %rbx, -2318(%rbp, 1)

popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2302(%rbp, 1), %rbx


movq %rbx, -2350(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2310(%rbp, 1), %rbx


movq %rbx, -2358(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2318(%rbp, 1), %rbx


movq %rbx, -2366(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2326(%rbp, 1), %rbx


movq %rbx, -2374(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2254(%rbp, 1), %rbx


movq %rbx, -2382(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2262(%rbp, 1), %rbx


movq %rbx, -2390(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2270(%rbp, 1), %rbx


movq %rbx, -2398(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2278(%rbp, 1), %rbx


movq %rbx, -2406(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2206(%rbp, 1), %rbx


movq %rbx, -2414(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2214(%rbp, 1), %rbx


movq %rbx, -2422(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2222(%rbp, 1), %rbx


movq %rbx, -2430(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -2230(%rbp, 1), %rbx


movq %rbx, -2438(%rbp, 1)
popq %rbx








pushq %rsi

pushq %rdi

pushq %rcx

leaq -2438(%rbp, 1), %rsi

leaq -2534(%rbp, 1), %rdi

movq $96, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi





pushq %rsi

pushq %rdi

pushq %rcx

leaq -2198(%rbp, 1), %rsi

leaq -2630(%rbp, 1), %rdi

movq $96, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2631(%rbp, 1), %bl


xorb %bl, -2631(%rbp, 1)
popq %rbx

pushq %rbx

leaq -2534(%rbp, 1), %rbx

movq %rbx, -2639(%rbp, 1)


popq %rbx


movq -2639(%rbp, 1), %rdi


movq $3, %rcx



pushq %rbx

leaq -2630(%rbp, 1), %rbx

movq %rbx, -2647(%rbp, 1)


popq %rbx


movq -2647(%rbp, 1), %rsi


movq $3, %r10



movq %rcx, %r12


movb $0, -2631(%rbp, 1)

cmpq %r12, %r10

jne .L61

movb $1, -2631(%rbp, 1)

.L60:

andq %r12, %r12

jz .L61

decq %r12

pushq %rdi

pushq %rsi

pushq %r12

pushq %r10

pushq %rcx

pushq %rbx

movq %r12, %rbx


movq %r12, %rax


imulq $32, %rax

movq %rax, %r12




movq %rbx, %rax


imulq $32, %rax

movq %rax, %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2648(%rbp, 1), %bl


xorb %bl, -2648(%rbp, 1)
popq %rbx

movb $1, -2648(%rbp, 1)

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2649(%rbp, 1), %bl


xorb %bl, -2649(%rbp, 1)
popq %rbx

pushq %rcx

pushq %rdi

pushq %r10

pushq %rsi

movq 8(%rdi, %r12, 1), %rcx


movq 0(%rdi, %r12, 1), %rdi




movq 8(%rsi, %rbx, 1), %r10


movq 0(%rsi, %rbx, 1), %rsi




cmpq %rcx, %r10

jne .L62

cld

repe cmpsb

.L62:

popq %rsi

popq %r10

popq %rdi

popq %rcx

sete -2649(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2649(%rbp, 1), %bl


andb %bl, -2648(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2650(%rbp, 1), %bl


xorb %bl, -2650(%rbp, 1)
popq %rbx

pushq %rcx

pushq %rdi

pushq %r10

pushq %rsi

movq 24(%rdi, %r12, 1), %rcx


movq 16(%rdi, %r12, 1), %rdi




movq 24(%rsi, %rbx, 1), %r10


movq 16(%rsi, %rbx, 1), %rsi




cmpq %rcx, %r10

jne .L63

cld

repe cmpsb

.L63:

popq %rsi

popq %r10

popq %rdi

popq %rcx

sete -2650(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2650(%rbp, 1), %bl


andb %bl, -2648(%rbp, 1)
popq %rbx



popq %rbx

popq %rcx

popq %r10

popq %r12

popq %rsi

popq %rdi

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2648(%rbp, 1), %bl


andb %bl, -2631(%rbp, 1)
popq %rbx


jmp .L60

.L61:



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -2631(%rbp, 1), %bl


andb %bl, -2631(%rbp, 1)
popq %rbx

jz .L66



movq $.L64, %rdi



call printf

movl %eax, -2654(%rbp, 1)





jmp .L67


.L66:


movq $.L65, %rdi



call printf

movl %eax, -2658(%rbp, 1)





.L67:




._main:
movq %rbp, %rsp

popq %rbp

ret




.data


































































.L1: .byte 120, 32, 98, 101, 102, 111, 114, 101, 32, 116, 104, 101, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 115, 32, 58, 32, 37, 108, 108, 120, 10, 0



































































.L2: .byte 120, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 115, 32, 58, 32, 37, 108, 108, 120, 10, 0









.L3: .byte 37, 120, 10, 0











.L4: .byte 37, 120, 10, 0























.L5: .byte 104, 101, 108, 105, 111, 33, 0










.L6: .byte 104, 101, 108, 108, 111, 33, 0












.L9: .byte 115, 116, 97, 116, 105, 99, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 115, 116, 97, 116, 105, 99, 33, 10, 0











.L11: .byte 104, 101, 108, 105, 111, 33, 0


















.L13: .byte 100, 121, 110, 97, 109, 105, 99, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 115, 116, 97, 116, 105, 99, 33, 10, 0


























.L16: .byte 100, 121, 110, 97, 109, 105, 99, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 100, 121, 110, 97, 109, 105, 99, 33, 10, 0











.L18: .byte 104, 101, 108, 108, 111, 44, 32, 10, 0






















































.L21: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0



.L22: .byte 104, 101, 121, 32, 44, 32, 0










































.L23: .byte 104, 101, 121, 32, 44, 32, 0
















































.L24: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0


.L25: .byte 104, 101, 121, 32, 44, 32, 0






































.L26: .byte 104, 101, 121, 32, 44, 32, 0













































.L27: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0


.L28: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0


.L29: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0











.L30: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0


.L31: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0


.L32: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0











.L33: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0













































































.L38: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0

























































































.L43: .byte 104, 101, 121, 33, 0



































































.L44: .byte 104, 97, 121, 33, 0






























































































.L46: .byte 115, 116, 114, 117, 99, 116, 32, 105, 115, 32, 110, 111, 116, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 115, 116, 114, 117, 99, 116, 33, 10, 0













.L48: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0

.L49: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0




















.L50: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0

.L51: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0




















.L52: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0

.L53: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0
























































.L54: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0

.L55: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0




















.L56: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0

.L57: .byte 104, 101, 101, 101, 105, 108, 111, 111, 0




















.L58: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0

.L59: .byte 104, 101, 101, 101, 108, 108, 111, 111, 0






































































































.L64: .byte 97, 114, 114, 97, 121, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 97, 114, 114, 97, 121, 33, 10, 0









.L65: .byte 97, 114, 114, 97, 121, 32, 105, 115, 32, 110, 111, 116, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 97, 114, 114, 97, 121, 33, 10, 0















