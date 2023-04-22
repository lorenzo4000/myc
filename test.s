AST_HEAD : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = getchar ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = gets ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = perror ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = str ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = printf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = str ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = putchar ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c ]
				AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = puts ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = str ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = remove ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = filename ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = rename ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = oldname ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = newname ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = scanf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format_string ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = snprintf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = outbuf ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = n ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = str ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = sprintf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format_string ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = sscanf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format_string ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = tmpnam ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = str ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = *int8 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vprintf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vscanf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vsprintf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = target_string ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vsnprintf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = outbuf ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = n ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = str ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vsscanf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint8 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vswscanf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buffer ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint32 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = vwscanf ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = format ]
				AST_DATATYPE : [ int_value = 0, string_value = *uint32 ]
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_STRUCT_DEFINITION : 
		AST_STRUCT_DEFINITION_NAME : [ int_value = 0, string_value = A ]
		AST_STRUCT_DEFINITION_BODY : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = a ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = b ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = d ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = e ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = f ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = g ]
				AST_DATATYPE : [ int_value = 0, string_value = string ]
	AST_STRUCT_DEFINITION : 
		AST_STRUCT_DEFINITION_NAME : [ int_value = 0, string_value = B ]
		AST_STRUCT_DEFINITION_BODY : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = a ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = b ]
				AST_DATATYPE : [ int_value = 0, string_value = A ]
	AST_FUNCTION_DEFINITION : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
		AST_BODY | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = a ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_LITERAL : [ int_value = 65280, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = b ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_LITERAL : [ int_value = 255, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = x ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_OP_BNOT : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = b ]
			AST_OP_GOE : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_LOE : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EQU : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_NEQ : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = x before the operations : %llx
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
			AST_OP_ESUM : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_ESUB : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EMUL : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EDIV : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EMOD : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EBAND : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EBORI : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_EBORE : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_OP_ASN : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 1, string_value =  ]
			AST_OP_ESHL : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
				AST_LITERAL : [ int_value = 3, string_value =  ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = x after the operations : %llx
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %x
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_INC : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = a ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %x
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DEC : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = b ]
			AST_OP_AND : 
				AST_LITERAL : [ int_value = 1, string_value = true ]
				AST_LITERAL : [ int_value = 0, string_value = false ]
			AST_OP_OR : 
				AST_LITERAL : [ int_value = 1, string_value = true ]
				AST_LITERAL : [ int_value = 0, string_value = false ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = x ]
							AST_LITERAL : [ int_value = 0, string_value = hello, 
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = foo ]
				AST_DATATYPE : [ int_value = 0, string_value = string ]
				AST_LITERAL : [ int_value = 0, string_value = helio! ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = bar ]
				AST_DATATYPE : [ int_value = 0, string_value = string ]
				AST_LITERAL : [ int_value = 0, string_value = hello! ]
			AST_IF : 
				AST_OP_EQU : 
					AST_LITERAL : [ int_value = 0, string_value = heilo! ]
					AST_LITERAL : [ int_value = 0, string_value = hello! ]
				AST_BODY | ASTO_BODY_IF : 
					AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
						AST_OP_DOT : [ int_value = 0, string_value = data ]
							AST_LITERAL : [ int_value = 0, string_value = static is equal to static!
 ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_IF : 
				AST_OP_EQU : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
					AST_LITERAL : [ int_value = 0, string_value = helio! ]
				AST_BODY | ASTO_BODY_IF : 
					AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
						AST_OP_DOT : [ int_value = 0, string_value = data ]
							AST_LITERAL : [ int_value = 0, string_value = dynamic is equal to static!
 ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_IF : 
				AST_OP_EQU : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = bar ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
				AST_BODY | ASTO_BODY_IF : 
					AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
						AST_OP_DOT : [ int_value = 0, string_value = data ]
							AST_LITERAL : [ int_value = 0, string_value = dynamic is equal to dynamic!
 ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = baz ]
				AST_DATATYPE : [ int_value = 0, string_value = B ]
				AST_COMPOSITE_LITERAL : 
					AST_DATATYPE : [ int_value = 0, string_value = B ]
					AST_LITERAL : [ int_value = 1, string_value =  ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = A ]
						AST_LITERAL : [ int_value = 5, string_value =  ]
						AST_LITERAL : [ int_value = 9, string_value =  ]
						AST_LITERAL : [ int_value = 5, string_value =  ]
						AST_LITERAL : [ int_value = 5, string_value =  ]
						AST_LITERAL : [ int_value = 9, string_value =  ]
						AST_LITERAL : [ int_value = 9, string_value =  ]
						AST_LITERAL : [ int_value = 0, string_value = hey! ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = quz ]
				AST_DATATYPE : [ int_value = 0, string_value = B ]
				AST_COMPOSITE_LITERAL : 
					AST_DATATYPE : [ int_value = 0, string_value = B ]
					AST_LITERAL : [ int_value = 1, string_value =  ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = A ]
						AST_LITERAL : [ int_value = 5, string_value =  ]
						AST_LITERAL : [ int_value = 9, string_value =  ]
						AST_LITERAL : [ int_value = 5, string_value =  ]
						AST_LITERAL : [ int_value = 5, string_value =  ]
						AST_LITERAL : [ int_value = 9, string_value =  ]
						AST_LITERAL : [ int_value = 9, string_value =  ]
						AST_LITERAL : [ int_value = 0, string_value = hey! ]
			AST_IF : 
				AST_OP_EQU : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = baz ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = quz ]
				AST_BODY | ASTO_BODY_IF : 
					AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
						AST_OP_DOT : [ int_value = 0, string_value = data ]
							AST_LITERAL : [ int_value = 0, string_value = struct is equal to struct!
 ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %s   len : %d
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_SUM : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
							AST_LITERAL : [ int_value = 0, string_value = hey ,  ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_EXPRESSION : 
						AST_OP_SUM : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
							AST_LITERAL : [ int_value = 0, string_value = hey ,  ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %s   len : %d
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_SUM : 
							AST_LITERAL : [ int_value = 0, string_value = hey ,  ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_EXPRESSION : 
						AST_OP_SUM : 
							AST_LITERAL : [ int_value = 0, string_value = hey ,  ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %s   len : %d
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_LITERAL : [ int_value = 5, string_value =  ]
							AST_LITERAL : [ int_value = 0, string_value = hey! ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_LITERAL : [ int_value = 5, string_value =  ]
							AST_LITERAL : [ int_value = 0, string_value = hey! ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %s   len : %d
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_LITERAL : [ int_value = 0, string_value = hey! ]
							AST_LITERAL : [ int_value = 5, string_value =  ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_LITERAL : [ int_value = 0, string_value = hey! ]
							AST_LITERAL : [ int_value = 5, string_value =  ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %s   len : %d
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
							AST_LITERAL : [ int_value = 5, string_value =  ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
							AST_LITERAL : [ int_value = 5, string_value =  ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %s   len : %d
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_LITERAL : [ int_value = 5, string_value =  ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_EXPRESSION : 
						AST_OP_MUL : 
							AST_LITERAL : [ int_value = 5, string_value =  ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_FOR : 
				AST_FOR_INIT : 
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = i ]
						AST_DATATYPE : [ int_value = 0, string_value = int64 ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_OP_LES : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
					AST_CASTING : 
						AST_DATATYPE : [ int_value = 0, string_value = int64 ]
						AST_OP_DOT : [ int_value = 0, string_value = len ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
				AST_FOR_UPDATE : 
					AST_OP_INC : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
				AST_BODY | ASTO_BODY_FOR : 
					AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
						AST_OP_DOT : [ int_value = 0, string_value = data ]
							AST_LITERAL : [ int_value = 0, string_value = %hhx ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
						AST_OP_INDEX : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = foo ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %llx
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_SHL : 
					AST_LITERAL : [ int_value = 255, string_value =  ]
					AST_LITERAL : [ int_value = 3, string_value =  ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = %llx
 ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_OP_SHR : 
					AST_LITERAL : [ int_value = 240, string_value =  ]
					AST_LITERAL : [ int_value = 2, string_value =  ]
.text






















.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $1936, %rsp





movq $65280, %rbx



movq %rbx, -353(%rbp, 1)



movq $255, %r12



movq %r12, -361(%rbp, 1)




movq -361(%rbp, 1), %r13


notq %r13



movq %r13, -369(%rbp, 1)




movq $30, %r14



movq -369(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -370(%rbp, 1), %bl


xorb %bl, -370(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setge -370(%rbp, 1)




movq $30, %r14



movq -369(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -371(%rbp, 1), %bl


xorb %bl, -371(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setle -371(%rbp, 1)




movq $30, %r14



movq -369(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -372(%rbp, 1), %bl


xorb %bl, -372(%rbp, 1)
popq %rbx

cmpq %r14, %r15

sete -372(%rbp, 1)




movq $30, %r14



movq -369(%rbp, 1), %r15


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -373(%rbp, 1), %bl


xorb %bl, -373(%rbp, 1)
popq %rbx

cmpq %r14, %r15

setne -373(%rbp, 1)






movq $.L1, %rdi


movq -369(%rbp, 1), %rsi



call printf

movl %eax, %r14d





movq $30, %r15



addq %r15, -369(%rbp, 1)




movq $30, %r15



subq %r15, -369(%rbp, 1)




movq $30, %r15



movq -369(%rbp, 1), %rax


imulq %r15, %rax

movq %rax, -369(%rbp, 1)





movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq -369(%rbp, 1), %rax


idivq %r15

movq %rax, -369(%rbp, 1)





movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq -369(%rbp, 1), %rax


idivq %r15

movq %rdx, -369(%rbp, 1)





movq $30, %r15



andq %r15, -369(%rbp, 1)




movq $30, %r15



orq %r15, -369(%rbp, 1)




movq $30, %r15



xorq %r15, -369(%rbp, 1)



movq $1, %r15




movq %r15, -369(%rbp, 1)




pushq %rbx
movq $3, %rbx


movq %rbx, -381(%rbp, 1)

popq %rbx


movq -381(%rbp, 1), %rcx


shlq %cl, -369(%rbp, 1)






movq $.L2, %rdi


movq -369(%rbp, 1), %rsi



call printf

movl %eax, -385(%rbp, 1)







incq -353(%rbp, 1)



movq $.L3, %rdi


movq -353(%rbp, 1), %rsi



call printf

movl %eax, -389(%rbp, 1)







decq -361(%rbp, 1)



movq $.L4, %rdi


movq -361(%rbp, 1), %rsi



call printf

movl %eax, -393(%rbp, 1)




movb $1, -394(%rbp, 1)



movb $0, -395(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -395(%rbp, 1), %bl


andb %bl, -394(%rbp, 1)
popq %rbx



movb $1, -396(%rbp, 1)



movb $0, -397(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -397(%rbp, 1), %bl


orb %bl, -396(%rbp, 1)
popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -369(%rbp, 1), %rbx


movq %rbx, -405(%rbp, 1)
popq %rbx


movq $.L5, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -429(%rbp, 1)


popq %rbx


movq -429(%rbp, 1), %r10


movq $8, %rax




movq -405(%rbp, 1), %rdi


movq %rdi, %rax


imulq %rax, %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -421(%rbp, 1)


movq $.L5, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -437(%rbp, 1)


popq %rbx


movq -437(%rbp, 1), %r10


movq $8, %rax




xorq %r11, %r11

.L6:
cmpq %r11, -405(%rbp, 1)

jle .L7

movq %r10, %rsi


movq %rax, %rdi


movq %rdi, %rax


imulq %r11, %rax

movq %rax, %rdi



addq -421(%rbp, 1), %rdi


movq $.L5, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -445(%rbp, 1)


popq %rbx


movq -445(%rbp, 1), %r10


movq $8, %rax




movq %rax, %rcx


cld

rep movsb

incq %r11

jmp .L6

.L7:
movq %rax, -413(%rbp, 1)


movq -413(%rbp, 1), %rax


imulq -405(%rbp, 1), %rax

movq %rax, -413(%rbp, 1)



movq -413(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -413(%rbp, 1), %r10


movq -421(%rbp, 1), %r11



movq %r11, -453(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -453(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq -421(%rbp, 1), %rdi



call printf

movl %eax, -457(%rbp, 1)





movq $.L8, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -481(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -481(%rbp, 1), %rbx


movq %rbx, -473(%rbp, 1)
popq %rbx


pushq %rbx
movq $6, %rbx


movq %rbx, -465(%rbp, 1)

popq %rbx





movq $.L9, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -505(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -505(%rbp, 1), %rbx


movq %rbx, -497(%rbp, 1)
popq %rbx


pushq %rbx
movq $6, %rbx


movq %rbx, -489(%rbp, 1)

popq %rbx




movb $0, -506(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -506(%rbp, 1), %bl


andb %bl, -506(%rbp, 1)
popq %rbx

jz .L13



movq $.L12, %rdi



call printf

movl %eax, -510(%rbp, 1)





.L13:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -518(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -473(%rbp, 1), %rbx


movq %rbx, -526(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -527(%rbp, 1), %bl


xorb %bl, -527(%rbp, 1)
popq %rbx

movq $.L14, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -535(%rbp, 1)


popq %rbx


movq -535(%rbp, 1), %rdi


movq $6, %rcx




movq -518(%rbp, 1), %r10


movq -526(%rbp, 1), %rsi



cmpq %rcx, %r10

jne .L15

cld

repe cmpsb

.L15:

sete -527(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -527(%rbp, 1), %bl


andb %bl, -527(%rbp, 1)
popq %rbx

jz .L17



movq $.L16, %rdi



call printf

movl %eax, -539(%rbp, 1)





.L17:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -489(%rbp, 1), %rbx


movq %rbx, -547(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -497(%rbp, 1), %rbx


movq %rbx, -555(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -556(%rbp, 1), %bl


xorb %bl, -556(%rbp, 1)
popq %rbx

movq -465(%rbp, 1), %rcx


movq -473(%rbp, 1), %rdi



movq -547(%rbp, 1), %r10


movq -555(%rbp, 1), %rsi



cmpq %rcx, %r10

jne .L18

cld

repe cmpsb

.L18:

sete -556(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -556(%rbp, 1), %bl


andb %bl, -556(%rbp, 1)
popq %rbx

jz .L20



movq $.L19, %rdi



call printf

movl %eax, -560(%rbp, 1)





.L20:



pushq %rbx
movq $1, %rbx


movq %rbx, -568(%rbp, 1)

popq %rbx



pushq %rbx
movq $5, %rbx


movq %rbx, -576(%rbp, 1)

popq %rbx


pushq %rbx
movq $9, %rbx


movq %rbx, -584(%rbp, 1)

popq %rbx


movl $5, -588(%rbp, 1)



movl $5, -592(%rbp, 1)



pushq %rbx
movq $9, %rbx


movq %rbx, -600(%rbp, 1)

popq %rbx


pushq %rbx
movq $9, %rbx


movq %rbx, -608(%rbp, 1)

popq %rbx



movq $.L21, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -680(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -680(%rbp, 1), %rbx


movq %rbx, -624(%rbp, 1)
popq %rbx


pushq %rbx
movq $4, %rbx


movq %rbx, -616(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -608(%rbp, 1), %rbx


movq %rbx, -640(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -600(%rbp, 1), %rbx


movq %rbx, -648(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -592(%rbp, 1), %ebx


movl %ebx, -652(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -588(%rbp, 1), %ebx


movl %ebx, -656(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -584(%rbp, 1), %rbx


movq %rbx, -664(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -576(%rbp, 1), %rbx


movq %rbx, -672(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -616(%rbp, 1), %rbx


movq %rbx, -688(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -624(%rbp, 1), %rbx


movq %rbx, -696(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -640(%rbp, 1), %rbx


movq %rbx, -712(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -648(%rbp, 1), %rbx


movq %rbx, -720(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -652(%rbp, 1), %ebx


movl %ebx, -724(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -656(%rbp, 1), %ebx


movl %ebx, -728(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -664(%rbp, 1), %rbx


movq %rbx, -736(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -672(%rbp, 1), %ebx


movl %ebx, -744(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -568(%rbp, 1), %rbx


movq %rbx, -808(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -688(%rbp, 1), %rbx


movq %rbx, -816(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -696(%rbp, 1), %rbx


movq %rbx, -824(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -712(%rbp, 1), %rbx


movq %rbx, -840(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -720(%rbp, 1), %rbx


movq %rbx, -848(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -724(%rbp, 1), %ebx


movl %ebx, -852(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -728(%rbp, 1), %ebx


movl %ebx, -856(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -736(%rbp, 1), %rbx


movq %rbx, -864(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -744(%rbp, 1), %ebx


movl %ebx, -872(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -808(%rbp, 1), %ebx


movl %ebx, -936(%rbp, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -944(%rbp, 1)

popq %rbx



pushq %rbx
movq $5, %rbx


movq %rbx, -952(%rbp, 1)

popq %rbx


pushq %rbx
movq $9, %rbx


movq %rbx, -960(%rbp, 1)

popq %rbx


movl $5, -964(%rbp, 1)



movl $5, -968(%rbp, 1)



pushq %rbx
movq $9, %rbx


movq %rbx, -976(%rbp, 1)

popq %rbx


pushq %rbx
movq $9, %rbx


movq %rbx, -984(%rbp, 1)

popq %rbx



movq $.L22, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1056(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1056(%rbp, 1), %rbx


movq %rbx, -1000(%rbp, 1)
popq %rbx


pushq %rbx
movq $4, %rbx


movq %rbx, -992(%rbp, 1)

popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -984(%rbp, 1), %rbx


movq %rbx, -1016(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -976(%rbp, 1), %rbx


movq %rbx, -1024(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -968(%rbp, 1), %ebx


movl %ebx, -1028(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -964(%rbp, 1), %ebx


movl %ebx, -1032(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -960(%rbp, 1), %rbx


movq %rbx, -1040(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -952(%rbp, 1), %rbx


movq %rbx, -1048(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -992(%rbp, 1), %rbx


movq %rbx, -1064(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1000(%rbp, 1), %rbx


movq %rbx, -1072(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1016(%rbp, 1), %rbx


movq %rbx, -1088(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1024(%rbp, 1), %rbx


movq %rbx, -1096(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1028(%rbp, 1), %ebx


movl %ebx, -1100(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1032(%rbp, 1), %ebx


movl %ebx, -1104(%rbp, 1)
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
movl -1048(%rbp, 1), %ebx


movl %ebx, -1120(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -944(%rbp, 1), %rbx


movq %rbx, -1184(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1064(%rbp, 1), %rbx


movq %rbx, -1192(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1072(%rbp, 1), %rbx


movq %rbx, -1200(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1088(%rbp, 1), %rbx


movq %rbx, -1216(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1096(%rbp, 1), %rbx


movq %rbx, -1224(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1100(%rbp, 1), %ebx


movl %ebx, -1228(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1104(%rbp, 1), %ebx


movl %ebx, -1232(%rbp, 1)
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
movl -1120(%rbp, 1), %ebx


movl %ebx, -1248(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1184(%rbp, 1), %ebx


movl %ebx, -1312(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -816(%rbp, 1), %rbx


movq %rbx, -1320(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -824(%rbp, 1), %rbx


movq %rbx, -1328(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -840(%rbp, 1), %rbx


movq %rbx, -1344(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -848(%rbp, 1), %rbx


movq %rbx, -1352(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -852(%rbp, 1), %ebx


movl %ebx, -1356(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -856(%rbp, 1), %ebx


movl %ebx, -1360(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -864(%rbp, 1), %rbx


movq %rbx, -1368(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -872(%rbp, 1), %ebx


movl %ebx, -1376(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -936(%rbp, 1), %ebx


movl %ebx, -1440(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1441(%rbp, 1), %bl


xorb %bl, -1441(%rbp, 1)
popq %rbx

movb $1, -1441(%rbp, 1)

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1442(%rbp, 1), %bl


xorb %bl, -1442(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1312(%rbp, 1), %ebx


cmpl %ebx, -1440(%rbp, 1)
popq %rbx

sete -1442(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1442(%rbp, 1), %bl


andb %bl, -1441(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1443(%rbp, 1), %bl


xorb %bl, -1443(%rbp, 1)
popq %rbx

movb $1, -1443(%rbp, 1)

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1444(%rbp, 1), %bl


xorb %bl, -1444(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1248(%rbp, 1), %ebx


cmpl %ebx, -1376(%rbp, 1)
popq %rbx

sete -1444(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1444(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1445(%rbp, 1), %bl


xorb %bl, -1445(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1240(%rbp, 1), %rbx


cmpq %rbx, -1368(%rbp, 1)
popq %rbx

sete -1445(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1445(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1446(%rbp, 1), %bl


xorb %bl, -1446(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1232(%rbp, 1), %ebx


cmpl %ebx, -1360(%rbp, 1)
popq %rbx

sete -1446(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1446(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1447(%rbp, 1), %bl


xorb %bl, -1447(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -1228(%rbp, 1), %ebx


cmpl %ebx, -1356(%rbp, 1)
popq %rbx

sete -1447(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1447(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1448(%rbp, 1), %bl


xorb %bl, -1448(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1224(%rbp, 1), %rbx


cmpq %rbx, -1352(%rbp, 1)
popq %rbx

sete -1448(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1448(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1449(%rbp, 1), %bl


xorb %bl, -1449(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1216(%rbp, 1), %rbx


cmpq %rbx, -1344(%rbp, 1)
popq %rbx

sete -1449(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1449(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1450(%rbp, 1), %bl


xorb %bl, -1450(%rbp, 1)
popq %rbx

movq -1192(%rbp, 1), %rcx


movq -1200(%rbp, 1), %rdi



movq -1320(%rbp, 1), %r10


movq -1328(%rbp, 1), %rsi



cmpq %rcx, %r10

jne .L23

cld

repe cmpsb

.L23:

sete -1450(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1450(%rbp, 1), %bl


andb %bl, -1443(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1443(%rbp, 1), %bl


andb %bl, -1441(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1441(%rbp, 1), %bl


andb %bl, -1441(%rbp, 1)
popq %rbx

jz .L25



movq $.L24, %rdi



call printf

movl %eax, -1454(%rbp, 1)





.L25:






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1462(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -473(%rbp, 1), %rbx


movq %rbx, -1470(%rbp, 1)
popq %rbx



movq $.L27, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1494(%rbp, 1)


popq %rbx


movq -1494(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -1462(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -1486(%rbp, 1)


movq -1470(%rbp, 1), %rsi


movq -1486(%rbp, 1), %rdi


movq -1462(%rbp, 1), %rcx


cld

rep movsb

movq $.L27, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1502(%rbp, 1)


popq %rbx


movq -1502(%rbp, 1), %r10


movq $6, %rax




movq %r10, %rsi


movq -1486(%rbp, 1), %rdi


addq -1462(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1462(%rbp, 1), %rbx


movq %rbx, -1478(%rbp, 1)
popq %rbx


addq %rax, -1478(%rbp, 1)


movq -1478(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1478(%rbp, 1), %r10


movq -1486(%rbp, 1), %r11



movq %r11, -1510(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1510(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)







pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1518(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -473(%rbp, 1), %rbx


movq %rbx, -1526(%rbp, 1)
popq %rbx



movq $.L28, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1550(%rbp, 1)


popq %rbx


movq -1550(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -1518(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -1542(%rbp, 1)


movq -1526(%rbp, 1), %rsi


movq -1542(%rbp, 1), %rdi


movq -1518(%rbp, 1), %rcx


cld

rep movsb

movq $.L28, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1558(%rbp, 1)


popq %rbx


movq -1558(%rbp, 1), %r10


movq $6, %rax




movq %r10, %rsi


movq -1542(%rbp, 1), %rdi


addq -1518(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1518(%rbp, 1), %rbx


movq %rbx, -1534(%rbp, 1)
popq %rbx


addq %rax, -1534(%rbp, 1)


movq -1534(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1534(%rbp, 1), %r10


movq -1542(%rbp, 1), %r11



movq %r11, -1566(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1566(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L26, %rdi


movq -1486(%rbp, 1), %rsi


movq -1534(%rbp, 1), %rdx



call printf

movl %eax, -1570(%rbp, 1)








movq $.L30, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1594(%rbp, 1)


popq %rbx


movq -1594(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -465(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -1586(%rbp, 1)


movq $.L30, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1602(%rbp, 1)


popq %rbx


movq -1602(%rbp, 1), %r10


movq $6, %rax




movq -473(%rbp, 1), %rsi


movq -1586(%rbp, 1), %rdi


addq %rax, %rdi


movq -465(%rbp, 1), %rcx


cld

rep movsb

movq %r10, %rsi


movq -1586(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1578(%rbp, 1)
popq %rbx


addq %rax, -1578(%rbp, 1)


movq -1578(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1578(%rbp, 1), %r10


movq -1586(%rbp, 1), %r11



movq %r11, -1610(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1610(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)







movq $.L31, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1634(%rbp, 1)


popq %rbx


movq -1634(%rbp, 1), %r10


movq $6, %rax




movq %rax, %rdi


addq -465(%rbp, 1), %rdi


incq %rdi

call malloc

movq %rax, -1626(%rbp, 1)


movq $.L31, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1642(%rbp, 1)


popq %rbx


movq -1642(%rbp, 1), %r10


movq $6, %rax




movq -473(%rbp, 1), %rsi


movq -1626(%rbp, 1), %rdi


addq %rax, %rdi


movq -465(%rbp, 1), %rcx


cld

rep movsb

movq %r10, %rsi


movq -1626(%rbp, 1), %rdi


movq %rax, %rcx


cld

rep movsb

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1618(%rbp, 1)
popq %rbx


addq %rax, -1618(%rbp, 1)


movq -1618(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1618(%rbp, 1), %r10


movq -1626(%rbp, 1), %r11



movq %r11, -1650(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1650(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L29, %rdi


movq -1586(%rbp, 1), %rsi


movq -1618(%rbp, 1), %rdx



call printf

movl %eax, -1654(%rbp, 1)









pushq %rbx
movq $20, %rbx


movq %rbx, -1662(%rbp, 1)

popq %rbx


movq $.L32, %rdi


movq $.L33, %rsi


movq -1662(%rbp, 1), %rdx



call printf

movl %eax, -1666(%rbp, 1)









pushq %rbx
movq $20, %rbx


movq %rbx, -1674(%rbp, 1)

popq %rbx


movq $.L35, %rdi


movq $.L36, %rsi


movq -1674(%rbp, 1), %rdx



call printf

movl %eax, -1678(%rbp, 1)







pushq %rbx
movq $5, %rbx


movq %rbx, -1686(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1694(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -473(%rbp, 1), %rbx


movq %rbx, -1702(%rbp, 1)
popq %rbx



movq -1686(%rbp, 1), %rdi


movq %rdi, %rax


imulq -1694(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -1718(%rbp, 1)


xorq %r10, %r10

.L39:
cmpq %r10, -1686(%rbp, 1)

jle .L40

movq -1702(%rbp, 1), %rsi


movq -1694(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -1718(%rbp, 1), %rdi


movq -1694(%rbp, 1), %rcx


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
movq -1694(%rbp, 1), %rbx


movq %rbx, -1710(%rbp, 1)
popq %rbx


movq -1710(%rbp, 1), %rax


imulq -1686(%rbp, 1), %rax

movq %rax, -1710(%rbp, 1)



movq -1710(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1710(%rbp, 1), %r10


movq -1718(%rbp, 1), %r11



movq %r11, -1726(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1726(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)






pushq %rbx
movq $5, %rbx


movq %rbx, -1734(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1742(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -473(%rbp, 1), %rbx


movq %rbx, -1750(%rbp, 1)
popq %rbx



movq -1734(%rbp, 1), %rdi


movq %rdi, %rax


imulq -1742(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -1766(%rbp, 1)


xorq %r10, %r10

.L41:
cmpq %r10, -1734(%rbp, 1)

jle .L42

movq -1750(%rbp, 1), %rsi


movq -1742(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -1766(%rbp, 1), %rdi


movq -1742(%rbp, 1), %rcx


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
movq -1742(%rbp, 1), %rbx


movq %rbx, -1758(%rbp, 1)
popq %rbx


movq -1758(%rbp, 1), %rax


imulq -1734(%rbp, 1), %rax

movq %rax, -1758(%rbp, 1)



movq -1758(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1758(%rbp, 1), %r10


movq -1766(%rbp, 1), %r11



movq %r11, -1774(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1774(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L38, %rdi


movq -1718(%rbp, 1), %rsi


movq -1758(%rbp, 1), %rdx



call printf

movl %eax, -1778(%rbp, 1)






pushq %rbx
movq $5, %rbx


movq %rbx, -1786(%rbp, 1)

popq %rbx



movq -1786(%rbp, 1), %rdi


movq %rdi, %rax


imulq -465(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -1802(%rbp, 1)


xorq %r10, %r10

.L44:
cmpq %r10, -1786(%rbp, 1)

jle .L45

movq -473(%rbp, 1), %rsi


movq -465(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -1802(%rbp, 1), %rdi


movq -465(%rbp, 1), %rcx


cld

rep movsb

incq %r10

jmp .L44

.L45:
pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1794(%rbp, 1)
popq %rbx


movq -1794(%rbp, 1), %rax


imulq -1786(%rbp, 1), %rax

movq %rax, -1794(%rbp, 1)



movq -1794(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1794(%rbp, 1), %r10


movq -1802(%rbp, 1), %r11



movq %r11, -1810(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1810(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





pushq %rbx
movq $5, %rbx


movq %rbx, -1818(%rbp, 1)

popq %rbx



movq -1818(%rbp, 1), %rdi


movq %rdi, %rax


imulq -465(%rbp, 1), %rax

movq %rax, %rdi



incq %rdi

call malloc

movq %rax, -1834(%rbp, 1)


xorq %r10, %r10

.L46:
cmpq %r10, -1818(%rbp, 1)

jle .L47

movq -473(%rbp, 1), %rsi


movq -465(%rbp, 1), %rdi


movq %rdi, %rax


imulq %r10, %rax

movq %rax, %rdi



addq -1834(%rbp, 1), %rdi


movq -465(%rbp, 1), %rcx


cld

rep movsb

incq %r10

jmp .L46

.L47:
pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1826(%rbp, 1)
popq %rbx


movq -1826(%rbp, 1), %rax


imulq -1818(%rbp, 1), %rax

movq %rax, -1826(%rbp, 1)



movq -1826(%rbp, 1), %r10


incq %r10

pushq %r10

pushq %r11

movq -1826(%rbp, 1), %r10


movq -1834(%rbp, 1), %r11



movq %r11, -1842(%rbp, 1)


popq %r11

popq %r10


// using rax
// the index is very cute! : %r10
movq -1842(%rbp, 1), %rax

movb $0, 0(%rax, %r10, 1)





movq $.L43, %rdi


movq -1802(%rbp, 1), %rsi


movq -1826(%rbp, 1), %rdx



call printf

movl %eax, -1846(%rbp, 1)




pushq %rbx
movq $0, %rbx


movq %rbx, -1854(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1854(%rbp, 1), %rbx


movq %rbx, -1862(%rbp, 1)
popq %rbx




.L49:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -465(%rbp, 1), %rbx


movq %rbx, -1870(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -1870(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1862(%rbp, 1), %rbx


movq %rbx, -1878(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1879(%rbp, 1), %bl


xorb %bl, -1879(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1870(%rbp, 1), %rbx


cmpq %rbx, -1878(%rbp, 1)
popq %rbx

setl -1879(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -1879(%rbp, 1), %bl


andb %bl, -1879(%rbp, 1)
popq %rbx

jz .L50





pushq %r10

pushq %r11

movq -465(%rbp, 1), %r10


movq -473(%rbp, 1), %r11



movq %r11, -1887(%rbp, 1)


popq %r11

popq %r10



movq $.L48, %rdi


// using rax
// the index is very cute! : -1862(%rbp, 1)
// using r10
pushq %rax
movq -1887(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -1862(%rbp, 1), %r10

movb 0(%rax, %r10, 1), %sil
popq %r10
popq %rax



call printf

movl %eax, -1891(%rbp, 1)






incq -1862(%rbp, 1)




jmp .L49

.L50:




pushq %rbx
movq $255, %rbx


movq %rbx, -1899(%rbp, 1)

popq %rbx


pushq %rbx
movq $3, %rbx


movq %rbx, -1907(%rbp, 1)

popq %rbx


movq -1907(%rbp, 1), %rcx


shlq %cl, -1899(%rbp, 1)



movq $.L51, %rdi


movq -1899(%rbp, 1), %rsi



call printf

movl %eax, -1911(%rbp, 1)






pushq %rbx
movq $240, %rbx


movq %rbx, -1919(%rbp, 1)

popq %rbx


pushq %rbx
movq $2, %rbx


movq %rbx, -1927(%rbp, 1)

popq %rbx


movq -1927(%rbp, 1), %rcx


shrq %cl, -1919(%rbp, 1)



movq $.L52, %rdi


movq -1919(%rbp, 1), %rsi



call printf

movl %eax, -1931(%rbp, 1)





._main:
movq %rbp, %rsp

popq %rbp

ret




.data
































































.L1: .byte 120, 32, 98, 101, 102, 111, 114, 101, 32, 116, 104, 101, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 115, 32, 58, 32, 37, 108, 108, 120, 10, 0



































































.L2: .byte 120, 32, 97, 102, 116, 101, 114, 32, 116, 104, 101, 32, 111, 112, 101, 114, 97, 116, 105, 111, 110, 115, 32, 58, 32, 37, 108, 108, 120, 10, 0









.L3: .byte 37, 120, 10, 0











.L4: .byte 37, 120, 10, 0
























.L5: .byte 104, 101, 108, 108, 111, 44, 32, 10, 0






















































.L8: .byte 104, 101, 108, 105, 111, 33, 0










.L9: .byte 104, 101, 108, 108, 111, 33, 0












.L12: .byte 115, 116, 97, 116, 105, 99, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 115, 116, 97, 116, 105, 99, 33, 10, 0











.L14: .byte 104, 101, 108, 105, 111, 33, 0
















.L16: .byte 100, 121, 110, 97, 109, 105, 99, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 115, 116, 97, 116, 105, 99, 33, 10, 0























.L19: .byte 100, 121, 110, 97, 109, 105, 99, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 100, 121, 110, 97, 109, 105, 99, 33, 10, 0































.L21: .byte 104, 101, 121, 33, 0
































































.L22: .byte 104, 101, 121, 33, 0



















































































.L24: .byte 115, 116, 114, 117, 99, 116, 32, 105, 115, 32, 101, 113, 117, 97, 108, 32, 116, 111, 32, 115, 116, 114, 117, 99, 116, 33, 10, 0










.L26: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0



.L27: .byte 104, 101, 121, 32, 44, 32, 0









































.L28: .byte 104, 101, 121, 32, 44, 32, 0















































.L29: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0


.L30: .byte 104, 101, 121, 32, 44, 32, 0






































.L31: .byte 104, 101, 121, 32, 44, 32, 0













































.L32: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0


.L33: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0


.L34: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0











.L35: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0


.L36: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0


.L37: .byte 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 104, 101, 121, 33, 0











.L38: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0











































































.L43: .byte 37, 115, 32, 32, 32, 108, 101, 110, 32, 58, 32, 37, 100, 10, 0





















































































.L48: .byte 37, 104, 104, 120, 0























.L51: .byte 37, 108, 108, 120, 10, 0

















.L52: .byte 37, 108, 108, 120, 10, 0





















