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
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = abort ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = abs ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = atexit ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = atoi ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = atol ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = exit ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = free ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = labs ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = mblen ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = mbtowc ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = qsort ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = rand ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = rand_r ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = srand ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = strtoul ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = strtol ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = system ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = wctomb ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = mbstowcs ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = wcstombs ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = putenv ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = *int32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = getenv ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = *int8 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = malloc ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = *? ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = realloc ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = *? ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = calloc ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : [ int_value = 0, string_value = *? ]
	AST_FUNCTION_DEFINITION : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = allocate ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = bytes ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
		AST_DATATYPE : [ int_value = 0, string_value = []? ]
		AST_BODY | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = array ]
				AST_DATATYPE : [ int_value = 0, string_value = []? ]
			AST_OP_ASN : 
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_FUNCTION_CALL : [ int_value = 0, string_value = malloc ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
			AST_OP_ASN : 
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
			AST_RETURN : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_FUNCTION_DEFINITION : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = resize ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = array ]
				AST_DATATYPE : [ int_value = 0, string_value = []? ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = bytes ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
		AST_DATATYPE : [ int_value = 0, string_value = []? ]
		AST_BODY | ASTO_BODY_FUNCTION : 
			AST_OP_ASN : 
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
				AST_FUNCTION_CALL : [ int_value = 0, string_value = realloc ]
					AST_OP_DOT : [ int_value = 0, string_value = data ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
			AST_OP_ASN : 
				AST_OP_DOT : [ int_value = 0, string_value = len ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
			AST_RETURN : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_STRUCT_DEFINITION : 
		AST_STRUCT_DEFINITION_NAME : [ int_value = 0, string_value = pollfd ]
		AST_STRUCT_DEFINITION_BODY : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = fd ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = events ]
				AST_DATATYPE : [ int_value = 0, string_value = int16 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = revents ]
				AST_DATATYPE : [ int_value = 0, string_value = int16 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = poll ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = fds ]
				AST_DATATYPE : [ int_value = 0, string_value = *pollfd ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = nfds ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = timeout ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = read ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = fd ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buf ]
				AST_DATATYPE : [ int_value = 0, string_value = *? ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = count ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = sleep ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = seconds ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
		AST_DATATYPE : 
	AST_STRUCT_DEFINITION : 
		AST_STRUCT_DEFINITION_NAME : [ int_value = 0, string_value = termios ]
		AST_STRUCT_DEFINITION_BODY : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_iflag ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_oflag ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_cflag ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_lflag ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_line ]
				AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_cc ]
				AST_DATATYPE : [ int_value = 0, string_value = [32]uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_ispeed ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c_ospeed ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = tcgetattr ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = fd ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = __termios_p ]
				AST_DATATYPE : [ int_value = 0, string_value = *termios ]
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = tcsetattr ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = fd ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = __optional_actions ]
				AST_DATATYPE : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = __termios_p ]
				AST_DATATYPE : [ int_value = 0, string_value = *termios ]
		AST_DATATYPE : 
	AST_FUNCTION_DEFINITION : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = render ]
		AST_FUNCTION_DEFINITION_ARGS : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = screen ]
				AST_DATATYPE : [ int_value = 0, string_value = [][30]uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = rainbow ]
				AST_DATATYPE : [ int_value = 0, string_value = bool ]
		AST_DATATYPE : 
		AST_BODY | ASTO_BODY_FUNCTION : 
			AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
				AST_OP_DOT : [ int_value = 0, string_value = data ]
					AST_LITERAL : [ int_value = 0, string_value = [2J ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = color_k ]
				AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = color_v ]
				AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = screen_size ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_OP_DIV : 
					AST_CASTING : 
						AST_DATATYPE : [ int_value = 0, string_value = int64 ]
						AST_OP_DOT : [ int_value = 0, string_value = len ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
					AST_LITERAL : [ int_value = 30, string_value =  ]
			AST_FOR : 
				AST_FOR_INIT : 
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = i ]
						AST_DATATYPE : [ int_value = 0, string_value = int64 ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_OP_LES : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_size ]
				AST_FOR_UPDATE : 
					AST_OP_ESUM : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
						AST_LITERAL : [ int_value = 1, string_value =  ]
				AST_BODY | ASTO_BODY_FOR : 
					AST_FOR : 
						AST_FOR_INIT : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = j ]
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
						AST_OP_LES : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
							AST_CASTING : 
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_OP_DOT : [ int_value = 0, string_value = len ]
									AST_OP_INDEX : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
						AST_FOR_UPDATE : 
							AST_OP_ASN : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
								AST_OP_SUM : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
									AST_LITERAL : [ int_value = 1, string_value =  ]
						AST_BODY | ASTO_BODY_FOR : 
							AST_IF : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = rainbow ]
								AST_BODY | ASTO_BODY_IF : 
									AST_IF : 
										AST_OP_GOE : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
											AST_LITERAL : [ int_value = 6, string_value =  ]
										AST_BODY | ASTO_BODY_IF : 
											AST_OP_ASN : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
												AST_LITERAL : [ int_value = 0, string_value =  ]
											AST_OP_ASN : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
												AST_OP_SUM : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
													AST_LITERAL : [ int_value = 1, string_value =  ]
									AST_IF : 
										AST_OP_GOE : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
											AST_LITERAL : [ int_value = 4, string_value =  ]
										AST_BODY | ASTO_BODY_IF : 
											AST_OP_ASN : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
												AST_LITERAL : [ int_value = 0, string_value =  ]
									AST_VARIABLE_DEFINITION : 
										AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = color ]
										AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
										AST_OP_SUM : 
											AST_LITERAL : [ int_value = 46, string_value =  ]
											AST_OP_SUM : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
												AST_OP_MUL : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
													AST_OP_MUL : 
														AST_LITERAL : [ int_value = 6, string_value =  ]
														AST_LITERAL : [ int_value = 6, string_value =  ]
									AST_OP_ASN : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
										AST_OP_SUM : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
											AST_LITERAL : [ int_value = 1, string_value =  ]
									AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
										AST_OP_DOT : [ int_value = 0, string_value = data ]
											AST_LITERAL : [ int_value = 0, string_value = [1m ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
									AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
										AST_OP_DOT : [ int_value = 0, string_value = data ]
											AST_LITERAL : [ int_value = 0, string_value = [38:5:%hhdm ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = color ]
							AST_FUNCTION_CALL : [ int_value = 0, string_value = putchar ]
								AST_OP_INDEX : 
									AST_OP_INDEX : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
							AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
								AST_OP_DOT : [ int_value = 0, string_value = data ]
									AST_LITERAL : [ int_value = 0, string_value = [0m ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
					AST_FUNCTION_CALL : [ int_value = 0, string_value = putchar ]
						AST_LITERAL : [ int_value = 10, string_value =  ]
	AST_FUNCTION_DEFINITION : 
		AST_FUNCTION_DEFINITION_NAME : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS : 
		AST_DATATYPE : 
		AST_BODY | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = impiccatos ]
				AST_DATATYPE : [ int_value = 0, string_value = [8][10]string ]
				AST_COMPOSITE_LITERAL : 
					AST_DATATYPE : [ int_value = 0, string_value = [8][10]string ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL : [ int_value = 0, string_value =             X        |         ]
						AST_LITERAL : [ int_value = 0, string_value =            / \       |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL : [ int_value = 0, string_value =             X        |         ]
						AST_LITERAL : [ int_value = 0, string_value =              \       |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL : [ int_value = 0, string_value =             X        |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =             |\       |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =             |        |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
						AST_LITERAL : [ int_value = 0, string_value =                                ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = win_screen ]
				AST_DATATYPE : [ int_value = 0, string_value = [4][10]string ]
				AST_COMPOSITE_LITERAL : 
					AST_DATATYPE : [ int_value = 0, string_value = [4][10]string ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\    ^   ==/// == \|\ ==| ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\ ==/\ ==/|||  ==||\\ =|     ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\=/  \=/ |||  ==|| \\=| \/  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\/    v   \\ == /|  \\| /\  ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\    ^   ==/ == \|\ ==| ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\ ==/\ ==/|  ==||\\ =|     ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\=/  \=/ |  ==|| \\=| \/  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\/    v \\ == /|  \\| /\  ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\    ^   ==//// == \\ ==| ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\ ==/\ ==/|||| ===|\\ =|     ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\=/  \=/ |||| ===| \\=| \/  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\/    v   \\\ == /  \\| /\  ]
					AST_COMPOSITE_LITERAL : 
						AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\    ^   ==/// == \||\\ ==||  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\ ==/\ ==/|||  ==|||\\\ =|   ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\=/  \=/ |||  ==||| \\\=|/  ]
						AST_LITERAL : [ int_value = 0, string_value = \\\\/    v   \\ == /||  \\\|\  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = current_termios ]
				AST_DATATYPE : [ int_value = 0, string_value = termios ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = tcgetattr ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = current_termios ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = new_termios ]
				AST_DATATYPE : [ int_value = 0, string_value = termios ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = current_termios ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = ICANON ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL : [ int_value = 2, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = ECHO ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL : [ int_value = 8, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = new_flags ]
				AST_DATATYPE : [ int_value = 0, string_value = uint32 ]
				AST_OP_BORI : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = ICANON ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = ECHO ]
			AST_OP_ASN : 
				AST_OP_DOT : [ int_value = 0, string_value = c_lflag ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
				AST_OP_BAND : 
					AST_OP_DOT : [ int_value = 0, string_value = c_lflag ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
					AST_OP_BNOT : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = new_flags ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = tcsetattr ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = word_input ]
				AST_DATATYPE : [ int_value = 0, string_value = [30]uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = word_len ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_WHILE : 
				AST_OP_OR : 
					AST_OP_GRT : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
						AST_LITERAL : [ int_value = 30, string_value =  ]
					AST_OP_LOE : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_BODY | ASTO_BODY_WHILE : 
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buf ]
						AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
					AST_OP_ASN : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
					AST_WHILE : 
						AST_OP_NEQ : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
							AST_LITERAL : [ int_value = 10, string_value =  ]
						AST_BODY | ASTO_BODY_WHILE : 
							AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
								AST_OP_DOT : [ int_value = 0, string_value = data ]
									AST_LITERAL : [ int_value = 0, string_value = [2J ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
							AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
								AST_OP_DOT : [ int_value = 0, string_value = data ]
									AST_LITERAL : [ int_value = 0, string_value = Choose a word and type it, then press enter.
Don't worry, it's not gonna be visible!
reading %d/%d
 ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
								AST_OP_DOT : [ int_value = 0, string_value = len ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
							AST_FUNCTION_CALL : [ int_value = 0, string_value = read ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
								AST_OP_REFERENCE : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
								AST_LITERAL : [ int_value = 8, string_value =  ]
							AST_BODY_RESULT : 
								AST_IF : 
									AST_OP_AND : 
										AST_OP_LOE : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
											AST_LITERAL : [ int_value = 122, string_value =  ]
										AST_OP_GOE : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
											AST_LITERAL : [ int_value = 97, string_value =  ]
									AST_BODY | ASTO_BODY_IF : 
										AST_OP_ASN : 
											AST_OP_INDEX : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
												AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
											AST_CASTING : 
												AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
												AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
										AST_OP_ASN : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
											AST_OP_SUM : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
												AST_LITERAL : [ int_value = 1, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = word ]
				AST_DATATYPE : [ int_value = 0, string_value = []uint8 ]
				AST_FUNCTION_CALL : [ int_value = 0, string_value = allocate ]
					AST_CASTING : 
						AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
			AST_FOR : 
				AST_FOR_INIT : 
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = i ]
						AST_DATATYPE : [ int_value = 0, string_value = int64 ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_OP_LES : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
				AST_FOR_UPDATE : 
					AST_OP_ASN : 
						AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
						AST_OP_SUM : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
							AST_LITERAL : [ int_value = 1, string_value =  ]
				AST_BODY | ASTO_BODY_FOR : 
					AST_OP_ASN : 
						AST_OP_INDEX : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
						AST_OP_INDEX : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = screen ]
				AST_DATATYPE : [ int_value = 0, string_value = [10][30]uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = impiccato_status ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_IF : 
				AST_OP_GRT : 
					AST_OP_DOT : [ int_value = 0, string_value = len ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
					AST_OP_DOT : [ int_value = 0, string_value = len ]
						AST_OP_INDEX : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
							AST_LITERAL : [ int_value = 0, string_value =  ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
				AST_BODY | ASTO_BODY_IF : 
					AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
						AST_OP_DOT : [ int_value = 0, string_value = data ]
							AST_LITERAL : [ int_value = 0, string_value = error: word is too big for the screen width!
 ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
					AST_RETURN : 
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = word_x ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
				AST_OP_SUB : 
					AST_OP_DIV : 
						AST_OP_DOT : [ int_value = 0, string_value = len ]
							AST_OP_INDEX : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
						AST_CASTING : 
							AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
							AST_LITERAL : [ int_value = 2, string_value =  ]
					AST_OP_DIV : 
						AST_OP_DOT : [ int_value = 0, string_value = len ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
						AST_CASTING : 
							AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
							AST_LITERAL : [ int_value = 2, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = word_y ]
				AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
				AST_LITERAL : [ int_value = 8, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = tried_letters ]
				AST_DATATYPE : [ int_value = 0, string_value = [8]uint8 ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = found ]
				AST_DATATYPE : [ int_value = 0, string_value = []bool ]
				AST_FUNCTION_CALL : [ int_value = 0, string_value = allocate ]
					AST_OP_DOT : [ int_value = 0, string_value = len ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = found_count ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION : 
				AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = game_status ]
				AST_DATATYPE : [ int_value = 0, string_value = int64 ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_WHILE : 
				AST_LITERAL : [ int_value = 1, string_value = true ]
				AST_BODY | ASTO_BODY_WHILE : 
					AST_FOR : 
						AST_FOR_INIT : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = i ]
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
						AST_OP_LES : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
							AST_LITERAL : [ int_value = 10, string_value =  ]
						AST_FOR_UPDATE : 
							AST_OP_ASN : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
								AST_OP_SUM : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_LITERAL : [ int_value = 1, string_value =  ]
						AST_BODY | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = line ]
								AST_DATATYPE : [ int_value = 0, string_value = string ]
								AST_OP_INDEX : 
									AST_OP_INDEX : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccatos ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
							AST_FOR : 
								AST_FOR_INIT : 
									AST_VARIABLE_DEFINITION : 
										AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = j ]
										AST_DATATYPE : [ int_value = 0, string_value = int64 ]
										AST_LITERAL : [ int_value = 0, string_value =  ]
								AST_OP_LES : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
									AST_LITERAL : [ int_value = 30, string_value =  ]
								AST_FOR_UPDATE : 
									AST_OP_ASN : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
										AST_OP_SUM : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
											AST_LITERAL : [ int_value = 1, string_value =  ]
								AST_BODY | ASTO_BODY_FOR : 
									AST_OP_ASN : 
										AST_OP_INDEX : 
											AST_OP_INDEX : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
										AST_OP_INDEX : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = line ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
					AST_FOR : 
						AST_FOR_INIT : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = i ]
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
						AST_OP_LES : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
							AST_LITERAL : [ int_value = 8, string_value =  ]
						AST_FOR_UPDATE : 
							AST_OP_ASN : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
								AST_OP_SUM : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_LITERAL : [ int_value = 1, string_value =  ]
						AST_BODY | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c ]
								AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
								AST_OP_INDEX : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
							AST_OP_ASN : 
								AST_OP_INDEX : 
									AST_OP_INDEX : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
										AST_LITERAL : [ int_value = 9, string_value =  ]
									AST_OP_SUM : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
										AST_OP_SUB : 
											AST_LITERAL : [ int_value = 15, string_value =  ]
											AST_LITERAL : [ int_value = 4, string_value =  ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
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
									AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
						AST_FOR_UPDATE : 
							AST_OP_ASN : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
								AST_OP_SUM : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_LITERAL : [ int_value = 1, string_value =  ]
						AST_BODY | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = letter ]
								AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
								AST_OP_INDEX : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = screen_x ]
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_OP_SUM : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_CASTING : 
										AST_DATATYPE : [ int_value = 0, string_value = int64 ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = word_x ]
							AST_BODY_RESULT : 
								AST_IF : 
									AST_OP_INDEX : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_BODY | ASTO_BODY_IF : 
										AST_OP_ASN : 
											AST_OP_INDEX : 
												AST_OP_INDEX : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
													AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
												AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = letter ]
									AST_BODY | ASTO_BODY_ELSE : 
										AST_OP_ASN : 
											AST_OP_INDEX : 
												AST_OP_INDEX : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
													AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
												AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
											AST_CASTING : 
												AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
												AST_LITERAL : [ int_value = 35, string_value =  ]
					AST_FUNCTION_CALL : [ int_value = 0, string_value = render ]
						AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
						AST_LITERAL : [ int_value = 0, string_value = false ]
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = buf ]
						AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
					AST_FUNCTION_CALL : [ int_value = 0, string_value = read ]
						AST_LITERAL : [ int_value = 0, string_value =  ]
						AST_OP_REFERENCE : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
						AST_LITERAL : [ int_value = 8, string_value =  ]
					AST_IF : 
						AST_OP_EQU : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
							AST_LITERAL : [ int_value = 27, string_value =  ]
						AST_BODY | ASTO_BODY_IF : 
							AST_JUMP : [ int_value = 0, string_value = game_end ]
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c ]
						AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
						AST_CASTING : 
							AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
							AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
					AST_IF : 
						AST_OP_AND : 
							AST_OP_LOE : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
								AST_LITERAL : [ int_value = 122, string_value =  ]
							AST_OP_GOE : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
								AST_LITERAL : [ int_value = 97, string_value =  ]
						AST_BODY | ASTO_BODY_IF : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = current_count ]
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
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
											AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
								AST_FOR_UPDATE : 
									AST_OP_ASN : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
										AST_OP_SUM : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
											AST_LITERAL : [ int_value = 1, string_value =  ]
								AST_BODY | ASTO_BODY_FOR : 
									AST_BODY_RESULT : 
										AST_IF : 
											AST_OP_AND : 
												AST_OP_EQU : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
													AST_OP_INDEX : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
												AST_OP_NOT : 
													AST_OP_INDEX : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
											AST_BODY | ASTO_BODY_IF : 
												AST_OP_ASN : 
													AST_OP_INDEX : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
													AST_LITERAL : [ int_value = 1, string_value = true ]
												AST_OP_ASN : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
													AST_OP_SUM : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
														AST_LITERAL : [ int_value = 1, string_value =  ]
							AST_BODY_RESULT : 
								AST_IF : 
									AST_OP_EQU : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
										AST_VARIABLE_NAME : [ int_value = 0, string_value = current_count ]
									AST_BODY | ASTO_BODY_IF : 
										AST_VARIABLE_DEFINITION : 
											AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = care ]
											AST_DATATYPE : [ int_value = 0, string_value = bool ]
											AST_LITERAL : [ int_value = 1, string_value = true ]
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
														AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
											AST_FOR_UPDATE : 
												AST_OP_ASN : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
													AST_OP_SUM : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
														AST_LITERAL : [ int_value = 1, string_value =  ]
											AST_BODY | ASTO_BODY_FOR : 
												AST_BODY_RESULT : 
													AST_IF : 
														AST_OP_AND : 
															AST_OP_EQU : 
																AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
																AST_OP_INDEX : 
																	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
																	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
															AST_OP_INDEX : 
																AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
																AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
														AST_BODY | ASTO_BODY_IF : 
															AST_OP_ASN : 
																AST_VARIABLE_NAME : [ int_value = 0, string_value = care ]
																AST_LITERAL : [ int_value = 0, string_value = false ]
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
														AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
											AST_FOR_UPDATE : 
												AST_OP_ASN : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
													AST_OP_SUM : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
														AST_LITERAL : [ int_value = 1, string_value =  ]
											AST_BODY | ASTO_BODY_FOR : 
												AST_BODY_RESULT : 
													AST_IF : 
														AST_OP_EQU : 
															AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
															AST_OP_INDEX : 
																AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
																AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
														AST_BODY | ASTO_BODY_IF : 
															AST_OP_ASN : 
																AST_VARIABLE_NAME : [ int_value = 0, string_value = care ]
																AST_LITERAL : [ int_value = 0, string_value = false ]
										AST_BODY_RESULT : 
											AST_IF : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = care ]
												AST_BODY | ASTO_BODY_IF : 
													AST_OP_ASN : 
														AST_OP_INDEX : 
															AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
															AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
													AST_OP_ASN : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
														AST_OP_SUM : 
															AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
															AST_LITERAL : [ int_value = 1, string_value =  ]
					AST_IF : 
						AST_OP_GOE : 
							AST_CASTING : 
								AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
							AST_OP_DOT : [ int_value = 0, string_value = len ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
						AST_BODY | ASTO_BODY_IF : 
							AST_JUMP : [ int_value = 0, string_value = game_win ]
					AST_BODY_RESULT : 
						AST_IF : 
							AST_OP_GOE : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
								AST_LITERAL : [ int_value = 8, string_value =  ]
							AST_BODY | ASTO_BODY_IF : 
								AST_JUMP : [ int_value = 0, string_value = game_lose ]
			AST_LABEL : [ int_value = 0, string_value = game_win ]
			AST_WHILE : 
				AST_LITERAL : [ int_value = 1, string_value = true ]
				AST_BODY | ASTO_BODY_WHILE : 
					AST_VARIABLE_DEFINITION : 
						AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = poll_struct ]
						AST_DATATYPE : [ int_value = 0, string_value = pollfd ]
						AST_COMPOSITE_LITERAL : 
							AST_DATATYPE : [ int_value = 0, string_value = pollfd ]
							AST_CASTING : 
								AST_DATATYPE : [ int_value = 0, string_value = int32 ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
							AST_CASTING : 
								AST_DATATYPE : [ int_value = 0, string_value = int16 ]
								AST_LITERAL : [ int_value = 1, string_value =  ]
							AST_CASTING : 
								AST_DATATYPE : [ int_value = 0, string_value = int16 ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
					AST_FOR : 
						AST_FOR_INIT : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = f ]
								AST_DATATYPE : [ int_value = 0, string_value = int64 ]
								AST_LITERAL : [ int_value = 0, string_value =  ]
						AST_OP_LES : 
							AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
							AST_LITERAL : [ int_value = 4, string_value =  ]
						AST_FOR_UPDATE : 
							AST_OP_ASN : 
								AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
								AST_OP_SUM : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
									AST_LITERAL : [ int_value = 1, string_value =  ]
						AST_BODY | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION : 
								AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = win_frame ]
								AST_DATATYPE : [ int_value = 0, string_value = [10]string ]
								AST_OP_INDEX : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = win_screen ]
									AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
							AST_FOR : 
								AST_FOR_INIT : 
									AST_VARIABLE_DEFINITION : 
										AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = i ]
										AST_DATATYPE : [ int_value = 0, string_value = int64 ]
										AST_LITERAL : [ int_value = 0, string_value =  ]
								AST_OP_LES : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_LITERAL : [ int_value = 10, string_value =  ]
								AST_FOR_UPDATE : 
									AST_OP_ASN : 
										AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
										AST_OP_SUM : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
											AST_LITERAL : [ int_value = 1, string_value =  ]
								AST_BODY | ASTO_BODY_FOR : 
									AST_VARIABLE_DEFINITION : 
										AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = line ]
										AST_DATATYPE : [ int_value = 0, string_value = string ]
										AST_OP_INDEX : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = win_frame ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
									AST_FOR : 
										AST_FOR_INIT : 
											AST_VARIABLE_DEFINITION : 
												AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = j ]
												AST_DATATYPE : [ int_value = 0, string_value = int64 ]
												AST_LITERAL : [ int_value = 0, string_value =  ]
										AST_OP_LES : 
											AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
											AST_LITERAL : [ int_value = 30, string_value =  ]
										AST_FOR_UPDATE : 
											AST_OP_ASN : 
												AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
												AST_OP_SUM : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
													AST_LITERAL : [ int_value = 1, string_value =  ]
										AST_BODY | ASTO_BODY_FOR : 
											AST_OP_ASN : 
												AST_OP_INDEX : 
													AST_OP_INDEX : 
														AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
														AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
													AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
												AST_OP_INDEX : 
													AST_VARIABLE_NAME : [ int_value = 0, string_value = line ]
													AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
							AST_FUNCTION_CALL : [ int_value = 0, string_value = render ]
								AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
								AST_LITERAL : [ int_value = 1, string_value = true ]
							AST_FUNCTION_CALL : [ int_value = 0, string_value = poll ]
								AST_OP_REFERENCE : 
									AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
								AST_LITERAL : [ int_value = 1, string_value =  ]
								AST_LITERAL : [ int_value = 1000, string_value =  ]
							AST_BODY_RESULT : 
								AST_IF : 
									AST_OP_NEQ : 
										AST_OP_DOT : [ int_value = 0, string_value = revents ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
											AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
										AST_LITERAL : [ int_value = 0, string_value =  ]
									AST_BODY | ASTO_BODY_IF : 
										AST_BODY_RESULT : 
											AST_IF : 
												AST_OP_NEQ : 
													AST_OP_BAND : 
														AST_OP_DOT : [ int_value = 0, string_value = revents ]
															AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
															AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
														AST_LITERAL : [ int_value = 1, string_value =  ]
													AST_LITERAL : [ int_value = 0, string_value =  ]
												AST_BODY | ASTO_BODY_IF : 
													AST_VARIABLE_DEFINITION : 
														AST_VARIABLE_DEFINITION_NAME : [ int_value = 0, string_value = c ]
														AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
													AST_FUNCTION_CALL : [ int_value = 0, string_value = read ]
														AST_LITERAL : [ int_value = 0, string_value =  ]
														AST_OP_REFERENCE : 
															AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
														AST_LITERAL : [ int_value = 1, string_value =  ]
													AST_BODY_RESULT : 
														AST_IF : 
															AST_OP_EQU : 
																AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
																AST_LITERAL : [ int_value = 27, string_value =  ]
															AST_BODY | ASTO_BODY_IF : 
																AST_JUMP : [ int_value = 0, string_value = game_end ]
												AST_BODY | ASTO_BODY_ELSE : 
													AST_FUNCTION_CALL : [ int_value = 0, string_value = printf ]
														AST_OP_DOT : [ int_value = 0, string_value = data ]
															AST_LITERAL : [ int_value = 0, string_value = read error from stdin! ]
															AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_LABEL : [ int_value = 0, string_value = game_lose ]
			AST_LABEL : [ int_value = 0, string_value = game_end ]
			AST_FUNCTION_CALL : [ int_value = 0, string_value = tcsetattr ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE : 
					AST_VARIABLE_NAME : [ int_value = 0, string_value = current_termios ]
.text













































.global allocate
allocate:
pushq %rbp

movq %rsp, %rbp

subq $256, %rsp



pushq %rbx
movq $0, %rbx


movq %rbx, -233(%rbp, 1)

popq %rbx


movq %rdi, -233(%rbp, 1)






movq -233(%rbp, 1), %rdi



call malloc

movq %rax, %rbx







movq %rbx, -249(%rbp, 1)




movq -233(%rbp, 1), %r12





movq %r12, -241(%rbp, 1)




movq -241(%rbp, 1), %rdx


movq -249(%rbp, 1), %rax



jmp ._allocate





._allocate:
movq %rbp, %rsp

popq %rbp

ret



.global resize
resize:
pushq %rbp

movq %rsp, %rbp

subq $32, %rsp




pushq %rbx
movq $0, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx


movq %rsi, -8(%rbp, 1)


movq %rdi, -16(%rbp, 1)



movq %rdx, -24(%rbp, 1)








movq -16(%rbp, 1), %rdi


movq -24(%rbp, 1), %rsi



call realloc

movq %rax, %rbx







movq %rbx, -16(%rbp, 1)




movq -24(%rbp, 1), %r12





movq %r12, -8(%rbp, 1)




movq -8(%rbp, 1), %rdx


movq -16(%rbp, 1), %rax



jmp ._resize





._resize:
movq %rbp, %rsp

popq %rbp

ret










.global render
render:
pushq %rbp

movq %rsp, %rbp

subq $336, %rsp




movb $0, -150(%rbp, 1)



movq %rsi, -141(%rbp, 1)


movq %rdi, -149(%rbp, 1)



movb %dl, -150(%rbp, 1)






movq $.L1, %rdi



call printf

movl %eax, %ebx




movb $0, %r12b



movb %r12b, -151(%rbp, 1)



movb $0, %r13b



movb %r13b, -152(%rbp, 1)







movq -141(%rbp, 1), %r14


movq $-1, %rax


andq %rax, %r14


movq $30, %r15



xorq %rdx, %rdx

xorq %rax, %rax

movq %r14, %rax


idivq %r15

movq %rax, %r14




movq %r14, -160(%rbp, 1)



movq $0, %r15



movq %r15, -168(%rbp, 1)




.L10:


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -176(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -177(%rbp, 1), %bl


xorb %bl, -177(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -160(%rbp, 1), %rbx


cmpq %rbx, -176(%rbp, 1)
popq %rbx

setl -177(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -177(%rbp, 1), %bl


andb %bl, -177(%rbp, 1)
popq %rbx

jz .L11

pushq %rbx
movq $0, %rbx


movq %rbx, -193(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -193(%rbp, 1), %rbx


movq %rbx, -201(%rbp, 1)
popq %rbx




.L8:




pushq %r10

pushq %r11

movq -141(%rbp, 1), %r10


movq -149(%rbp, 1), %r11



movq %r11, -209(%rbp, 1)


popq %r11

popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -217(%rbp, 1)
popq %rbx


movq -217(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -217(%rbp, 1)



// mul on the CPU up here ^





pushq %r10

pushq %r11

movq -141(%rbp, 1), %r10


movq -149(%rbp, 1), %r11



movq %r11, -209(%rbp, 1)


popq %r11

popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -217(%rbp, 1)
popq %rbx


movq -217(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -217(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx
movq $30, %rbx


movq %rbx, -225(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -225(%rbp, 1), %rbx


movq %rbx, -233(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -233(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -201(%rbp, 1), %rbx


movq %rbx, -241(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -242(%rbp, 1), %bl


xorb %bl, -242(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -233(%rbp, 1), %rbx


cmpq %rbx, -241(%rbp, 1)
popq %rbx

setl -242(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -242(%rbp, 1), %bl


andb %bl, -242(%rbp, 1)
popq %rbx

jz .L9


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -150(%rbp, 1), %bl


andb %bl, -150(%rbp, 1)
popq %rbx

jz .L6


movb $6, -267(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -151(%rbp, 1), %bl


movb %bl, -268(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -269(%rbp, 1), %bl


xorb %bl, -269(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -267(%rbp, 1), %bl


cmpb %bl, -268(%rbp, 1)
popq %rbx

setae -269(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -269(%rbp, 1), %bl


andb %bl, -269(%rbp, 1)
popq %rbx

jz .L2

movb $0, -270(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -270(%rbp, 1), %bl


movb %bl, -271(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -271(%rbp, 1), %bl


movb %bl, -151(%rbp, 1)
popq %rbx




movb $1, -272(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -152(%rbp, 1), %bl


movb %bl, -273(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -272(%rbp, 1), %bl


addb %bl, -273(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -273(%rbp, 1), %bl


movb %bl, -274(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -274(%rbp, 1), %bl


movb %bl, -152(%rbp, 1)
popq %rbx




.L2:



movb $4, -275(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -152(%rbp, 1), %bl


movb %bl, -276(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -277(%rbp, 1), %bl


xorb %bl, -277(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -275(%rbp, 1), %bl


cmpb %bl, -276(%rbp, 1)
popq %rbx

setae -277(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -277(%rbp, 1), %bl


andb %bl, -277(%rbp, 1)
popq %rbx

jz .L3

movb $0, -278(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -278(%rbp, 1), %bl


movb %bl, -279(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -279(%rbp, 1), %bl


movb %bl, -152(%rbp, 1)
popq %rbx




.L3:


movb $46, -280(%rbp, 1)





movb $6, -281(%rbp, 1)



movb $6, -282(%rbp, 1)



movb -281(%rbp, 1), %al


imulb -282(%rbp, 1)

movb %al, -281(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -152(%rbp, 1), %bl


movb %bl, -283(%rbp, 1)
popq %rbx


movb -283(%rbp, 1), %al


imulb -281(%rbp, 1)

movb %al, -283(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -151(%rbp, 1), %bl


movb %bl, -284(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -283(%rbp, 1), %bl


addb %bl, -284(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -284(%rbp, 1), %bl


addb %bl, -280(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -280(%rbp, 1), %bl


movb %bl, -285(%rbp, 1)
popq %rbx




movb $1, -286(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -151(%rbp, 1), %bl


movb %bl, -287(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -286(%rbp, 1), %bl


addb %bl, -287(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -287(%rbp, 1), %bl


movb %bl, -288(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -288(%rbp, 1), %bl


movb %bl, -151(%rbp, 1)
popq %rbx





movq $.L4, %rdi



call printf

movl %eax, -292(%rbp, 1)







movq $.L5, %rdi


movb -285(%rbp, 1), %sil



call printf

movl %eax, -296(%rbp, 1)





.L6:




pushq %r10

pushq %r11

movq -141(%rbp, 1), %r10


movq -149(%rbp, 1), %r11



movq %r11, -304(%rbp, 1)


popq %r11

popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -312(%rbp, 1)
popq %rbx


movq -312(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -312(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -312(%rbp, 1)
// using r10
pushq %rax
movq -304(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -312(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -320(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -201(%rbp, 1)
// using r10
pushq %rax
movq -320(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -201(%rbp, 1), %r10

movb 0(%rax, %r10, 1), %dil
popq %r10
popq %rax



call putchar

movl %eax, -324(%rbp, 1)






movq $.L7, %rdi



call printf

movl %eax, -328(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -250(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -201(%rbp, 1), %rbx


movq %rbx, -258(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -250(%rbp, 1), %rbx


addq %rbx, -258(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -258(%rbp, 1), %rbx


movq %rbx, -266(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -266(%rbp, 1), %rbx


movq %rbx, -201(%rbp, 1)
popq %rbx




jmp .L8

.L9:


movb $10, -329(%rbp, 1)



movb -329(%rbp, 1), %dil



call putchar

movl %eax, -333(%rbp, 1)






pushq %rbx
movq $1, %rbx


movq %rbx, -185(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -185(%rbp, 1), %rbx


addq %rbx, -168(%rbp, 1)
popq %rbx




jmp .L10

.L11:



._render:
movq %rbp, %rsp

popq %rbp

ret



.global main
main:
pushq %rbp

movq %rsp, %rbp

subq $9184, %rsp

















movq $.L21, %rax


leaq 0(%rax, 1), %rbx


movq %rbx, -16(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -8(%rbp, 1)

popq %rbx



movq $.L20, %rax


leaq 0(%rax, 1), %r12


movq %r12, -32(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -24(%rbp, 1)

popq %rbx



movq $.L19, %rax


leaq 0(%rax, 1), %r13


movq %r13, -48(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -40(%rbp, 1)

popq %rbx



movq $.L18, %rax


leaq 0(%rax, 1), %r14


movq %r14, -64(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -56(%rbp, 1)

popq %rbx



movq $.L17, %rax


leaq 0(%rax, 1), %r15


movq %r15, -80(%rbp, 1)


pushq %rbx
movq $30, %rbx


movq %rbx, -72(%rbp, 1)

popq %rbx



movq $.L16, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -168(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -168(%rbp, 1), %rbx


movq %rbx, -96(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -88(%rbp, 1)

popq %rbx



movq $.L15, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -176(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -176(%rbp, 1), %rbx


movq %rbx, -112(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -104(%rbp, 1)

popq %rbx



movq $.L14, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -184(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -184(%rbp, 1), %rbx


movq %rbx, -128(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -120(%rbp, 1)

popq %rbx



movq $.L13, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -192(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -192(%rbp, 1), %rbx


movq %rbx, -144(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -136(%rbp, 1)

popq %rbx



movq $.L12, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -200(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -200(%rbp, 1), %rbx


movq %rbx, -160(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -152(%rbp, 1)

popq %rbx
















movq $.L31, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -368(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -368(%rbp, 1), %rbx


movq %rbx, -216(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -208(%rbp, 1)

popq %rbx



movq $.L30, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -376(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -376(%rbp, 1), %rbx


movq %rbx, -232(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -224(%rbp, 1)

popq %rbx



movq $.L29, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -384(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -384(%rbp, 1), %rbx


movq %rbx, -248(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -240(%rbp, 1)

popq %rbx



movq $.L28, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -392(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -392(%rbp, 1), %rbx


movq %rbx, -264(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -256(%rbp, 1)

popq %rbx



movq $.L27, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -400(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -400(%rbp, 1), %rbx


movq %rbx, -280(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -272(%rbp, 1)

popq %rbx



movq $.L26, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -408(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -408(%rbp, 1), %rbx


movq %rbx, -296(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -288(%rbp, 1)

popq %rbx



movq $.L25, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -416(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -416(%rbp, 1), %rbx


movq %rbx, -312(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -304(%rbp, 1)

popq %rbx



movq $.L24, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -424(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -424(%rbp, 1), %rbx


movq %rbx, -328(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -320(%rbp, 1)

popq %rbx



movq $.L23, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -432(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -432(%rbp, 1), %rbx


movq %rbx, -344(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -336(%rbp, 1)

popq %rbx



movq $.L22, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -440(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -440(%rbp, 1), %rbx


movq %rbx, -360(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -352(%rbp, 1)

popq %rbx
















movq $.L41, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -608(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -608(%rbp, 1), %rbx


movq %rbx, -456(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -448(%rbp, 1)

popq %rbx



movq $.L40, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -616(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -616(%rbp, 1), %rbx


movq %rbx, -472(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -464(%rbp, 1)

popq %rbx



movq $.L39, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -624(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -624(%rbp, 1), %rbx


movq %rbx, -488(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -480(%rbp, 1)

popq %rbx



movq $.L38, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -632(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -632(%rbp, 1), %rbx


movq %rbx, -504(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -496(%rbp, 1)

popq %rbx



movq $.L37, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -640(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -640(%rbp, 1), %rbx


movq %rbx, -520(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -512(%rbp, 1)

popq %rbx



movq $.L36, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -648(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -648(%rbp, 1), %rbx


movq %rbx, -536(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -528(%rbp, 1)

popq %rbx



movq $.L35, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -656(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -656(%rbp, 1), %rbx


movq %rbx, -552(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -544(%rbp, 1)

popq %rbx



movq $.L34, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -664(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -664(%rbp, 1), %rbx


movq %rbx, -568(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -560(%rbp, 1)

popq %rbx



movq $.L33, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -672(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -672(%rbp, 1), %rbx


movq %rbx, -584(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -576(%rbp, 1)

popq %rbx



movq $.L32, %rax


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


movq %rbx, -600(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -592(%rbp, 1)

popq %rbx
















movq $.L51, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -848(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -848(%rbp, 1), %rbx


movq %rbx, -696(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -688(%rbp, 1)

popq %rbx



movq $.L50, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -856(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -856(%rbp, 1), %rbx


movq %rbx, -712(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -704(%rbp, 1)

popq %rbx



movq $.L49, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -864(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -864(%rbp, 1), %rbx


movq %rbx, -728(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -720(%rbp, 1)

popq %rbx



movq $.L48, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -872(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -872(%rbp, 1), %rbx


movq %rbx, -744(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -736(%rbp, 1)

popq %rbx



movq $.L47, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -880(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -880(%rbp, 1), %rbx


movq %rbx, -760(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -752(%rbp, 1)

popq %rbx



movq $.L46, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -888(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -888(%rbp, 1), %rbx


movq %rbx, -776(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -768(%rbp, 1)

popq %rbx



movq $.L45, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -896(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -896(%rbp, 1), %rbx


movq %rbx, -792(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -784(%rbp, 1)

popq %rbx



movq $.L44, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -904(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -904(%rbp, 1), %rbx


movq %rbx, -808(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -800(%rbp, 1)

popq %rbx



movq $.L43, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -912(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -912(%rbp, 1), %rbx


movq %rbx, -824(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -816(%rbp, 1)

popq %rbx



movq $.L42, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -920(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -920(%rbp, 1), %rbx


movq %rbx, -840(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -832(%rbp, 1)

popq %rbx
















movq $.L61, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1088(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1088(%rbp, 1), %rbx


movq %rbx, -936(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -928(%rbp, 1)

popq %rbx



movq $.L60, %rax


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


movq %rbx, -952(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -944(%rbp, 1)

popq %rbx



movq $.L59, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1104(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1104(%rbp, 1), %rbx


movq %rbx, -968(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -960(%rbp, 1)

popq %rbx



movq $.L58, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1112(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1112(%rbp, 1), %rbx


movq %rbx, -984(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -976(%rbp, 1)

popq %rbx



movq $.L57, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1120(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1120(%rbp, 1), %rbx


movq %rbx, -1000(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -992(%rbp, 1)

popq %rbx



movq $.L56, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1128(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1128(%rbp, 1), %rbx


movq %rbx, -1016(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1008(%rbp, 1)

popq %rbx



movq $.L55, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1136(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1136(%rbp, 1), %rbx


movq %rbx, -1032(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1024(%rbp, 1)

popq %rbx



movq $.L54, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1144(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1144(%rbp, 1), %rbx


movq %rbx, -1048(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1040(%rbp, 1)

popq %rbx



movq $.L53, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1152(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1152(%rbp, 1), %rbx


movq %rbx, -1064(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1056(%rbp, 1)

popq %rbx



movq $.L52, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1160(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1160(%rbp, 1), %rbx


movq %rbx, -1080(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1072(%rbp, 1)

popq %rbx
















movq $.L71, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1328(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1328(%rbp, 1), %rbx


movq %rbx, -1176(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1168(%rbp, 1)

popq %rbx



movq $.L70, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1336(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1336(%rbp, 1), %rbx


movq %rbx, -1192(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1184(%rbp, 1)

popq %rbx



movq $.L69, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1344(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1344(%rbp, 1), %rbx


movq %rbx, -1208(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1200(%rbp, 1)

popq %rbx



movq $.L68, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1352(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1352(%rbp, 1), %rbx


movq %rbx, -1224(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1216(%rbp, 1)

popq %rbx



movq $.L67, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1360(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1360(%rbp, 1), %rbx


movq %rbx, -1240(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1232(%rbp, 1)

popq %rbx



movq $.L66, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1368(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1368(%rbp, 1), %rbx


movq %rbx, -1256(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1248(%rbp, 1)

popq %rbx



movq $.L65, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1376(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1376(%rbp, 1), %rbx


movq %rbx, -1272(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1264(%rbp, 1)

popq %rbx



movq $.L64, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1384(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1384(%rbp, 1), %rbx


movq %rbx, -1288(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1280(%rbp, 1)

popq %rbx



movq $.L63, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1392(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1392(%rbp, 1), %rbx


movq %rbx, -1304(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1296(%rbp, 1)

popq %rbx



movq $.L62, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1400(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1400(%rbp, 1), %rbx


movq %rbx, -1320(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1312(%rbp, 1)

popq %rbx
















movq $.L81, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1568(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1568(%rbp, 1), %rbx


movq %rbx, -1416(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1408(%rbp, 1)

popq %rbx



movq $.L80, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1576(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1576(%rbp, 1), %rbx


movq %rbx, -1432(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1424(%rbp, 1)

popq %rbx



movq $.L79, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1584(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1584(%rbp, 1), %rbx


movq %rbx, -1448(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1440(%rbp, 1)

popq %rbx



movq $.L78, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1592(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1592(%rbp, 1), %rbx


movq %rbx, -1464(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1456(%rbp, 1)

popq %rbx



movq $.L77, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1600(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1600(%rbp, 1), %rbx


movq %rbx, -1480(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1472(%rbp, 1)

popq %rbx



movq $.L76, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1608(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1608(%rbp, 1), %rbx


movq %rbx, -1496(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1488(%rbp, 1)

popq %rbx



movq $.L75, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1616(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1616(%rbp, 1), %rbx


movq %rbx, -1512(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1504(%rbp, 1)

popq %rbx



movq $.L74, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1624(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1624(%rbp, 1), %rbx


movq %rbx, -1528(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1520(%rbp, 1)

popq %rbx



movq $.L73, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1632(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1632(%rbp, 1), %rbx


movq %rbx, -1544(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1536(%rbp, 1)

popq %rbx



movq $.L72, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1640(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1640(%rbp, 1), %rbx


movq %rbx, -1560(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1552(%rbp, 1)

popq %rbx
















movq $.L91, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1808(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1808(%rbp, 1), %rbx


movq %rbx, -1656(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1648(%rbp, 1)

popq %rbx



movq $.L90, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1816(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1816(%rbp, 1), %rbx


movq %rbx, -1672(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1664(%rbp, 1)

popq %rbx



movq $.L89, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1824(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1824(%rbp, 1), %rbx


movq %rbx, -1688(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1680(%rbp, 1)

popq %rbx



movq $.L88, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1832(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1832(%rbp, 1), %rbx


movq %rbx, -1704(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1696(%rbp, 1)

popq %rbx



movq $.L87, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1840(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1840(%rbp, 1), %rbx


movq %rbx, -1720(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1712(%rbp, 1)

popq %rbx



movq $.L86, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1848(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1848(%rbp, 1), %rbx


movq %rbx, -1736(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1728(%rbp, 1)

popq %rbx



movq $.L85, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1856(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1856(%rbp, 1), %rbx


movq %rbx, -1752(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1744(%rbp, 1)

popq %rbx



movq $.L84, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1864(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1864(%rbp, 1), %rbx


movq %rbx, -1768(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1760(%rbp, 1)

popq %rbx



movq $.L83, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1872(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1872(%rbp, 1), %rbx


movq %rbx, -1784(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1776(%rbp, 1)

popq %rbx



movq $.L82, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -1880(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -1880(%rbp, 1), %rbx


movq %rbx, -1800(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -1792(%rbp, 1)

popq %rbx





pushq %rsi

pushq %rdi

pushq %rcx

leaq -1800(%rbp, 1), %rsi

leaq -2040(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -1560(%rbp, 1), %rsi

leaq -2200(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -1320(%rbp, 1), %rsi

leaq -2360(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -1080(%rbp, 1), %rsi

leaq -2520(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -840(%rbp, 1), %rsi

leaq -2680(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -600(%rbp, 1), %rsi

leaq -2840(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -360(%rbp, 1), %rsi

leaq -3000(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -160(%rbp, 1), %rsi

leaq -3160(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




pushq %rsi

pushq %rdi

pushq %rcx

leaq -3160(%rbp, 1), %rsi

leaq -4440(%rbp, 1), %rdi

movq $1280, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi















movq $.L101, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4608(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4608(%rbp, 1), %rbx


movq %rbx, -4456(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4448(%rbp, 1)

popq %rbx



movq $.L100, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4616(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4616(%rbp, 1), %rbx


movq %rbx, -4472(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4464(%rbp, 1)

popq %rbx



movq $.L99, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4624(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4624(%rbp, 1), %rbx


movq %rbx, -4488(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4480(%rbp, 1)

popq %rbx



movq $.L98, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4632(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4632(%rbp, 1), %rbx


movq %rbx, -4504(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4496(%rbp, 1)

popq %rbx



movq $.L97, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4640(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4640(%rbp, 1), %rbx


movq %rbx, -4520(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4512(%rbp, 1)

popq %rbx



movq $.L96, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4648(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4648(%rbp, 1), %rbx


movq %rbx, -4536(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4528(%rbp, 1)

popq %rbx



movq $.L95, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4656(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4656(%rbp, 1), %rbx


movq %rbx, -4552(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4544(%rbp, 1)

popq %rbx



movq $.L94, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4664(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4664(%rbp, 1), %rbx


movq %rbx, -4568(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4560(%rbp, 1)

popq %rbx



movq $.L93, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4672(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4672(%rbp, 1), %rbx


movq %rbx, -4584(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4576(%rbp, 1)

popq %rbx



movq $.L92, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4680(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4680(%rbp, 1), %rbx


movq %rbx, -4600(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4592(%rbp, 1)

popq %rbx
















movq $.L111, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4848(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4848(%rbp, 1), %rbx


movq %rbx, -4696(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4688(%rbp, 1)

popq %rbx



movq $.L110, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4856(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4856(%rbp, 1), %rbx


movq %rbx, -4712(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4704(%rbp, 1)

popq %rbx



movq $.L109, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4864(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4864(%rbp, 1), %rbx


movq %rbx, -4728(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4720(%rbp, 1)

popq %rbx



movq $.L108, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4872(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4872(%rbp, 1), %rbx


movq %rbx, -4744(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4736(%rbp, 1)

popq %rbx



movq $.L107, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4880(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4880(%rbp, 1), %rbx


movq %rbx, -4760(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4752(%rbp, 1)

popq %rbx



movq $.L106, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4888(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4888(%rbp, 1), %rbx


movq %rbx, -4776(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4768(%rbp, 1)

popq %rbx



movq $.L105, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4896(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4896(%rbp, 1), %rbx


movq %rbx, -4792(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4784(%rbp, 1)

popq %rbx



movq $.L104, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4904(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4904(%rbp, 1), %rbx


movq %rbx, -4808(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4800(%rbp, 1)

popq %rbx



movq $.L103, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4912(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4912(%rbp, 1), %rbx


movq %rbx, -4824(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4816(%rbp, 1)

popq %rbx



movq $.L102, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -4920(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -4920(%rbp, 1), %rbx


movq %rbx, -4840(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4832(%rbp, 1)

popq %rbx
















movq $.L121, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5088(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5088(%rbp, 1), %rbx


movq %rbx, -4936(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4928(%rbp, 1)

popq %rbx



movq $.L120, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5096(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5096(%rbp, 1), %rbx


movq %rbx, -4952(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4944(%rbp, 1)

popq %rbx



movq $.L119, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5104(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5104(%rbp, 1), %rbx


movq %rbx, -4968(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4960(%rbp, 1)

popq %rbx



movq $.L118, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5112(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5112(%rbp, 1), %rbx


movq %rbx, -4984(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4976(%rbp, 1)

popq %rbx



movq $.L117, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5120(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5120(%rbp, 1), %rbx


movq %rbx, -5000(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -4992(%rbp, 1)

popq %rbx



movq $.L116, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5128(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5128(%rbp, 1), %rbx


movq %rbx, -5016(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5008(%rbp, 1)

popq %rbx



movq $.L115, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5136(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5136(%rbp, 1), %rbx


movq %rbx, -5032(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5024(%rbp, 1)

popq %rbx



movq $.L114, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5144(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5144(%rbp, 1), %rbx


movq %rbx, -5048(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5040(%rbp, 1)

popq %rbx



movq $.L113, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5152(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5152(%rbp, 1), %rbx


movq %rbx, -5064(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5056(%rbp, 1)

popq %rbx



movq $.L112, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5160(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5160(%rbp, 1), %rbx


movq %rbx, -5080(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5072(%rbp, 1)

popq %rbx
















movq $.L131, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5328(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5328(%rbp, 1), %rbx


movq %rbx, -5176(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5168(%rbp, 1)

popq %rbx



movq $.L130, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5336(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5336(%rbp, 1), %rbx


movq %rbx, -5192(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5184(%rbp, 1)

popq %rbx



movq $.L129, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5344(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5344(%rbp, 1), %rbx


movq %rbx, -5208(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5200(%rbp, 1)

popq %rbx



movq $.L128, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5352(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5352(%rbp, 1), %rbx


movq %rbx, -5224(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5216(%rbp, 1)

popq %rbx



movq $.L127, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5360(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5360(%rbp, 1), %rbx


movq %rbx, -5240(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5232(%rbp, 1)

popq %rbx



movq $.L126, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5368(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5368(%rbp, 1), %rbx


movq %rbx, -5256(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5248(%rbp, 1)

popq %rbx



movq $.L125, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5376(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5376(%rbp, 1), %rbx


movq %rbx, -5272(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5264(%rbp, 1)

popq %rbx



movq $.L124, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5384(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5384(%rbp, 1), %rbx


movq %rbx, -5288(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5280(%rbp, 1)

popq %rbx



movq $.L123, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5392(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5392(%rbp, 1), %rbx


movq %rbx, -5304(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5296(%rbp, 1)

popq %rbx



movq $.L122, %rax


pushq %rbx

leaq 0(%rax, 1), %rbx

movq %rbx, -5400(%rbp, 1)


popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -5400(%rbp, 1), %rbx


movq %rbx, -5320(%rbp, 1)
popq %rbx


pushq %rbx
movq $30, %rbx


movq %rbx, -5312(%rbp, 1)

popq %rbx





pushq %rsi

pushq %rdi

pushq %rcx

leaq -5320(%rbp, 1), %rsi

leaq -5560(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -5080(%rbp, 1), %rsi

leaq -5720(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -4840(%rbp, 1), %rsi

leaq -5880(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi


pushq %rsi

pushq %rdi

pushq %rcx

leaq -4600(%rbp, 1), %rsi

leaq -6040(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




pushq %rsi

pushq %rdi

pushq %rcx

leaq -6040(%rbp, 1), %rsi

leaq -6680(%rbp, 1), %rdi

movq $640, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi




movl $0, -6744(%rbp, 1)



pushq %rbx

leaq -6740(%rbp, 1), %rbx

movq %rbx, -6752(%rbp, 1)


popq %rbx



movl -6744(%rbp, 1), %edi


movq -6752(%rbp, 1), %rsi



call tcgetattr




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6684(%rbp, 1), %ebx


movl %ebx, -6756(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6688(%rbp, 1), %ebx


movl %ebx, -6760(%rbp, 1)
popq %rbx


pushq %rsi

pushq %rdi

pushq %rcx

leaq -6723(%rbp, 1), %rsi

leaq -6795(%rbp, 1), %rdi

movq $32, %rcx


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
movb -6724(%rbp, 1), %bl


movb %bl, -6796(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6728(%rbp, 1), %ebx


movl %ebx, -6800(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6732(%rbp, 1), %ebx


movl %ebx, -6804(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6736(%rbp, 1), %ebx


movl %ebx, -6808(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6740(%rbp, 1), %ebx


movl %ebx, -6812(%rbp, 1)
popq %rbx




movl $2, -6816(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6816(%rbp, 1), %ebx


movl %ebx, -6820(%rbp, 1)
popq %rbx



movl $8, -6824(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6824(%rbp, 1), %ebx


movl %ebx, -6828(%rbp, 1)
popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6820(%rbp, 1), %ebx


movl %ebx, -6832(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6828(%rbp, 1), %ebx


orl %ebx, -6832(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6832(%rbp, 1), %ebx


movl %ebx, -6836(%rbp, 1)
popq %rbx







pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6836(%rbp, 1), %ebx


movl %ebx, -6840(%rbp, 1)
popq %rbx


notl -6840(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6800(%rbp, 1), %ebx


movl %ebx, -6844(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6840(%rbp, 1), %ebx


andl %ebx, -6844(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6844(%rbp, 1), %ebx


movl %ebx, -6848(%rbp, 1)
popq %rbx





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -6848(%rbp, 1), %ebx


movl %ebx, -6800(%rbp, 1)
popq %rbx



movl $0, -6852(%rbp, 1)



movl $0, -6856(%rbp, 1)



pushq %rbx

leaq -6812(%rbp, 1), %rbx

movq %rbx, -6864(%rbp, 1)


popq %rbx



movl -6852(%rbp, 1), %edi


movl -6856(%rbp, 1), %esi


movq -6864(%rbp, 1), %rdx



call tcsetattr




pushq %rbx
movq $0, %rbx


movq %rbx, -6902(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6902(%rbp, 1), %rbx


movq %rbx, -6910(%rbp, 1)
popq %rbx



.L137:

pushq %rbx
movq $30, %rbx


movq %rbx, -6918(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6910(%rbp, 1), %rbx


movq %rbx, -6926(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6927(%rbp, 1), %bl


xorb %bl, -6927(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6918(%rbp, 1), %rbx


cmpq %rbx, -6926(%rbp, 1)
popq %rbx

setg -6927(%rbp, 1)




pushq %rbx
movq $0, %rbx


movq %rbx, -6935(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6910(%rbp, 1), %rbx


movq %rbx, -6943(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6944(%rbp, 1), %bl


xorb %bl, -6944(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6935(%rbp, 1), %rbx


cmpq %rbx, -6943(%rbp, 1)
popq %rbx

setle -6944(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6944(%rbp, 1), %bl


orb %bl, -6927(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6927(%rbp, 1), %bl


andb %bl, -6927(%rbp, 1)
popq %rbx

jz .L138

pushq %rbx
movq $0, %rbx


movq %rbx, -6952(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6952(%rbp, 1), %rbx


movq %rbx, -6960(%rbp, 1)
popq %rbx



pushq %rbx
movq $0, %rbx


movq %rbx, -6968(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6968(%rbp, 1), %rbx


movq %rbx, -6976(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6976(%rbp, 1), %rbx


movq %rbx, -6910(%rbp, 1)
popq %rbx



.L135:

pushq %rbx
movq $10, %rbx


movq %rbx, -6984(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6960(%rbp, 1), %rbx


movq %rbx, -6992(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6993(%rbp, 1), %bl


xorb %bl, -6993(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6984(%rbp, 1), %rbx


cmpq %rbx, -6992(%rbp, 1)
popq %rbx

sete -6993(%rbp, 1)


xorb $1, -6993(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6993(%rbp, 1), %bl


andb %bl, -6993(%rbp, 1)
popq %rbx

jz .L136



movq $.L132, %rdi



call printf

movl %eax, -6997(%rbp, 1)








pushq %rbx
movq $30, %rbx


movq %rbx, -7005(%rbp, 1)

popq %rbx


movq $.L133, %rdi


movq -6910(%rbp, 1), %rsi


movq -7005(%rbp, 1), %rdx



call printf

movl %eax, -7009(%rbp, 1)




movl $0, -7013(%rbp, 1)



pushq %rbx

leaq -6960(%rbp, 1), %rbx

movq %rbx, -7021(%rbp, 1)


popq %rbx



pushq %rbx
movq $8, %rbx


movq %rbx, -7029(%rbp, 1)

popq %rbx


movl -7013(%rbp, 1), %edi


movq -7021(%rbp, 1), %rsi


movq -7029(%rbp, 1), %rdx



call read




pushq %rbx
movq $122, %rbx


movq %rbx, -7037(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6960(%rbp, 1), %rbx


movq %rbx, -7045(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7046(%rbp, 1), %bl


xorb %bl, -7046(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7037(%rbp, 1), %rbx


cmpq %rbx, -7045(%rbp, 1)
popq %rbx

setbe -7046(%rbp, 1)




pushq %rbx
movq $97, %rbx


movq %rbx, -7054(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6960(%rbp, 1), %rbx


movq %rbx, -7062(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7063(%rbp, 1), %bl


xorb %bl, -7063(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7054(%rbp, 1), %rbx


cmpq %rbx, -7062(%rbp, 1)
popq %rbx

setae -7063(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7063(%rbp, 1), %bl


andb %bl, -7046(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7046(%rbp, 1), %bl


andb %bl, -7046(%rbp, 1)
popq %rbx

jz .L134



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -6960(%rbp, 1), %bl


movb %bl, -7072(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -7072(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7072(%rbp, 1), %bl


movb %bl, -7073(%rbp, 1)
popq %rbx




pushq %r10

leaq -6894(%rbp, 1), %r10

movq %r10, -7071(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -6910(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -7071(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -6910(%rbp, 1), %r10


 // byee 
movb -7073(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




pushq %rbx
movq $1, %rbx


movq %rbx, -7081(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6910(%rbp, 1), %rbx


movq %rbx, -7089(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7081(%rbp, 1), %rbx


addq %rbx, -7089(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7089(%rbp, 1), %rbx


movq %rbx, -7097(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7097(%rbp, 1), %rbx


movq %rbx, -6910(%rbp, 1)
popq %rbx




.L134:



jmp .L135

.L136:



jmp .L137

.L138:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6910(%rbp, 1), %rbx


movq %rbx, -7105(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -7105(%rbp, 1)


movq -7105(%rbp, 1), %rdi



call allocate

movq %rdx, -7113(%rbp, 1)


movq %rax, -7121(%rbp, 1)





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7113(%rbp, 1), %rbx


movq %rbx, -7129(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7121(%rbp, 1), %rbx


movq %rbx, -7137(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -7145(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7145(%rbp, 1), %rbx


movq %rbx, -7153(%rbp, 1)
popq %rbx




.L139:


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7153(%rbp, 1), %rbx


movq %rbx, -7161(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7162(%rbp, 1), %bl


xorb %bl, -7162(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -6910(%rbp, 1), %rbx


cmpq %rbx, -7161(%rbp, 1)
popq %rbx

setl -7162(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7162(%rbp, 1), %bl


andb %bl, -7162(%rbp, 1)
popq %rbx

jz .L140



pushq %r10

leaq -6894(%rbp, 1), %r10

movq %r10, -7202(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -7153(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -7202(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7153(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


movb %bl, -7203(%rbp, 1)
popq %rbx




pushq %r10

pushq %r11

movq -7129(%rbp, 1), %r10


movq -7137(%rbp, 1), %r11



movq %r11, -7194(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -7153(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -7194(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7153(%rbp, 1), %r10


 // byee 
movb -7203(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -7170(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7153(%rbp, 1), %rbx


movq %rbx, -7178(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7170(%rbp, 1), %rbx


addq %rbx, -7178(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7178(%rbp, 1), %rbx


movq %rbx, -7186(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7186(%rbp, 1), %rbx


movq %rbx, -7153(%rbp, 1)
popq %rbx




jmp .L139

.L140:



pushq %rbx
movq $0, %rbx


movq %rbx, -7511(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7511(%rbp, 1), %rbx


movq %rbx, -7519(%rbp, 1)
popq %rbx







pushq %rbx
movq $0, %rbx


movq %rbx, -7527(%rbp, 1)

popq %rbx


pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -7535(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7527(%rbp, 1), %rbx


movq %rbx, -7543(%rbp, 1)
popq %rbx


movq -7543(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -7543(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx
movq $0, %rbx


movq %rbx, -7527(%rbp, 1)

popq %rbx


pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -7535(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7527(%rbp, 1), %rbx


movq %rbx, -7543(%rbp, 1)
popq %rbx


movq -7543(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -7543(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx
movq $30, %rbx


movq %rbx, -7551(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7129(%rbp, 1), %rbx


movq %rbx, -7559(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7560(%rbp, 1), %bl


xorb %bl, -7560(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7551(%rbp, 1), %rbx


cmpq %rbx, -7559(%rbp, 1)
popq %rbx

seta -7560(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7560(%rbp, 1), %bl


andb %bl, -7560(%rbp, 1)
popq %rbx

jz .L142



movq $.L141, %rdi



call printf

movl %eax, -7564(%rbp, 1)




jmp ._main





.L142:



pushq %rbx
movq $0, %rbx


movq %rbx, -7572(%rbp, 1)

popq %rbx


pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -7580(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7572(%rbp, 1), %rbx


movq %rbx, -7588(%rbp, 1)
popq %rbx


movq -7588(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -7588(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx
movq $0, %rbx


movq %rbx, -7572(%rbp, 1)

popq %rbx


pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -7580(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7572(%rbp, 1), %rbx


movq %rbx, -7588(%rbp, 1)
popq %rbx


movq -7588(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -7588(%rbp, 1)



// mul on the CPU up here ^



pushq %rbx
movq $30, %rbx


movq %rbx, -7596(%rbp, 1)

popq %rbx



pushq %rbx
movq $2, %rbx


movq %rbx, -7604(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7604(%rbp, 1), %rbx


movq %rbx, -7612(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -7612(%rbp, 1)


xorq %rdx, %rdx

xorq %rax, %rax

movq -7596(%rbp, 1), %rax


idivq -7612(%rbp, 1)

movq %rax, -7596(%rbp, 1)








pushq %rbx
movq $2, %rbx


movq %rbx, -7620(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7620(%rbp, 1), %rbx


movq %rbx, -7628(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -7628(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7129(%rbp, 1), %rbx


movq %rbx, -7636(%rbp, 1)
popq %rbx


xorq %rdx, %rdx

xorq %rax, %rax

movq -7636(%rbp, 1), %rax


idivq -7628(%rbp, 1)

movq %rax, -7636(%rbp, 1)




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7636(%rbp, 1), %rbx


subq %rbx, -7596(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7596(%rbp, 1), %rbx


movq %rbx, -7644(%rbp, 1)
popq %rbx



pushq %rbx
movq $8, %rbx


movq %rbx, -7652(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7652(%rbp, 1), %rbx


movq %rbx, -7660(%rbp, 1)
popq %rbx







movq -7129(%rbp, 1), %rdi



call allocate

movq %rdx, -7676(%rbp, 1)


movq %rax, -7684(%rbp, 1)





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7676(%rbp, 1), %rbx


movq %rbx, -7692(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7684(%rbp, 1), %rbx


movq %rbx, -7700(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -7708(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7708(%rbp, 1), %rbx


movq %rbx, -7716(%rbp, 1)
popq %rbx



pushq %rbx
movq $0, %rbx


movq %rbx, -7724(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7724(%rbp, 1), %rbx


movq %rbx, -7732(%rbp, 1)
popq %rbx



.L168:
movb $1, -7733(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7733(%rbp, 1), %bl


andb %bl, -7733(%rbp, 1)
popq %rbx

jz .L169

pushq %rbx
movq $0, %rbx


movq %rbx, -7741(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7741(%rbp, 1), %rbx


movq %rbx, -7749(%rbp, 1)
popq %rbx




.L145:

pushq %rbx
movq $10, %rbx


movq %rbx, -7757(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7749(%rbp, 1), %rbx


movq %rbx, -7765(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7766(%rbp, 1), %bl


xorb %bl, -7766(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7757(%rbp, 1), %rbx


cmpq %rbx, -7765(%rbp, 1)
popq %rbx

setl -7766(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7766(%rbp, 1), %bl


andb %bl, -7766(%rbp, 1)
popq %rbx

jz .L146



pushq %r10

leaq -4440(%rbp, 1), %r10

movq %r10, -7798(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7519(%rbp, 1), %rbx


movq %rbx, -7806(%rbp, 1)
popq %rbx


movq -7806(%rbp, 1), %rax


imulq $160, %rax

movq %rax, -7806(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -7806(%rbp, 1)
// using r10
pushq %rax
movq -7798(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7806(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -7814(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7749(%rbp, 1), %rbx


movq %rbx, -7822(%rbp, 1)
popq %rbx


movq -7822(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -7822(%rbp, 1)



// mul on the CPU up here ^



// using rax
// the index is very cute! : -7822(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -7814(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7822(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 8(%rax, %r10, 1), %rbx


movq %rbx, -7830(%rbp, 1)
popq %rbx


// using rax
// the index is very cute! : -7822(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -7814(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7822(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 0(%rax, %r10, 1), %rbx


movq %rbx, -7838(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -7846(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7846(%rbp, 1), %rbx


movq %rbx, -7854(%rbp, 1)
popq %rbx




.L143:

pushq %rbx
movq $30, %rbx


movq %rbx, -7862(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7854(%rbp, 1), %rbx


movq %rbx, -7870(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7871(%rbp, 1), %bl


xorb %bl, -7871(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7862(%rbp, 1), %rbx


cmpq %rbx, -7870(%rbp, 1)
popq %rbx

setl -7871(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7871(%rbp, 1), %bl


andb %bl, -7871(%rbp, 1)
popq %rbx

jz .L144



pushq %r10

pushq %r11

movq -7830(%rbp, 1), %r10


movq -7838(%rbp, 1), %r11



movq %r11, -7927(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -7854(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -7927(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7854(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


movb %bl, -7928(%rbp, 1)
popq %rbx




pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -7903(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7749(%rbp, 1), %rbx


movq %rbx, -7911(%rbp, 1)
popq %rbx


movq -7911(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -7911(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -7911(%rbp, 1)
// using r10
pushq %rax
movq -7903(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7911(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -7919(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -7854(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -7919(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7854(%rbp, 1), %r10


 // byee 
movb -7928(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -7879(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7854(%rbp, 1), %rbx


movq %rbx, -7887(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7879(%rbp, 1), %rbx


addq %rbx, -7887(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7887(%rbp, 1), %rbx


movq %rbx, -7895(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7895(%rbp, 1), %rbx


movq %rbx, -7854(%rbp, 1)
popq %rbx




jmp .L143

.L144:




pushq %rbx
movq $1, %rbx


movq %rbx, -7774(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7749(%rbp, 1), %rbx


movq %rbx, -7782(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7774(%rbp, 1), %rbx


addq %rbx, -7782(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7782(%rbp, 1), %rbx


movq %rbx, -7790(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7790(%rbp, 1), %rbx


movq %rbx, -7749(%rbp, 1)
popq %rbx




jmp .L145

.L146:


pushq %rbx
movq $0, %rbx


movq %rbx, -7936(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7936(%rbp, 1), %rbx


movq %rbx, -7944(%rbp, 1)
popq %rbx




.L147:

pushq %rbx
movq $8, %rbx


movq %rbx, -7952(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7944(%rbp, 1), %rbx


movq %rbx, -7960(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7961(%rbp, 1), %bl


xorb %bl, -7961(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7952(%rbp, 1), %rbx


cmpq %rbx, -7960(%rbp, 1)
popq %rbx

setl -7961(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7961(%rbp, 1), %bl


andb %bl, -7961(%rbp, 1)
popq %rbx

jz .L148



pushq %r10

leaq -7668(%rbp, 1), %r10

movq %r10, -7993(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -7944(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -7993(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7944(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


movb %bl, -7994(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -7994(%rbp, 1), %bl


movb %bl, -8051(%rbp, 1)
popq %rbx



pushq %rbx
movq $9, %rbx


movq %rbx, -8002(%rbp, 1)

popq %rbx


pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -8010(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8002(%rbp, 1), %rbx


movq %rbx, -8018(%rbp, 1)
popq %rbx


movq -8018(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -8018(%rbp, 1)



// mul on the CPU up here ^




pushq %rbx
movq $15, %rbx


movq %rbx, -8026(%rbp, 1)

popq %rbx


pushq %rbx
movq $4, %rbx


movq %rbx, -8034(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8034(%rbp, 1), %rbx


subq %rbx, -8026(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7944(%rbp, 1), %rbx


movq %rbx, -8042(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8026(%rbp, 1), %rbx


addq %rbx, -8042(%rbp, 1)
popq %rbx



pushq %r10

// using rax
// the index is very cute! : -8018(%rbp, 1)
// using r10
pushq %rax
movq -8010(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8018(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -8050(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -8042(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -8050(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8042(%rbp, 1), %r10


 // byee 
movb -8051(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -7969(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7944(%rbp, 1), %rbx


movq %rbx, -7977(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7969(%rbp, 1), %rbx


addq %rbx, -7977(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7977(%rbp, 1), %rbx


movq %rbx, -7985(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7985(%rbp, 1), %rbx


movq %rbx, -7944(%rbp, 1)
popq %rbx




jmp .L147

.L148:


pushq %rbx
movq $0, %rbx


movq %rbx, -8059(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8059(%rbp, 1), %rbx


movq %rbx, -8067(%rbp, 1)
popq %rbx




.L151:





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7129(%rbp, 1), %rbx


movq %rbx, -8075(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8075(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8067(%rbp, 1), %rbx


movq %rbx, -8083(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8084(%rbp, 1), %bl


xorb %bl, -8084(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8075(%rbp, 1), %rbx


cmpq %rbx, -8083(%rbp, 1)
popq %rbx

setl -8084(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8084(%rbp, 1), %bl


andb %bl, -8084(%rbp, 1)
popq %rbx

jz .L152



pushq %r10

pushq %r11

movq -7129(%rbp, 1), %r10


movq -7137(%rbp, 1), %r11



movq %r11, -8116(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -8067(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8116(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8067(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


movb %bl, -8117(%rbp, 1)
popq %rbx






pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7644(%rbp, 1), %rbx


movq %rbx, -8125(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8125(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8067(%rbp, 1), %rbx


movq %rbx, -8133(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8125(%rbp, 1), %rbx


addq %rbx, -8133(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8133(%rbp, 1), %rbx


movq %rbx, -8141(%rbp, 1)
popq %rbx





pushq %r10

pushq %r11

movq -7692(%rbp, 1), %r10


movq -7700(%rbp, 1), %r11



movq %r11, -8149(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -8067(%rbp, 1)
// using r10
// using rax
// the index is very cute! : -8067(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8149(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8067(%rbp, 1), %r10


 // byee 
// hello 
movq -8149(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8067(%rbp, 1), %r10


 // byee 
movb 0(%rax, %r10, 1), %bl


andb %bl, 0(%rax, %r10, 1)
popq %rbx

jz .L149


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8117(%rbp, 1), %bl


movb %bl, -8174(%rbp, 1)
popq %rbx




pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -8157(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7660(%rbp, 1), %rbx


movq %rbx, -8165(%rbp, 1)
popq %rbx


movq -8165(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -8165(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -8165(%rbp, 1)
// using r10
pushq %rax
movq -8157(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8165(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -8173(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -8141(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -8173(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8141(%rbp, 1), %r10


 // byee 
movb -8174(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




jmp .L150


.L149:

pushq %rbx
movq $35, %rbx


movq %rbx, -8206(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8206(%rbp, 1), %bl


movb %bl, -8207(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8207(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8207(%rbp, 1), %bl


movb %bl, -8208(%rbp, 1)
popq %rbx




pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -8182(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7660(%rbp, 1), %rbx


movq %rbx, -8190(%rbp, 1)
popq %rbx


movq -8190(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -8190(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -8190(%rbp, 1)
// using r10
pushq %rax
movq -8182(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8190(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -8198(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -8141(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -8198(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8141(%rbp, 1), %r10


 // byee 
movb -8208(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




.L150:




pushq %rbx
movq $1, %rbx


movq %rbx, -8092(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8067(%rbp, 1), %rbx


movq %rbx, -8100(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8092(%rbp, 1), %rbx


addq %rbx, -8100(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8100(%rbp, 1), %rbx


movq %rbx, -8108(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8108(%rbp, 1), %rbx


movq %rbx, -8067(%rbp, 1)
popq %rbx




jmp .L151

.L152:



movb $0, -8209(%rbp, 1)



pushq %rbx

leaq -7503(%rbp, 1), %rbx

movq %rbx, -8217(%rbp, 1)


popq %rbx


movq -8217(%rbp, 1), %rdi


movq $300, %rsi



movb -8209(%rbp, 1), %dl



call render



pushq %rbx
movq $0, %rbx


movq %rbx, -8225(%rbp, 1)

popq %rbx


movl $0, -8229(%rbp, 1)



pushq %rbx

leaq -8225(%rbp, 1), %rbx

movq %rbx, -8237(%rbp, 1)


popq %rbx



pushq %rbx
movq $8, %rbx


movq %rbx, -8245(%rbp, 1)

popq %rbx


movl -8229(%rbp, 1), %edi


movq -8237(%rbp, 1), %rsi


movq -8245(%rbp, 1), %rdx



call read




pushq %rbx
movq $27, %rbx


movq %rbx, -8253(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8225(%rbp, 1), %rbx


movq %rbx, -8261(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8262(%rbp, 1), %bl


xorb %bl, -8262(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8253(%rbp, 1), %rbx


cmpq %rbx, -8261(%rbp, 1)
popq %rbx

sete -8262(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8262(%rbp, 1), %bl


andb %bl, -8262(%rbp, 1)
popq %rbx

jz .L153

jmp game_end




.L153:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8225(%rbp, 1), %bl


movb %bl, -8263(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8263(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8263(%rbp, 1), %bl


movb %bl, -8264(%rbp, 1)
popq %rbx




pushq %rbx
movq $122, %rbx


movq %rbx, -8272(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8225(%rbp, 1), %rbx


movq %rbx, -8280(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8281(%rbp, 1), %bl


xorb %bl, -8281(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8272(%rbp, 1), %rbx


cmpq %rbx, -8280(%rbp, 1)
popq %rbx

setbe -8281(%rbp, 1)




pushq %rbx
movq $97, %rbx


movq %rbx, -8289(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8225(%rbp, 1), %rbx


movq %rbx, -8297(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8298(%rbp, 1), %bl


xorb %bl, -8298(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8289(%rbp, 1), %rbx


cmpq %rbx, -8297(%rbp, 1)
popq %rbx

setae -8298(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8298(%rbp, 1), %bl


andb %bl, -8281(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8281(%rbp, 1), %bl


andb %bl, -8281(%rbp, 1)
popq %rbx

jz .L165


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7716(%rbp, 1), %rbx


movq %rbx, -8306(%rbp, 1)
popq %rbx



pushq %rbx
movq $0, %rbx


movq %rbx, -8314(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8314(%rbp, 1), %rbx


movq %rbx, -8322(%rbp, 1)
popq %rbx




.L155:





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7129(%rbp, 1), %rbx


movq %rbx, -8330(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8330(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8322(%rbp, 1), %rbx


movq %rbx, -8338(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8339(%rbp, 1), %bl


xorb %bl, -8339(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8330(%rbp, 1), %rbx


cmpq %rbx, -8338(%rbp, 1)
popq %rbx

setl -8339(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8339(%rbp, 1), %bl


andb %bl, -8339(%rbp, 1)
popq %rbx

jz .L156




pushq %r10

pushq %r11

movq -7129(%rbp, 1), %r10


movq -7137(%rbp, 1), %r11



movq %r11, -8371(%rbp, 1)


popq %r11

popq %r10



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8264(%rbp, 1), %bl


movb %bl, -8372(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8373(%rbp, 1), %bl


xorb %bl, -8373(%rbp, 1)
popq %rbx

// using rax
// the index is very cute! : -8322(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8371(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8322(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


cmpb %bl, -8372(%rbp, 1)
popq %rbx

sete -8373(%rbp, 1)





pushq %r10

pushq %r11

movq -7692(%rbp, 1), %r10


movq -7700(%rbp, 1), %r11



movq %r11, -8381(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -8322(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8381(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8322(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


movb %bl, -8382(%rbp, 1)
popq %rbx


xorb $1, -8382(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8382(%rbp, 1), %bl


andb %bl, -8373(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8373(%rbp, 1), %bl


andb %bl, -8373(%rbp, 1)
popq %rbx

jz .L154

movb $1, -8391(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8391(%rbp, 1), %bl


movb %bl, -8392(%rbp, 1)
popq %rbx




pushq %r10

pushq %r11

movq -7692(%rbp, 1), %r10


movq -7700(%rbp, 1), %r11



movq %r11, -8390(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -8322(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -8390(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8322(%rbp, 1), %r10


 // byee 
movb -8392(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




pushq %rbx
movq $1, %rbx


movq %rbx, -8400(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7716(%rbp, 1), %rbx


movq %rbx, -8408(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8400(%rbp, 1), %rbx


addq %rbx, -8408(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8408(%rbp, 1), %rbx


movq %rbx, -8416(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8416(%rbp, 1), %rbx


movq %rbx, -7716(%rbp, 1)
popq %rbx




.L154:




pushq %rbx
movq $1, %rbx


movq %rbx, -8347(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8322(%rbp, 1), %rbx


movq %rbx, -8355(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8347(%rbp, 1), %rbx


addq %rbx, -8355(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8355(%rbp, 1), %rbx


movq %rbx, -8363(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8363(%rbp, 1), %rbx


movq %rbx, -8322(%rbp, 1)
popq %rbx




jmp .L155

.L156:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7716(%rbp, 1), %rbx


movq %rbx, -8424(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8425(%rbp, 1), %bl


xorb %bl, -8425(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8306(%rbp, 1), %rbx


cmpq %rbx, -8424(%rbp, 1)
popq %rbx

sete -8425(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8425(%rbp, 1), %bl


andb %bl, -8425(%rbp, 1)
popq %rbx

jz .L164

movb $1, -8426(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8426(%rbp, 1), %bl


movb %bl, -8427(%rbp, 1)
popq %rbx



pushq %rbx
movq $0, %rbx


movq %rbx, -8435(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8435(%rbp, 1), %rbx


movq %rbx, -8443(%rbp, 1)
popq %rbx




.L158:





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7129(%rbp, 1), %rbx


movq %rbx, -8451(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8451(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8443(%rbp, 1), %rbx


movq %rbx, -8459(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8460(%rbp, 1), %bl


xorb %bl, -8460(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8451(%rbp, 1), %rbx


cmpq %rbx, -8459(%rbp, 1)
popq %rbx

setl -8460(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8460(%rbp, 1), %bl


andb %bl, -8460(%rbp, 1)
popq %rbx

jz .L159




pushq %r10

pushq %r11

movq -7129(%rbp, 1), %r10


movq -7137(%rbp, 1), %r11



movq %r11, -8492(%rbp, 1)


popq %r11

popq %r10



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8264(%rbp, 1), %bl


movb %bl, -8493(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8494(%rbp, 1), %bl


xorb %bl, -8494(%rbp, 1)
popq %rbx

// using rax
// the index is very cute! : -8443(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8492(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8443(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


cmpb %bl, -8493(%rbp, 1)
popq %rbx

sete -8494(%rbp, 1)





pushq %r10

pushq %r11

movq -7692(%rbp, 1), %r10


movq -7700(%rbp, 1), %r11



movq %r11, -8502(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -8443(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8502(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8443(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


andb %bl, -8494(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8494(%rbp, 1), %bl


andb %bl, -8494(%rbp, 1)
popq %rbx

jz .L157

movb $0, -8503(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8503(%rbp, 1), %bl


movb %bl, -8504(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8504(%rbp, 1), %bl


movb %bl, -8427(%rbp, 1)
popq %rbx




.L157:




pushq %rbx
movq $1, %rbx


movq %rbx, -8468(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8443(%rbp, 1), %rbx


movq %rbx, -8476(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8468(%rbp, 1), %rbx


addq %rbx, -8476(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8476(%rbp, 1), %rbx


movq %rbx, -8484(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8484(%rbp, 1), %rbx


movq %rbx, -8443(%rbp, 1)
popq %rbx




jmp .L158

.L159:


pushq %rbx
movq $0, %rbx


movq %rbx, -8512(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8512(%rbp, 1), %rbx


movq %rbx, -8520(%rbp, 1)
popq %rbx




.L161:



pushq %rbx
movq $8, %rbx


movq %rbx, -8528(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8528(%rbp, 1), %rbx


movq %rbx, -8536(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8536(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8520(%rbp, 1), %rbx


movq %rbx, -8544(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8545(%rbp, 1), %bl


xorb %bl, -8545(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8536(%rbp, 1), %rbx


cmpq %rbx, -8544(%rbp, 1)
popq %rbx

setl -8545(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8545(%rbp, 1), %bl


andb %bl, -8545(%rbp, 1)
popq %rbx

jz .L162




pushq %r10

leaq -7668(%rbp, 1), %r10

movq %r10, -8577(%rbp, 1)


popq %r10



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8264(%rbp, 1), %bl


movb %bl, -8578(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8579(%rbp, 1), %bl


xorb %bl, -8579(%rbp, 1)
popq %rbx

// using rax
// the index is very cute! : -8520(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8577(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8520(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


cmpb %bl, -8578(%rbp, 1)
popq %rbx

sete -8579(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8579(%rbp, 1), %bl


andb %bl, -8579(%rbp, 1)
popq %rbx

jz .L160

movb $0, -8580(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8580(%rbp, 1), %bl


movb %bl, -8581(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8581(%rbp, 1), %bl


movb %bl, -8427(%rbp, 1)
popq %rbx




.L160:




pushq %rbx
movq $1, %rbx


movq %rbx, -8553(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8520(%rbp, 1), %rbx


movq %rbx, -8561(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8553(%rbp, 1), %rbx


addq %rbx, -8561(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8561(%rbp, 1), %rbx


movq %rbx, -8569(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8569(%rbp, 1), %rbx


movq %rbx, -8520(%rbp, 1)
popq %rbx




jmp .L161

.L162:



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8427(%rbp, 1), %bl


andb %bl, -8427(%rbp, 1)
popq %rbx

jz .L163


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8264(%rbp, 1), %bl


movb %bl, -8590(%rbp, 1)
popq %rbx




pushq %r10

leaq -7668(%rbp, 1), %r10

movq %r10, -8589(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -7519(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -8589(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -7519(%rbp, 1), %r10


 // byee 
movb -8590(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx




pushq %rbx
movq $1, %rbx


movq %rbx, -8598(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7519(%rbp, 1), %rbx


movq %rbx, -8606(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8598(%rbp, 1), %rbx


addq %rbx, -8606(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8606(%rbp, 1), %rbx


movq %rbx, -8614(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8614(%rbp, 1), %rbx


movq %rbx, -7519(%rbp, 1)
popq %rbx




.L163:



.L164:



.L165:




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7716(%rbp, 1), %rbx


movq %rbx, -8622(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8622(%rbp, 1)





pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8623(%rbp, 1), %bl


xorb %bl, -8623(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7129(%rbp, 1), %rbx


cmpq %rbx, -8622(%rbp, 1)
popq %rbx

setae -8623(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8623(%rbp, 1), %bl


andb %bl, -8623(%rbp, 1)
popq %rbx

jz .L166

jmp game_win




.L166:



pushq %rbx
movq $8, %rbx


movq %rbx, -8631(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -7519(%rbp, 1), %rbx


movq %rbx, -8639(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8640(%rbp, 1), %bl


xorb %bl, -8640(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8631(%rbp, 1), %rbx


cmpq %rbx, -8639(%rbp, 1)
popq %rbx

setge -8640(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8640(%rbp, 1), %bl


andb %bl, -8640(%rbp, 1)
popq %rbx

jz .L167

jmp game_lose




.L167:



jmp .L168

.L169:


game_win:

.L181:
movb $1, -8641(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8641(%rbp, 1), %bl


andb %bl, -8641(%rbp, 1)
popq %rbx

jz .L182



pushq %rbx
movq $0, %rbx


movq %rbx, -8649(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -8649(%rbp, 1), %ebx


movl %ebx, -8653(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8653(%rbp, 1)



pushq %rbx
movq $1, %rbx


movq %rbx, -8661(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8661(%rbp, 1), %bx


movw %bx, -8663(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8663(%rbp, 1)



pushq %rbx
movq $0, %rbx


movq %rbx, -8671(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8671(%rbp, 1), %bx


movw %bx, -8673(%rbp, 1)
popq %rbx


movq $-1, %rax


andq %rax, -8673(%rbp, 1)


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8673(%rbp, 1), %bx


movw %bx, -8675(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8663(%rbp, 1), %bx


movw %bx, -8677(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -8653(%rbp, 1), %ebx


movl %ebx, -8681(%rbp, 1)
popq %rbx




pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8675(%rbp, 1), %bx


movw %bx, -8683(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8677(%rbp, 1), %bx


movw %bx, -8685(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movl -8681(%rbp, 1), %ebx


movl %ebx, -8689(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -8697(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8697(%rbp, 1), %rbx


movq %rbx, -8705(%rbp, 1)
popq %rbx




.L179:

pushq %rbx
movq $4, %rbx


movq %rbx, -8713(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8705(%rbp, 1), %rbx


movq %rbx, -8721(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8722(%rbp, 1), %bl


xorb %bl, -8722(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8713(%rbp, 1), %rbx


cmpq %rbx, -8721(%rbp, 1)
popq %rbx

setl -8722(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8722(%rbp, 1), %bl


andb %bl, -8722(%rbp, 1)
popq %rbx

jz .L180



pushq %r10

leaq -6680(%rbp, 1), %r10

movq %r10, -8754(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8705(%rbp, 1), %rbx


movq %rbx, -8762(%rbp, 1)
popq %rbx


movq -8762(%rbp, 1), %rax


imulq $160, %rax

movq %rax, -8762(%rbp, 1)



// mul on the CPU up here ^



pushq %rsi

pushq %rdi

pushq %rcx

// using rax
// the index is very cute! : -8762(%rbp, 1)
// using r10
pushq %rax
movq -8754(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
pushq %r10
movq -8762(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %rsi
popq %r10
popq %rax

leaq -8922(%rbp, 1), %rdi

movq $160, %rcx


cld

rep movsb

popq %rcx

popq %rdi

popq %rsi



pushq %rbx
movq $0, %rbx


movq %rbx, -8930(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8930(%rbp, 1), %rbx


movq %rbx, -8938(%rbp, 1)
popq %rbx




.L172:

pushq %rbx
movq $10, %rbx


movq %rbx, -8946(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8938(%rbp, 1), %rbx


movq %rbx, -8954(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8955(%rbp, 1), %bl


xorb %bl, -8955(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8946(%rbp, 1), %rbx


cmpq %rbx, -8954(%rbp, 1)
popq %rbx

setl -8955(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -8955(%rbp, 1), %bl


andb %bl, -8955(%rbp, 1)
popq %rbx

jz .L173



pushq %r10

leaq -8922(%rbp, 1), %r10

movq %r10, -8987(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8938(%rbp, 1), %rbx


movq %rbx, -8995(%rbp, 1)
popq %rbx


movq -8995(%rbp, 1), %rax


imulq $16, %rax

movq %rax, -8995(%rbp, 1)



// mul on the CPU up here ^



// using rax
// the index is very cute! : -8995(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8987(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8995(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 8(%rax, %r10, 1), %rbx


movq %rbx, -9003(%rbp, 1)
popq %rbx


// using rax
// the index is very cute! : -8995(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -8987(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -8995(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movq 0(%rax, %r10, 1), %rbx


movq %rbx, -9011(%rbp, 1)
popq %rbx




pushq %rbx
movq $0, %rbx


movq %rbx, -9019(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9019(%rbp, 1), %rbx


movq %rbx, -9027(%rbp, 1)
popq %rbx




.L170:

pushq %rbx
movq $30, %rbx


movq %rbx, -9035(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9027(%rbp, 1), %rbx


movq %rbx, -9043(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9044(%rbp, 1), %bl


xorb %bl, -9044(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9035(%rbp, 1), %rbx


cmpq %rbx, -9043(%rbp, 1)
popq %rbx

setl -9044(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9044(%rbp, 1), %bl


andb %bl, -9044(%rbp, 1)
popq %rbx

jz .L171



pushq %r10

pushq %r11

movq -9003(%rbp, 1), %r10


movq -9011(%rbp, 1), %r11



movq %r11, -9100(%rbp, 1)


popq %r11

popq %r10



// using rax
// the index is very cute! : -9027(%rbp, 1)
// using r10
pushq %rbx
// hello 
movq -9100(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -9027(%rbp, 1), %r10


 // byee 
// hello 

 // byee 
movb 0(%rax, %r10, 1), %bl


movb %bl, -9101(%rbp, 1)
popq %rbx




pushq %r10

leaq -7503(%rbp, 1), %r10

movq %r10, -9076(%rbp, 1)


popq %r10

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8938(%rbp, 1), %rbx


movq %rbx, -9084(%rbp, 1)
popq %rbx


movq -9084(%rbp, 1), %rax


imulq $30, %rax

movq %rax, -9084(%rbp, 1)



// mul on the CPU up here ^




pushq %r10

// using rax
// the index is very cute! : -9084(%rbp, 1)
// using r10
pushq %rax
movq -9076(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -9084(%rbp, 1), %r10

leaq 0(%rax, %r10, 1), %r10
popq %rax

movq %r10, -9092(%rbp, 1)


popq %r10



// using rax
// the index is very cute! : -9027(%rbp, 1)
// using r10
pushq %rbx
// hello 

 // byee 
// hello 
movq -9092(%rbp, 1), %rax

// i am trying to move the index to r10, am i going to succeed? ...
movq -9027(%rbp, 1), %r10


 // byee 
movb -9101(%rbp, 1), %bl


movb %bl, 0(%rax, %r10, 1)
popq %rbx





pushq %rbx
movq $1, %rbx


movq %rbx, -9052(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9027(%rbp, 1), %rbx


movq %rbx, -9060(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9052(%rbp, 1), %rbx


addq %rbx, -9060(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9060(%rbp, 1), %rbx


movq %rbx, -9068(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -9068(%rbp, 1), %rbx


movq %rbx, -9027(%rbp, 1)
popq %rbx




jmp .L170

.L171:




pushq %rbx
movq $1, %rbx


movq %rbx, -8963(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8938(%rbp, 1), %rbx


movq %rbx, -8971(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8963(%rbp, 1), %rbx


addq %rbx, -8971(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8971(%rbp, 1), %rbx


movq %rbx, -8979(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8979(%rbp, 1), %rbx


movq %rbx, -8938(%rbp, 1)
popq %rbx




jmp .L172

.L173:



movb $1, -9102(%rbp, 1)



pushq %rbx

leaq -7503(%rbp, 1), %rbx

movq %rbx, -9110(%rbp, 1)


popq %rbx


movq -9110(%rbp, 1), %rdi


movq $300, %rsi



movb -9102(%rbp, 1), %dl



call render



pushq %rbx

leaq -8689(%rbp, 1), %rbx

movq %rbx, -9118(%rbp, 1)


popq %rbx



movl $1, -9122(%rbp, 1)



movl $1000, -9126(%rbp, 1)



movq -9118(%rbp, 1), %rdi


movl -9122(%rbp, 1), %esi


movl -9126(%rbp, 1), %edx



call poll






movw $0, -9128(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8683(%rbp, 1), %bx


movw %bx, -9130(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9131(%rbp, 1), %bl


xorb %bl, -9131(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -9128(%rbp, 1), %bx


cmpw %bx, -9130(%rbp, 1)
popq %rbx

sete -9131(%rbp, 1)


xorb $1, -9131(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9131(%rbp, 1), %bl


andb %bl, -9131(%rbp, 1)
popq %rbx

jz .L178




movw $1, -9133(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -8683(%rbp, 1), %bx


movw %bx, -9135(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -9133(%rbp, 1), %bx


andw %bx, -9135(%rbp, 1)
popq %rbx



movw $0, -9137(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9138(%rbp, 1), %bl


xorb %bl, -9138(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movw -9137(%rbp, 1), %bx


cmpw %bx, -9135(%rbp, 1)
popq %rbx

sete -9138(%rbp, 1)


xorb $1, -9138(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9138(%rbp, 1), %bl


andb %bl, -9138(%rbp, 1)
popq %rbx

jz .L176

movb $0, -9139(%rbp, 1)



movl $0, -9143(%rbp, 1)



pushq %rbx

leaq -9139(%rbp, 1), %rbx

movq %rbx, -9151(%rbp, 1)


popq %rbx



pushq %rbx
movq $1, %rbx


movq %rbx, -9159(%rbp, 1)

popq %rbx


movl -9143(%rbp, 1), %edi


movq -9151(%rbp, 1), %rsi


movq -9159(%rbp, 1), %rdx



call read




movb $27, -9160(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9139(%rbp, 1), %bl


movb %bl, -9161(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9162(%rbp, 1), %bl


xorb %bl, -9162(%rbp, 1)
popq %rbx

pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9160(%rbp, 1), %bl


cmpb %bl, -9161(%rbp, 1)
popq %rbx

sete -9162(%rbp, 1)



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movb -9162(%rbp, 1), %bl


andb %bl, -9162(%rbp, 1)
popq %rbx

jz .L174

jmp game_end




.L174:



jmp .L177


.L176:


movq $.L175, %rdi



call printf

movl %eax, -9166(%rbp, 1)





.L177:



.L178:




pushq %rbx
movq $1, %rbx


movq %rbx, -8730(%rbp, 1)

popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8705(%rbp, 1), %rbx


movq %rbx, -8738(%rbp, 1)
popq %rbx


pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8730(%rbp, 1), %rbx


addq %rbx, -8738(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8738(%rbp, 1), %rbx


movq %rbx, -8746(%rbp, 1)
popq %rbx



pushq %rbx
// hello 

 // byee 
// hello 

 // byee 
movq -8746(%rbp, 1), %rbx


movq %rbx, -8705(%rbp, 1)
popq %rbx




jmp .L179

.L180:



jmp .L181

.L182:


game_lose:

game_end:

movl $0, -9170(%rbp, 1)



movl $0, -9174(%rbp, 1)



pushq %rbx

leaq -6740(%rbp, 1), %rbx

movq %rbx, -9182(%rbp, 1)


popq %rbx



movl -9170(%rbp, 1), %edi


movl -9174(%rbp, 1), %esi


movq -9182(%rbp, 1), %rdx



call tcsetattr




._main:
movq %rbp, %rsp

popq %rbp

ret




.data
















































































































































.L1: .byte 27, 91, 50, 74, 0




























































































































































.L4: .byte 27, 91, 49, 109, 0







.L5: .byte 27, 91, 51, 56, 58, 53, 58, 37, 104, 104, 100, 109, 0

































.L7: .byte 27, 91, 48, 109, 0
















































.L12: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L13: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L14: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L15: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 124, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L16: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 88, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L17: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 32, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L18: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L19: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L20: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L21: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0















































































.L22: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L23: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L24: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L25: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 124, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L26: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 88, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L27: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L28: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L29: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L30: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L31: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0




















































































.L32: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L33: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L34: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L35: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 124, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L36: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 88, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L37: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L38: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L39: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L40: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L41: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0




















































































.L42: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L43: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L44: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L45: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 47, 124, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L46: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L47: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L48: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L49: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L50: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L51: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0




















































































.L52: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L53: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L54: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L55: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 92, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L56: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L57: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L58: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L59: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L60: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L61: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0




















































































.L62: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L63: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L64: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L65: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L66: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L67: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L68: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L69: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L70: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L71: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0




















































































.L72: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L73: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L74: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 79, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L75: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L76: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L77: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L78: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L79: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L80: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L81: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0




















































































.L82: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L83: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 45, 45, 45, 45, 45, 45, 45, 45, 45, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L84: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L85: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L86: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L87: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L88: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 95, 95, 95, 124, 95, 95, 95, 32, 32, 32, 32, 32, 0

.L89: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L90: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0

.L91: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 0










































































































.L92: .byte 92, 92, 92, 92, 92, 32, 32, 61, 61, 61, 47, 47, 47, 32, 61, 61, 92, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L93: .byte 92, 92, 92, 92, 92, 92, 32, 61, 61, 47, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L94: .byte 92, 92, 92, 92, 92, 92, 92, 61, 47, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L95: .byte 92, 92, 92, 92, 92, 92, 92, 124, 32, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L96: .byte 45, 45, 45, 45, 45, 45, 45, 124, 32, 92, 92, 92, 32, 61, 61, 47, 92, 92, 92, 32, 61, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L97: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 124, 32, 0

.L98: .byte 92, 92, 32, 32, 32, 32, 94, 32, 32, 32, 61, 61, 47, 47, 47, 32, 61, 61, 32, 92, 124, 92, 32, 61, 61, 124, 32, 124, 124, 32, 0

.L99: .byte 92, 92, 92, 32, 61, 61, 47, 92, 32, 61, 61, 47, 124, 124, 124, 32, 32, 61, 61, 124, 124, 92, 92, 32, 61, 124, 32, 32, 32, 32, 0

.L100: .byte 92, 92, 92, 92, 61, 47, 32, 32, 92, 61, 47, 32, 124, 124, 124, 32, 32, 61, 61, 124, 124, 32, 92, 92, 61, 124, 32, 92, 47, 32, 0

.L101: .byte 92, 92, 92, 92, 47, 32, 32, 32, 32, 118, 32, 32, 32, 92, 92, 32, 61, 61, 32, 47, 124, 32, 32, 92, 92, 124, 32, 47, 92, 32, 0




















































































.L102: .byte 92, 92, 92, 92, 92, 32, 32, 61, 61, 61, 47, 47, 47, 32, 61, 61, 92, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L103: .byte 92, 92, 92, 92, 92, 92, 32, 61, 61, 47, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L104: .byte 92, 92, 92, 92, 92, 92, 92, 61, 47, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L105: .byte 92, 92, 92, 92, 92, 92, 92, 124, 32, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L106: .byte 45, 45, 45, 45, 45, 45, 45, 124, 32, 92, 92, 92, 32, 61, 61, 47, 92, 92, 92, 32, 61, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L107: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 124, 32, 0

.L108: .byte 92, 92, 92, 92, 32, 32, 32, 32, 94, 32, 32, 32, 61, 61, 47, 32, 61, 61, 32, 92, 124, 92, 32, 61, 61, 124, 32, 124, 124, 32, 0

.L109: .byte 92, 92, 92, 92, 92, 32, 61, 61, 47, 92, 32, 61, 61, 47, 124, 32, 32, 61, 61, 124, 124, 92, 92, 32, 61, 124, 32, 32, 32, 32, 0

.L110: .byte 92, 92, 92, 92, 92, 92, 61, 47, 32, 32, 92, 61, 47, 32, 124, 32, 32, 61, 61, 124, 124, 32, 92, 92, 61, 124, 32, 92, 47, 32, 0

.L111: .byte 92, 92, 92, 92, 92, 92, 47, 32, 32, 32, 32, 118, 32, 92, 92, 32, 61, 61, 32, 47, 124, 32, 32, 92, 92, 124, 32, 47, 92, 32, 0




















































































.L112: .byte 92, 92, 92, 92, 92, 32, 32, 61, 61, 61, 47, 47, 47, 32, 61, 61, 92, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L113: .byte 92, 92, 92, 92, 92, 92, 32, 61, 61, 47, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L114: .byte 92, 92, 92, 92, 92, 92, 92, 61, 47, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L115: .byte 92, 92, 92, 92, 92, 92, 92, 124, 32, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L116: .byte 45, 45, 45, 45, 45, 45, 45, 124, 32, 92, 92, 92, 32, 61, 61, 47, 92, 92, 92, 32, 61, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L117: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 124, 32, 0

.L118: .byte 92, 92, 32, 32, 32, 32, 94, 32, 32, 32, 61, 61, 47, 47, 47, 47, 32, 61, 61, 32, 92, 92, 32, 61, 61, 124, 32, 124, 124, 32, 0

.L119: .byte 92, 92, 92, 32, 61, 61, 47, 92, 32, 61, 61, 47, 124, 124, 124, 124, 32, 61, 61, 61, 124, 92, 92, 32, 61, 124, 32, 32, 32, 32, 0

.L120: .byte 92, 92, 92, 92, 61, 47, 32, 32, 92, 61, 47, 32, 124, 124, 124, 124, 32, 61, 61, 61, 124, 32, 92, 92, 61, 124, 32, 92, 47, 32, 0

.L121: .byte 92, 92, 92, 92, 47, 32, 32, 32, 32, 118, 32, 32, 32, 92, 92, 92, 32, 61, 61, 32, 47, 32, 32, 92, 92, 124, 32, 47, 92, 32, 0




















































































.L122: .byte 92, 92, 92, 92, 92, 32, 32, 61, 61, 61, 47, 47, 47, 32, 61, 61, 92, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L123: .byte 92, 92, 92, 92, 92, 92, 32, 61, 61, 47, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L124: .byte 92, 92, 92, 92, 92, 92, 92, 61, 47, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L125: .byte 92, 92, 92, 92, 92, 92, 92, 124, 32, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 32, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L126: .byte 45, 45, 45, 45, 45, 45, 45, 124, 32, 92, 92, 92, 32, 61, 61, 47, 92, 92, 92, 32, 61, 61, 61, 124, 32, 32, 32, 124, 124, 32, 0

.L127: .byte 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 124, 124, 32, 0

.L128: .byte 92, 92, 32, 32, 32, 32, 94, 32, 32, 32, 61, 61, 47, 47, 47, 32, 61, 61, 32, 92, 124, 124, 92, 92, 32, 61, 61, 124, 124, 32, 0

.L129: .byte 92, 92, 92, 32, 61, 61, 47, 92, 32, 61, 61, 47, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 92, 92, 92, 32, 61, 124, 32, 32, 0

.L130: .byte 92, 92, 92, 92, 61, 47, 32, 32, 92, 61, 47, 32, 124, 124, 124, 32, 32, 61, 61, 124, 124, 124, 32, 92, 92, 92, 61, 124, 47, 32, 0

.L131: .byte 92, 92, 92, 92, 47, 32, 32, 32, 32, 118, 32, 32, 32, 92, 92, 32, 61, 61, 32, 47, 124, 124, 32, 32, 92, 92, 92, 124, 92, 32, 0













































































































































































































.L132: .byte 27, 91, 50, 74, 0







.L133: .byte 67, 104, 111, 111, 115, 101, 32, 97, 32, 119, 111, 114, 100, 32, 97, 110, 100, 32, 116, 121, 112, 101, 32, 105, 116, 44, 32, 116, 104, 101, 110, 32, 112, 114, 101, 115, 115, 32, 101, 110, 116, 101, 114, 46, 10, 68, 111, 110, 39, 116, 32, 119, 111, 114, 114, 121, 44, 32, 105, 116, 39, 115, 32, 110, 111, 116, 32, 103, 111, 110, 110, 97, 32, 98, 101, 32, 118, 105, 115, 105, 98, 108, 101, 33, 10, 114, 101, 97, 100, 105, 110, 103, 32, 37, 100, 47, 37, 100, 10, 0












































































































































































.L141: .byte 101, 114, 114, 111, 114, 58, 32, 119, 111, 114, 100, 32, 105, 115, 32, 116, 111, 111, 32, 98, 105, 103, 32, 102, 111, 114, 32, 116, 104, 101, 32, 115, 99, 114, 101, 101, 110, 32, 119, 105, 100, 116, 104, 33, 10, 0







































































































































































































































































































































































































































































































































































































































































































































































































































































































































































.L175: .byte 114, 101, 97, 100, 32, 101, 114, 114, 111, 114, 32, 102, 114, 111, 109, 32, 115, 116, 100, 105, 110, 33, 0


















































