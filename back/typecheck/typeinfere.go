package typecheck

import (
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_string"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/back/datatype/datatype_array"
	"mycgo/back/symbol"
	"mycgo/front"
)

func TypeInfere(ast *front.Ast_Node) *front.Ast_Node {
	for i, child := range ast.Children {
		switch ast.Type {
			case front.AST_EXPRESSION: {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
					child.DataType = ast.DataType
				}
			}
			case front.AST_FUNCTION_DEFINITION: {
				if child.Type == front.AST_BODY {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
						child.DataType = ast.DataType
					}
				}

				current_function_ast = ast
			}
			case front.AST_RETURN: {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
					child.DataType = ast.DataType
				}
			}
			case front.AST_BODY: {
				if child.Type == front.AST_BODY_RESULT {
					if child.DataType == datatype.TYPE_INT_LITERAL   ||
					   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
					   child.DataType == datatype.TYPE_NULL  		 {
						child.DataType = ast.DataType
					}
				}

				if child.Type == front.AST_RETURN {
					if child.DataType == datatype.TYPE_INT_LITERAL   ||
					   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
					   child.DataType == datatype.TYPE_NULL  		 {
						child.DataType = current_function_ast.DataType
					}
				}
			}
			case front.AST_BODY_RESULT: {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
					child.DataType = ast.DataType
				}
			}
			case front.AST_FUNCTION_CALL:
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
					function_name := ast.Data[0].String_value
					declaration, found := symbol.SymbolTableGetFromDeepest(function_name)
					if !found {
						return nil
					}

					function_params := declaration.(TypeCheck_Symbol).ArgTypes
					if len(function_params) <= 0 {
						return nil
					}

					if len(function_params) > i {
						child.DataType = function_params[i]
					}
				}
			case front.AST_VARIABLE_DEFINITION: {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
					child.DataType = ast.DataType
				}
			}
			case front.AST_IF: {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL  		 {
					// case type = switch type
					child.DataType = ast.DataType
				} 			
			}
			case front.AST_SWITCH: {
				if i < 1 {
					if child.DataType == datatype.TYPE_INT_LITERAL {
						// this is the switch exp: default it 
						child.DataType = datatype.TYPE_INT64
					}
					if child.DataType == datatype.TYPE_FLOAT_LITERAL {
						// this is the switch exp: default it 
						child.DataType = datatype.TYPE_F64
					}
					// TODO: figure out the null default type
				} else
				if child.Type == front.AST_CASE {
					if child.Children[0].DataType == datatype.TYPE_INT_LITERAL ||
					   child.Children[0].DataType == datatype.TYPE_FLOAT_LITERAL ||
					   child.Children[0].DataType == datatype.TYPE_NULL {
						// case expression type = switch expresion type
						child.Children[0].DataType = ast.Children[0].DataType
					}
					if child.DataType == datatype.TYPE_INT_LITERAL   ||
					   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
					   child.DataType == datatype.TYPE_NULL  		 {
						// case type = switch type
						child.DataType = ast.DataType
					}
				}
			}
			case front.AST_CASE: {
				if child.Type == front.AST_BODY {
					if child.DataType == datatype.TYPE_INT_LITERAL   ||
					   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
					   child.DataType == datatype.TYPE_NULL  		 {
						child.DataType = ast.DataType
					}
				}
			}
			// ** binary ops
			case front.AST_OP_SUM, front.AST_OP_SUB, front.AST_OP_MUL, front.AST_OP_DIV, front.AST_OP_MOD, front.AST_OP_BAND, front.AST_OP_BORE, front.AST_OP_BORI, front.AST_OP_GRT, front.AST_OP_LES, front.AST_OP_GOE, front.AST_OP_LOE, front.AST_OP_EQU,  front.AST_OP_NEQ, front.AST_OP_AND,  front.AST_OP_OR, front.AST_OP_ASN, front.AST_OP_SHL, front.AST_OP_SHR, front.AST_OP_ESUM, front.AST_OP_ESUB, front.AST_OP_EMUL, front.AST_OP_EDIV, front.AST_OP_EMOD, front.AST_OP_EBAND, front.AST_OP_EBORI, front.AST_OP_EBORE, front.AST_OP_ESHL, front.AST_OP_ESHR: {  
				if child.DataType == datatype.TYPE_INT_LITERAL {
					if ast.DataType == datatype.TYPE_INT_LITERAL {
						ast.DataType = datatype.TYPE_INT64
					}
					if ast.DataType == datatype.TYPE_BOOL {
						child.DataType = ast.Children[i ^ 1].DataType
						break
					}
					if ast.DataType.Equals(datatype_string.TYPE_STRING) {
						child.DataType = datatype.TYPE_INT64
						break
					}
					child.DataType = ast.DataType
				}
				if child.DataType == datatype.TYPE_FLOAT_LITERAL {
					if ast.DataType == datatype.TYPE_FLOAT_LITERAL {
						ast.DataType = datatype.TYPE_F64
					}
					if ast.DataType == datatype.TYPE_BOOL {
						child.DataType = ast.Children[i ^ 1].DataType
						break
					}
					child.DataType = ast.DataType
				}
				if child.DataType == datatype.TYPE_NULL {
					if ast.DataType == datatype.TYPE_BOOL {
						child.DataType = ast.Children[i ^ 1].DataType
						break
					}
					child.DataType = ast.DataType
				}
			}
			case front.AST_COMPOSITE_LITERAL: {
				if child.DataType == datatype.TYPE_INT_LITERAL   ||
				   child.DataType == datatype.TYPE_FLOAT_LITERAL ||
				   child.DataType == datatype.TYPE_NULL 		 {
					switch ast.Children[0].DataType.(type) {
						case datatype_struct.StructType:
							struct_type := ast.Children[0].DataType.(datatype_struct.StructType)
							field := struct_type.Fields[i-1]
							child.DataType = field.Type
						case  datatype_array.StaticArrayType:	
							array_type := ast.Children[0].DataType.(datatype_array.StaticArrayType)
							child.DataType = array_type.ElementType
					}
				}
			}
			default: 
				if child.DataType == datatype.TYPE_INT_LITERAL {
					child.DataType = datatype.TYPE_INT64
				}
				if child.DataType == datatype.TYPE_FLOAT_LITERAL {
					child.DataType = datatype.TYPE_F64
				}
				// TODO: figure out the null default type
		}

		if child.DataType == datatype.TYPE_INT_LITERAL {
			child.DataType = datatype.TYPE_INT64
		}
		if child.DataType == datatype.TYPE_FLOAT_LITERAL {
			child.DataType = datatype.TYPE_F64
		}
		// TODO: figure out the null default type
		TypeInfere(child)
	}
			
	return ast
}
