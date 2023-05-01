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
	AST_FUNCTION_DEFINITION(uint64) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = read ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fd ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(*?) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buf ]
				AST_DATATYPE(*?) : [ int_value = 0, string_value = *? ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = count ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
		AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = open ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = pathname ]
				AST_DATATYPE(*uint8) : [ int_value = 0, string_value = *uint8 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = flags ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = mode ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION(uint32) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = flip32 ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = x ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
		AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
		AST_BODY(uint32) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = flipped ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL(uint32) : [ int_value = 0, string_value =  ]
			AST_OP_EBORI(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = flipped ]
				AST_OP_SHL(uint32) : 
					AST_EXPRESSION(uint32) : 
						AST_OP_BAND(uint32) : 
							AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = x ]
							AST_OP_SHL(uint32) : 
								AST_LITERAL(uint32) : [ int_value = 255, string_value =  ]
								AST_LITERAL(uint32) : [ int_value = 0, string_value =  ]
					AST_LITERAL(uint32) : [ int_value = 24, string_value =  ]
			AST_OP_EBORI(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = flipped ]
				AST_OP_SHL(uint32) : 
					AST_EXPRESSION(uint32) : 
						AST_OP_BAND(uint32) : 
							AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = x ]
							AST_OP_SHL(uint32) : 
								AST_LITERAL(uint32) : [ int_value = 255, string_value =  ]
								AST_LITERAL(uint32) : [ int_value = 8, string_value =  ]
					AST_LITERAL(uint32) : [ int_value = 8, string_value =  ]
			AST_OP_EBORI(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = flipped ]
				AST_OP_SHR(uint32) : 
					AST_EXPRESSION(uint32) : 
						AST_OP_BAND(uint32) : 
							AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = x ]
							AST_OP_SHL(uint32) : 
								AST_LITERAL(uint32) : [ int_value = 255, string_value =  ]
								AST_LITERAL(uint32) : [ int_value = 16, string_value =  ]
					AST_LITERAL(uint32) : [ int_value = 8, string_value =  ]
			AST_OP_EBORI(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = flipped ]
				AST_OP_SHR(uint32) : 
					AST_EXPRESSION(uint32) : 
						AST_OP_BAND(uint32) : 
							AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = x ]
							AST_OP_SHL(uint32) : 
								AST_LITERAL(uint32) : [ int_value = 255, string_value =  ]
								AST_LITERAL(uint32) : [ int_value = 24, string_value =  ]
					AST_LITERAL(uint32) : [ int_value = 24, string_value =  ]
			AST_RETURN(uint32) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = flipped ]
	AST_FUNCTION_DEFINITION([][784]uint8) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = read_dataset_image ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = filename ]
				AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
		AST_DATATYPE([][784]uint8) : [ int_value = 0, string_value = [][784]uint8 ]
		AST_BODY([][784]uint8) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fd ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = open ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = filename ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
					AST_LITERAL(uint32) : [ int_value = 0, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not opend file `%s`! ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = filename ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = magic_value ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = n ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_REFERENCE(*uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
				AST_FUNCTION_CALL(uint32) : [ int_value = 0, string_value = flip32 ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = magic number: %x
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = number_of_images ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_OP_ASN(uint64) : 
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_REFERENCE(*uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_images ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_images ]
				AST_FUNCTION_CALL(uint32) : [ int_value = 0, string_value = flip32 ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_images ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = number of images in set: %d
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_images ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = number_of_rows ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_OP_ASN(uint64) : 
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_REFERENCE(*uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
				AST_FUNCTION_CALL(uint32) : [ int_value = 0, string_value = flip32 ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = number of rows in set: %d
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = number_of_columns ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_OP_ASN(uint64) : 
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_REFERENCE(*uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
				AST_FUNCTION_CALL(uint32) : [ int_value = 0, string_value = flip32 ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = number of columns in set: %d
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = number_of_pixels ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_OP_MUL(uint32) : 
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_images ]
					AST_OP_MUL(uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = number of pixels in set: %d
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_pixels ]
			AST_VARIABLE_DEFINITION([][784]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = images ]
				AST_DATATYPE([][784]uint8) : [ int_value = 0, string_value = [][784]uint8 ]
				AST_FUNCTION_CALL([]?) : [ int_value = 0, string_value = allocate ]
					AST_CASTING(uint64) : 
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_pixels ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(uint32) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
						AST_LITERAL(uint32) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_images ]
				AST_FOR_UPDATE() : 
					AST_OP_INC(uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = i ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_OP_ASN(uint64) : 
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
						AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
							AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
							AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
								AST_OP_INDEX([784]uint8) : 
									AST_VARIABLE_NAME([][784]uint8) : [ int_value = 0, string_value = images ]
									AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = i ]
								AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
							AST_OP_MUL(uint64) : 
								AST_CASTING(uint64) : 
									AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
									AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
								AST_CASTING(uint64) : 
									AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
									AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
					AST_BODY_RESULT() : 
						AST_IF() : 
							AST_OP_LES(bool) : 
								AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
								AST_OP_MUL(uint64) : 
									AST_CASTING(uint64) : 
										AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
										AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_rows ]
									AST_CASTING(uint64) : 
										AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
										AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_columns ]
							AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
								AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
									AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
										AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
										AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
								AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_RETURN([][784]uint8) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME([][784]uint8) : [ int_value = 0, string_value = images ]
	AST_FUNCTION_DEFINITION([]uint8) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = read_dataset_label ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = filename ]
				AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
		AST_DATATYPE([]uint8) : [ int_value = 0, string_value = []uint8 ]
		AST_BODY([]uint8) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fd ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = open ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = filename ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
					AST_LITERAL(uint32) : [ int_value = 0, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not opend file `%s`! ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = filename ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = magic_value ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = n ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_REFERENCE(*uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
				AST_FUNCTION_CALL(uint32) : [ int_value = 0, string_value = flip32 ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = magic number: %x
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = magic_value ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = number_of_labels ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_OP_ASN(uint64) : 
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_REFERENCE(*uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_OP_ASN(uint32) : 
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
				AST_FUNCTION_CALL(uint32) : [ int_value = 0, string_value = flip32 ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = number of labels in set: %d
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
			AST_VARIABLE_DEFINITION([]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = labels ]
				AST_DATATYPE([]uint8) : [ int_value = 0, string_value = []uint8 ]
				AST_FUNCTION_CALL([]?) : [ int_value = 0, string_value = allocate ]
					AST_CASTING(uint64) : 
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
			AST_OP_ASN(uint64) : 
				AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
				AST_FUNCTION_CALL(uint64) : [ int_value = 0, string_value = read ]
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = fd ]
					AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
						AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = labels ]
						AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_CASTING(uint64) : 
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
			AST_IF() : 
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = n ]
					AST_CASTING(uint64) : 
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = number_of_labels ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: could not read file in memory!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_RETURN([]uint8) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = labels ]
	AST_FUNCTION_DEFINITION([][]uint32) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = matmul ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION([][]uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = a ]
				AST_DATATYPE([][]uint32) : [ int_value = 0, string_value = [][]uint32 ]
			AST_VARIABLE_DEFINITION([][]uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = b ]
				AST_DATATYPE([][]uint32) : [ int_value = 0, string_value = [][]uint32 ]
		AST_DATATYPE([][]uint32) : [ int_value = 0, string_value = [][]uint32 ]
		AST_BODY([][]uint32) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ah ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = a ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_IF() : 
				AST_OP_LOE(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = ah ]
					AST_LITERAL(uint64) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = aw ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_LITERAL(uint64) : [ int_value = 0, string_value =  ]
			AST_IF() : 
				AST_OP_LOE(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = aw ]
					AST_LITERAL(uint64) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bh ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = b ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ah ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = a ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_IF() : 
				AST_OP_LOE(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bh ]
					AST_LITERAL(uint64) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bw ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_LITERAL(uint64) : [ int_value = 0, string_value =  ]
			AST_IF() : 
				AST_OP_LOE(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bw ]
					AST_LITERAL(uint64) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_IF() : 
				AST_OP_NEQ(bool) : 
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = aw ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bh ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION([][]uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
				AST_DATATYPE([][]uint32) : [ int_value = 0, string_value = [][]uint32 ]
				AST_FUNCTION_CALL([]?) : [ int_value = 0, string_value = allocate ]
					AST_OP_MUL(uint64) : 
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = ah ]
						AST_OP_MUL(uint64) : 
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = bw ]
							AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(int32) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
						AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
					AST_CASTING(int32) : 
						AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = ah ]
				AST_FOR_UPDATE() : 
					AST_OP_INC(int32) : 
						AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int32) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
								AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
								AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = j ]
							AST_CASTING(int32) : 
								AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
								AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = aw ]
						AST_FOR_UPDATE() : 
							AST_OP_INC(int32) : 
								AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = j ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_FOR : 
								AST_FOR_INIT() : 
									AST_VARIABLE_DEFINITION(int32) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = k ]
										AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
										AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
								AST_OP_LES(bool) : 
									AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = k ]
									AST_CASTING(int32) : 
										AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
										AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = aw ]
								AST_FOR_UPDATE() : 
									AST_OP_INC(int32) : 
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = k ]
								AST_BODY() | ASTO_BODY_FOR : 
									AST_OP_ESUM(uint32) : 
										AST_OP_INDEX(uint32) : 
											AST_OP_INDEX([]uint32) : 
												AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = c ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = j ]
										AST_OP_MUL(uint32) : 
											AST_OP_INDEX(uint32) : 
												AST_OP_INDEX([]uint32) : 
													AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = a ]
													AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = k ]
											AST_OP_INDEX(uint32) : 
												AST_OP_INDEX([]uint32) : 
													AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = b ]
													AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = k ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = j ]
			AST_RETURN([][]uint32) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME([][]uint32) : [ int_value = 0, string_value = c ]
	AST_STRUCT_DEFINITION(Neuron) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = Neuron ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION([784]uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = weights ]
				AST_DATATYPE([784]uint32) : [ int_value = 0, string_value = [784]uint32 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = bias ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
	AST_FUNCTION_DEFINITION([][10]Neuron) : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = nn ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = levels ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
		AST_DATATYPE([][10]Neuron) : [ int_value = 0, string_value = [][10]Neuron ]
		AST_BODY([][10]Neuron) | ASTO_BODY_FUNCTION | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION([][10]Neuron) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = network ]
				AST_DATATYPE([][10]Neuron) : [ int_value = 0, string_value = [][10]Neuron ]
				AST_FUNCTION_CALL([]?) : [ int_value = 0, string_value = allocate ]
					AST_OP_MUL(uint64) : 
						AST_CASTING(uint64) : 
							AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
							AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = levels ]
						AST_OP_MUL(uint64) : 
							AST_LITERAL(uint64) : [ int_value = 10, string_value =  ]
							AST_OP_MUL(uint64) : 
								AST_LITERAL(uint64) : [ int_value = 785, string_value =  ]
								AST_LITERAL(uint64) : [ int_value = 4, string_value =  ]
			AST_RETURN([][10]Neuron) | ASTO_ALWAYS_RETURNS : 
				AST_VARIABLE_NAME([][10]Neuron) : [ int_value = 0, string_value = network ]
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = forward ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION([][10]Neuron) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = net ]
				AST_DATATYPE([][10]Neuron) : [ int_value = 0, string_value = [][10]Neuron ]
			AST_VARIABLE_DEFINITION([748]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = x ]
				AST_DATATYPE([748]uint8) : [ int_value = 0, string_value = [748]uint8 ]
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION([10]Neuron) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = first_layer ]
				AST_DATATYPE([10]Neuron) : [ int_value = 0, string_value = [10]Neuron ]
				AST_OP_INDEX([10]Neuron) : 
					AST_VARIABLE_NAME([][10]Neuron) : [ int_value = 0, string_value = net ]
					AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION([10]uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = first_layer_out ]
				AST_DATATYPE([10]uint32) : [ int_value = 0, string_value = [10]uint32 ]
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION([][784]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = image_set ]
				AST_DATATYPE([][784]uint8) : [ int_value = 0, string_value = [][784]uint8 ]
				AST_FUNCTION_CALL([][784]uint8) : [ int_value = 0, string_value = read_dataset_image ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = ./examples/softmax_mcnn/train-images-idx3-ubyte ]
			AST_VARIABLE_DEFINITION([]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = label_set ]
				AST_DATATYPE([]uint8) : [ int_value = 0, string_value = []uint8 ]
				AST_FUNCTION_CALL([]uint8) : [ int_value = 0, string_value = read_dataset_label ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = ./examples/softmax_mcnn/train-labels-idx1-ubyte ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = %lld
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME([][784]uint8) : [ int_value = 0, string_value = image_set ]
					AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_VARIABLE_DEFINITION([][10]Neuron) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = neural_network ]
				AST_DATATYPE([][10]Neuron) : [ int_value = 0, string_value = [][10]Neuron ]
				AST_FUNCTION_CALL([][10]Neuron) : [ int_value = 0, string_value = nn ]
					AST_LITERAL(uint32) : [ int_value = 1, string_value =  ]
new dynamic array of  ?
new dynamic array of  ?
new dynamic array of  ?
new dynamic array of  ?
new dynamic array of  [784]uint8
new dynamic array of  [784]uint8
new dynamic array of  uint8
new dynamic array of  uint8
new dynamic array of  []uint32
new dynamic array of  []uint32
new dynamic array of  []uint32
codegen error: undefined `len`
new dynamic array of  []uint32
new dynamic array of  [10]Neuron
new dynamic array of  [10]Neuron
new dynamic array of  [10]Neuron
new dynamic array of  [784]uint8
new dynamic array of  uint8
codegen error: undefined `len`
new dynamic array of  [10]Neuron
