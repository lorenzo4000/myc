package front

import "fmt"
import "strconv"

func parseErrorAt (token Token, err string, a ...any) {
	formatted_error := fmt.Sprintf(err, a...)
	fmt.Printf("%d:%d: parse error: %s\n", token.L0, token.C0, formatted_error)
}

func parseExpectErrorAt (token Token, expected string) {
	parseErrorAt(token, "Expected %s", expected)
}

func SparseErrorAt (token Token, err string, a ...any) string {
	formatted_error := fmt.Sprintf(err, a...)
	return fmt.Sprintf("%d:%d: parse error: %s\n", token.L0, token.C0, formatted_error)
}

func SparseExpectErrorAt (token Token, expected string) string {
	return SparseErrorAt(token, "Expected %s", expected)
}

type Parser struct {
	Tokens []Token
	Index int64
}

func (parser *Parser) Current() (Token, bool) {
	if parser.Index >= int64(len(parser.Tokens)) {
		return Token{}, true
	}
	return parser.Tokens[parser.Index], false
}

func (parser *Parser) CurrentIs(_type uint32) (bool) {
	next, end := parser.Current()
	return !end && next.Type == _type
}

func (parser *Parser) Peek(n int64) (Token, bool) {
	if parser.Index + n >= int64(len(parser.Tokens)) ||
	   parser.Index + n < 0 {
		return Token{}, true
	}
	return parser.Tokens[parser.Index + n], false
}


func (parser *Parser) Pop() (Token, bool) {
	if parser.Index >= int64(len(parser.Tokens)) {
		return Token{}, true
	}
	parser.Index++
	return parser.Tokens[parser.Index-1], false
}

func (parser *Parser) PopIf(expected_type uint32) (Token, bool) {
	if !parser.CurrentIs(expected_type) {
		// return current without popping
		current, _ := parser.Current()
		return current, true
	}	

	return parser.Pop()
}

func (parser *Parser) PlaceAt(index int64, new_token Token) *Token {
	_, end := parser.Current()
	if end {
		return nil
	}

	if cap(parser.Tokens) <= len(parser.Tokens) {
		// reallocate
		new_tokens := make([]Token, len(parser.Tokens) + 1)
		copy(parser.Tokens, new_tokens)
		parser.Tokens = new_tokens
	} else {
		parser.Tokens = parser.Tokens[:len(parser.Tokens)+1]
	}
		
	// shift 1 right
	copy(parser.Tokens[index+1:], parser.Tokens[index:len(parser.Tokens)-1])

	// write new token
	parser.Tokens[index] = new_token

	return &parser.Tokens[index]
}

// place token after current
func (parser *Parser) Place(new_token Token) *Token {
	return parser.PlaceAt(parser.Index, new_token)
}

func (parser *Parser) ParseFunctionCall() (*Ast_Node) {
	function_call := new(Ast_Node)
	function_call.Type = AST_FUNCTION_CALL

	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "function name")
			return nil
		}
		function_call.Data = []Token{next}
	}
	
	{
		next, expect := parser.PopIf(TOKEN_OPENING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`(`")
			return nil
		}
	}

	{
		for !parser.CurrentIs(TOKEN_CLOSING_PARENTHESES) {
			exp := parser.ParseExpression()
			if exp != nil {
				function_call.AddChild(exp)
			}

			next, not_comma := parser.PopIf(TOKEN_COMMA)
			if not_comma {
				if next.Type != TOKEN_CLOSING_PARENTHESES {
					parseExpectErrorAt(next, "`,` or `)`")
					return nil
				}
			}
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`)`")
			return nil
		}
	}

	return function_call
}

func (parser *Parser) ParseCompositeLiteral() (*Ast_Node) {
	//cur, _ := parser.Current()


	composite_literal := new(Ast_Node)
	composite_literal.Type = AST_COMPOSITE_LITERAL

	{
		composite_type := parser.ParseDataType()
		if composite_type == nil {
			return nil
		}

		composite_literal.AddChild(composite_type)
	}
	
	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}

	for !parser.CurrentIs(TOKEN_CLOSING_BRACE) {
		exp := parser.ParseExpression()
		if exp != nil {
			composite_literal.AddChild(exp)
		}

		next, not_comma := parser.PopIf(TOKEN_COMMA)
		if not_comma {
			if next.Type != TOKEN_CLOSING_BRACE {
				parseExpectErrorAt(next, "`,` or `}`")
				return nil
			}
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return composite_literal
}

func (parser *Parser) ParseLabel() (*Ast_Node) {
	println("parsing label!")

	label := new(Ast_Node)
	label.Type = AST_LABEL

	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "label name")
		}

		label.Data = []Token{next}
	}

	fmt.Println(label.Data)
	
	{
		next, expect := parser.PopIf(TOKEN_COLON)
		if expect {
			parseExpectErrorAt(next, "`:`")
		}

		fmt.Println(next)
	}
	
	return label
}

func (parser *Parser) ParseSubExpression() (*Ast_Node) {
	curr, end := parser.Current()
	if !end {
		current_index := parser.Index

		_, err := parser.GetDataType()
		next, end := parser.Current()

		parser.Index = current_index

		if len(err) <= 0 && !end && next.Type == '{' {
			return parser.ParseCompositeLiteral()
		}

		switch curr.Type {
			case TOKEN_OPENING_PARENTHESES:
				parser.Pop()

				e := parser.ParseExpression()
				if e == nil {
					return nil
				}

				next, expect := parser.PopIf(TOKEN_CLOSING_PARENTHESES)
				if expect {
					parseExpectErrorAt(next, "`}`")
				}
				
				expression := new(Ast_Node)
				expression.Type = AST_EXPRESSION
				expression.AddChild(e)
				return expression
			case TOKEN_IDENTIFIER: 
				{
					next, end := parser.Peek(1)
					if !end {
						switch next.Type {
							case '(': return parser.ParseFunctionCall()
							default:  return parser.ParseVariableName()
						}
					}
				}
				
			case TOKEN_STRING_LITERAL: 
				literal := new(Ast_Node)
				literal.Type = AST_LITERAL
				lit, _ := parser.Pop()
				literal.Data = []Token{lit}
				return literal 
			case TOKEN_INT_LITERAL: 
				literal := new(Ast_Node)
				literal.Type = AST_LITERAL
				lit, _ := parser.Pop()
				literal.Data = []Token{lit}
				return literal
			case TOKEN_BOOL_LITERAL: 
				literal := new(Ast_Node)
				literal.Type = AST_LITERAL
				lit, _ := parser.Pop()
				literal.Data = []Token{lit}
				return literal
			case TOKEN_OPENING_BRACE:
				parser.Pop()

				body := parser.ParseBody()
				if body == nil {
					return nil
				}

				{
					next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
					if expect {
						parseExpectErrorAt(next, "`}`")
						return nil
					}
				}
				return body
			case TOKEN_OPENING_BRACKET:
				parser.Pop()

				//if cur.Type == TOKEN_IDENTIFIER {
					// **
					// type casting
					casting_type := parser.ParseDataType()
					if casting_type == nil {
						return nil
					}

					casting := new(Ast_Node)
					casting.Type = AST_CASTING
					casting.AddChild(casting_type)
					
					{
						next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
						if expect {
							parseExpectErrorAt(next, "`]`")
							return nil
						}
					}

					expression := parser.ParseExpression()
					if expression == nil {
						return nil
					}
					casting.AddChild(expression)

					return casting
				//}
			case TOKEN_KEYWORD_IF:
				return parser.ParseIf()
			case TOKEN_SUB:
				parser.Pop()
				
				next, end := parser.Current()
				if !end {
					switch next.Type {
						case TOKEN_INT_LITERAL: 
							next.Int_value *= int64(-1)
							parser.Tokens[parser.Index] = next

							return parser.ParseSubExpression()
						default:
							neg := new(Ast_Node)
							neg.Type = AST_OP_NEG

							exp := parser.ParseExpression()

							neg.AddChild(exp)
							
							return neg
					}
				}
			case TOKEN_SUM:
				parser.Pop()
				
				next, end := parser.Current()
				if !end {
					switch next.Type {
						default:
							return parser.ParseExpression()
					}
				}
			case TOKEN_MUL:
				parser.Pop()
				
				mul := new(Ast_Node)
				mul.Type = AST_OP_DEREFERENCE

				exp := parser.ParseExpression()

				mul.AddChild(exp)
				
				return mul
				
			case TOKEN_NOT:
				parser.Pop()
				
				not := new(Ast_Node)
				not.Type = AST_OP_NOT

				exp := parser.ParseExpression()

				not.AddChild(exp)
				
				return not
			case TOKEN_BAND:
				parser.Pop()
				
				band := new(Ast_Node)
				band.Type = AST_OP_REFERENCE

				exp := parser.ParseExpression()

				band.AddChild(exp)
				
				return band
			case TOKEN_BNOT:
				parser.Pop()
				
				bnot := new(Ast_Node)
				bnot.Type = AST_OP_BNOT

				exp := parser.ParseExpression()

				bnot.AddChild(exp)
				
				return bnot
				
		}
	}
	parseExpectErrorAt(curr, "value or expression")
	return nil
}

func (parser *Parser) ParseOperator() (*Ast_Node) {
	operator := new(Ast_Node)

	cur, end := parser.Current()
	if end {
		return nil
	}

	switch cur.Type {
		case TOKEN_SUM:   operator.Type = AST_OP_SUM
		case TOKEN_SUB:   operator.Type = AST_OP_SUB
		case TOKEN_MUL:   operator.Type = AST_OP_MUL
		case TOKEN_DIV:   operator.Type = AST_OP_DIV
		case TOKEN_MOD:   operator.Type = AST_OP_MOD
		case TOKEN_ASN:   operator.Type = AST_OP_ASN

		case TOKEN_GRT:   operator.Type = AST_OP_GRT
		case TOKEN_LES:   operator.Type = AST_OP_LES
		case TOKEN_GOE:   operator.Type = AST_OP_GOE
		case TOKEN_LOE:   operator.Type = AST_OP_LOE

		case TOKEN_EQU:   operator.Type = AST_OP_EQU
		case TOKEN_NEQ:   operator.Type = AST_OP_NEQ

		case TOKEN_AND:   operator.Type = AST_OP_AND
		case TOKEN_OR:    operator.Type = AST_OP_OR
		
		case TOKEN_BAND:   operator.Type = AST_OP_BAND
		case TOKEN_BORI:    operator.Type = AST_OP_BORI
		case TOKEN_BORE:    operator.Type = AST_OP_BORE
		case TOKEN_BNOT:   operator.Type = AST_OP_BNOT

		case TOKEN_DOT:   operator.Type = AST_OP_DOT
		default:          return nil
	}
	parser.Pop()
	return operator
}

func (parser *Parser) _ParseTailOperator() (*Ast_Node) {
	operator := new(Ast_Node)

	//
	// ** WHAT are we exactly tho? let's find out 
	cur, end := parser.Current()

	if end {
		//
		// *** we are... nothing~ eyyy~~ ^^
		// actually this is an error
		return nil
	}

	switch cur.Type {
		case '[': {
			parser.Pop()
			index_expression := parser.ParseExpression()
			if index_expression ==  nil {
				// this is an error because we need the index!
				return nil
			}

			index_expression = fix_precedence(index_expression)
			if index_expression ==  nil {
				// this is an error because we need the index!
				return nil
			}

			cur, expect := parser.PopIf(']')
			if expect {
				// this is an error because we need the closing bracket!
				parseExpectErrorAt(cur, "`]`")
				return nil
			}
		
			operator.Type = AST_OP_INDEX
			operator.NewChild(AST_EXPRESSION)
			operator.AddChild(index_expression)
		}

		default: 
			//
			// *** if we don't understand what we are, we are very likely something wrong!
			// so this an error
			return nil
	}

	//
	// ** check if we are the root
	next, end := parser.Current()
	if end {
		return operator
	} else
	// see if "next" is something we know;
	// if it isn't, we are the root!
	if next.Type != '[' && next.Type != ']' && next.Type != TOKEN_INT_LITERAL {
		return operator
	} else {
		//
		// *** if we are not the root, we need to go forward to find it!
		
		// recurse
		next_tail := parser._ParseTailOperator()
		if next_tail == nil {
			// we received an error, so... 
			return nil
		}

		operator.AddChild(next_tail)
	}
	
	return operator
}

func fix_tail(ast *Ast_Node) (*Ast_Node) {
	//
	// TODO: make all of this more generic (for more than just index)

	if len(ast.Children) < 3 {
		return ast
	}

	rhs := ast.Children[2]
	if rhs.Type != AST_OP_INDEX {
		return ast
	}

	rhs = fix_tail(rhs)
	ast.Children[2] = rhs

	//
	// 	*** rearrange ast ***
	//
	//		 ** CASE 1 **
	//
	//    	array[A][B]
	//
	//	   	 	 index
	//		 	/  |  \
	//		  exp  A  index
	//		  		  /   \	
	//			    exp    B
	//		 	
	//		 	index   
	//		     /   \
	//		  index   B
	//		  /	 \  
	//		exp	  A   
	//

	//      ** CASE 2 **
	//      
	//     array[A][B][C]
	//   
	//		 index
	//		/  |  \
	//	  exp  A  index (rhs)
	//     	 	 /  |  \
	//  	   exp  B  index
	//   	     	   /   \	
	// 	    	      exp   C
	//
	//   this becomes a case 1 when we fix the rhs :
	//   
	//		 index (ast)
	//		/  |  \
	//	  exp  A  index (rhs) 
	//   		 /     \ 
	// 		 index 		C
	//	    /     \
	//	  exp      B
	//

	//
	//           index
	//         /      \
	//		index      C
	//	    /   \
	//	 index   B
	//	 /	 \  
	// exp	  A   
	

	// find the empty exp thing
	iterator := rhs
	for iterator.Children[0].Type != AST_EXPRESSION {
		iterator = iterator.Children[0]
	}

	// found!
	iterator.Children[0] = ast
	ast.Children = ast.Children[:2]

	return rhs
}

func (parser *Parser) ParseTailOperator() (*Ast_Node) {
	ast := parser._ParseTailOperator()
	if ast != nil {
		ast.Print()

		ast = fix_tail(ast)
		
		ast.Print()
	}

	return ast
}

func (parser *Parser) ParseVariableName() (*Ast_Node) {
	variable_name := new(Ast_Node)
	variable_name.Type = AST_VARIABLE_NAME
					
	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "variable name")
			return nil
		}
		variable_name.Data = []Token{next}
	}
	

	return variable_name
}

func first_name(exp *Ast_Node) string {
	if exp.Type == AST_VARIABLE_NAME {
		return exp.Data[0].String_value
	}
	if len(exp.Children) <= 0 {
		return ""
	}

	return first_name(exp.Children[0]) 
}

func precedence(ast *Ast_Node) uint8 {
	switch ast.Type {
		case AST_EXPRESSION: return precedence(ast.Children[0])
		case AST_LITERAL:    return 0xFF
		
		case AST_OP_DOT:     return 8
		case AST_OP_INDEX:     return 7

		case AST_OP_REFERENCE:   return 7
		case AST_OP_DEREFERENCE: return 7
	
		case AST_CASTING: return 6

		// mul
		case AST_OP_MUL:     return 5
		case AST_OP_DIV:     return 5
		case AST_OP_MOD:     return 5
		case AST_OP_BAND:    return 5
		case AST_OP_NEG:     return 5
		case AST_OP_BORE:	 return 5
		case AST_OP_BNOT:    return 5

		// sum
		case AST_OP_SUM:     return 4
		case AST_OP_SUB:     return 4
		case AST_OP_BORI:	 return 4


		case AST_OP_ASN:     return 3


		// conditions
		case AST_OP_GRT:     return 2
		case AST_OP_LES:	 return 2
		case AST_OP_GOE:	 return 2
		case AST_OP_LOE:	 return 2

		case AST_OP_EQU:     return 2
		case AST_OP_NEQ:	 return 2

		// bool ops
		case AST_OP_NOT:	 return 1
		case AST_OP_AND:	 return 1
		case AST_OP_OR :	 return 1
	}
	return 0xFF
}

func fix_precedence(ast *Ast_Node) *Ast_Node {
	if ast.Type == AST_EXPRESSION {
		return fix_precedence(ast.Children[0])
	} else
	// skip stuff
	if ast.Type == AST_FUNCTION_CALL {
		return ast
	}

	if len(ast.Children) == 1 {
		blw := ast.Children[0]
		if precedence(blw) < precedence(ast) {
			ast.Children[0] = blw.Children[0]
			blw.Children[0] = fix_precedence(ast)
			return blw
		} 
	} else 

	if len(ast.Children) == 2 {
		rhs := ast.Children[1]
		if precedence(rhs) < precedence(ast) {
			ast.Children[1] = rhs.Children[0]
			rhs.Children[0] = fix_precedence(ast)
			return rhs
		} 
	}
	return ast
}

func fix_dot_field_name(ast *Ast_Node) *Ast_Node {
	if ast.Type != AST_OP_DOT {
		return nil
	}

	println("fix_dot_field_name was called on ")
	ast.Print()

	field := ast.Children[1]
	println("type of the cute field: ", field.ToString())

	field_name := field.Data[0].String_value
	if len(field_name) <= 0 {
		return nil
	}

	fix_dot_field_name(ast.Children[0])
	fix_dot_field_name(ast.Children[1])

	ast.Data = []Token{
		Token{String_value: field_name},
	}
	return ast
}

func fix_dot(ast *Ast_Node) *Ast_Node {
	if ast.Type != AST_OP_DOT {
		return nil
	}

	println("fix_dot was called on ", ast.ToString())

	next_dot := ast.Children[1]
	if next_dot.Type != AST_OP_DOT {
		return fix_dot_field_name(ast)
	}

	ast.Children[1] = fix_dot(next_dot)

	//
	// 	rearrange ast
	//
	//  	.
	//     d .
	//  	x y

	//  	.
	//     . y
	//    d x

	//

	println("am i ACTUALLY about to do this?")
	rhs := ast.Children[1]
	ast.Children[1] = rhs.Children[1]
	rhs.Children[1] = rhs.Children[0]
	rhs.Children[0] = ast.Children[0]
	ast.Children[0] = fix_precedence(rhs)

	ast = fix_precedence(ast)
		
	return fix_dot_field_name(ast)
}

func (parser *Parser) ParseExpression() (*Ast_Node) {
	left := parser.ParseSubExpression()
	if left == nil {
		return nil
	}
		
	tail := parser.ParseTailOperator()
	if tail != nil {
		iterator := tail
		for iterator.Children[0].Type != AST_EXPRESSION {
			iterator = iterator.Children[0]
		}
		iterator.Children[0] = left

		left = tail
	} 

	operator := parser.ParseOperator()
	if operator == nil {
		fixed_expression := fix_precedence(left)
		if fixed_expression ==  nil {
			return left
		}
		return fixed_expression
	}
	
	right := parser.ParseExpression()
	if right == nil {
		return nil
	}

	operator.AddChild(left)
	operator.AddChild(right)
	
	tail = parser.ParseTailOperator()
	if tail != nil {
		iterator := tail
		for iterator.Children[0].Type != AST_EXPRESSION {
			iterator = iterator.Children[0]
		}
		iterator.Children[0] = operator

		operator = tail
	} 
	println("opertatoreee!")
	operator.Print()

	fixed_expression := fix_precedence(operator)
	if fixed_expression == nil {
		return operator
	}

	println("precedenza fixatissimaaaaa!")
	fixed_expression.Print()
	
	dot := fixed_expression.Find(AST_OP_DOT)
	if dot != nil {
		println("calling fix_fot on ")
		dot.Print()
		dot = fix_dot(dot)
		println("fix_dot returned ")
		dot.Print()
		if dot == nil {
			cur, _ := parser.Current()
			parseErrorAt(cur, "invalid field expression after `.`")
		}
	}

	return fixed_expression
}

func (parser *Parser) ParseWhile() (*Ast_Node) {
	while := new(Ast_Node)
	while.Type = AST_WHILE

	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_WHILE)
		if expect {
			parseExpectErrorAt(next, "`while`")
			return nil
		}
	}

	// ** put implicit parentheses around expression
	current, _ := parser.Current()
	parser.Place(Token{
		'(',
		current.L0,
		current.C0 + 1,
		current.L1,
		current.C1 + 1,
		0,
		"",
	})

	// search first '{'
	first_brace := 0
	for {
		current, end := parser.Peek(int64(first_brace))
		if end {
			parseExpectErrorAt(current, "`{`")
			return nil
		}

		if current.Type == '{' {
			break
		}

		first_brace++
	}
	
	parser.PlaceAt(parser.Index + int64(first_brace), Token{
		')',
		current.L0,
		current.C0 + 1,
		current.L1,
		current.C1 + 1 ,
		0,
		"",
	})

	{
		exp := parser.ParseExpression()
		if exp != nil {
			while.AddChild(exp)
		}
	}


	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}

	{
		while_body := parser.ParseBody()
		if while_body != nil {
			while_body.Flags |= ASTO_BODY_WHILE
			while.AddChild(while_body)
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}
	return while
}

func (parser *Parser) ParseForInit() (*Ast_Node) {
	_for_init := new(Ast_Node)
	_for_init.Type = AST_FOR_INIT
	for !parser.CurrentIs(TOKEN_SEMICOLON) {
		def := parser.ParseVariableDefinition()
		if def != nil {
			_for_init.AddChild(def)
		} else {
			exp := parser.ParseExpression()
			if exp != nil {
				_for_init.AddChild(exp)
			}
		}

		next, not_comma := parser.PopIf(TOKEN_COMMA)
		if not_comma {
			if next.Type != TOKEN_SEMICOLON {
				parseExpectErrorAt(next, "`,` or `;`")
				return nil
			}
		}
	}
	
	return _for_init
}

func (parser *Parser) ParseForUpdate() (*Ast_Node) {
	_for_update := new(Ast_Node)
	_for_update.Type = AST_FOR_UPDATE
	for !parser.CurrentIs(TOKEN_CLOSING_PARENTHESES) {
		exp := parser.ParseExpression()
		if exp != nil {
			_for_update.AddChild(exp)
		}

		next, not_comma := parser.PopIf(TOKEN_COMMA)
		if not_comma {
			if next.Type != TOKEN_CLOSING_PARENTHESES {
				parseExpectErrorAt(next, "`,` or `)`")
				return nil
			}
		}
	}
	
	return _for_update
}

func (parser *Parser) ParseFor() (*Ast_Node) {
	_for := new(Ast_Node)
	_for.Type = AST_FOR

	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_FOR)
		if expect {
			parseExpectErrorAt(next, "`for`")
			return nil
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`(`")
			return nil
		}
	}

	{
		// initialization
		_for.NewChild(AST_FOR_INIT)
		_init := parser.ParseForInit()
		if _init != nil {
			_for.Children[0] = _init
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_SEMICOLON)
		if expect {
			parseExpectErrorAt(next, "`;`")
			return nil
		}
	}

	{
		// condition
		_for.NewChild(AST_EXPRESSION)
		exp := parser.ParseExpression()
		if exp != nil {
			_for.Children[1] = exp
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_SEMICOLON)
		if expect {
			parseExpectErrorAt(next, "`;`")
			return nil
		}
	}

	{
		// update
		_for.NewChild(AST_FOR_UPDATE)
		_update := parser.ParseForUpdate()
		if _update != nil {
			_for.Children[2] = _update
		}
	}
	
	{
		next, expect := parser.PopIf(TOKEN_CLOSING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`)`")
			return nil
		}
	}
	
	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}
	
	{
		_body := parser.ParseBody()
		if _body != nil {
			_body.Flags |= ASTO_BODY_FOR
			_for.AddChild(_body)
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return _for
}

func (parser *Parser) ParseIf() (*Ast_Node) {
	ast_if := new(Ast_Node)
	ast_if.Type = AST_IF

	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_IF)
		if expect {
			parseExpectErrorAt(next, "`if`")
			return nil
		}
	}

	// ** put implicit parentheses around expression
	current, _ := parser.Current()
	parser.Place(Token{
		'(',
		current.L0,
		current.C0 + 1,
		current.L1,
		current.C1 + 1,
		0,
		"",
	})

	// search first '{'
	first_brace := 0
	for {
		current, end := parser.Peek(int64(first_brace))
		if end {
			parseExpectErrorAt(current, "`{`")
			return nil
		}

		if current.Type == '{' {
			break
		}

		first_brace++
	}
	
	parser.PlaceAt(parser.Index + int64(first_brace), Token{
		')',
		current.L0,
		current.C0 + 1,
		current.L1,
		current.C1 + 1 ,
		0,
		"",
	})
	
	{
		exp := parser.ParseExpression()
		if exp != nil {
			ast_if.AddChild(exp)
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}

	{
		ast_if_body := parser.ParseBody()
		if ast_if_body != nil {
			ast_if_body.Flags |= ASTO_BODY_IF
			ast_if.AddChild(ast_if_body)
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	{
		_, expect := parser.PopIf(TOKEN_KEYWORD_ELSE)
		if expect {
			return ast_if
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}

	{
		ast_else_body := parser.ParseBody()
		if ast_else_body != nil {
			ast_else_body.Flags |= ASTO_BODY_ELSE
			ast_if.AddChild(ast_else_body)
		}
	}
	
	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return ast_if
}

func (parser *Parser) ParseJump() (*Ast_Node) {
	jump := new(Ast_Node)
	jump.Type = AST_JUMP

	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_JUMP)
		if expect {
			parseExpectErrorAt(next, "`jump`")
			return nil
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "name of jump label")
			return nil
		}

		jump.Data = []Token{next}
	}

	return jump
}

func (parser *Parser) ParseBody() (*Ast_Node) {
	body := new(Ast_Node)
	body.Type = AST_BODY

	for !parser.CurrentIs(TOKEN_CLOSING_BRACE) {
		current, end := parser.Current()
		if end {
			return nil
		}
		switch current.Type {
			case TOKEN_SEMICOLON: {
				parser.Pop()
			}
			case TOKEN_COLON: {
				body.AddChild(parser.ParseVariableDefinition())
				
				next, expect := parser.PopIf(TOKEN_SEMICOLON)
				if expect {
					parseExpectErrorAt(next, "`;`")
					return nil
				}
			}
			case TOKEN_KEYWORD_WHILE: {
				body.AddChild(parser.ParseWhile())
			}
			case TOKEN_KEYWORD_FOR: {
				body.AddChild(parser.ParseFor())
			}
			case TOKEN_KEYWORD_RETURN: {
				ret := parser.ParseReturn()
				if ret != nil {
					next, expect := parser.PopIf(TOKEN_SEMICOLON)
					if expect {
						parseExpectErrorAt(next, "`;`")
						return nil
					}
					body.AddChild(ret)
				}
			}
			case TOKEN_KEYWORD_JUMP: {
				body.AddChild(parser.ParseJump())
			}
			case TOKEN_IDENTIFIER:
				next, _ := parser.Peek(1)
				if next.Type == TOKEN_COLON {
					body.AddChild(parser.ParseLabel())
					break
				}
				fallthrough
			default: {
				exp := parser.ParseExpression()
				if exp != nil {
					if 	parser.CurrentIs(TOKEN_SEMICOLON) {
						body.AddChild(exp)
						parser.Pop()
					} else if parser.CurrentIs(TOKEN_CLOSING_BRACE) {
						body_result := new(Ast_Node)
						body_result.Type = AST_BODY_RESULT
						body_result.AddChild(exp)
						body.AddChild(body_result)
					} else {
						prev, _ := parser.Peek(-1)
						if prev.Type != TOKEN_CLOSING_BRACE {
							cur, end := parser.Current()
							fmt.Println(cur)
							if !end {
								parseExpectErrorAt(cur, "`;` or `}`")
								parser.Pop()
							}
							return nil
						} 
						body.AddChild(exp)
					}
				} else {
					return nil
				}
			}
		}
	}

	return body
}

func (parser *Parser) ParseFunctionDefinitionArgs() (*Ast_Node) {
	function_definition_args := new(Ast_Node)
	function_definition_args.Type = AST_FUNCTION_DEFINITION_ARGS

	for !parser.CurrentIs(TOKEN_CLOSING_PARENTHESES) {
		def := parser.ParseVariableDefinition()
		if def != nil {
			// if there is initialization than error
			// NOTE, TODO: in the future we will have default arguments, so this will change
			if len(def.Children) >= 3 {
				cur, end := parser.Current()
				if end {
					parseExpectErrorAt(cur, "`,` or `)`, got EOF")
					return nil
				} 
				parseExpectErrorAt(cur, "`,` or `)`, got initialization")
			}

			function_definition_args.AddChild(def)
		}

		next, not_comma := parser.PopIf(TOKEN_COMMA)
		if not_comma {
			if next.Type != TOKEN_CLOSING_PARENTHESES {
				parseExpectErrorAt(next, "`,` or `)`")
				return nil
			}
		}
	}

	return function_definition_args	
}

func (parser *Parser) ParseFunctionDefinition() (*Ast_Node) {
	function_definition := new(Ast_Node)
	function_definition.Type = AST_FUNCTION_DEFINITION

	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_FUNCTION)
		if expect {
			parseExpectErrorAt(next, "`function`")
			return nil
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "function name")
			return nil
		}
		function_name := new(Ast_Node)
		function_name.Type = AST_FUNCTION_DEFINITION_NAME
		function_name.Data = []Token{next}

		function_definition.AddChild(function_name)
	}


	{
		next, expect := parser.PopIf(TOKEN_OPENING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`(`")
			return nil
		}
	}

	args := parser.ParseFunctionDefinitionArgs()
	if args != nil {
		function_definition.AddChild(args)
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`)`")
			return nil
		}
	}
	
	function_definition.NewChild(AST_DATATYPE)

	{		
		next, expect := parser.PopIf(TOKEN_KEYWORD_EXTERNAL)
		if !expect {
			function_definition.Flags |= ASTO_FUNCTION_EXTERNAL
			next, expect = parser.PopIf(TOKEN_SEMICOLON)
			if expect {
				parseExpectErrorAt(next, "`;`")
				return nil
			}
			return function_definition
		}
	}
	
	{

		return_type := parser.ParseDataType()
		next, _ := parser.Current()
		if return_type != nil {
			function_definition.Children[2] = return_type
		} else {
			if next.Type != TOKEN_OPENING_BRACE {
				parseExpectErrorAt(next, "return type or `{`")
				return nil
			}
		}
	}

	{		
		next, expect := parser.PopIf(TOKEN_KEYWORD_EXTERNAL)
		if !expect {
			function_definition.Flags |= ASTO_FUNCTION_EXTERNAL
			next, expect = parser.PopIf(TOKEN_SEMICOLON)
			if expect {
				parseExpectErrorAt(next, "`;`")
				return nil
			}
			return function_definition
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}
	
	body := parser.ParseBody()
	if body != nil {
		body.Flags |= ASTO_BODY_FUNCTION
		function_definition.AddChild(body)
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return function_definition
}

func (parser *Parser) ParseStructDefinitionBody() (*Ast_Node) {
	struct_body := new(Ast_Node)
	struct_body.Type = AST_STRUCT_DEFINITION_BODY

	for !parser.CurrentIs(TOKEN_CLOSING_BRACE) {
		def := parser.ParseVariableDefinition()
		if def != nil {
			// if there is initialization than error
			// NOTE, TODO: in the future we will have initialization? maybe?
			if len(def.Children) >= 3 {
				cur, end := parser.Current()
				if end {
					parseExpectErrorAt(cur, "`;` or `}`, got EOF")
					return nil
				} 
				parseExpectErrorAt(cur, "`;` or `}`, got initialization")
			}

			struct_body.AddChild(def)
		}

		next, not_semi := parser.PopIf(TOKEN_SEMICOLON)
		if not_semi {
			parseExpectErrorAt(next, "`;`")
			return nil
		}
	}

	return struct_body
}

func (parser *Parser) ParseStructDefinition() (*Ast_Node) {
	struct_definition := new(Ast_Node)
	struct_definition.Type = AST_STRUCT_DEFINITION
	
	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_STRUCT)
		if expect {
			parseExpectErrorAt(next, "`struct`")
			return nil
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "struct name")
			return nil
		}
		struct_name := new(Ast_Node)
		struct_name.Type = AST_STRUCT_DEFINITION_NAME
		struct_name.Data = []Token{next}

		struct_definition.AddChild(struct_name)
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}

	body := parser.ParseStructDefinitionBody()
	if body != nil {
		struct_definition.AddChild(body)
	}

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACE)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return struct_definition
}

func (parser *Parser) ParseReturn() (*Ast_Node) {
	ast_return := new(Ast_Node)
	ast_return.Type = AST_RETURN

	{
		next, expect := parser.PopIf(TOKEN_KEYWORD_RETURN)
		if expect {
			parseExpectErrorAt(next, "`return`")
			return nil
		}
	}
	
	{
		next, end := parser.Current()
		if end { 
			parseExpectErrorAt(next, "value or expression or `;`")
			return nil
		}

		if next.Type == TOKEN_SEMICOLON {
			return ast_return
		}
		
		return_exp := parser.ParseExpression()
		if return_exp == nil {
			parseExpectErrorAt(next, "value or expression")
			return nil
		}

		ast_return.AddChild(return_exp)
	}
	
	return ast_return
}

// returns (type_name, "") if valid;
//         ("", error[s])  if not valid;
// TODO: make this nicer
func (parser *Parser) GetDataType() (string, string) {
	cur, end := parser.Current()
	if end {
		return "", SparseExpectErrorAt(cur, "datatype, got end of input")
	}
	
	switch cur.Type {
		case TOKEN_IDENTIFIER: 
			parser.Pop()
			return cur.String_value, ""
		case TOKEN_MUL:
			parser.Pop()
			data_type := string(byte(cur.Type))

			pointed_type, err := parser.GetDataType()
			if len(err) > 0 {
				return "", err
			}

			data_type += pointed_type
			return data_type, ""
		case '[':
			parser.Pop()

			data_type := "["

			next, end := parser.Current()
			if end {
				return "", SparseExpectErrorAt(next, "int literal or `]`, after `[`")
			}

			if next.Type == TOKEN_INT_LITERAL {
				data_type += strconv.FormatInt(next.Int_value, 10)
				parser.Pop()
			} else
			if next.Type != ']' {
				return "", SparseExpectErrorAt(next, "int literal or `]`, after `[`")
			}

			closing, expect := parser.PopIf(']')
			if expect {
				return "", SparseExpectErrorAt(closing, "`]`")
			}
			data_type += "]"
			element_type, _ := parser.GetDataType()
			data_type += element_type

			return data_type, ""
		default:
			return "",  SparseExpectErrorAt(cur, "datatype")

	}
}
 
func (parser *Parser) ParseDataType() (*Ast_Node) {
	datatype := new(Ast_Node)
	datatype.Type = AST_DATATYPE

	datatype.Data    = make([]Token, 1)

	t, err := parser.GetDataType()
	if len(err) > 0 {
		return nil
	}

	datatype.Data[0].String_value = t
	return datatype
}

func (parser *Parser) ParseVariableDefinition() (*Ast_Node) {
	variable_definition := new(Ast_Node)
	variable_definition.Type = AST_VARIABLE_DEFINITION

	{
		next, expect := parser.PopIf(TOKEN_COLON)
		if expect {
			parseExpectErrorAt(next, "`:`")
			return nil
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "variable name")
			return nil
		}
		variable_name := new(Ast_Node)
		variable_name.Type = AST_VARIABLE_DEFINITION_NAME
		variable_name.Data = []Token{next}

		variable_definition.AddChild(variable_name)
	}
	
	{

		variable_type := parser.ParseDataType()
		next, _ := parser.Current()
		if variable_type == nil {
			parseExpectErrorAt(next, "variable type")
			return nil
		}
		
		variable_definition.AddChild(variable_type)
	}
	
	{
		next, expect := parser.PopIf(TOKEN_ASN)
		if expect {
			return variable_definition
		}
		init_exp := parser.ParseExpression()
		if init_exp == nil {
			parseExpectErrorAt(next, "value or expression")
		}	
		variable_definition.AddChild(init_exp)
	}

	return variable_definition
}

func (parser *Parser) Parse() (*Ast_Node) {
	head := new(Ast_Node)
	head.Type = AST_HEAD

	for {
		current, end := parser.Current()
		if end {
			break
		}
		switch current.Type {
			case TOKEN_KEYWORD_FUNCTION: head.AddChild(parser.ParseFunctionDefinition())
			case TOKEN_KEYWORD_STRUCT:   head.AddChild(parser.ParseStructDefinition())
			case TOKEN_COLON: {
				head.AddChild(parser.ParseVariableDefinition())
				
				next, expect := parser.PopIf(TOKEN_SEMICOLON)
				if expect {
					parseExpectErrorAt(next, "`;`")
					return nil
				}
			}
			case TOKEN_DIRECTIVE: {
				// skip
				parser.Pop()
			}
			default: {
				parseExpectErrorAt(current, "declaration")
				return head
			}
		}
	}
	return head
}
