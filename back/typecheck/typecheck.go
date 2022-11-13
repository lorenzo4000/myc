package typecheck

import (
	"fmt"

	"mycgo/front";
	"mycgo/back/datatype";
	"mycgo/back/symbol";
)

func TypeCheck(ast *front.Ast_Node) *front.Ast_Node {
	if ast.Type == front.AST_FUNCTION_DEFINITION_BODY || 
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
		case front.AST_LITERAL: {
			switch ast.Data[0].Type {
				case front.TOKEN_INT_LITERAL: ast.DataType = datatype.TYPE_INT64
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

			initialization_type := ast.Children[2].DataType
			variable_type := ast.Children[1].DataType
			if variable_type != initialization_type {
				// TODO: error
				return nil
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
		case front.AST_OP_SUM: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if left_type != right_type {
				// TODO: error
				return nil
			}
			ast.DataType = left_type
		}
		default: ast.DataType = datatype.TYPE_UNDEFINED
	}

	return ast
}
