package typecheck

import (
	"fmt"

	"mycgo/front";
	"mycgo/back/datatype";
	"mycgo/back/symbol";
)

func typeErrorAt (ast *front.Ast_Node, err string, a ...any) {
	formatted_error := fmt.Sprintf(err, a...)

	first_token := ast.FindFirstToken()

	if first_token != nil {
		line := first_token.L0
		char := first_token.C0

		fmt.Printf("%d:%d: typecheck error: %s\n", line, char, formatted_error)
	} else {
		fmt.Printf("typecheck error: %s\n", formatted_error)
	}
}

func typeExpectErrorAt (ast *front.Ast_Node, expected datatype.DataType, got datatype.DataType) {
	typeErrorAt(ast, "Expected %s, got %s", expected.Name(), got.Name())
}

func TypeCheck(ast *front.Ast_Node) *front.Ast_Node {
	if ast.Type == front.AST_FUNCTION_DEFINITION || 
	   ast.Type == front.AST_HEAD {
		symbol.SymbolScopeStackPush()
	}
	for _, child := range(ast.Children) {
		// FIXME: 
		//  	We should find as many errors as possible before stopping
		//  	(same thing in parsing btw), but for now this is fine.

		if TypeCheck(child) == nil {
			return nil
		}
	}	

	switch ast.Type {
		case front.AST_DATATYPE: {
			primitive := datatype.PrimitiveTypeFromName(ast.Data[0].String_value)
			if primitive == datatype.TYPE_UNDEFINED {
				typeErrorAt(ast, "undefined type `%s`", ast.Data[0].String_value)
				return nil
			}
			ast.DataType = primitive
		}
		case front.AST_FUNCTION_DEFINITION: {
			symbol.SymbolScopeStackPop()
		}
		case front.AST_HEAD: {
			symbol.SymbolScopeStackPop()
		}
		case front.AST_FUNCTION_CALL: {
			// TODO
			ast.DataType = datatype.TYPE_INT64
		}
		case front.AST_LITERAL: {
			switch ast.Data[0].Type {
				case front.TOKEN_INT_LITERAL: ast.DataType = datatype.TYPE_INT64
				case front.TOKEN_BOOL_LITERAL: ast.DataType = datatype.TYPE_BOOL
				default: ast.DataType = datatype.TYPE_UNDEFINED
			}
		}
		case front.AST_EXPRESSION: {
			ast.DataType = ast.Children[0].DataType
		}
		case front.AST_VARIABLE_DEFINITION: {
			variable_name := ast.Children[0].Data[0].String_value
			_, found := symbol.SymbolTableGetInCurrentScope(variable_name)
			if found {
				typeErrorAt(ast, "`%s` was already declared in this scope", variable_name)
				return nil
			}

			// if there is an initialization
			variable_type := ast.Children[1].DataType
			if len(ast.Children) >= 3 {
				initialization_type := ast.Children[2].DataType
				if variable_type != initialization_type {
					typeExpectErrorAt(ast, variable_type, initialization_type)
					return nil
				}
			}

			err := symbol.SymbolTableInsertInCurrentScope(variable_name, TypeCheck_Symbol{variable_type})
			if err != nil {
				fmt.Println(err)	
				return nil
			}
			ast.DataType = variable_type
		}
		case front.AST_VARIABLE_NAME: {
			variable_name := ast.Data[0].String_value
			declaration, found := symbol.SymbolTableGetFromCurrentScope(variable_name)

			if !found {
				typeErrorAt(ast, "undefined `%s`", variable_name)
				return nil
			}
		
			ast.DataType = declaration.Type()
		}
		case front.AST_WHILE: {
			if ast.Children[0].DataType != datatype.TYPE_BOOL {
				typeExpectErrorAt(ast, datatype.TYPE_BOOL, ast.Children[0].DataType)
				return nil
			}
		}
		case front.AST_IF: {
			if ast.Children[0].DataType != datatype.TYPE_BOOL {
				typeExpectErrorAt(ast, datatype.TYPE_BOOL, ast.Children[0].DataType)
				return nil
			}
		}
		case front.AST_OP_SUM: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_SUB: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_ASN: {
			left_ast_type := ast.Children[0].Type
			if left_ast_type != front.AST_VARIABLE_NAME {
				typeErrorAt(ast, "left value in assignment must be a variable")
				return nil
			}
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_GRT: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_LES: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_GOE: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_LOE: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		default: ast.DataType = datatype.TYPE_UNDEFINED
	}

	return ast
}
