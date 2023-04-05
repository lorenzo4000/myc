AST_HEAD : 
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = abort ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = abs ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = atexit ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = atoi ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = atol ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = exit ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = free ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION(int64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = labs ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = mblen ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = mbtowc ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = qsort ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = rand ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = rand_r ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = srand ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION(uint64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = strtoul ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
	AST_FUNCTION_DEFINITION(int64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = strtol ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = system ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = wctomb ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = mbstowcs ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION(int64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = wcstombs ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION(*int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = putenv ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*int32) : [ int_value = 0, string_value = *int32 ]
	AST_FUNCTION_DEFINITION(*int8) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = getenv ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*int8) : [ int_value = 0, string_value = *int8 ]
	AST_FUNCTION_DEFINITION(*?) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = malloc ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*?) : [ int_value = 0, string_value = *? ]
	AST_FUNCTION_DEFINITION(*?) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = realloc ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*?) : [ int_value = 0, string_value = *? ]
	AST_FUNCTION_DEFINITION(*?) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = calloc ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*?) : [ int_value = 0, string_value = *? ]
	AST_FUNCTION_DEFINITION([]?) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = allocate ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bytes ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
		AST_DATATYPE([]?) : [ int_value = 0, string_value = []? ]
		AST_BODY([]?) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION([]?) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = array ]
				AST_DATATYPE([]?) : [ int_value = 0, string_value = []? ]
			AST_OP_ASN(*?) : 
				AST_OP_DOT(*?) : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME(*?) : [ int_value = 0, string_value = data ]
				AST_FUNCTION_CALL(*?) : [ int_value = 0, string_value = malloc ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bytes ]
			AST_OP_ASN(uint64) : 
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bytes ]
			AST_RETURN([]?) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
	AST_FUNCTION_DEFINITION([]?) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = resize ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION([]?) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = array ]
				AST_DATATYPE([]?) : [ int_value = 0, string_value = []? ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bytes ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
		AST_DATATYPE([]?) : [ int_value = 0, string_value = []? ]
		AST_BODY([]?) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(*?) : 
				AST_OP_DOT(*?) : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME(*?) : [ int_value = 0, string_value = data ]
				AST_FUNCTION_CALL(*?) : [ int_value = 0, string_value = realloc ]
					AST_OP_DOT(*?) : [ int_value = 0, string_value = data ]
						AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
						AST_VARIABLE_NAME(*?) : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bytes ]
			AST_OP_ASN(uint64) : 
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bytes ]
			AST_RETURN([]?) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME([]?) : [ int_value = 0, string_value = array ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = getchar ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(*int8) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = gets ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*int8) : [ int_value = 0, string_value = *int8 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = perror ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = printf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = putchar ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = puts ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = remove ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = rename ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = scanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = snprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(*int8) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = tmpnam ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(*int8) : [ int_value = 0, string_value = *int8 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vsprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vsnprintf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vsscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vswscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = vwscanf ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(int64) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sum ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION([]int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = in ]
				AST_DATATYPE([]int64) : [ int_value = 0, string_value = []int64 ]
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
		AST_BODY(int64) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = res ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = length ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_OP_DIV(int64) : 
					AST_CASTING(int64) : 
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
							AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = in ]
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
					AST_LITERAL(int64) : [ int_value = 8, string_value =  ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(int64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = length ]
				AST_FOR_UPDATE() : 
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_OP_SUM(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_LITERAL() : [ int_value = 0, string_value = heeeyy  : %d\n ]
						AST_OP_INDEX(int64) : 
							AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = in ]
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = res ]
						AST_OP_SUM(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = res ]
							AST_OP_INDEX(int64) : 
								AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = in ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
			AST_RETURN(int64) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = res ]
	AST_FUNCTION_DEFINITION(int64) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sum_20 ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION([20]int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = in ]
				AST_DATATYPE([20]int64) : [ int_value = 0, string_value = [20]int64 ]
		AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
		AST_BODY(int64) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = res ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = length ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int64) : [ int_value = 20, string_value =  ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(int64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = length ]
				AST_FOR_UPDATE() : 
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_OP_SUM(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_LITERAL() : [ int_value = 0, string_value = heeeyy  : %d\n ]
						AST_OP_INDEX(int64) : 
							AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = in ]
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = res ]
						AST_OP_SUM(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = res ]
							AST_OP_INDEX(int64) : 
								AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = in ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
			AST_RETURN(int64) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = res ]
	AST_STRUCT_DEFINITION(Test) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = Test ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = field ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION(Test) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = static_struct ]
				AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
				AST_COMPOSITE_LITERAL(Test) : 
					AST_DATATYPE(Test) : [ int_value = 0, string_value = Test ]
					AST_LITERAL(int64) : [ int_value = 54, string_value =  ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = %d\n ]
				AST_OP_DOT(int64) : [ int_value = 0, string_value = field ]
					AST_VARIABLE_NAME(Test) : [ int_value = 0, string_value = static_struct ]
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = field ]
			AST_VARIABLE_DEFINITION([20]int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = static_array ]
				AST_DATATYPE([20]int64) : [ int_value = 0, string_value = [20]int64 ]
				AST_COMPOSITE_LITERAL([20]int64) : 
					AST_DATATYPE([20]int64) : [ int_value = 0, string_value = [20]int64 ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
					AST_LITERAL(int64) : [ int_value = 10, string_value =  ]
			AST_VARIABLE_DEFINITION([]int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = dynamic_array ]
				AST_DATATYPE([]int64) : [ int_value = 0, string_value = []int64 ]
			AST_OP_ASN([]int64) : 
				AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = dynamic_array ]
				AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = static_array ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = new .data -> %d\n ]
				AST_OP_DOT(*int64) : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = dynamic_array ]
					AST_VARIABLE_NAME(*int64) : [ int_value = 0, string_value = data ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = new .len -> %d\n ]
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = dynamic_array ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_BODY() : 
				AST_FOR : 
					AST_FOR_INIT() : 
						AST_VARIABLE_DEFINITION(int64) : 
							AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
							AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
							AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
					AST_OP_LES(bool) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_LITERAL(int64) : [ int_value = 20, string_value =  ]
					AST_FOR_UPDATE() : 
						AST_OP_ASN(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_OP_SUM(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
								AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
					AST_BODY() | ASTO_BODY_FOR : 
						AST_OP_ASN(int64) : 
							AST_OP_INDEX(int64) : 
								AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = static_array ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_OP_SUM(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
								AST_LITERAL(int64) : [ int_value = 2456, string_value =  ]
				AST_FOR : 
					AST_FOR_INIT() : 
						AST_VARIABLE_DEFINITION(int64) : 
							AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
							AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
							AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
					AST_OP_LES(bool) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
						AST_LITERAL(int64) : [ int_value = 20, string_value =  ]
					AST_FOR_UPDATE() : 
						AST_OP_ASN(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
							AST_OP_SUM(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
								AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
					AST_BODY() | ASTO_BODY_FOR : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
							AST_LITERAL() : [ int_value = 0, string_value = STATIC %d : %d\n ]
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
							AST_OP_INDEX(int64) : 
								AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = static_array ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
				AST_FOR : 
					AST_FOR_INIT() : 
						AST_VARIABLE_DEFINITION(int64) : 
							AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = k ]
							AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
							AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
					AST_OP_LES(bool) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = k ]
						AST_LITERAL(int64) : [ int_value = 20, string_value =  ]
					AST_FOR_UPDATE() : 
						AST_OP_ASN(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = k ]
							AST_OP_SUM(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = k ]
								AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
					AST_BODY() | ASTO_BODY_FOR : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
							AST_LITERAL() : [ int_value = 0, string_value = DYNAMIC asdas %d : %d\n ]
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = k ]
							AST_OP_INDEX(int64) : 
								AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = dynamic_array ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = k ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = ----------------------------------\n ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = sum(static_array) = %d\n ]
				AST_FUNCTION_CALL(int64) : [ int_value = 0, string_value = sum ]
					AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = static_array ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = sum(dynamic_array) = %d\n ]
				AST_FUNCTION_CALL(int64) : [ int_value = 0, string_value = sum ]
					AST_VARIABLE_NAME([]int64) : [ int_value = 0, string_value = dynamic_array ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_LITERAL() : [ int_value = 0, string_value = sum_20(static_array) = %d\n ]
				AST_FUNCTION_CALL(int64) : [ int_value = 0, string_value = sum_20 ]
					AST_VARIABLE_NAME([20]int64) : [ int_value = 0, string_value = static_array ]
