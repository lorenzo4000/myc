package typecheck

import (
	"fmt"

	"mycgo/front";
	"mycgo/back/datatype";
	"mycgo/back/symbol";
)

func TypeCheck(ast *front.Ast_Node) *front.Ast_Node {
	if ast.Type == front.AST_FUNCTION_DEFINITION || 
	   ast.Type == front.AST_HEAD {
		symbol.SymbolScopeStackPush()
	}
	for _, child := range(ast.Children) {
		if TypeCheck(child) == nil {
			// TODO: error
			return nil
		}
	}	

	switch ast.Type {
		case front.AST_DATATYPE: {
			primitive := datatype.PrimitiveTypeFromName(ast.Data[0].String_value)
			if primitive == datatype.TYPE_UNDEFINED {
				// TODO: error
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
				fmt.Println("typecheck error: `" + variable_name + "` was already declared in this scope")
				return nil
			}

			// if there is an initialization
			variable_type := ast.Children[1].DataType
			if len(ast.Children) >= 3 {
				initialization_type := ast.Children[2].DataType
				if variable_type != initialization_type {
					fmt.Println("typecheck error: expected " + variable_type.Name() + ", got " + initialization_type.Name())
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
				fmt.Println("typecheck error: undefined `" + variable_name + "`")
				return nil
			}
		
			ast.DataType = declaration.Type()
		}
		case front.AST_WHILE: {
			if ast.Children[0].DataType != datatype.TYPE_BOOL {
				fmt.Println("typecheck error: expected bool, got " + ast.Children[0].DataType.Name())
				return nil
			}
		}
		case front.AST_IF: {
			if ast.Children[0].DataType != datatype.TYPE_BOOL {
				fmt.Println("typecheck error: expected bool, got " + ast.Children[0].DataType.Name())
				return nil
			}
		}
		case front.AST_OP_SUM: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_SUB: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_ASN: {
			left_ast_type := ast.Children[0].Type
			if left_ast_type != front.AST_VARIABLE_NAME {
				fmt.Println("typecheck error: left value in assignement must be a variable")
				return nil
			}
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_GRT: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_LES: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_GOE: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_LOE: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		default: ast.DataType = datatype.TYPE_UNDEFINED
	}

	return ast
}
