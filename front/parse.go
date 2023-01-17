package front

import "fmt"

func parseErrorAt (token Token, err string, a ...any) {
	formatted_error := fmt.Sprintf(err, a...)
	fmt.Printf("%d:%d: parse error: %s\n", token.L0, token.C0, formatted_error)
}

func parseExpectErrorAt (token Token, expected string) {
	parseErrorAt(token, "Expected %s", expected)
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

func (parser *Parser) CurrentIs(_type byte) (bool) {
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

func (parser *Parser) PopIf(expected_type byte) (Token, bool) {
	if !parser.CurrentIs(expected_type) {
		// return current without popping
		current, _ := parser.Current()
		return current, true
	}	

	return parser.Pop()
}

func (parser *Parser) ParseFunctionCallArgs() (*Ast_Node) {
	function_call_args := new(Ast_Node)
	function_call_args.Type = AST_FUNCTION_CALL_ARGS

	for !parser.CurrentIs(TOKEN_CLOSING_PARENTHESES) {
		exp := parser.ParseExpression()
		if exp != nil {
			function_call_args.AddChild(exp)
		}

		next, not_comma := parser.PopIf(TOKEN_COMMA)
		if not_comma {
			if next.Type != TOKEN_CLOSING_PARENTHESES {
				parseExpectErrorAt(next, "`,` or `)`")
				return nil
			}
		}
	}

	return function_call_args	
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
		function_name := new(Ast_Node)
		function_name.Type = AST_FUNCTION_CALL_NAME
		function_name.Data = []Token{next}

		function_call.AddChild(function_name)
	}
	
	{
		next, expect := parser.PopIf(TOKEN_OPENING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`(`")
			return nil
		}
	}

	function_call.AddChild(parser.ParseFunctionCallArgs())

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`)`")
			return nil
		}
	}

	return function_call
}

func (parser *Parser) ParseSubExpression() (*Ast_Node) {
	curr, end := parser.Current()
	if !end {
		switch curr.Type {
			case TOKEN_IDENTIFIER: 
				{
					next, end := parser.Peek(1)
					if !end {
						switch next.Type {
							case TOKEN_OPENING_PARENTHESES: return parser.ParseFunctionCall()
							default: return parser.ParseVariableName()
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
			case TOKEN_OPENING_BRACKET:
				parser.Pop()

				body := parser.ParseBody()
				if body == nil {
					return nil
				}

				{
					next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
					if expect {
						parseExpectErrorAt(next, "`}`")
						return nil
					}
				}
				return body
			case TOKEN_KEYWORD_IF:
				return parser.ParseIf()
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
		case TOKEN_ASN:   operator.Type = AST_OP_ASN

		case TOKEN_GRT:   operator.Type = AST_OP_GRT
		case TOKEN_LES:   operator.Type = AST_OP_LES
		case TOKEN_GOE:   operator.Type = AST_OP_GOE
		case TOKEN_LOE:   operator.Type = AST_OP_LOE

		case TOKEN_EQU:   operator.Type = AST_OP_EQU
		case TOKEN_NEQ:   operator.Type = AST_OP_NEQ

		case TOKEN_NOT:   operator.Type = AST_OP_NOT
		default:          return nil
	}
	parser.Pop()
	return operator
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

func (parser *Parser) ParseExpression() (*Ast_Node) {
	expression := new(Ast_Node)
	expression.Type = AST_EXPRESSION

	left := parser.ParseSubExpression()
	if left == nil {
		return nil
	}

	operator := parser.ParseOperator()
	if operator == nil {
		expression.AddChild(left)
		return expression
	}

	right := parser.ParseExpression()
	if right == nil {
		return nil
	}

	operator.AddChild(left)
	operator.AddChild(right)
	expression.AddChild(operator)

	return expression
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

	{
		exp := parser.ParseExpression()
		if exp != nil {
			while.AddChild(exp)
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACKET)
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
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}
	return while
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

	{
		exp := parser.ParseExpression()
		if exp != nil {
			ast_if.AddChild(exp)
		}
	}

	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACKET)
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
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
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
		next, expect := parser.PopIf(TOKEN_OPENING_BRACKET)
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
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return ast_if
}

func (parser *Parser) ParseBody() (*Ast_Node) {
	body := new(Ast_Node)
	body.Type = AST_BODY

	for !parser.CurrentIs(TOKEN_CLOSING_BRACKET) {
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
			//case TOKEN_KEYWORD_IF: {
			//	body.AddChild(parser.ParseIf())
			//}
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
			default: {
				exp := parser.ParseExpression()
				if exp != nil {
					if 	parser.CurrentIs(TOKEN_SEMICOLON) {
						body.AddChild(exp)
						parser.Pop()
					} else if parser.CurrentIs(TOKEN_CLOSING_BRACKET) {
						body_result := new(Ast_Node)
						body_result.Type = AST_BODY_RESULT
						body_result.AddChild(exp)
						body.AddChild(body_result)
					} else {
						prev, _ := parser.Peek(-1)
						if prev.Type != TOKEN_CLOSING_BRACKET {
							cur, end := parser.Current()
							if !end {
								parseExpectErrorAt(cur, "`;` or `}`")
								parser.Pop()
							}
							return nil
						} 
						body.AddChild(exp)
					}
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
	
	{
		type_token, end := parser.Current()
		if end { 
			parseExpectErrorAt(type_token, "return type or `{`")
			return nil
		}
		
		return_type := new(Ast_Node)
		return_type.Type = AST_DATATYPE

		switch type_token.Type {
			case TOKEN_IDENTIFIER: {
				return_type.Data = []Token{type_token}
				parser.Pop()
			}
			case TOKEN_OPENING_BRACKET: {
				return_type.Data = nil
			}
			default: {
				parseExpectErrorAt(type_token, "return type or `{`")
				return nil
			}
		}
		function_definition.AddChild(return_type)
	}
	
	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACKET)
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
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return function_definition
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
		next, expect := parser.PopIf(TOKEN_IDENTIFIER)
		if expect {
			parseExpectErrorAt(next, "variable type")
			return nil
		}
		variable_type := new(Ast_Node)
		variable_type.Type = AST_DATATYPE
		variable_type.Data = []Token{next}

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
			case TOKEN_COLON: {
				head.AddChild(parser.ParseVariableDefinition())
				
				next, expect := parser.PopIf(TOKEN_SEMICOLON)
				if expect {
					parseExpectErrorAt(next, "`;`")
					return nil
				}
			}
			default: {
				parseExpectErrorAt(current, "declaration")
				return head
			}
		}
	}
	return head
}
