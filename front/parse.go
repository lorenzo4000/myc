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
	if parser.Index + n >= int64(len(parser.Tokens)) {
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
		}
	}
	parseExpectErrorAt(curr, "value or expression")
	return nil
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

	// check expression enders
	if parser.CurrentIs(TOKEN_SEMICOLON) || parser.CurrentIs(TOKEN_COMMA) || parser.CurrentIs(TOKEN_CLOSING_PARENTHESES) {
		return nil
	}

	expression.AddChild(parser.ParseSubExpression())

	return expression
}

func (parser *Parser) ParseFunctionBody() (*Ast_Node) {
	function_body := new(Ast_Node)
	function_body.Type = AST_FUNCTION_DEFINITION_BODY

	for !parser.CurrentIs(TOKEN_CLOSING_BRACKET) {
		current, end := parser.Current()
		if end {
			return nil
		}
		switch current.Type {
			case TOKEN_COLON: {
				function_body.AddChild(parser.ParseVariableDefinition())
				
				next, expect := parser.PopIf(TOKEN_SEMICOLON)
				if expect {
					parseExpectErrorAt(next, "`;`")
					return nil
				}
			}
			default: {
				exp := parser.ParseExpression()
				if exp != nil {
					function_body.AddChild(exp)
				}

				next, expect := parser.PopIf(TOKEN_SEMICOLON)
				if expect {
					parseExpectErrorAt(next, "`;`")
					return nil
				}
			}
		}
	}
	

	return function_body
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
	
	// TODO: args

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_PARENTHESES)
		if expect {
			parseExpectErrorAt(next, "`)`")
			return nil
		}
	}
	
	{
		next, expect := parser.PopIf(TOKEN_OPENING_BRACKET)
		if expect {
			parseExpectErrorAt(next, "`{`")
			return nil
		}
	}
	
	function_definition.AddChild(parser.ParseFunctionBody())

	{
		next, expect := parser.PopIf(TOKEN_CLOSING_BRACKET)
		if expect {
			parseExpectErrorAt(next, "`}`")
			return nil
		}
	}

	return function_definition
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
		next, expect := parser.PopIf(TOKEN_EQUAL)
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
