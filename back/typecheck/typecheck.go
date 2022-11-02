package typecheck

import (
	"mycgo/front";
	"mycgo/back/datatype";
)

func TypeCheck(ast *front.Ast_Node) *front.Ast_Node {
	for _, child := range(ast.Children) {
		if TypeCheck(child) == nil {
			// TODO: error
			return nil
		}
	}	

	switch ast.Type {
		case front.AST_DATATYPE: {
			primitive := datatype.PrimitiveTypeFromName(ast.Data[0].String_value)
			ast.DataType = primitive
			if primitive == datatype.TYPE_UNDEFINED {
				// TODO: error
				return nil
			}
		}
		default: ast.DataType = datatype.TYPE_UNDEFINED
	}




	return ast
}
