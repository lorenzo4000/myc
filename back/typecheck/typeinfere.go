package typecheck

import (
	"mycgo/back/datatype"
	"mycgo/back/symbol"
	"mycgo/front"
)

func TypeInfere(ast *front.Ast_Node) *front.Ast_Node {
	for i, child := range ast.Children {
		switch ast.Type {
			case front.AST_FUNCTION_DEFINITION: {
				if child.Type == front.AST_BODY {
					if child.DataType == datatype.TYPE_INT_LITERAL {
						child.DataType = ast.DataType
					}
				}

				current_function_ast = ast
			}
			case front.AST_RETURN: {
				if child.DataType == datatype.TYPE_INT_LITERAL {
					child.DataType = ast.DataType
				}
			}
			case front.AST_BODY: {
				if child.Type == front.AST_BODY_RESULT {
					if child.DataType == datatype.TYPE_INT_LITERAL {
						child.DataType = ast.DataType
					}
				}

				if child.Type == front.AST_RETURN {
					if child.DataType == datatype.TYPE_INT_LITERAL {
						child.DataType = current_function_ast.DataType
					}
				}
			}
			case front.AST_BODY_RESULT: {
				if child.DataType == datatype.TYPE_INT_LITERAL {
					child.DataType = ast.DataType
				}
			}
			case front.AST_FUNCTION_CALL:
				if child.DataType == datatype.TYPE_INT_LITERAL {
					function_name := ast.Data[0].String_value
					declaration, found := symbol.SymbolTableGetFromDeepest(function_name)
					if !found {
						return nil
					}

					function_params := declaration.(TypeCheck_Symbol).ArgTypes
					if len(function_params) <= 0 {
						return nil
					}

					child.DataType = function_params[i]
				}
			case front.AST_VARIABLE_DEFINITION: {
				if child.DataType == datatype.TYPE_INT_LITERAL {
					child.DataType = ast.DataType
				}
			}
			case front.AST_IF: {
				if child.Type == front.AST_BODY {
					if child.DataType == datatype.TYPE_INT_LITERAL {
						// case type = switch type
						child.DataType = ast.DataType
					}
				} 			
			}
			case front.AST_SWITCH: {
				if i < 1 {
					if child.DataType == datatype.TYPE_INT_LITERAL {
						// this is the switch exp: default it 
						child.DataType = datatype.TYPE_INT64
					}
				} else
				if child.Type == front.AST_CASE {
					if child.Children[0].DataType == datatype.TYPE_INT_LITERAL {
						// case expression type = switch expresion type
						child.Children[0].DataType = ast.Children[0].DataType
					}
					if child.DataType == datatype.TYPE_INT_LITERAL {
						// case type = switch type
						child.DataType = ast.DataType
					}
				}
			}
			case front.AST_CASE: {
				if child.Type == front.AST_BODY {
					// this is the body so ...
					if child.DataType == datatype.TYPE_INT_LITERAL {
						child.DataType = ast.DataType
					}
				}
			}
			// ** binary ops
			case front.AST_OP_SUM, front.AST_OP_SUB, front.AST_OP_MUL, front.AST_OP_DIV, front.AST_OP_MOD, front.AST_OP_BAND, front.AST_OP_BORE, front.AST_OP_BORI, front.AST_OP_GRT, front.AST_OP_LES, front.AST_OP_GOE, front.AST_OP_LOE, front.AST_OP_EQU,  front.AST_OP_NEQ, front.AST_OP_AND,  front.AST_OP_OR, front.AST_OP_ASN, front.AST_OP_SHL, front.AST_OP_SHR, front.AST_OP_ESUM, front.AST_OP_ESUB, front.AST_OP_EMUL, front.AST_OP_EDIV, front.AST_OP_EMOD, front.AST_OP_EBAND, front.AST_OP_EBORI, front.AST_OP_EBORE : {  
				if child.DataType == datatype.TYPE_INT_LITERAL {
					if ast.DataType == datatype.TYPE_INT_LITERAL {
						ast.DataType = datatype.TYPE_INT64
					}
					if ast.DataType == datatype.TYPE_BOOL {
						child.DataType = ast.Children[i ^ 1].DataType
						break
					}
					child.DataType = ast.DataType
				}
			}
			default: 
				if child.DataType == datatype.TYPE_INT_LITERAL {
					child.DataType = datatype.TYPE_INT64
				}
		}

		if child.DataType == datatype.TYPE_INT_LITERAL {
			child.DataType = datatype.TYPE_INT64
		}
		TypeInfere(child)
	}
			
	return ast
}
