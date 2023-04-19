7168
2555904
9728
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
	AST_FUNCTION_CALL : [ int_value = 0, string_value = malloc ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_OP_ASN : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
		AST_FUNCTION_CALL : [ int_value = 0, string_value = malloc ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_OP_ASN : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
	AST_FUNCTION_CALL : [ int_value = 0, string_value = realloc ]
		AST_OP_DOT : [ int_value = 0, string_value = data ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : [ int_value = 0, string_value = data ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_OP_ASN : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
		AST_FUNCTION_CALL : [ int_value = 0, string_value = realloc ]
			AST_OP_DOT : [ int_value = 0, string_value = data ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_OP_ASN : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = bytes ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = array ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [2J ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [2J ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DIV : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
	AST_LITERAL : [ int_value = 30, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
	AST_OP_DIV : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
		AST_LITERAL : [ int_value = 30, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_size ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_DOT : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_OP_INDEX : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_GOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
	AST_LITERAL : [ int_value = 6, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_GOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
	AST_LITERAL : [ int_value = 4, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_MUL : 
	AST_LITERAL : [ int_value = 6, string_value =  ]
	AST_LITERAL : [ int_value = 6, string_value =  ]
AST_OP_MUL : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
	AST_OP_MUL : 
		AST_LITERAL : [ int_value = 6, string_value =  ]
		AST_LITERAL : [ int_value = 6, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
	AST_OP_MUL : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
		AST_OP_MUL : 
			AST_LITERAL : [ int_value = 6, string_value =  ]
			AST_LITERAL : [ int_value = 6, string_value =  ]
AST_OP_SUM : 
	AST_LITERAL : [ int_value = 46, string_value =  ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
		AST_OP_MUL : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = color_v ]
			AST_OP_MUL : 
				AST_LITERAL : [ int_value = 6, string_value =  ]
				AST_LITERAL : [ int_value = 6, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = color_k ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [1m ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [1m ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [38:5:%hhdm ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [38:5:%hhdm ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [0m ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [0m ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_BORI : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = ICANON ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = ECHO ]
AST_OP_BAND : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
	AST_OP_BNOT : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = new_flags ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
	AST_OP_BAND : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
		AST_OP_BNOT : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = new_flags ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
	AST_OP_BAND : 
		AST_OP_DOT : [ int_value = 0, string_value = c_lflag ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
		AST_OP_BNOT : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = new_flags ]
AST_OP_DOT : [ int_value = 0, string_value = c_lflag ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
	AST_OP_ASN : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
		AST_OP_BAND : 
			AST_OP_DOT : [ int_value = 0, string_value = c_lflag ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
			AST_OP_BNOT : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = new_flags ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = new_termios ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c_lflag ]
AST_OP_LOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_OR : 
	AST_LITERAL : [ int_value = 30, string_value =  ]
	AST_OP_LOE : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_GRT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
	AST_OP_OR : 
		AST_LITERAL : [ int_value = 30, string_value =  ]
		AST_OP_LOE : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
			AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_NEQ : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
	AST_LITERAL : [ int_value = 10, string_value =  ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [2J ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = [2J ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = Choose a word and type it, then press enter.
Don't worry, it's not gonna be visible!
reading %d/%d
 ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = Choose a word and type it, then press enter.
Don't worry, it's not gonna be visible!
reading %d/%d
 ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_GOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
	AST_LITERAL : [ int_value = 97, string_value =  ]
AST_OP_AND : 
	AST_LITERAL : [ int_value = 122, string_value =  ]
	AST_OP_GOE : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
		AST_LITERAL : [ int_value = 97, string_value =  ]
AST_OP_LOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
	AST_OP_AND : 
		AST_LITERAL : [ int_value = 122, string_value =  ]
		AST_OP_GOE : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
			AST_LITERAL : [ int_value = 97, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_len ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_input ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_DOT : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_GRT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
	AST_OP_DOT : [ int_value = 0, string_value = len ]
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
			AST_LITERAL : [ int_value = 0, string_value =  ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_OP_GRT : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_OP_INDEX : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
				AST_LITERAL : [ int_value = 0, string_value =  ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = error: word is too big for the screen width!
 ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = error: word is too big for the screen width!
 ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_DIV : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
		AST_LITERAL : [ int_value = 2, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_OP_DIV : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
		AST_CASTING : 
			AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
			AST_LITERAL : [ int_value = 2, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_SUB : 
	AST_LITERAL : [ int_value = 2, string_value =  ]
	AST_OP_DIV : 
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
		AST_CASTING : 
			AST_DATATYPE : [ int_value = 0, string_value = uint64 ]
			AST_LITERAL : [ int_value = 2, string_value =  ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DIV : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
	AST_OP_SUB : 
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
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
	AST_OP_SUB : 
		AST_OP_DIV : 
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
AST_OP_DOT : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 10, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_LITERAL : [ int_value = 30, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = line ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 8, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_SUB : 
	AST_LITERAL : [ int_value = 15, string_value =  ]
	AST_LITERAL : [ int_value = 4, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUB : 
		AST_LITERAL : [ int_value = 15, string_value =  ]
		AST_LITERAL : [ int_value = 4, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_LITERAL : [ int_value = 9, string_value =  ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_OP_SUM : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
			AST_OP_SUB : 
				AST_LITERAL : [ int_value = 15, string_value =  ]
				AST_LITERAL : [ int_value = 4, string_value =  ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_LITERAL : [ int_value = 9, string_value =  ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_OP_SUB : 
			AST_LITERAL : [ int_value = 15, string_value =  ]
			AST_LITERAL : [ int_value = 4, string_value =  ]
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
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_x ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = letter ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word_y ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = screen_x ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = uint8 ]
		AST_LITERAL : [ int_value = 35, string_value =  ]
AST_OP_EQU : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
	AST_LITERAL : [ int_value = 27, string_value =  ]
AST_OP_GOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
	AST_LITERAL : [ int_value = 97, string_value =  ]
AST_OP_AND : 
	AST_LITERAL : [ int_value = 122, string_value =  ]
	AST_OP_GOE : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
		AST_LITERAL : [ int_value = 97, string_value =  ]
AST_OP_LOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
	AST_OP_AND : 
		AST_LITERAL : [ int_value = 122, string_value =  ]
		AST_OP_GOE : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = buf ]
			AST_LITERAL : [ int_value = 97, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_AND : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_NOT : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_EQU : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
	AST_OP_AND : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_OP_NOT : 
			AST_OP_INDEX : 
				AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
				AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value = true ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_EQU : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = current_count ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_AND : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_EQU : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
	AST_OP_AND : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = found ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = care ]
	AST_LITERAL : [ int_value = 0, string_value = false ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_CASTING : 
		AST_DATATYPE : [ int_value = 0, string_value = int64 ]
		AST_OP_DOT : [ int_value = 0, string_value = len ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = tried_letters ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_GOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = found_count ]
	AST_OP_DOT : [ int_value = 0, string_value = len ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_DOT : [ int_value = 0, string_value = len ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = word ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = len ]
AST_OP_GOE : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = impiccato_status ]
	AST_LITERAL : [ int_value = 8, string_value =  ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
	AST_LITERAL : [ int_value = 4, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = f ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 10, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
AST_OP_LES : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_LITERAL : [ int_value = 30, string_value =  ]
AST_OP_SUM : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_ASN : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_OP_SUM : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
		AST_LITERAL : [ int_value = 1, string_value =  ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_OP_INDEX : 
		AST_EXPRESSION : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_INDEX : 
	AST_EXPRESSION : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_ASN : 
	AST_OP_INDEX : 
		AST_OP_INDEX : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = screen ]
			AST_VARIABLE_NAME : [ int_value = 0, string_value = i ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
	AST_OP_INDEX : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = line ]
		AST_VARIABLE_NAME : [ int_value = 0, string_value = j ]
AST_OP_NEQ : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
	AST_OP_NEQ : 
		AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
AST_OP_NEQ : 
	AST_LITERAL : [ int_value = 1, string_value =  ]
	AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_BAND : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
	AST_OP_NEQ : 
		AST_LITERAL : [ int_value = 1, string_value =  ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
	AST_OP_NEQ : 
		AST_OP_BAND : 
			AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
			AST_LITERAL : [ int_value = 1, string_value =  ]
		AST_LITERAL : [ int_value = 0, string_value =  ]
AST_OP_DOT : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = poll_struct ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = revents ]
AST_OP_EQU : 
	AST_VARIABLE_NAME : [ int_value = 0, string_value = c ]
	AST_LITERAL : [ int_value = 27, string_value =  ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = read error from stdin! ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
AST_OP_DOT : 
	AST_LITERAL : [ int_value = 0, string_value = read error from stdin! ]
	AST_VARIABLE_NAME : [ int_value = 0, string_value = data ]
color_k  initialization old_type ! :  int_literal
color_k  initialization new type ! :  int_literal
color_v  initialization old_type ! :  int_literal
color_v  initialization new type ! :  int_literal
screen_size  initialization old_type ! :  int64
screen_size  initialization new type ! :  int64
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
j  initialization old_type ! :  int_literal
j  initialization new type ! :  int_literal
color  initialization old_type ! :  int_literal
color  initialization new type ! :  int_literal
impiccatos  initialization old_type ! :  [8][10]string
impiccatos  initialization new type ! :  [8][10]string
win_screen  initialization old_type ! :  [4][10]string
win_screen  initialization new type ! :  [4][10]string
new_termios  initialization old_type ! :  termios
new_termios  initialization new type ! :  termios
ICANON  initialization old_type ! :  int_literal
ICANON  initialization new type ! :  int_literal
ECHO  initialization old_type ! :  int_literal
ECHO  initialization new type ! :  int_literal
new_flags  initialization old_type ! :  uint32
new_flags  initialization new type ! :  uint32
word_len  initialization old_type ! :  int_literal
word_len  initialization new type ! :  int_literal
buf  initialization old_type ! :  int_literal
buf  initialization new type ! :  int_literal
word  initialization old_type ! :  []?
word  initialization new type ! :  []?
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
impiccato_status  initialization old_type ! :  int_literal
impiccato_status  initialization new type ! :  int_literal
word_x  initialization old_type ! :  uint64
word_x  initialization new type ! :  uint64
word_y  initialization old_type ! :  int_literal
word_y  initialization new type ! :  int_literal
found  initialization old_type ! :  []?
found  initialization new type ! :  []?
found_count  initialization old_type ! :  int_literal
found_count  initialization new type ! :  int_literal
game_status  initialization old_type ! :  int_literal
game_status  initialization new type ! :  int_literal
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
line  initialization old_type ! :  string
line  initialization new type ! :  string
j  initialization old_type ! :  int_literal
j  initialization new type ! :  int_literal
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
c  initialization old_type ! :  uint8
c  initialization new type ! :  uint8
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
letter  initialization old_type ! :  uint8
letter  initialization new type ! :  uint8
screen_x  initialization old_type ! :  int64
screen_x  initialization new type ! :  int64
c  initialization old_type ! :  uint8
c  initialization new type ! :  uint8
current_count  initialization old_type ! :  int64
current_count  initialization new type ! :  int64
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
care  initialization old_type ! :  bool
care  initialization new type ! :  bool
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
poll_struct  initialization old_type ! :  pollfd
poll_struct  initialization new type ! :  pollfd
f  initialization old_type ! :  int_literal
f  initialization new type ! :  int_literal
win_frame  initialization old_type ! :  [10]string
win_frame  initialization new type ! :  [10]string
i  initialization old_type ! :  int_literal
i  initialization new type ! :  int_literal
line  initialization old_type ! :  string
line  initialization new type ! :  string
j  initialization old_type ! :  int_literal
j  initialization new type ! :  int_literal
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
			AST_VARIABLE_DEFINITION(int32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
				AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
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
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = color_v ]
				AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = screen_size ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_OP_DIV(int64) : 
					AST_CASTING(int64) : 
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
							AST_VARIABLE_NAME([][30]uint8) : [ int_value = 0, string_value = screen ]
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
					AST_LITERAL(int_literal) : [ int_value = 30, string_value =  ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(int64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = screen_size ]
				AST_FOR_UPDATE() : 
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_OP_SUM(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
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
									AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_IF() : 
								AST_VARIABLE_NAME(bool) : [ int_value = 0, string_value = rainbow ]
								AST_BODY() | ASTO_BODY_IF : 
									AST_IF() : 
										AST_OP_GOE(bool) : 
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
											AST_LITERAL(int_literal) : [ int_value = 6, string_value =  ]
										AST_BODY() | ASTO_BODY_IF : 
											AST_OP_ASN(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
												AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
											AST_OP_ASN(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
												AST_OP_SUM(uint8) : 
													AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
													AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
									AST_IF() : 
										AST_OP_GOE(bool) : 
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
											AST_LITERAL(int_literal) : [ int_value = 4, string_value =  ]
										AST_BODY() | ASTO_BODY_IF : 
											AST_OP_ASN(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
												AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
									AST_VARIABLE_DEFINITION(uint8) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = color ]
										AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
										AST_OP_SUM(int_literal) : 
											AST_LITERAL(int_literal) : [ int_value = 46, string_value =  ]
											AST_OP_SUM(uint8) : 
												AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
												AST_OP_MUL(uint8) : 
													AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_v ]
													AST_OP_MUL(int_literal) : 
														AST_LITERAL(int_literal) : [ int_value = 6, string_value =  ]
														AST_LITERAL(int_literal) : [ int_value = 6, string_value =  ]
									AST_OP_ASN(uint8) : 
										AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
										AST_OP_SUM(uint8) : 
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = color_k ]
											AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
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
						AST_LITERAL(int_literal) : [ int_value = 10, string_value =  ]
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION([8][10]string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = impiccatos ]
				AST_DATATYPE([8][10]string) : [ int_value = 0, string_value = [8][10]string ]
				AST_COMPOSITE_LITERAL([8][10]string) : 
					AST_DATATYPE([8][10]string) : [ int_value = 0, string_value = [8][10]string ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             X        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =            / \       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             X        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =              \       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             X        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =            /|\       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             |\       |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             |        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             O        |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =             ---------|         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                      |         ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                   ___|___      ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                                ]
			AST_VARIABLE_DEFINITION([4][10]string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = win_screen ]
				AST_DATATYPE([4][10]string) : [ int_value = 0, string_value = [4][10]string ]
				AST_COMPOSITE_LITERAL([4][10]string) : 
					AST_DATATYPE([4][10]string) : [ int_value = 0, string_value = [4][10]string ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\    ^   ==/// == \|\ ==| ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\ ==/\ ==/|||  ==||\\ =|     ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\=/  \=/ |||  ==|| \\=| \/  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\/    v   \\ == /|  \\| /\  ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\    ^   ==/ == \|\ ==| ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\ ==/\ ==/|  ==||\\ =|     ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\=/  \=/ |  ==|| \\=| \/  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\/    v \\ == /|  \\| /\  ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\    ^   ==//// == \\ ==| ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\ ==/\ ==/|||| ===|\\ =|     ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\=/  \=/ |||| ===| \\=| \/  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\/    v   \\\ == /  \\| /\  ]
					AST_COMPOSITE_LITERAL([10]string) : 
						AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\  ===/// ==\||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\ ==/||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\=/|||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\\\\| |||  ==|||  ==|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = -------| \\\ ==/\\\ ===|   ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value =                            ||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\    ^   ==/// == \||\\ ==||  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\ ==/\ ==/|||  ==|||\\\ =|   ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\=/  \=/ |||  ==||| \\\=|/  ]
						AST_LITERAL(static_string) : [ int_value = 0, string_value = \\\\/    v   \\ == /||  \\\|\  ]
			AST_VARIABLE_DEFINITION(termios) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = current_termios ]
				AST_DATATYPE(termios) : [ int_value = 0, string_value = termios ]
			AST_FUNCTION_CALL() : [ int_value = 0, string_value = tcgetattr ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE(*termios) : 
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = current_termios ]
			AST_VARIABLE_DEFINITION(termios) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = new_termios ]
				AST_DATATYPE(termios) : [ int_value = 0, string_value = termios ]
				AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = current_termios ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ICANON ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL(int_literal) : [ int_value = 2, string_value =  ]
			AST_VARIABLE_DEFINITION(uint32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ECHO ]
				AST_DATATYPE(uint32) : [ int_value = 0, string_value = uint32 ]
				AST_LITERAL(int_literal) : [ int_value = 8, string_value =  ]
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
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE(*termios) : 
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = new_termios ]
			AST_VARIABLE_DEFINITION([30]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = word_input ]
				AST_DATATYPE([30]uint8) : [ int_value = 0, string_value = [30]uint8 ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = word_len ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
			AST_WHILE : 
				AST_OP_OR(bool) : 
					AST_OP_GRT(bool) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
						AST_LITERAL(int_literal) : [ int_value = 30, string_value =  ]
					AST_OP_LOE(bool) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
						AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_BODY() | ASTO_BODY_WHILE : 
					AST_VARIABLE_DEFINITION(uint64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buf ]
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
						AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
						AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
					AST_WHILE : 
						AST_OP_NEQ(bool) : 
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
							AST_LITERAL(int_literal) : [ int_value = 10, string_value =  ]
						AST_BODY() | ASTO_BODY_WHILE : 
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
								AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
									AST_LITERAL(static_string) : [ int_value = 0, string_value = [2J ]
									AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
							AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
								AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
									AST_LITERAL(static_string) : [ int_value = 0, string_value = Choose a word and type it, then press enter.
Don't worry, it's not gonna be visible!
reading %d/%d
 ]
									AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
								AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
									AST_VARIABLE_NAME([30]uint8) : [ int_value = 0, string_value = word_input ]
									AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
							AST_FUNCTION_CALL() : [ int_value = 0, string_value = read ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
								AST_OP_REFERENCE(*uint64) : 
									AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
								AST_LITERAL(int_literal) : [ int_value = 8, string_value =  ]
							AST_BODY_RESULT() : 
								AST_IF() : 
									AST_OP_AND(bool) : 
										AST_OP_LOE(bool) : 
											AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
											AST_LITERAL(int_literal) : [ int_value = 122, string_value =  ]
										AST_OP_GOE(bool) : 
											AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
											AST_LITERAL(int_literal) : [ int_value = 97, string_value =  ]
									AST_BODY() | ASTO_BODY_IF : 
										AST_OP_ASN(uint8) : 
											AST_OP_INDEX(uint8) : 
												AST_VARIABLE_NAME([30]uint8) : [ int_value = 0, string_value = word_input ]
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
											AST_CASTING(uint8) : 
												AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
												AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
										AST_OP_ASN(int64) : 
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
											AST_OP_SUM(int64) : 
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
												AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
			AST_VARIABLE_DEFINITION([]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = word ]
				AST_DATATYPE([]uint8) : [ int_value = 0, string_value = []uint8 ]
				AST_FUNCTION_CALL([]?) : [ int_value = 0, string_value = allocate ]
					AST_CASTING(uint64) : 
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
			AST_FOR : 
				AST_FOR_INIT() : 
					AST_VARIABLE_DEFINITION(int64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
						AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
						AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_OP_LES(bool) : 
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
					AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = word_len ]
				AST_FOR_UPDATE() : 
					AST_OP_ASN(int64) : 
						AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_OP_SUM(int64) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
				AST_BODY() | ASTO_BODY_FOR : 
					AST_OP_ASN(uint8) : 
						AST_OP_INDEX(uint8) : 
							AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
						AST_OP_INDEX(uint8) : 
							AST_VARIABLE_NAME([30]uint8) : [ int_value = 0, string_value = word_input ]
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
			AST_VARIABLE_DEFINITION([10][30]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = screen ]
				AST_DATATYPE([10][30]uint8) : [ int_value = 0, string_value = [10][30]uint8 ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = impiccato_status ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
			AST_IF() : 
				AST_OP_GRT(bool) : 
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_OP_INDEX([30]uint8) : 
							AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
							AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
				AST_BODY() | ASTO_BODY_IF | ASTO_ALWAYS_RETURNS : 
					AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
						AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
							AST_LITERAL(static_string) : [ int_value = 0, string_value = error: word is too big for the screen width!
 ]
							AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
					AST_RETURN() | ASTO_ALWAYS_RETURNS : 
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = word_x ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_OP_SUB(uint64) : 
					AST_OP_DIV(uint64) : 
						AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
							AST_OP_INDEX([30]uint8) : 
								AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
						AST_CASTING(uint64) : 
							AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
							AST_LITERAL(int_literal) : [ int_value = 2, string_value =  ]
					AST_OP_DIV(uint64) : 
						AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
							AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
						AST_CASTING(uint64) : 
							AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
							AST_LITERAL(int_literal) : [ int_value = 2, string_value =  ]
			AST_VARIABLE_DEFINITION(uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = word_y ]
				AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
				AST_LITERAL(int_literal) : [ int_value = 8, string_value =  ]
			AST_VARIABLE_DEFINITION([8]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = tried_letters ]
				AST_DATATYPE([8]uint8) : [ int_value = 0, string_value = [8]uint8 ]
			AST_VARIABLE_DEFINITION([]bool) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = found ]
				AST_DATATYPE([]bool) : [ int_value = 0, string_value = []bool ]
				AST_FUNCTION_CALL([]?) : [ int_value = 0, string_value = allocate ]
					AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
						AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
						AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = found_count ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
			AST_VARIABLE_DEFINITION(int64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = game_status ]
				AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
			AST_WHILE : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_BODY() | ASTO_BODY_WHILE : 
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_LITERAL(int_literal) : [ int_value = 10, string_value =  ]
						AST_FOR_UPDATE() : 
							AST_OP_ASN(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
								AST_OP_SUM(int64) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION(string) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = line ]
								AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
								AST_OP_INDEX(string) : 
									AST_OP_INDEX([10]string) : 
										AST_VARIABLE_NAME([8][10]string) : [ int_value = 0, string_value = impiccatos ]
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = impiccato_status ]
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_FOR : 
								AST_FOR_INIT() : 
									AST_VARIABLE_DEFINITION(int64) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
								AST_OP_LES(bool) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
									AST_LITERAL(int_literal) : [ int_value = 30, string_value =  ]
								AST_FOR_UPDATE() : 
									AST_OP_ASN(int64) : 
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
										AST_OP_SUM(int64) : 
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
											AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
								AST_BODY() | ASTO_BODY_FOR : 
									AST_OP_ASN(uint8) : 
										AST_OP_INDEX(uint8) : 
											AST_OP_INDEX([30]uint8) : 
												AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
										AST_OP_INDEX(uint8) : 
											AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = line ]
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_LITERAL(int_literal) : [ int_value = 8, string_value =  ]
						AST_FOR_UPDATE() : 
							AST_OP_ASN(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
								AST_OP_SUM(int64) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION(uint8) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
								AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
								AST_OP_INDEX(uint8) : 
									AST_VARIABLE_NAME([8]uint8) : [ int_value = 0, string_value = tried_letters ]
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_OP_ASN(uint8) : 
								AST_OP_INDEX(uint8) : 
									AST_OP_INDEX([30]uint8) : 
										AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
										AST_LITERAL(int_literal) : [ int_value = 9, string_value =  ]
									AST_OP_SUM(int64) : 
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
										AST_OP_SUB(int_literal) : 
											AST_LITERAL(int_literal) : [ int_value = 15, string_value =  ]
											AST_LITERAL(int_literal) : [ int_value = 4, string_value =  ]
								AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = c ]
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_CASTING(int64) : 
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
									AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
									AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
						AST_FOR_UPDATE() : 
							AST_OP_ASN(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
								AST_OP_SUM(int64) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION(uint8) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = letter ]
								AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
								AST_OP_INDEX(uint8) : 
									AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = screen_x ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_OP_SUM(int64) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_CASTING(int64) : 
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = word_x ]
							AST_BODY_RESULT() : 
								AST_IF() : 
									AST_OP_INDEX(bool) : 
										AST_VARIABLE_NAME([]bool) : [ int_value = 0, string_value = found ]
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_BODY() | ASTO_BODY_IF : 
										AST_OP_ASN(uint8) : 
											AST_OP_INDEX(uint8) : 
												AST_OP_INDEX([30]uint8) : 
													AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
													AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = word_y ]
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = screen_x ]
											AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = letter ]
									AST_BODY() | ASTO_BODY_ELSE : 
										AST_OP_ASN(uint8) : 
											AST_OP_INDEX(uint8) : 
												AST_OP_INDEX([30]uint8) : 
													AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
													AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = word_y ]
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = screen_x ]
											AST_CASTING(uint8) : 
												AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
												AST_LITERAL(int_literal) : [ int_value = 35, string_value =  ]
					AST_FUNCTION_CALL() : [ int_value = 0, string_value = render ]
						AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
						AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
					AST_VARIABLE_DEFINITION(uint64) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = buf ]
						AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
					AST_FUNCTION_CALL() : [ int_value = 0, string_value = read ]
						AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
						AST_OP_REFERENCE(*uint64) : 
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
						AST_LITERAL(int_literal) : [ int_value = 8, string_value =  ]
					AST_IF() : 
						AST_OP_EQU(bool) : 
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
							AST_LITERAL(int_literal) : [ int_value = 27, string_value =  ]
						AST_BODY() | ASTO_BODY_IF : 
							AST_JUMP() : [ int_value = 0, string_value = game_end ]
					AST_VARIABLE_DEFINITION(uint8) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
						AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
						AST_CASTING(uint8) : 
							AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
							AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
					AST_IF() : 
						AST_OP_AND(bool) : 
							AST_OP_LOE(bool) : 
								AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
								AST_LITERAL(int_literal) : [ int_value = 122, string_value =  ]
							AST_OP_GOE(bool) : 
								AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = buf ]
								AST_LITERAL(int_literal) : [ int_value = 97, string_value =  ]
						AST_BODY() | ASTO_BODY_IF : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = current_count ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = found_count ]
							AST_FOR : 
								AST_FOR_INIT() : 
									AST_VARIABLE_DEFINITION(int64) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
								AST_OP_LES(bool) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_CASTING(int64) : 
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
											AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
											AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
								AST_FOR_UPDATE() : 
									AST_OP_ASN(int64) : 
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
										AST_OP_SUM(int64) : 
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
											AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
								AST_BODY() | ASTO_BODY_FOR : 
									AST_BODY_RESULT() : 
										AST_IF() : 
											AST_OP_AND(bool) : 
												AST_OP_EQU(bool) : 
													AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = c ]
													AST_OP_INDEX(uint8) : 
														AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
												AST_OP_NOT(bool) : 
													AST_OP_INDEX(bool) : 
														AST_VARIABLE_NAME([]bool) : [ int_value = 0, string_value = found ]
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
											AST_BODY() | ASTO_BODY_IF : 
												AST_OP_ASN(bool) : 
													AST_OP_INDEX(bool) : 
														AST_VARIABLE_NAME([]bool) : [ int_value = 0, string_value = found ]
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
													AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
												AST_OP_ASN(int64) : 
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = found_count ]
													AST_OP_SUM(int64) : 
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = found_count ]
														AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
							AST_BODY_RESULT() : 
								AST_IF() : 
									AST_OP_EQU(bool) : 
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = found_count ]
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = current_count ]
									AST_BODY() | ASTO_BODY_IF : 
										AST_VARIABLE_DEFINITION(bool) : 
											AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = care ]
											AST_DATATYPE(bool) : [ int_value = 0, string_value = bool ]
											AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
										AST_FOR : 
											AST_FOR_INIT() : 
												AST_VARIABLE_DEFINITION(int64) : 
													AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
													AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
													AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
											AST_OP_LES(bool) : 
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
												AST_CASTING(int64) : 
													AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
													AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
														AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
														AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
											AST_FOR_UPDATE() : 
												AST_OP_ASN(int64) : 
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
													AST_OP_SUM(int64) : 
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
														AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
											AST_BODY() | ASTO_BODY_FOR : 
												AST_BODY_RESULT() : 
													AST_IF() : 
														AST_OP_AND(bool) : 
															AST_OP_EQU(bool) : 
																AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = c ]
																AST_OP_INDEX(uint8) : 
																	AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
																	AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
															AST_OP_INDEX(bool) : 
																AST_VARIABLE_NAME([]bool) : [ int_value = 0, string_value = found ]
																AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
														AST_BODY() | ASTO_BODY_IF : 
															AST_OP_ASN(bool) : 
																AST_VARIABLE_NAME(bool) : [ int_value = 0, string_value = care ]
																AST_LITERAL(bool) : [ int_value = 0, string_value = false ]
										AST_FOR : 
											AST_FOR_INIT() : 
												AST_VARIABLE_DEFINITION(int64) : 
													AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
													AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
													AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
											AST_OP_LES(bool) : 
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
												AST_CASTING(int64) : 
													AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
													AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
														AST_VARIABLE_NAME([8]uint8) : [ int_value = 0, string_value = tried_letters ]
														AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
											AST_FOR_UPDATE() : 
												AST_OP_ASN(int64) : 
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
													AST_OP_SUM(int64) : 
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
														AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
											AST_BODY() | ASTO_BODY_FOR : 
										AST_BODY_RESULT() : 
											AST_IF() : 
												AST_VARIABLE_NAME(bool) : [ int_value = 0, string_value = care ]
												AST_BODY() | ASTO_BODY_IF : 
													AST_OP_ASN(uint8) : 
														AST_OP_INDEX(uint8) : 
															AST_VARIABLE_NAME([8]uint8) : [ int_value = 0, string_value = tried_letters ]
															AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = impiccato_status ]
														AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = c ]
													AST_OP_ASN(int64) : 
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = impiccato_status ]
														AST_OP_SUM(int64) : 
															AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = impiccato_status ]
															AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
					AST_IF() : 
						AST_OP_GOE(bool) : 
							AST_CASTING(uint64) : 
								AST_DATATYPE(uint64) : [ int_value = 0, string_value = uint64 ]
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = found_count ]
							AST_OP_DOT(uint64) : [ int_value = 0, string_value = len ]
								AST_VARIABLE_NAME([]uint8) : [ int_value = 0, string_value = word ]
								AST_VARIABLE_NAME(uint64) : [ int_value = 0, string_value = len ]
						AST_BODY() | ASTO_BODY_IF : 
							AST_JUMP() : [ int_value = 0, string_value = game_win ]
					AST_BODY_RESULT() : 
						AST_IF() : 
							AST_OP_GOE(bool) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = impiccato_status ]
								AST_LITERAL(int_literal) : [ int_value = 8, string_value =  ]
							AST_BODY() | ASTO_BODY_IF : 
								AST_JUMP() : [ int_value = 0, string_value = game_lose ]
			AST_LABEL() : [ int_value = 0, string_value = game_win ]
			AST_WHILE : 
				AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
				AST_BODY() | ASTO_BODY_WHILE : 
					AST_VARIABLE_DEFINITION(pollfd) : 
						AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = poll_struct ]
						AST_DATATYPE(pollfd) : [ int_value = 0, string_value = pollfd ]
						AST_COMPOSITE_LITERAL(pollfd) : 
							AST_DATATYPE(pollfd) : [ int_value = 0, string_value = pollfd ]
							AST_CASTING(int32) : 
								AST_DATATYPE(int32) : [ int_value = 0, string_value = int32 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
							AST_CASTING(int16) : 
								AST_DATATYPE(int16) : [ int_value = 0, string_value = int16 ]
								AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
							AST_CASTING(int16) : 
								AST_DATATYPE(int16) : [ int_value = 0, string_value = int16 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
					AST_FOR : 
						AST_FOR_INIT() : 
							AST_VARIABLE_DEFINITION(int64) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = f ]
								AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
								AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
						AST_OP_LES(bool) : 
							AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = f ]
							AST_LITERAL(int_literal) : [ int_value = 4, string_value =  ]
						AST_FOR_UPDATE() : 
							AST_OP_ASN(int64) : 
								AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = f ]
								AST_OP_SUM(int64) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = f ]
									AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
						AST_BODY() | ASTO_BODY_FOR : 
							AST_VARIABLE_DEFINITION([10]string) : 
								AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = win_frame ]
								AST_DATATYPE([10]string) : [ int_value = 0, string_value = [10]string ]
								AST_OP_INDEX([10]string) : 
									AST_VARIABLE_NAME([4][10]string) : [ int_value = 0, string_value = win_screen ]
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = f ]
							AST_FOR : 
								AST_FOR_INIT() : 
									AST_VARIABLE_DEFINITION(int64) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = i ]
										AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
										AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
								AST_OP_LES(bool) : 
									AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_LITERAL(int_literal) : [ int_value = 10, string_value =  ]
								AST_FOR_UPDATE() : 
									AST_OP_ASN(int64) : 
										AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
										AST_OP_SUM(int64) : 
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
											AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
								AST_BODY() | ASTO_BODY_FOR : 
									AST_VARIABLE_DEFINITION(string) : 
										AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = line ]
										AST_DATATYPE(string) : [ int_value = 0, string_value = string ]
										AST_OP_INDEX(string) : 
											AST_VARIABLE_NAME([10]string) : [ int_value = 0, string_value = win_frame ]
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
									AST_FOR : 
										AST_FOR_INIT() : 
											AST_VARIABLE_DEFINITION(int64) : 
												AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = j ]
												AST_DATATYPE(int64) : [ int_value = 0, string_value = int64 ]
												AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
										AST_OP_LES(bool) : 
											AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
											AST_LITERAL(int_literal) : [ int_value = 30, string_value =  ]
										AST_FOR_UPDATE() : 
											AST_OP_ASN(int64) : 
												AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
												AST_OP_SUM(int64) : 
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
													AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
										AST_BODY() | ASTO_BODY_FOR : 
											AST_OP_ASN(uint8) : 
												AST_OP_INDEX(uint8) : 
													AST_OP_INDEX([30]uint8) : 
														AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
														AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = i ]
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
												AST_OP_INDEX(uint8) : 
													AST_VARIABLE_NAME(string) : [ int_value = 0, string_value = line ]
													AST_VARIABLE_NAME(int64) : [ int_value = 0, string_value = j ]
							AST_FUNCTION_CALL() : [ int_value = 0, string_value = render ]
								AST_VARIABLE_NAME([10][30]uint8) : [ int_value = 0, string_value = screen ]
								AST_LITERAL(bool) : [ int_value = 1, string_value = true ]
							AST_FUNCTION_CALL() : [ int_value = 0, string_value = poll ]
								AST_OP_REFERENCE(*pollfd) : 
									AST_VARIABLE_NAME(pollfd) : [ int_value = 0, string_value = poll_struct ]
								AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
								AST_LITERAL(int_literal) : [ int_value = 1000, string_value =  ]
							AST_BODY_RESULT() : 
								AST_IF() : 
									AST_OP_NEQ(bool) : 
										AST_OP_DOT(int16) : [ int_value = 0, string_value = revents ]
											AST_VARIABLE_NAME(pollfd) : [ int_value = 0, string_value = poll_struct ]
											AST_VARIABLE_NAME(int16) : [ int_value = 0, string_value = revents ]
										AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
									AST_BODY() | ASTO_BODY_IF : 
										AST_BODY_RESULT() : 
											AST_IF() : 
												AST_OP_NEQ(bool) : 
													AST_OP_BAND(int16) : 
														AST_OP_DOT(int16) : [ int_value = 0, string_value = revents ]
															AST_VARIABLE_NAME(pollfd) : [ int_value = 0, string_value = poll_struct ]
															AST_VARIABLE_NAME(int16) : [ int_value = 0, string_value = revents ]
														AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
													AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
												AST_BODY() | ASTO_BODY_IF : 
													AST_VARIABLE_DEFINITION(uint8) : 
														AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = c ]
														AST_DATATYPE(uint8) : [ int_value = 0, string_value = uint8 ]
													AST_FUNCTION_CALL() : [ int_value = 0, string_value = read ]
														AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
														AST_OP_REFERENCE(*uint8) : 
															AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = c ]
														AST_LITERAL(int_literal) : [ int_value = 1, string_value =  ]
													AST_BODY_RESULT() : 
														AST_IF() : 
															AST_OP_EQU(bool) : 
																AST_VARIABLE_NAME(uint8) : [ int_value = 0, string_value = c ]
																AST_LITERAL(int_literal) : [ int_value = 27, string_value =  ]
															AST_BODY() | ASTO_BODY_IF : 
																AST_JUMP() : [ int_value = 0, string_value = game_end ]
												AST_BODY() | ASTO_BODY_ELSE : 
													AST_FUNCTION_CALL(int32) : [ int_value = 0, string_value = printf ]
														AST_OP_DOT(*uint8) : [ int_value = 0, string_value = data ]
															AST_LITERAL(static_string) : [ int_value = 0, string_value = read error from stdin! ]
															AST_VARIABLE_NAME(*uint8) : [ int_value = 0, string_value = data ]
			AST_LABEL() : [ int_value = 0, string_value = game_lose ]
			AST_LABEL() : [ int_value = 0, string_value = game_end ]
			AST_FUNCTION_CALL() : [ int_value = 0, string_value = tcsetattr ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_LITERAL(int_literal) : [ int_value = 0, string_value =  ]
				AST_OP_REFERENCE(*termios) : 
					AST_VARIABLE_NAME(termios) : [ int_value = 0, string_value = current_termios ]
