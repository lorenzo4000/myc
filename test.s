struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
[32]uint8
struct    has padding of  0
struct    has padding of  3
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
struct    has padding of  0
[10][30]uint8
[30]uint8
struct    has padding of  0
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
switch exp type :  uint8  case exp type :  int_literal
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
	AST_FUNCTION_DEFINITION(int32) | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = time ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = tloc ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
		AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_STRUCT_DEFINITION(pollfd) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = pollfd ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fd ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int16) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = events ]
				AST_DATATYPE(int16) : [ int_value = 0, string_value = int16 ]
			AST_VARIABLE_DEFINITION(int16) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = revents ]
				AST_DATATYPE(int16) : [ int_value = 0, string_value = int16 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = poll ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(*pollfd) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fds ]
				AST_DATATYPE(*pollfd) : [ int_value = 0, string_value = *pollfd ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = nfds ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = timeout ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
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
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = sleep ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = seconds ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
		AST_DATATYPE() : 
	AST_STRUCT_DEFINITION(termios) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = termios ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_iflag ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_oflag ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_cflag ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_lflag ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_line ]
				AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
			AST_VARIABLE_DEFINITION([32]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_cc ]
				AST_DATATYPE([32]uint8) : [ int_value = 0, string_value = [32]uint8 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_ispeed ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c_ospeed ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = tcgetattr ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fd ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(*termios) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = __termios_p ]
				AST_DATATYPE(*termios) : [ int_value = 0, string_value = *termios ]
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION() | ASTO_FUNCTION_EXTERNAL : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = tcsetattr ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = fd ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = __optional_actions ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(*termios) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = __termios_p ]
				AST_DATATYPE(*termios) : [ int_value = 0, string_value = *termios ]
		AST_DATATYPE() : 
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = render ]
		AST_FUNCTION_DEFINITION_ARGS() : 
			AST_VARIABLE_DEFINITION([][30]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = screen ]
				AST_DATATYPE([][30]uint8) : [ int_value = 0, string_value = [][30]uint8 ]
			AST_VARIABLE_DEFINITION(bool) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = rainbow ]
				AST_DATATYPE(bool) : [ int_value = 0, string_value = bool ]
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = [2J ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
			AST_VARIABLE_DEFINITION(uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = color_k ]
				AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
				AST_LITERAL(uint8) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = color_v ]
				AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
				AST_LITERAL(uint8) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = screen_size ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_CASTING(int64) : 
					AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_VARIABLE_NAME([][30]uint8) : [ int_value = 0, string_value = screen ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(int64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = screen_size ]
				AST_FOR_UPDATE() : 
					AST_OP_ESUM(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
							AST_CASTING(int64) : 
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
									AST_OP_INDEX([30]uint8) : 
										AST_VARIABLE_NAME([][30]uint8) : [ int_value = 0, string_value = screen ]
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
						AST_FOR_UPDATE() : 
							AST_OP_ASN(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
								AST_OP_SUM(int64) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
									AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_IF() : 
								AST_VARIABLE_NAME(bool) : [ int_value = 0, string_value = rainbow ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_IF() : 
										AST_OP_GOE(bool) : 
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
											AST_LITERAL(uint8) : [ int_value = 6, string_value =  ]
										AST_BODY() | ASTO_BODY_IF : 
											AST_OP_ASN(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
												AST_LITERAL(uint8) : [ int_value = 0, string_value =  ]
											AST_OP_ASN(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
												AST_OP_SUM(uint8) : 
													AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
													AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
									AST_IF() : 
										AST_OP_GOE(bool) : 
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
											AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
										AST_BODY() | ASTO_BODY_IF : 
											AST_OP_ASN(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
												AST_LITERAL(uint8) : [ int_value = 0, string_value =  ]
									AST_VARIABLE_DEFINITION(uint8) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = color ]
										AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
										AST_OP_SUM(uint8) : 
											AST_LITERAL(uint8) : [ int_value = 46, string_value =  ]
											AST_OP_SUM(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
												AST_OP_MUL(uint8) : 
													AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
													AST_OP_MUL(uint8) : 
														AST_LITERAL(uint8) : [ int_value = 6, string_value =  ]
														AST_LITERAL(uint8) : [ int_value = 6, string_value =  ]
									AST_OP_ASN(uint8) : 
										AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
										AST_OP_SUM(uint8) : 
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
											AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
									AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
										AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
											AST_LITERAL(static_string) : [ int_value = 0, string_value = [1m ]
											AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
									AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
										AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
											AST_LITERAL(static_string) : [ int_value = 0, string_value = [38:5:%hhdm ]
											AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
										AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color ]
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = putchar ]
								AST_OP_INDEX(uint8) : 
									AST_OP_INDEX([30]uint8) : 
										AST_VARIABLE_NAME([][30]uint8) : [ int_value = 0, string_value = screen ]
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
								AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
									AST_LITERAL(static_string) : [ int_value = 0, string_value = [0m ]
									AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = putchar ]
						AST_LITERAL(uint8) : [ int_value = 10, string_value =  ]
	AST_STRUCT_DEFINITION(V2) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = V2 ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = x ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = y ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
	AST_STRUCT_DEFINITION(Snake) : 
		AST_STRUCT_DEFINITION_NAME() : [ int_value = 0, string_value = Snake ]
		AST_STRUCT_DEFINITION_BODY() : 
			AST_VARIABLE_DEFINITION(V2) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = head ]
				AST_DATATYPE(V2) : [ int_value = 0, string_value = V2 ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = length ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
			AST_VARIABLE_DEFINITION(uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = dir ]
				AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
			AST_VARIABLE_DEFINITION([10][30]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = moves ]
				AST_DATATYPE([10][30]uint8) : [ int_value = 0, string_value = [10][30]uint8 ]
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = difficulty ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
				AST_LITERAL(int32) : [ int_value = 3, string_value =  ]
			AST_VARIABLE_DEFINITION(termios) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = current_termios ]
				AST_DATATYPE(termios) : [ int_value = 0, string_value = termios ]
			AST_FUNCTION_CALL() : [ int_value = 0, string_value = tcgetattr ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE(*termios) : 
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = current_termios ]
			AST_VARIABLE_DEFINITION(termios) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = new_termios ]
				AST_DATATYPE(termios) : [ int_value = 0, string_value = termios ]
				AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = current_termios ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ICANON ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL(uint32) : [ int_value = 2, string_value =  ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ECHO ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL(uint32) : [ int_value = 8, string_value =  ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = new_flags ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_OP_BORI(uint32) : 
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = ICANON ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = ECHO ]
			AST_OP_ASN(uint32) : 
				AST_OP_DOT(uint32) : [ int_value = 0, string_value = c_lflag ]
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = new_termios ]
					AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = c_lflag ]
				AST_OP_BAND(uint32) : 
					AST_OP_DOT(uint32) : [ int_value = 0, string_value = c_lflag ]
						AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = new_termios ]
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = c_lflag ]
					AST_OP_BNOT(uint32) : 
						AST_VARIABLE_NAME(uint32) : [ int_value = 0, string_value = new_flags ]
			AST_FUNCTION_CALL() : [ int_value = 0, string_value = tcsetattr ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE(*termios) : 
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = new_termios ]
			AST_VARIABLE_DEFINITION([10][30]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = screen ]
				AST_DATATYPE([10][30]uint8) : [ int_value = 0, string_value = [10][30]uint8 ]
			AST_VARIABLE_DEFINITION(Snake) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = snake ]
				AST_DATATYPE(Snake) : [ int_value = 0, string_value = Snake ]
				AST_COMPOSITE_LITERAL(Snake) : 
					AST_DATATYPE(Snake) : [ int_value = 0, string_value = Snake ]
					AST_COMPOSITE_LITERAL(V2) : 
						AST_DATATYPE(V2) : [ int_value = 0, string_value = V2 ]
						AST_LITERAL(int32) : [ int_value = 15, string_value =  ]
						AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
					AST_LITERAL(int32) : [ int_value = 5, string_value =  ]
					AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
					AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
			AST_FUNCTION_CALL() : [ int_value = 0, string_value = srand ]
				AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = time ]
					AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(V2) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = reward ]
				AST_DATATYPE(V2) : [ int_value = 0, string_value = V2 ]
				AST_COMPOSITE_LITERAL(V2) : 
					AST_DATATYPE(V2) : [ int_value = 0, string_value = V2 ]
					AST_OP_MOD(int32) : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = rand ]
						AST_LITERAL(int32) : [ int_value = 30, string_value =  ]
					AST_OP_MOD(int32) : 
						AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = rand ]
						AST_LITERAL(int32) : [ int_value = 10, string_value =  ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = points ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = game_status ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(pollfd) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = poll_struct ]
				AST_DATATYPE(pollfd) : [ int_value = 0, string_value = pollfd ]
				AST_COMPOSITE_LITERAL(pollfd) : 
					AST_DATATYPE(pollfd) : [ int_value = 0, string_value = pollfd ]
					AST_CASTING(int32) : 
						AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
						AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
					AST_CASTING(int16) : 
						AST_DATATYPE(int16) : [ int_value = 0, string_value = int16 ]
						AST_LITERAL(int64) : [ int_value = 1, string_value =  ]
					AST_CASTING(int16) : 
						AST_DATATYPE(int16) : [ int_value = 0, string_value = int16 ]
						AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
			AST_WHILE : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_BODY() | ASTO_BODY_WHILE : 
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_CASTING(int64) : 
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
									AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
									AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
						AST_FOR_UPDATE() : 
							AST_OP_INC(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_FOR : 
								AST_FOR_INIT() : 
									AST_VARIABLE_DEFINITION(int64) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
								AST_OP_LES(bool) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
									AST_CASTING(int64) : 
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
											AST_OP_INDEX([30]uint8) : 
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
											AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
								AST_FOR_UPDATE() : 
									AST_OP_INC(int64) : 
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
								AST_BODY() | ASTO_BODY_FOR : 
									AST_BODY_RESULT() : 
										AST_IF() : 
											AST_OP_OR(bool) : 
												AST_OP_EQU(bool) : 
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
													AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
												AST_OP_OR(bool) : 
													AST_OP_EQU(bool) : 
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
														AST_LITERAL(int64) : [ int_value = 9, string_value =  ]
													AST_OP_OR(bool) : 
														AST_OP_EQU(bool) : 
															AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
															AST_LITERAL(int64) : [ int_value = 0, string_value =  ]
														AST_OP_EQU(bool) : 
															AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
															AST_LITERAL(int64) : [ int_value = 29, string_value =  ]
											AST_BODY() | ASTO_BODY_IF : 
												AST_OP_ASN(uint8) : 
													AST_OP_INDEX(uint8) : 
														AST_OP_INDEX([30]uint8) : 
															AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
															AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
													AST_LITERAL(uint8) : [ int_value = 46, string_value =  ]
											AST_BODY() | ASTO_BODY_ELSE : 
												AST_OP_ASN(uint8) : 
													AST_OP_INDEX(uint8) : 
														AST_OP_INDEX([30]uint8) : 
															AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
															AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
													AST_LITERAL(uint8) : [ int_value = 32, string_value =  ]
					AST_OP_ASN(uint8) : 
						AST_OP_INDEX(uint8) : 
							AST_OP_INDEX([30]uint8) : 
								AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
								AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
									AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = reward ]
									AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
							AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
								AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = reward ]
								AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
						AST_LITERAL(uint8) : [ int_value = 42, string_value =  ]
					AST_VARIABLE_DEFINITION(int32) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = x ]
						AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
						AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
							AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
								AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
								AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
							AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
					AST_VARIABLE_DEFINITION(int32) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = y ]
						AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
						AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
							AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
								AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
								AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
							AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
					AST_VARIABLE_DEFINITION(uint8) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = current_dir ]
						AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
						AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
							AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
							AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int32) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
								AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
								AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
							AST_OP_DOT(int32) : [ int_value = 0, string_value = length ]
								AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
								AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = length ]
						AST_FOR_UPDATE() : 
							AST_OP_INC(int32) : 
								AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
						AST_BODY(int32) | ASTO_BODY_FOR : 
							AST_IF() : 
								AST_OP_OR(bool) : 
									AST_OP_GOE(bool) : 
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
										AST_LITERAL(int32) : [ int_value = 30, string_value =  ]
									AST_OP_OR(bool) : 
										AST_OP_LES(bool) : 
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
											AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
										AST_OP_OR(bool) : 
											AST_OP_GOE(bool) : 
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
												AST_LITERAL(int32) : [ int_value = 10, string_value =  ]
											AST_OP_LES(bool) : 
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
												AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_JUMP() : [ int_value = 0, string_value = game_lose ]
							AST_IF() : 
								AST_OP_OR(bool) : 
									AST_OP_EQU(bool) : 
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
										AST_LITERAL(uint8) : [ int_value = 64, string_value =  ]
									AST_OP_EQU(bool) : 
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
										AST_LITERAL(uint8) : [ int_value = 79, string_value =  ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_JUMP() : [ int_value = 0, string_value = game_lose ]
							AST_IF() : 
								AST_OP_EQU(bool) : 
									AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
									AST_OP_SUB(int32) : 
										AST_OP_DOT(int32) : [ int_value = 0, string_value = length ]
											AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = length ]
										AST_LITERAL(int32) : [ int_value = 1, string_value =  ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_OP_ASN(uint8) : 
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
													AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
													AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
										AST_LITERAL(uint8) : [ int_value = 0, string_value =  ]
							AST_IF() : 
								AST_OP_EQU(bool) : 
									AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = i ]
									AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_OP_ASN(uint8) : 
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
										AST_LITERAL(uint8) : [ int_value = 64, string_value =  ]
								AST_BODY() | ASTO_BODY_ELSE : 
									AST_OP_ASN(uint8) : 
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
										AST_LITERAL(uint8) : [ int_value = 79, string_value =  ]
							AST_IF() : 
								AST_OP_GRT(bool) : 
									AST_OP_INDEX(uint8) : 
										AST_OP_INDEX([30]uint8) : 
											AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
												AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
									AST_LITERAL(uint8) : [ int_value = 0, string_value =  ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_OP_ASN(uint8) : 
										AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = current_dir ]
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
													AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
													AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
							AST_BODY_RESULT(int32) : 
								AST_SWITCH(int32) : 
									AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = current_dir ]
									AST_CASE(int32) : 
										AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
										AST_BODY(int32) | ASTO_BODY_CASE : 
											AST_BODY_RESULT(int32) : 
												AST_OP_INC(int32) : 
													AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
									AST_CASE(int32) : 
										AST_LITERAL(uint8) : [ int_value = 2, string_value =  ]
										AST_BODY(int32) | ASTO_BODY_CASE : 
											AST_BODY_RESULT(int32) : 
												AST_OP_DEC(int32) : 
													AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
									AST_CASE(int32) : 
										AST_LITERAL(uint8) : [ int_value = 3, string_value =  ]
										AST_BODY(int32) | ASTO_BODY_CASE : 
											AST_BODY_RESULT(int32) : 
												AST_OP_INC(int32) : 
													AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
									AST_CASE(int32) : 
										AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
										AST_BODY(int32) | ASTO_BODY_CASE : 
											AST_BODY_RESULT(int32) : 
												AST_OP_DEC(int32) : 
													AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
					AST_FUNCTION_CALL() : [ int_value = 0, string_value = render ]
						AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
						AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
					AST_FUNCTION_CALL() : [ int_value = 0, string_value = poll ]
						AST_OP_REFERENCE(*pollfd) : 
							AST_VARIABLE_NAME(pollfd) : [ int_value = 0, string_value = poll_struct ]
						AST_LITERAL(int32) : [ int_value = 1, string_value =  ]
						AST_OP_DIV(int32) : 
							AST_LITERAL(int32) : [ int_value = 1000, string_value =  ]
							AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = difficulty ]
					AST_IF() : 
						AST_OP_NEQ(bool) : 
							AST_OP_DOT(int16) : [ int_value = 0, string_value = revents ]
								AST_VARIABLE_NAME(pollfd) : [ int_value = 0, string_value = poll_struct ]
								AST_VARIABLE_NAME(int16) : [ int_value = 0, string_value = revents ]
							AST_LITERAL(int16) : [ int_value = 0, string_value =  ]
						AST_BODY() | ASTO_BODY_IF : 
							AST_BODY_RESULT() : 
								AST_IF() : 
									AST_OP_NEQ(bool) : 
										AST_OP_BAND(int16) : 
											AST_OP_DOT(int16) : [ int_value = 0, string_value = revents ]
												AST_VARIABLE_NAME(pollfd) : [ int_value = 0, string_value = poll_struct ]
												AST_VARIABLE_NAME(int16) : [ int_value = 0, string_value = revents ]
											AST_LITERAL(int16) : [ int_value = 1, string_value =  ]
										AST_LITERAL(int16) : [ int_value = 0, string_value =  ]
									AST_BODY() | ASTO_BODY_IF : 
										AST_VARIABLE_DEFINITION(uint64) : 
											AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
											AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
										AST_FUNCTION_CALL() : [ int_value = 0, string_value = read ]
											AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
											AST_OP_REFERENCE(*uint64) : 
												AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = c ]
											AST_LITERAL(uint64) : [ int_value = 8, string_value =  ]
										AST_IF() : 
											AST_OP_EQU(bool) : 
												AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = c ]
												AST_LITERAL(uint64) : [ int_value = 27, string_value =  ]
											AST_BODY() | ASTO_BODY_IF : 
												AST_JUMP() : [ int_value = 0, string_value = game_end ]
										AST_IF() : 
											AST_OP_EQU(bool) : 
												AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = c ]
												AST_LITERAL(uint64) : [ int_value = 4283163, string_value =  ]
											AST_BODY() | ASTO_BODY_IF : 
												AST_BODY_RESULT() : 
													AST_IF() : 
														AST_OP_AND(bool) : 
															AST_OP_NEQ(bool) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 2, string_value =  ]
															AST_OP_NEQ(bool) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
														AST_BODY() | ASTO_BODY_IF : 
															AST_OP_ASN(uint8) : 
																AST_OP_INDEX(uint8) : 
																	AST_OP_INDEX([30]uint8) : 
																		AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
																			AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																			AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
																		AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
																			AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																				AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																				AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
																	AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
																		AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																			AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																		AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
															AST_OP_ASN(uint8) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
										AST_IF() : 
											AST_OP_EQU(bool) : 
												AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = c ]
												AST_LITERAL(uint64) : [ int_value = 4348699, string_value =  ]
											AST_BODY() | ASTO_BODY_IF : 
												AST_BODY_RESULT() : 
													AST_IF() : 
														AST_OP_AND(bool) : 
															AST_OP_NEQ(bool) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 2, string_value =  ]
															AST_OP_NEQ(bool) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
														AST_BODY() | ASTO_BODY_IF : 
															AST_OP_ASN(uint8) : 
																AST_OP_INDEX(uint8) : 
																	AST_OP_INDEX([30]uint8) : 
																		AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
																			AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																			AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
																		AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
																			AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																				AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																				AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
																	AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
																		AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																			AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																		AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
															AST_OP_ASN(uint8) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 2, string_value =  ]
										AST_IF() : 
											AST_OP_EQU(bool) : 
												AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = c ]
												AST_LITERAL(uint64) : [ int_value = 4479771, string_value =  ]
											AST_BODY() | ASTO_BODY_IF : 
												AST_BODY_RESULT() : 
													AST_IF() : 
														AST_OP_AND(bool) : 
															AST_OP_NEQ(bool) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
															AST_OP_NEQ(bool) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 3, string_value =  ]
														AST_BODY() | ASTO_BODY_IF : 
															AST_OP_ASN(uint8) : 
																AST_OP_INDEX(uint8) : 
																	AST_OP_INDEX([30]uint8) : 
																		AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
																			AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																			AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
																		AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
																			AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																				AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																				AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
																	AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
																		AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																			AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																		AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
															AST_OP_ASN(uint8) : 
																AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																	AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																	AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_LITERAL(uint8) : [ int_value = 3, string_value =  ]
										AST_BODY_RESULT() : 
											AST_IF() : 
												AST_OP_EQU(bool) : 
													AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = c ]
													AST_LITERAL(uint64) : [ int_value = 4414235, string_value =  ]
												AST_BODY() | ASTO_BODY_IF : 
													AST_BODY_RESULT() : 
														AST_IF() : 
															AST_OP_AND(bool) : 
																AST_OP_NEQ(bool) : 
																	AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																		AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																		AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																	AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
																AST_OP_NEQ(bool) : 
																	AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																		AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																		AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																	AST_LITERAL(uint8) : [ int_value = 3, string_value =  ]
															AST_BODY() | ASTO_BODY_IF : 
																AST_OP_ASN(uint8) : 
																	AST_OP_INDEX(uint8) : 
																		AST_OP_INDEX([30]uint8) : 
																			AST_OP_DOT([10][30]uint8) : [ int_value = 0, string_value = moves ]
																				AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																				AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = moves ]
																			AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
																				AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																					AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																					AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																				AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
																		AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
																			AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
																				AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																				AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
																			AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
																	AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																		AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																		AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																AST_OP_ASN(uint8) : 
																	AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
																		AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
																		AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
																	AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
									AST_BODY() | ASTO_BODY_ELSE : 
										AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
											AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
												AST_LITERAL(static_string) : [ int_value = 0, string_value = read error from stdin! ]
												AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_SWITCH(int32) : 
						AST_OP_DOT(uint8) : [ int_value = 0, string_value = dir ]
							AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
							AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = dir ]
						AST_CASE(int32) : 
							AST_LITERAL(uint8) : [ int_value = 1, string_value =  ]
							AST_BODY(int32) | ASTO_BODY_CASE : 
								AST_BODY_RESULT(int32) : 
									AST_OP_DEC(int32) : 
										AST_EXPRESSION(int32) : 
											AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
												AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
													AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
													AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
						AST_CASE(int32) : 
							AST_LITERAL(uint8) : [ int_value = 2, string_value =  ]
							AST_BODY(int32) | ASTO_BODY_CASE : 
								AST_BODY_RESULT(int32) : 
									AST_OP_INC(int32) : 
										AST_EXPRESSION(int32) : 
											AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
												AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
													AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
													AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
						AST_CASE(int32) : 
							AST_LITERAL(uint8) : [ int_value = 3, string_value =  ]
							AST_BODY(int32) | ASTO_BODY_CASE : 
								AST_BODY_RESULT(int32) : 
									AST_OP_DEC(int32) : 
										AST_EXPRESSION(int32) : 
											AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
												AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
													AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
													AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
						AST_CASE(int32) : 
							AST_LITERAL(uint8) : [ int_value = 4, string_value =  ]
							AST_BODY(int32) | ASTO_BODY_CASE : 
								AST_BODY_RESULT(int32) : 
									AST_OP_INC(int32) : 
										AST_EXPRESSION(int32) : 
											AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
												AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
													AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
													AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
												AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
					AST_BODY_RESULT() : 
						AST_IF() : 
							AST_OP_AND(bool) : 
								AST_OP_EQU(bool) : 
									AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
										AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
											AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
											AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
									AST_OP_DOT(int32) : [ int_value = 0, string_value = x ]
										AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = reward ]
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = x ]
								AST_OP_EQU(bool) : 
									AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
										AST_OP_DOT(V2) : [ int_value = 0, string_value = head ]
											AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
											AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = head ]
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
									AST_OP_DOT(int32) : [ int_value = 0, string_value = y ]
										AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = reward ]
										AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = y ]
							AST_BODY() | ASTO_BODY_IF : 
								AST_OP_INC(int32) : 
									AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = points ]
								AST_OP_INC(int32) : 
									AST_EXPRESSION(int32) : 
										AST_OP_DOT(int32) : [ int_value = 0, string_value = length ]
											AST_VARIABLE_NAME(Snake) : [ int_value = 0, string_value = snake ]
											AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = length ]
								AST_OP_ASN(V2) : 
									AST_VARIABLE_NAME(V2) : [ int_value = 0, string_value = reward ]
									AST_COMPOSITE_LITERAL(V2) : 
										AST_DATATYPE(V2) : [ int_value = 0, string_value = V2 ]
										AST_OP_MOD(int32) : 
											AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = rand ]
											AST_LITERAL(int32) : [ int_value = 30, string_value =  ]
										AST_OP_MOD(int32) : 
											AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = rand ]
											AST_LITERAL(int32) : [ int_value = 10, string_value =  ]
			AST_LABEL() : [ int_value = 0, string_value = game_lose ]
			AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
				AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
					AST_LITERAL(static_string) : [ int_value = 0, string_value = You Lost! Points: %d
 ]
					AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME(int32) : [ int_value = 0, string_value = points ]
			AST_LABEL() : [ int_value = 0, string_value = game_end ]
			AST_FUNCTION_CALL() : [ int_value = 0, string_value = tcsetattr ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_LITERAL(int32) : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE(*termios) : 
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = current_termios ]
.text













































.string "\0allocate"
.global allocate
allocate:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $256, %rsp

// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -233(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : 65, 255

//} mem_reference_to_regs()

movq %rdi, -233(%rbp, 1)

// } ii()




// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -249(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movq -233(%rbp, 1), %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call malloc

// } ii()

// ii() {
movq %rax, %rbx

// } ii()







// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -249(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -233(%rbp, 1), %r12

// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : 76, 255

//} mem_reference_to_regs()

movq %r12, -241(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -241(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -249(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._allocate

// } ii()





._allocate:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



.string "\0resize"
.global resize
resize:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $32, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -16(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -24(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : 66, 255

//} mem_reference_to_regs()

movq %rsi, -8(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 65, 255

//} mem_reference_to_regs()

movq %rdi, -16(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 35, 255

//} mem_reference_to_regs()

movq %rdx, -24(%rbp, 1)

// } ii()








// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movq -16(%rbp, 1), %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -24(%rbp, 1), %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call realloc

// } ii()

// ii() {
movq %rax, %rbx

// } ii()







// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -16(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -24(%rbp, 1), %r12

// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : 76, 255

//} mem_reference_to_regs()

movq %r12, -8(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -8(%rbp, 1), %rdx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -16(%rbp, 1), %rax

// } ii()



// ii() {
jmp ._resize

// } ii()





._resize:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()











.string "\0render"
.global render
render:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $368, %rsp

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -157(%rbp, 1), %rdi

// } ii()

// ii() {
movq $16, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $0, -158(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 66, 255

//} mem_reference_to_regs()

movq %rsi, -149(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 65, 255

//} mem_reference_to_regs()

movq %rdi, -157(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 35, 255

//} mem_reference_to_regs()

movb %dl, -158(%rbp, 1)

// } ii()






// ii() {
movq $.L1, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
movl %eax, %ebx

// } ii()




// ii() {
movb $0, %r12b

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 76, 255

//} mem_reference_to_regs()

movb %r12b, -159(%rbp, 1)

// } ii()



// ii() {
movb $0, %r13b

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 77, 255

//} mem_reference_to_regs()

movb %r13b, -160(%rbp, 1)

// } ii()







// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 78

//} mem_reference_to_regs()

movq -149(%rbp, 1), %r14

// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
andq %rax, %r14

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 78, 255

//} mem_reference_to_regs()

movq %r14, -168(%rbp, 1)

// } ii()



// ii() {
movq $0, %r15

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 79, 255

//} mem_reference_to_regs()

movq %r15, -176(%rbp, 1)

// } ii()




.L13:


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -176(%rbp, 1), %rbx

// } ii()


movq %rbx, -184(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -185(%rbp, 1), %bl

// } ii()


xorb %bl, -185(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -168(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -184(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -185(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -185(%rbp, 1), %bl

// } ii()


andb %bl, -185(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L14

// } ii()

pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -201(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -201(%rbp, 1), %rbx

// } ii()


movq %rbx, -209(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L11:




// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

movq -149(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 72

//} mem_reference_to_regs()

movq -157(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 72, 255

//} mem_reference_to_regs()

movq %r11, -217(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -225(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -225(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -176(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L2

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -176(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -225(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L2:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -176(%rbp, 1), %rbx

// } ii()


movq %rbx, -233(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -233(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -233(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $30, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -241(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -241(%rbp, 1), %rbx

// } ii()


movq %rbx, -249(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -249(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -209(%rbp, 1), %rbx

// } ii()


movq %rbx, -257(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -258(%rbp, 1), %bl

// } ii()


xorb %bl, -258(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -249(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -257(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -258(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -258(%rbp, 1), %bl

// } ii()


andb %bl, -258(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L12

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -158(%rbp, 1), %bl

// } ii()


andb %bl, -158(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L7

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $6, -283(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -159(%rbp, 1), %bl

// } ii()


movb %bl, -284(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -285(%rbp, 1), %bl

// } ii()


xorb %bl, -285(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -283(%rbp, 1), %bl

// } ii()


cmpb %bl, -284(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setae -285(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -285(%rbp, 1), %bl

// } ii()


andb %bl, -285(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L3

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $0, -286(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -286(%rbp, 1), %bl

// } ii()


movb %bl, -287(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -287(%rbp, 1), %bl

// } ii()


movb %bl, -159(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -288(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -160(%rbp, 1), %bl

// } ii()


movb %bl, -289(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -288(%rbp, 1), %bl

// } ii()


addb %bl, -289(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -289(%rbp, 1), %bl

// } ii()


movb %bl, -290(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -290(%rbp, 1), %bl

// } ii()


movb %bl, -160(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L3:



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -291(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -160(%rbp, 1), %bl

// } ii()


movb %bl, -292(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -293(%rbp, 1), %bl

// } ii()


xorb %bl, -293(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -291(%rbp, 1), %bl

// } ii()


cmpb %bl, -292(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setae -293(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -293(%rbp, 1), %bl

// } ii()


andb %bl, -293(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L4

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $0, -294(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -294(%rbp, 1), %bl

// } ii()


movb %bl, -295(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -295(%rbp, 1), %bl

// } ii()


movb %bl, -160(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L4:


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $46, -296(%rbp, 1)

// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $6, -297(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $6, -298(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movb -297(%rbp, 1), %al

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

imulb -298(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movb %al, -297(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -160(%rbp, 1), %bl

// } ii()


movb %bl, -299(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movb -299(%rbp, 1), %al

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

imulb -297(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movb %al, -299(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -159(%rbp, 1), %bl

// } ii()


movb %bl, -300(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -299(%rbp, 1), %bl

// } ii()


addb %bl, -300(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -300(%rbp, 1), %bl

// } ii()


addb %bl, -296(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -296(%rbp, 1), %bl

// } ii()


movb %bl, -301(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -302(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -159(%rbp, 1), %bl

// } ii()


movb %bl, -303(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -302(%rbp, 1), %bl

// } ii()


addb %bl, -303(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -303(%rbp, 1), %bl

// } ii()


movb %bl, -304(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -304(%rbp, 1), %bl

// } ii()


movb %bl, -159(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
movq $.L5, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -308(%rbp, 1)

// } ii()







// ii() {
movq $.L6, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movb -301(%rbp, 1), %sil

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -312(%rbp, 1)

// } ii()





.L7:




// ii() {
pushq %r10

// } ii()

// ii() {
pushq %r11

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

movq -149(%rbp, 1), %r10

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 72

//} mem_reference_to_regs()

movq -157(%rbp, 1), %r11

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 72, 255

//} mem_reference_to_regs()

movq %r11, -320(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -328(%rbp, 1)

// } ii()


// ii() {
popq %r11

// } ii()

// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -328(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -176(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jl .L8

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -176(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -328(%rbp, 1), %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L8:
// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -176(%rbp, 1), %rbx

// } ii()


movq %rbx, -336(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -336(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -336(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -209(%rbp, 1)

// } ii()

// ii() {
jl .L9

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -209(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L9:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -320(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -336(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -344(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -344(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -209(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

movb 0(%rbx, %r12, 1), %dil
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call putchar

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -348(%rbp, 1)

// } ii()






// ii() {
movq $.L10, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -352(%rbp, 1)

// } ii()






pushq %rbx
// ii() {
movq $1, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -266(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -209(%rbp, 1), %rbx

// } ii()


movq %rbx, -274(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -266(%rbp, 1), %rbx

// } ii()


addq %rbx, -274(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -274(%rbp, 1), %rbx

// } ii()


movq %rbx, -282(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -282(%rbp, 1), %rbx

// } ii()


movq %rbx, -209(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
jmp .L11

// } ii()

.L12:


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $10, -353(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movb -353(%rbp, 1), %dil

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call putchar

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -357(%rbp, 1)

// } ii()






pushq %rbx
// ii() {
movq $1, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -193(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -193(%rbp, 1), %rbx

// } ii()


addq %rbx, -176(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
jmp .L13

// } ii()

.L14:



._render:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()





.string "\0main"
.global main
main:
// ii() {
pushq %rbp

// } ii()

// ii() {
movq %rsp, %rbp

// } ii()

// ii() {
subq $2640, %rsp

// } ii()





// ii() {
movl $3, %ebx

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movl %ebx, -325(%rbp, 1)

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -385(%rbp, 1), %rdi

// } ii()

// ii() {
movq $60, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
movl $0, %r12d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

leaq -385(%rbp, 1), %r13

// } ii()



// ii() {
movl %r12d, %edi

// } ii()


// ii() {
movq %r13, %rsi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call tcgetattr

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -445(%rbp, 1), %rdi

// } ii()

// ii() {
movq $60, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -329(%rbp, 1), %ebx

// } ii()


movl %ebx, -389(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -333(%rbp, 1), %ebx

// } ii()


movl %ebx, -393(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

leaq -368(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -428(%rbp, 1), %rdi

// } ii()

// ii() {
movq $32, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -369(%rbp, 1), %bl

// } ii()


movb %bl, -429(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -373(%rbp, 1), %ebx

// } ii()


movl %ebx, -433(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -377(%rbp, 1), %ebx

// } ii()


movl %ebx, -437(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -381(%rbp, 1), %ebx

// } ii()


movl %ebx, -441(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -385(%rbp, 1), %ebx

// } ii()


movl %ebx, -445(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
movl $2, %r14d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 78, 255

//} mem_reference_to_regs()

movl %r14d, -449(%rbp, 1)

// } ii()



// ii() {
movl $8, %r15d

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 79, 255

//} mem_reference_to_regs()

movl %r15d, -453(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -449(%rbp, 1), %ebx

// } ii()


movl %ebx, -457(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -453(%rbp, 1), %ebx

// } ii()


orl %ebx, -457(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -457(%rbp, 1), %ebx

// } ii()


movl %ebx, -461(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()







// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -461(%rbp, 1), %ebx

// } ii()


movl %ebx, -465(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

notl -465(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -433(%rbp, 1), %ebx

// } ii()


movl %ebx, -469(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -465(%rbp, 1), %ebx

// } ii()


andl %ebx, -469(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -469(%rbp, 1), %ebx

// } ii()


movl %ebx, -473(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -473(%rbp, 1), %ebx

// } ii()


movl %ebx, -433(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -477(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -481(%rbp, 1)

// } ii()



// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

leaq -445(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -489(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movl -477(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movl -481(%rbp, 1), %esi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -489(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call tcsetattr

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %rdi

// } ii()

// ii() {
movq $300, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -1436(%rbp, 1), %rdi

// } ii()

// ii() {
movq $313, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $15, -793(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $5, -797(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -797(%rbp, 1), %ebx

// } ii()


movl %ebx, -801(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -793(%rbp, 1), %ebx

// } ii()


movl %ebx, -805(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $5, -809(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -810(%rbp, 1)

// } ii()




// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -1110(%rbp, 1), %rdi

// } ii()

// ii() {
movq $300, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -810(%rbp, 1), %bl

// } ii()


movb %bl, -1111(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -809(%rbp, 1), %ebx

// } ii()


movl %ebx, -1115(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -801(%rbp, 1), %ebx

// } ii()


movl %ebx, -1119(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -805(%rbp, 1), %ebx

// } ii()


movl %ebx, -1123(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
pushq %rsi

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

leaq -1110(%rbp, 1), %rsi

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %rdi

// } ii()

// ii() {
movq $300, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep movsb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rsi

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1111(%rbp, 1), %bl

// } ii()


movb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1115(%rbp, 1), %ebx

// } ii()


movl %ebx, -1428(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1119(%rbp, 1), %ebx

// } ii()


movl %ebx, -1432(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1123(%rbp, 1), %ebx

// } ii()


movl %ebx, -1436(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()







pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1444(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movq -1444(%rbp, 1), %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call time

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -1448(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movl -1448(%rbp, 1), %edi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call srand

// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -1480(%rbp, 1), %rdi

// } ii()

// ii() {
movq $8, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call rand

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -1452(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $30, -1456(%rbp, 1)

// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movl -1452(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

idivl -1456(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 35, 255

//} mem_reference_to_regs()

movl %edx, -1452(%rbp, 1)

// } ii()





// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call rand

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -1460(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $10, -1464(%rbp, 1)

// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movl -1460(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

idivl -1464(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 35, 255

//} mem_reference_to_regs()

movl %edx, -1460(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1460(%rbp, 1), %ebx

// } ii()


movl %ebx, -1468(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1452(%rbp, 1), %ebx

// } ii()


movl %ebx, -1472(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1468(%rbp, 1), %ebx

// } ii()


movl %ebx, -1476(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1472(%rbp, 1), %ebx

// } ii()


movl %ebx, -1480(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -1484(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1484(%rbp, 1), %ebx

// } ii()


movl %ebx, -1488(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -1492(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1492(%rbp, 1), %ebx

// } ii()


movl %ebx, -1496(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
pushq %rax

// } ii()

// ii() {
pushq %rdi

// } ii()

// ii() {
pushq %rcx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

leaq -1544(%rbp, 1), %rdi

// } ii()

// ii() {
movq $8, %rcx

// } ii()


// ii() {
cld

// } ii()

// ii() {
rep stosb

// } ii()

// ii() {
popq %rcx

// } ii()

// ii() {
popq %rdi

// } ii()

// ii() {
popq %rax

// } ii()




pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1504(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1504(%rbp, 1), %ebx

// } ii()


movl %ebx, -1508(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1508(%rbp, 1)

// } ii()



pushq %rbx
// ii() {
movq $1, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1516(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1516(%rbp, 1), %bx

// } ii()


movw %bx, -1518(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1518(%rbp, 1)

// } ii()



pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1526(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1526(%rbp, 1), %bx

// } ii()


movw %bx, -1528(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1528(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1528(%rbp, 1), %bx

// } ii()


movw %bx, -1530(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1518(%rbp, 1), %bx

// } ii()


movw %bx, -1532(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1508(%rbp, 1), %ebx

// } ii()


movl %ebx, -1536(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1530(%rbp, 1), %bx

// } ii()


movw %bx, -1538(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1532(%rbp, 1), %bx

// } ii()


movw %bx, -1540(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1536(%rbp, 1), %ebx

// } ii()


movl %ebx, -1544(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





.L80:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -1545(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1545(%rbp, 1), %bl

// } ii()


andb %bl, -1545(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L81

// } ii()

pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1553(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1553(%rbp, 1), %rbx

// } ii()


movq %rbx, -1561(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L24:



pushq %rbx
// ii() {
movq $10, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1569(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1569(%rbp, 1), %rbx

// } ii()


movq %rbx, -1577(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1577(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rbx

// } ii()


movq %rbx, -1585(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1586(%rbp, 1), %bl

// } ii()


xorb %bl, -1586(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1577(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -1585(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -1586(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1586(%rbp, 1), %bl

// } ii()


andb %bl, -1586(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L25

// } ii()

pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1594(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1594(%rbp, 1), %rbx

// } ii()


movq %rbx, -1602(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L22:




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1561(%rbp, 1)

// } ii()

// ii() {
jl .L15

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L15:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1610(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rbx

// } ii()


movq %rbx, -1618(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1618(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1618(%rbp, 1)

// } ii()



// mul on the CPU up here ^



pushq %rbx
// ii() {
movq $30, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1626(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1626(%rbp, 1), %rbx

// } ii()


movq %rbx, -1634(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $-1, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1634(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %rbx

// } ii()


movq %rbx, -1642(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1643(%rbp, 1), %bl

// } ii()


xorb %bl, -1643(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1634(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -1642(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -1643(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1643(%rbp, 1), %bl

// } ii()


andb %bl, -1643(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L23

// } ii()


pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1651(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rbx

// } ii()


movq %rbx, -1659(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1660(%rbp, 1), %bl

// } ii()


xorb %bl, -1660(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1651(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -1659(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1660(%rbp, 1)

// } ii()




pushq %rbx
// ii() {
movq $9, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1668(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rbx

// } ii()


movq %rbx, -1676(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1677(%rbp, 1), %bl

// } ii()


xorb %bl, -1677(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1668(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -1676(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1677(%rbp, 1)

// } ii()




pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1685(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %rbx

// } ii()


movq %rbx, -1693(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1694(%rbp, 1), %bl

// } ii()


xorb %bl, -1694(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1685(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -1693(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1694(%rbp, 1)

// } ii()




pushq %rbx
// ii() {
movq $29, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -1702(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %rbx

// } ii()


movq %rbx, -1710(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1711(%rbp, 1), %bl

// } ii()


xorb %bl, -1711(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1702(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -1710(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1711(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1711(%rbp, 1), %bl

// } ii()


orb %bl, -1694(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1694(%rbp, 1), %bl

// } ii()


orb %bl, -1677(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1677(%rbp, 1), %bl

// } ii()


orb %bl, -1660(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1660(%rbp, 1), %bl

// } ii()


andb %bl, -1660(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L20

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $46, -1736(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1736(%rbp, 1), %bl

// } ii()


movb %bl, -1737(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1561(%rbp, 1)

// } ii()

// ii() {
jl .L16

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L16:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1719(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rbx

// } ii()


movq %rbx, -1727(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1727(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1727(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -1602(%rbp, 1)

// } ii()

// ii() {
jl .L17

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L17:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1719(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1727(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1735(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1735(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -1737(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()




// ii() {
jmp .L21

// } ii()


.L20:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $32, -1762(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1762(%rbp, 1), %bl

// } ii()


movb %bl, -1763(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1561(%rbp, 1)

// } ii()

// ii() {
jl .L18

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L18:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1745(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1561(%rbp, 1), %rbx

// } ii()


movq %rbx, -1753(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1753(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1753(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -1602(%rbp, 1)

// } ii()

// ii() {
jl .L19

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L19:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1745(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1753(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1761(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1761(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1602(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -1763(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()




.L21:




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incq -1602(%rbp, 1)

// } ii()




// ii() {
jmp .L22

// } ii()

.L23:




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incq -1561(%rbp, 1)

// } ii()




// ii() {
jmp .L24

// } ii()

.L25:


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $42, -1804(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1804(%rbp, 1), %bl

// } ii()


movb %bl, -1805(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1476(%rbp, 1), %ebx

// } ii()


movl %ebx, -1771(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1771(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1771(%rbp, 1)

// } ii()

// ii() {
jl .L26

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1771(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L26:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1779(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1771(%rbp, 1), %rbx

// } ii()


movq %rbx, -1787(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1787(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1787(%rbp, 1)

// } ii()



// mul on the CPU up here ^






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1480(%rbp, 1), %ebx

// } ii()


movl %ebx, -1795(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1795(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -1795(%rbp, 1)

// } ii()

// ii() {
jl .L27

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1795(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L27:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1779(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1787(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1803(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1803(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1795(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -1805(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()








// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -1809(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()








// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -1813(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -1814(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -1818(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1818(%rbp, 1), %ebx

// } ii()


movl %ebx, -1822(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L52:




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1822(%rbp, 1), %ebx

// } ii()


movl %ebx, -1826(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1827(%rbp, 1), %bl

// } ii()


xorb %bl, -1827(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1428(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -1826(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -1827(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1827(%rbp, 1), %bl

// } ii()


andb %bl, -1827(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L53

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $30, -1831(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -1835(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1836(%rbp, 1), %bl

// } ii()


xorb %bl, -1836(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1831(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -1835(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setge -1836(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -1840(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -1844(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1845(%rbp, 1), %bl

// } ii()


xorb %bl, -1845(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1840(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -1844(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -1845(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $10, -1849(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -1853(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1854(%rbp, 1), %bl

// } ii()


xorb %bl, -1854(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1849(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -1853(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setge -1854(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -1858(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -1862(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1863(%rbp, 1), %bl

// } ii()


xorb %bl, -1863(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1858(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -1862(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

setl -1863(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1863(%rbp, 1), %bl

// } ii()


orb %bl, -1854(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1854(%rbp, 1), %bl

// } ii()


orb %bl, -1845(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1845(%rbp, 1), %bl

// } ii()


orb %bl, -1836(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1836(%rbp, 1), %bl

// } ii()


andb %bl, -1836(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L28

// } ii()

// ii() {
jmp game_lose

// } ii()




.L28:




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -1871(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1871(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1871(%rbp, 1)

// } ii()

// ii() {
jl .L29

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1871(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L29:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1879(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1871(%rbp, 1), %rbx

// } ii()


movq %rbx, -1887(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1887(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1887(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -1895(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1895(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -1895(%rbp, 1)

// } ii()

// ii() {
jl .L30

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1895(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L30:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1879(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1887(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1903(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $64, -1904(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1903(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1895(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb 0(%rbx, %r12, 1), %r13b

// } ii()


movb %r13b, -1905(%rbp, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1906(%rbp, 1), %bl

// } ii()


xorb %bl, -1906(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1904(%rbp, 1), %bl

// } ii()


cmpb %bl, -1905(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1906(%rbp, 1)

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -1914(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1914(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1914(%rbp, 1)

// } ii()

// ii() {
jl .L31

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1914(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L31:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1922(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1914(%rbp, 1), %rbx

// } ii()


movq %rbx, -1930(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1930(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1930(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -1938(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1938(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -1938(%rbp, 1)

// } ii()

// ii() {
jl .L32

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1938(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L32:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1922(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1930(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1946(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $79, -1947(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1946(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1938(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb 0(%rbx, %r12, 1), %r13b

// } ii()


movb %r13b, -1948(%rbp, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1949(%rbp, 1), %bl

// } ii()


xorb %bl, -1949(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1947(%rbp, 1), %bl

// } ii()


cmpb %bl, -1948(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1949(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1949(%rbp, 1), %bl

// } ii()


orb %bl, -1906(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1906(%rbp, 1), %bl

// } ii()


andb %bl, -1906(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L33

// } ii()

// ii() {
jmp game_lose

// } ii()




.L33:






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $1, -1953(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1428(%rbp, 1), %ebx

// } ii()


movl %ebx, -1957(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1953(%rbp, 1), %ebx

// } ii()


subl %ebx, -1957(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1822(%rbp, 1), %ebx

// } ii()


movl %ebx, -1961(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1962(%rbp, 1), %bl

// } ii()


xorb %bl, -1962(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1957(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -1961(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -1962(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1962(%rbp, 1), %bl

// } ii()


andb %bl, -1962(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L36

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $0, -2003(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2003(%rbp, 1), %bl

// } ii()


movb %bl, -2004(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -1970(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1970(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -1970(%rbp, 1)

// } ii()

// ii() {
jl .L34

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1970(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L34:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -1978(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1970(%rbp, 1), %rbx

// } ii()


movq %rbx, -1986(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -1986(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -1986(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -1994(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -1994(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -1994(%rbp, 1)

// } ii()

// ii() {
jl .L35

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -1994(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L35:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -1978(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1986(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2002(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2002(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -1994(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2004(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()




.L36:



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -2008(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1822(%rbp, 1), %ebx

// } ii()


movl %ebx, -2012(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2013(%rbp, 1), %bl

// } ii()


xorb %bl, -2013(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2008(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -2012(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2013(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2013(%rbp, 1), %bl

// } ii()


andb %bl, -2013(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L41

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $64, -2054(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2054(%rbp, 1), %bl

// } ii()


movb %bl, -2055(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -2021(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2021(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2021(%rbp, 1)

// } ii()

// ii() {
jl .L37

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2021(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L37:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2029(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2021(%rbp, 1), %rbx

// } ii()


movq %rbx, -2037(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2037(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2037(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -2045(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2045(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2045(%rbp, 1)

// } ii()

// ii() {
jl .L38

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2045(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L38:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2029(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2037(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2053(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2053(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2045(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2055(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()




// ii() {
jmp .L42

// } ii()


.L41:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $79, -2096(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2096(%rbp, 1), %bl

// } ii()


movb %bl, -2097(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -2063(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2063(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2063(%rbp, 1)

// } ii()

// ii() {
jl .L39

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2063(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L39:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2071(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2063(%rbp, 1), %rbx

// } ii()


movq %rbx, -2079(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2079(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2079(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -2087(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2087(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2087(%rbp, 1)

// } ii()

// ii() {
jl .L40

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2087(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L40:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2071(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2079(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2095(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2095(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2087(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2097(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()




.L42:






// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -2105(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2105(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2105(%rbp, 1)

// } ii()

// ii() {
jl .L43

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2105(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L43:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2113(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2105(%rbp, 1), %rbx

// } ii()


movq %rbx, -2121(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2121(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2121(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -2129(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2129(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2129(%rbp, 1)

// } ii()

// ii() {
jl .L44

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2129(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L44:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2113(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2121(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2137(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $0, -2138(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2137(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2129(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb 0(%rbx, %r12, 1), %r13b

// } ii()


movb %r13b, -2139(%rbp, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2140(%rbp, 1), %bl

// } ii()


xorb %bl, -2140(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2138(%rbp, 1), %bl

// } ii()


cmpb %bl, -2139(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

seta -2140(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2140(%rbp, 1), %bl

// } ii()


andb %bl, -2140(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L47

// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -2148(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2148(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2148(%rbp, 1)

// } ii()

// ii() {
jl .L45

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2148(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L45:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2156(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2148(%rbp, 1), %rbx

// } ii()


movq %rbx, -2164(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2164(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2164(%rbp, 1)

// } ii()



// mul on the CPU up here ^




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -2172(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2172(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2172(%rbp, 1)

// } ii()

// ii() {
jl .L46

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2172(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L46:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2156(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2164(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2180(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2180(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2172(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb 0(%rbx, %r12, 1), %r13b

// } ii()


movb %r13b, -2181(%rbp, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2181(%rbp, 1), %bl

// } ii()


movb %bl, -1814(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L47:



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -2186(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2194(%rbp, 1), %bl

// } ii()


xorb %bl, -2194(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2186(%rbp, 1), %bl

// } ii()


cmpb %bl, -1814(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2194(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2194(%rbp, 1), %bl

// } ii()


andb %bl, -2194(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L48

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1813(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -2193(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L48:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $2, -2187(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2195(%rbp, 1), %bl

// } ii()


xorb %bl, -2195(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2187(%rbp, 1), %bl

// } ii()


cmpb %bl, -1814(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2195(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2195(%rbp, 1), %bl

// } ii()


andb %bl, -2195(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L49

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

decl -1813(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1813(%rbp, 1), %ebx

// } ii()


movl %ebx, -2193(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L49:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $3, -2188(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2196(%rbp, 1), %bl

// } ii()


xorb %bl, -2196(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2188(%rbp, 1), %bl

// } ii()


cmpb %bl, -1814(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2196(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2196(%rbp, 1), %bl

// } ii()


andb %bl, -2196(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L50

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1809(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -2193(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L50:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -2189(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2197(%rbp, 1), %bl

// } ii()


xorb %bl, -2197(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2189(%rbp, 1), %bl

// } ii()


cmpb %bl, -1814(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2197(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2197(%rbp, 1), %bl

// } ii()


andb %bl, -2197(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L51

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

decl -1809(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1809(%rbp, 1), %ebx

// } ii()


movl %ebx, -2193(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L51:




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1822(%rbp, 1)

// } ii()




// ii() {
jmp .L52

// } ii()

.L53:



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $0, -2198(%rbp, 1)

// } ii()



// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

leaq -789(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2206(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movq -2206(%rbp, 1), %rdi

// } ii()


// ii() {
movq $10, %rsi

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movb -2198(%rbp, 1), %dl

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call render

// } ii()



// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

leaq -1544(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2214(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $1, -2218(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $1000, -2222(%rbp, 1)

// } ii()




// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movl -2222(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

idivl -325(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -2222(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movq -2214(%rbp, 1), %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movl -2218(%rbp, 1), %esi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movl -2222(%rbp, 1), %edx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call poll

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movw $0, -2224(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1538(%rbp, 1), %bx

// } ii()


movw %bx, -2226(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2227(%rbp, 1), %bl

// } ii()


xorb %bl, -2227(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -2224(%rbp, 1), %bx

// } ii()


cmpw %bx, -2226(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2227(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2227(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2227(%rbp, 1), %bl

// } ii()


andb %bl, -2227(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L74

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movw $1, -2229(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -1538(%rbp, 1), %bx

// } ii()


movw %bx, -2231(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -2229(%rbp, 1), %bx

// } ii()


andw %bx, -2231(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movw $0, -2233(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2234(%rbp, 1), %bl

// } ii()


xorb %bl, -2234(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movw -2233(%rbp, 1), %bx

// } ii()


cmpw %bx, -2231(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2234(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2234(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2234(%rbp, 1), %bl

// } ii()


andb %bl, -2234(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L72

// } ii()

pushq %rbx
// ii() {
movq $0, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2242(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -2246(%rbp, 1)

// } ii()



// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

leaq -2242(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2254(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



pushq %rbx
// ii() {
movq $8, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2262(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movl -2246(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2254(%rbp, 1), %rsi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -2262(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call read

// } ii()




pushq %rbx
// ii() {
movq $27, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2270(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2242(%rbp, 1), %rbx

// } ii()


movq %rbx, -2278(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2279(%rbp, 1), %bl

// } ii()


xorb %bl, -2279(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2270(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -2278(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2279(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2279(%rbp, 1), %bl

// } ii()


andb %bl, -2279(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L54

// } ii()

// ii() {
jmp game_end

// } ii()




.L54:



pushq %rbx
// ii() {
movq $4283163, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2287(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2242(%rbp, 1), %rbx

// } ii()


movq %rbx, -2295(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2296(%rbp, 1), %bl

// } ii()


xorb %bl, -2296(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2287(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -2295(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2296(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2296(%rbp, 1), %bl

// } ii()


andb %bl, -2296(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L58

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $2, -2297(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2298(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2299(%rbp, 1), %bl

// } ii()


xorb %bl, -2299(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2297(%rbp, 1), %bl

// } ii()


cmpb %bl, -2298(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2299(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2299(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -2300(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2301(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2302(%rbp, 1), %bl

// } ii()


xorb %bl, -2302(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2300(%rbp, 1), %bl

// } ii()


cmpb %bl, -2301(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2302(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2302(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2302(%rbp, 1), %bl

// } ii()


andb %bl, -2299(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2299(%rbp, 1), %bl

// } ii()


andb %bl, -2299(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L57

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2343(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()










// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2310(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2310(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2310(%rbp, 1)

// } ii()

// ii() {
jl .L55

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2310(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L55:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2318(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2310(%rbp, 1), %rbx

// } ii()


movq %rbx, -2326(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2326(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2326(%rbp, 1)

// } ii()



// mul on the CPU up here ^








// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2334(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2334(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2334(%rbp, 1)

// } ii()

// ii() {
jl .L56

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2334(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L56:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2318(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2326(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2342(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2342(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2334(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2343(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -2344(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2344(%rbp, 1), %bl

// } ii()


movb %bl, -2345(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2345(%rbp, 1), %bl

// } ii()


movb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L57:



.L58:



pushq %rbx
// ii() {
movq $4348699, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2353(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2242(%rbp, 1), %rbx

// } ii()


movq %rbx, -2361(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2362(%rbp, 1), %bl

// } ii()


xorb %bl, -2362(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2353(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -2361(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2362(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2362(%rbp, 1), %bl

// } ii()


andb %bl, -2362(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L62

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $2, -2363(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2364(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2365(%rbp, 1), %bl

// } ii()


xorb %bl, -2365(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2363(%rbp, 1), %bl

// } ii()


cmpb %bl, -2364(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2365(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2365(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -2366(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2367(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2368(%rbp, 1), %bl

// } ii()


xorb %bl, -2368(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2366(%rbp, 1), %bl

// } ii()


cmpb %bl, -2367(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2368(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2368(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2368(%rbp, 1), %bl

// } ii()


andb %bl, -2365(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2365(%rbp, 1), %bl

// } ii()


andb %bl, -2365(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L61

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2409(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()










// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2376(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2376(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2376(%rbp, 1)

// } ii()

// ii() {
jl .L59

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2376(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L59:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2384(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2376(%rbp, 1), %rbx

// } ii()


movq %rbx, -2392(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2392(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2392(%rbp, 1)

// } ii()



// mul on the CPU up here ^








// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2400(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2400(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2400(%rbp, 1)

// } ii()

// ii() {
jl .L60

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2400(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L60:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2384(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2392(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2408(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2408(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2400(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2409(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $2, -2410(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2410(%rbp, 1), %bl

// } ii()


movb %bl, -2411(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2411(%rbp, 1), %bl

// } ii()


movb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L61:



.L62:



pushq %rbx
// ii() {
movq $4479771, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2419(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2242(%rbp, 1), %rbx

// } ii()


movq %rbx, -2427(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2428(%rbp, 1), %bl

// } ii()


xorb %bl, -2428(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2419(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -2427(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2428(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2428(%rbp, 1), %bl

// } ii()


andb %bl, -2428(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L66

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -2429(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2430(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2431(%rbp, 1), %bl

// } ii()


xorb %bl, -2431(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2429(%rbp, 1), %bl

// } ii()


cmpb %bl, -2430(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2431(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2431(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $3, -2432(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2433(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2434(%rbp, 1), %bl

// } ii()


xorb %bl, -2434(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2432(%rbp, 1), %bl

// } ii()


cmpb %bl, -2433(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2434(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2434(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2434(%rbp, 1), %bl

// } ii()


andb %bl, -2431(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2431(%rbp, 1), %bl

// } ii()


andb %bl, -2431(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L65

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2475(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()










// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2442(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2442(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2442(%rbp, 1)

// } ii()

// ii() {
jl .L63

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2442(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L63:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2450(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2442(%rbp, 1), %rbx

// } ii()


movq %rbx, -2458(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2458(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2458(%rbp, 1)

// } ii()



// mul on the CPU up here ^








// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2466(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2466(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2466(%rbp, 1)

// } ii()

// ii() {
jl .L64

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2466(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L64:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2450(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2458(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2474(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2474(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2466(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2475(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $3, -2476(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2476(%rbp, 1), %bl

// } ii()


movb %bl, -2477(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2477(%rbp, 1), %bl

// } ii()


movb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L65:



.L66:



pushq %rbx
// ii() {
movq $4414235, %rbx

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2485(%rbp, 1)

// } ii()

popq %rbx


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2242(%rbp, 1), %rbx

// } ii()


movq %rbx, -2493(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2494(%rbp, 1), %bl

// } ii()


xorb %bl, -2494(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2485(%rbp, 1), %rbx

// } ii()


cmpq %rbx, -2493(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2494(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2494(%rbp, 1), %bl

// } ii()


andb %bl, -2494(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L70

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -2495(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2496(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2497(%rbp, 1), %bl

// } ii()


xorb %bl, -2497(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2495(%rbp, 1), %bl

// } ii()


cmpb %bl, -2496(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2497(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2497(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $3, -2498(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2499(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2500(%rbp, 1), %bl

// } ii()


xorb %bl, -2500(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2498(%rbp, 1), %bl

// } ii()


cmpb %bl, -2499(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2500(%rbp, 1)

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

xorb $1, -2500(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2500(%rbp, 1), %bl

// } ii()


andb %bl, -2497(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2497(%rbp, 1), %bl

// } ii()


andb %bl, -2497(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L69

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -1424(%rbp, 1), %bl

// } ii()


movb %bl, -2541(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()










// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2508(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2508(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $10, -2508(%rbp, 1)

// } ii()

// ii() {
jl .L67

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2508(%rbp, 1), %rsi

// } ii()


// ii() {
movq $10, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L67:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71

//} mem_reference_to_regs()

leaq -1423(%rbp, 1), %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2516(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2508(%rbp, 1), %rbx

// } ii()


movq %rbx, -2524(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movq -2524(%rbp, 1), %rax

// } ii()


// ii() {
imulq $30, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movq %rax, -2524(%rbp, 1)

// } ii()



// mul on the CPU up here ^








// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2532(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
movq $4294967295, %rax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

andq %rax, -2532(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

cmpq $30, -2532(%rbp, 1)

// } ii()

// ii() {
jl .L68

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movq -2532(%rbp, 1), %rsi

// } ii()


// ii() {
movq $30, %rdx

// } ii()


// ii() {
call err_oob

// } ii()

.L68:
// ii() {
pushq %r10

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 71
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2516(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2524(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()

leaq 0(%rbx, %r12, 1), %r10
// ii() {
popq %r12

// } ii()
// ii() {
popq %rbx

// } ii()

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 71, 255

//} mem_reference_to_regs()

movq %r10, -2540(%rbp, 1)

// } ii()


// ii() {
popq %r10

// } ii()



// ii() {
// ii() {
pushq %r13

// } ii()
// ii() {
xorq %r13, %r13

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255
// ii() {
pushq %rbx

// } ii()

// ii() {
xorq %rbx, %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movq -2540(%rbp, 1), %rbx

// } ii()


// ii() {
pushq %r12

// } ii()

// ii() {
xorq %r12, %r12

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 76

//} mem_reference_to_regs()

movq -2532(%rbp, 1), %r12

// } ii()



//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 77

//} mem_reference_to_regs()

movb -2541(%rbp, 1), %r13b

// } ii()


movb %r13b, 0(%rbx, %r12, 1)
// ii() {
// pop pushed: 
popq %r12

// } ii()
// ii() {
// pop pushed: 
popq %rbx

// } ii()
// ii() {
popq %r13

// } ii()


// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -2542(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2542(%rbp, 1), %bl

// } ii()


movb %bl, -2543(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2543(%rbp, 1), %bl

// } ii()


movb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




.L69:



.L70:



// ii() {
jmp .L73

// } ii()


.L72:


// ii() {
movq $.L71, %rdi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -2547(%rbp, 1)

// } ii()





.L73:



.L74:





// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $1, -2552(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2560(%rbp, 1), %bl

// } ii()


xorb %bl, -2560(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2552(%rbp, 1), %bl

// } ii()


cmpb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2560(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2560(%rbp, 1), %bl

// } ii()


andb %bl, -2560(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L75

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

decl -1432(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2559(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L75:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $2, -2553(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2561(%rbp, 1), %bl

// } ii()


xorb %bl, -2561(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2553(%rbp, 1), %bl

// } ii()


cmpb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2561(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2561(%rbp, 1), %bl

// } ii()


andb %bl, -2561(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L76

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1432(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2559(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L76:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $3, -2554(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2562(%rbp, 1), %bl

// } ii()


xorb %bl, -2562(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2554(%rbp, 1), %bl

// } ii()


cmpb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2562(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2562(%rbp, 1), %bl

// } ii()


andb %bl, -2562(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L77

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

decl -1436(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2559(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L77:
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movb $4, -2555(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2563(%rbp, 1), %bl

// } ii()


xorb %bl, -2563(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2555(%rbp, 1), %bl

// } ii()


cmpb %bl, -1424(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2563(%rbp, 1)

// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2563(%rbp, 1), %bl

// } ii()


andb %bl, -2563(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L78

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1436(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2559(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


.L78:










// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1436(%rbp, 1), %ebx

// } ii()


movl %ebx, -2567(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2568(%rbp, 1), %bl

// } ii()


xorb %bl, -2568(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1480(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -2567(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2568(%rbp, 1)

// } ii()











// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1432(%rbp, 1), %ebx

// } ii()


movl %ebx, -2572(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2573(%rbp, 1), %bl

// } ii()


xorb %bl, -2573(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -1476(%rbp, 1), %ebx

// } ii()


cmpl %ebx, -2572(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

sete -2573(%rbp, 1)

// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2573(%rbp, 1), %bl

// } ii()


andb %bl, -2568(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()



// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movb -2568(%rbp, 1), %bl

// } ii()


andb %bl, -2568(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()

// ii() {
jz .L79

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1488(%rbp, 1)

// } ii()






// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

incl -1428(%rbp, 1)

// } ii()





// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call rand

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -2577(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $30, -2581(%rbp, 1)

// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movl -2577(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

idivl -2581(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 35, 255

//} mem_reference_to_regs()

movl %edx, -2577(%rbp, 1)

// } ii()





// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call rand

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -2585(%rbp, 1)

// } ii()




// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $10, -2589(%rbp, 1)

// } ii()



// ii() {
xorq %rdx, %rdx

// } ii()

// ii() {
xorq %rax, %rax

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 32

//} mem_reference_to_regs()

movl -2585(%rbp, 1), %eax

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

idivl -2589(%rbp, 1)

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 35, 255

//} mem_reference_to_regs()

movl %edx, -2585(%rbp, 1)

// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2585(%rbp, 1), %ebx

// } ii()


movl %ebx, -2593(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2577(%rbp, 1), %ebx

// } ii()


movl %ebx, -2597(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()




// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2593(%rbp, 1), %ebx

// } ii()


movl %ebx, -2601(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2597(%rbp, 1), %ebx

// } ii()


movl %ebx, -2605(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()





// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2601(%rbp, 1), %ebx

// } ii()


movl %ebx, -1476(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()


// ii() {
// ii() {
pushq %rbx

// } ii()
// ii() {
xorq %rbx, %rbx

// } ii()
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// hello 
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()


 // byee 
// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

movl -2605(%rbp, 1), %ebx

// } ii()


movl %ebx, -1480(%rbp, 1)
// ii() {
popq %rbx

// } ii()


// } ii()






.L79:



// ii() {
jmp .L80

// } ii()

.L81:


game_lose:




// ii() {
movq $.L82, %rdi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movl -1488(%rbp, 1), %esi

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call printf

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 32, 255

//} mem_reference_to_regs()

movl %eax, -2609(%rbp, 1)

// } ii()




game_end:

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -2613(%rbp, 1)

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 255

//} mem_reference_to_regs()

movl $0, -2617(%rbp, 1)

// } ii()



// ii() {
pushq %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 42

//} mem_reference_to_regs()

leaq -385(%rbp, 1), %rbx

// } ii()

// ii() {
// mem_reference_to_regs() {

// reserved regs : 42, 255

//} mem_reference_to_regs()

movq %rbx, -2625(%rbp, 1)

// } ii()


// ii() {
popq %rbx

// } ii()



// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 65

//} mem_reference_to_regs()

movl -2613(%rbp, 1), %edi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 66

//} mem_reference_to_regs()

movl -2617(%rbp, 1), %esi

// } ii()


// ii() {
// mem_reference_to_regs() {

// reserved regs : 255, 35

//} mem_reference_to_regs()

movq -2625(%rbp, 1), %rdx

// } ii()



// ii() {
xorq %rax, %rax

// } ii()

// ii() {
call tcsetattr

// } ii()




._main:
// ii() {
movq %rbp, %rsp

// } ii()

// ii() {
popq %rbp

// } ii()

// ii() {
ret

// } ii()



 
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























































































































































.L1: .byte 27, 91, 50, 74, 0













































































































































.L5: .byte 27, 91, 49, 109, 0







.L6: .byte 27, 91, 51, 56, 58, 53, 58, 37, 104, 104, 100, 109, 0






































.L10: .byte 27, 91, 48, 109, 0
































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































.L71: .byte 114, 101, 97, 100, 32, 101, 114, 114, 111, 114, 32, 102, 114, 111, 109, 32, 115, 116, 100, 105, 110, 33, 0












































































































































.L82: .byte 89, 111, 117, 32, 76, 111, 115, 116, 33, 32, 80, 111, 105, 110, 116, 115, 58, 32, 37, 100, 10, 0



























err_oob_message: .string "runtime error: index %lld is out of boundaries, with length %lld.\n"
stack_trace_message: .string "at function %s\n"


