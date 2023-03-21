package typecheck

import (
	"fmt"
	"strconv"

	"mycgo/front"
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/back/datatype/datatype_array"
	"mycgo/back/symbol"
)

func typeErrorAt (ast *front.Ast_Node, err string, a ...any) {
	formatted_error := fmt.Sprintf(err, a...)

	var first_token *front.Token = nil
	if ast != nil {
		first_token = ast.FindFirstToken()
	}

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

var current_body_ast *front.Ast_Node
var current_function_ast *front.Ast_Node
var current_function_body_ast *front.Ast_Node

var current_dot_scope symbol.Symbol_Scope_Id = -1

func ExpressionIsLeftValue(exp *front.Ast_Node) bool {
	if len(exp.Children) <= 0 {
		return false
	}

	value := exp.Children[0]
	return value.Type == front.AST_VARIABLE_NAME  ||
		   value.Type == front.AST_OP_DEREFERENCE ||
		   value.Type == front.AST_OP_DOT
}

func TypeFromName(type_name string) datatype.DataType {
	if len(type_name) <= 0 {
		return nil
	}

	if type_name[0] == '*' {
		pointed_type_name := type_name[1:]
		pointed_type := TypeFromName(pointed_type_name)

		if pointed_type == nil || pointed_type.Equals(datatype.TYPE_UNDEFINED) || pointed_type.Equals(datatype.TYPE_NONE) {
			return pointed_type
		}

		return datatype.PointerType{pointed_type}
	}

	if type_name[0] == '[' {
		size_literal := ""

		i := 1
		for type_name[i] != ']' {
			size_literal += string(type_name[i])
			i++
		}

		type_of_array_name := type_name[i:]
		type_of_array := TypeFromName(type_of_array_name)

		if len(size_literal) <= 0 {
			return datatype_array.NewDynamicArrayType(type_name, type_of_array)
		} else {
			_, err := strconv.ParseInt(size_literal, 0, 64)
			if err != nil {
				fmt.Println(err)
				return nil
			}
			
			//TODO: static array stuff
		}
	}

	primitive_type := datatype.PrimitiveTypeFromName(type_name)
	if primitive_type != datatype.TYPE_UNDEFINED {
		return primitive_type
	}

	//
	//	 User defined
	//

	sym, found := symbol.SymbolTableGetFromCurrentScope(type_name)
	if !found {
		return datatype.TYPE_UNDEFINED
	}

	sym_typ := sym.Type()
	if sym_typ == nil {
		return nil
	}

	return sym_typ
}


func TypeCheck(ast *front.Ast_Node) *front.Ast_Node {
	if (ast.Type == front.AST_BODY &&
	   (ast.Flags & front.ASTO_BODY_FUNCTION == 0)) || 
	   ast.Type == front.AST_FUNCTION_DEFINITION    ||
	   ast.Type == front.AST_HEAD 				    ||
	   ast.Type == front.AST_STRUCT_DEFINITION_BODY {
		if ast.Type == front.AST_BODY {
			current_body_ast = ast
		}
		symbol.SymbolScopeStackPush()
	}
	if ast.Type == front.AST_FUNCTION_DEFINITION {
		current_function_ast = ast	
	}
	if (ast.Type == front.AST_BODY &&
	   (ast.Flags & front.ASTO_BODY_FUNCTION != 0)) {
		current_function_body_ast = ast
	}

	/*
	// aah ugly code
	if ast.Type == front.AST_OP_DOT {
		if ast.Children[1].Children[0].Type == front.AST_VARIABLE_NAME {
			ast.Children[1].Children[0].Type = front.AST_FIELD_NAME
		}
	}
	*/


	for _, child := range(ast.Children) {
		// FIXME: 
		//  	We should find as many errors as possible before stopping
		//  	(same thing in parsing btw), but for now this is fine.

		if TypeCheck(child) == nil {
			return nil
		}
		if ast.Type == front.AST_BODY {
			current_body_ast = ast
		}

		if ast.Type == front.AST_OP_DOT {
			current_dot_scope = ast.Children[0].DataType.(datatype_struct.StructType).Scope
		} else {
			current_dot_scope = -1
		}
	}	

	switch ast.Type {
		case front.AST_DATATYPE: {
			var type_name string
			if ast.Data != nil && len(ast.Data) > 0 {
				type_name = ast.Data[0].String_value
			} else {
				ast.DataType = datatype.TYPE_NONE
				break
			}

			_type := TypeFromName(type_name)

			if _type == nil { 
				typeErrorAt(ast, "expected type")
				return nil
			}
			if _type.Equals(datatype.TYPE_UNDEFINED) || _type.Equals(datatype.TYPE_NONE) {
				typeErrorAt(ast, "type `%s` is undefined", type_name)
				return nil
			}

			ast.DataType = _type
		}
		case front.AST_FUNCTION_DEFINITION: {
			function_name := ast.Children[0].Data[0].String_value
			_, found := symbol.SymbolTableGetInCurrentScope(function_name)
			if found {
				typeErrorAt(ast, "`%s` was already declared", function_name)
				return nil
			}

			body := ast.Children[3]
			body_type := body.DataType

			return_type := ast.Children[2].DataType

			if !return_type.Equals(body_type) {
				ret_typ := return_type.Name()
				bod_typ := body_type.Name()
				typeErrorAt(ast, "function should return `%s`, but returns `%s`", ret_typ, bod_typ)
				return nil
			}

			err := symbol.SymbolTableInsertInCurrentScope(function_name, TypeCheck_Symbol{return_type})
			if err != nil {
				fmt.Println(err)	
				return nil
			}

			ast.DataType = return_type
		}
		case front.AST_RETURN: {
			if len(ast.Children) <= 0 {
				ast.DataType = datatype.TYPE_NONE
			} else {
				return_type := ast.Children[0].DataType
				function_return_type := current_function_ast.Children[2].DataType
				
				if !function_return_type.Equals(return_type) {
						typeErrorAt(
							ast,
							"incompatible return type and declared function type: `%s` and `%s`",  
							return_type.Name(),
							function_return_type.Name(),
						)
						return nil
				}

				if current_function_body_ast.DataType == nil || 
				   current_function_body_ast.DataType.Equals(datatype.TYPE_NONE) {
					current_function_body_ast.DataType = return_type
				} else {
					if !current_function_body_ast.DataType.Equals(return_type) {
						typeErrorAt(
							ast,
							"function can't return two incompatible types `%s` and `%s`",  
							current_function_body_ast.DataType.Name(),
							return_type.Name(),
						)
						return nil
					}
				}


				ast.Flags |= front.ASTO_ALWAYS_RETURNS
				current_body_ast.Flags |= front.ASTO_ALWAYS_RETURNS

				ast.DataType = return_type
			}
		}
		case front.AST_HEAD: {
			symbol.SymbolScopeStackPop()
		}

		// NOTE:
		// If the body already has a type, it's either because a `return` 
		// exists somewhere inside the body (only if it's a function body),
		// or because the body has a tail result.
		//
		// In the case of a function body:
		// 1. We'll give type priority to the tail result;
		// 2. If a tail exists, the body will always return.
		case front.AST_BODY: {
			children := len(ast.Children)
			if children > 0 {
				last_child := ast.Children[children-1]
				if last_child.Type == front.AST_BODY_RESULT {
					if ast.Flags & front.ASTO_BODY_FUNCTION != 0 {
						ast.Flags |= front.ASTO_ALWAYS_RETURNS
					}

					if ast.DataType != nil && !ast.DataType.Equals(datatype.TYPE_NONE) {
						if !ast.DataType.Equals(last_child.DataType) {
							typeErrorAt(
								ast,
								"function can't return two incompatible types `%s` and `%s`",  
								last_child.DataType.Name(),
								ast.DataType.Name(),
							)
							return nil
						}
					} else {
						ast.DataType = last_child.DataType
					}
				}
			}
			
			for _, child := range ast.Children {
				if child.Flags & front.ASTO_ALWAYS_RETURNS != 0 {
					ast.Flags |= front.ASTO_ALWAYS_RETURNS
					break
				}		
			}

			if ast.DataType == nil {
				ast.DataType = datatype.TYPE_NONE
			} else {
				if ast.Flags & front.ASTO_BODY_FUNCTION != 0 {
					if ast.Flags & front.ASTO_ALWAYS_RETURNS == 0 {
						ast.DataType = datatype.TYPE_NONE
					}
				}
			}

			symbol.SymbolScopeStackPop()
		}
		case front.AST_BODY_RESULT: {
			if len(ast.Children) > 0 {
				ast.DataType = ast.Children[0].DataType
			} else {
				ast.DataType = datatype.TYPE_NONE
			}
		}
		case front.AST_FUNCTION_CALL: {
			function_name := ast.Children[0].Data[0].String_value
			declaration, found := symbol.SymbolTableGetFromCurrentScope(function_name)

			if !found {
				ast.DataType = datatype.TYPE_INT64
			} else {
				ast.DataType = declaration.Type()
			}
		}
		case front.AST_LITERAL: {
			switch ast.Data[0].Type {
				case front.TOKEN_INT_LITERAL: ast.DataType = datatype.TYPE_INT64
				case front.TOKEN_BOOL_LITERAL: ast.DataType = datatype.TYPE_BOOL
				default: ast.DataType = datatype.TYPE_UNDEFINED
			}
		}
		case front.AST_EXPRESSION: {
			if len(ast.Children) > 0 {
				ast.DataType = ast.Children[0].DataType
			} else {
				ast.DataType = datatype.TYPE_NONE
			}
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
				if !variable_type.Equals(initialization_type) {
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
			
			var declaration symbol.Symbol
			found := false
			if current_dot_scope >= 0 {
				declaration, found = symbol.SymbolTableGet(variable_name, current_dot_scope)
			} else {
				declaration, found = symbol.SymbolTableGetFromCurrentScope(variable_name)
			}

			if !found {
				typeErrorAt(ast, "undefined `%s`", variable_name)
				return nil
			}
		
			ast.DataType = declaration.Type()
		}
		case front.AST_WHILE: {
			if !ast.Children[0].DataType.Equals(datatype.TYPE_BOOL) {
				typeExpectErrorAt(ast, datatype.TYPE_BOOL, ast.Children[0].DataType)
				return nil
			}
		}
		case front.AST_FOR: {
			c := ast.Children[1]
			if !c.DataType.Equals(datatype.TYPE_BOOL) && !c.DataType.Equals(datatype.TYPE_NONE) {
				typeExpectErrorAt(ast, datatype.TYPE_BOOL, ast.Children[0].DataType)
				return nil
			}
		}
		case front.AST_IF: {
			if !ast.Children[0].DataType.Equals(datatype.TYPE_BOOL) {
				typeExpectErrorAt(ast, datatype.TYPE_BOOL, ast.Children[0].DataType)
				return nil
			}
			
			var if_type	datatype.DataType   = ast.Children[1].DataType
			var else_type datatype.DataType = datatype.TYPE_NONE

			if len(ast.Children) > 2 {
				else_type = ast.Children[2].DataType

				if ((ast.Children[1].Flags & ast.Children[2].Flags) & front.ASTO_ALWAYS_RETURNS) != 0 {
					ast.Flags |= front.ASTO_ALWAYS_RETURNS
					ast.DataType = datatype.TYPE_NONE
				} else {
					if ast.Children[1].Flags & front.ASTO_ALWAYS_RETURNS != 0 {
						ast.DataType = else_type
					} else
					if ast.Children[2].Flags & front.ASTO_ALWAYS_RETURNS != 0 {
						ast.DataType = if_type
					} else
					if !if_type.Equals(else_type) {
						typeErrorAt(ast, "incompatible types `%s` (if body) and `%s` (else body)", if_type.Name(), else_type.Name())
						return nil
					} else {
						ast.DataType = if_type
					}
				}
			} else {
				ast.DataType = datatype.TYPE_NONE
			}
		}
		case front.AST_OP_SUM: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_SUB: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_MUL: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_DIV: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_MOD: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_ASN: {
			if !ExpressionIsLeftValue(ast) {
				typeErrorAt(ast, "invalid expression in left side of assignment")
				return nil
			}
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = left_type
		}
		case front.AST_OP_NEG: {
			// TODO: check if operand is integer signed? maybe...
			ast.DataType = ast.Children[0].DataType
		}
		case front.AST_OP_GRT: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_LES: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_GOE: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_LOE: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_EQU: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_NEQ: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_NOT: {
			t := ast.Children[0].DataType
			if !t.Equals(datatype.TYPE_BOOL) {
				typeErrorAt(ast, "expected `bool`, got `%s`", t.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_AND: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			if !left_type.Equals(datatype.TYPE_BOOL) {
				typeErrorAt(ast, "expected `bool`, got `%s`", left_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_OR: {
			left_type := ast.Children[0].DataType
			right_type := ast.Children[1].DataType
			if !left_type.Equals(right_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", left_type.Name(), right_type.Name())
				return nil
			}
			if !left_type.Equals(datatype.TYPE_BOOL) {
				typeErrorAt(ast, "expected `bool`, got `%s`", left_type.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_REFERENCE: {
			referenced_expression := ast.Children[0]
			
			if !ExpressionIsLeftValue(referenced_expression) {
				typeErrorAt(ast, "cannot reference non-left value")
				return nil
			}

			_type := referenced_expression.DataType
			ast.DataType = datatype.PointerType{_type}
		}
		case front.AST_OP_DEREFERENCE: {
			exp := ast.Children[0]

			var pointer_type datatype.PointerType
			switch exp.DataType.(type) {
				case datatype.PointerType:
					pointer_type = exp.DataType.(datatype.PointerType)
				default:
					typeErrorAt(ast, "cannot dereference non-pointer type")
					return nil
			}

			ast.DataType = pointer_type.Pointed_type
		}
		case front.AST_CASTING: {
			casting_type := ast.Children[0].DataType
			expression_type := ast.Children[1].DataType
			
			// NOTE: For now it's only valid if they are both integer types.
			switch casting_type.(type) {
				case datatype.PrimitiveType: 
					switch expression_type.(type) {
						case datatype.PrimitiveType:
							if !(casting_type.(datatype.PrimitiveType).IsIntegerType() && 
								 expression_type.(datatype.PrimitiveType).IsIntegerType()) {
								typeErrorAt(ast, "cannot cast `%s` to `%s`", expression_type.Name(), casting_type.Name())
								return nil
							}
						default:
							typeErrorAt(ast, "cannot cast `%s` to `%s`", expression_type.Name(), casting_type.Name())
							return nil
					}
				case datatype.PointerType:
					typeErrorAt(ast, "cannot cast `%s` to `%s` (pointer casting is not allowed)", expression_type.Name(), casting_type.Name())
					return nil
			}

			ast.DataType = casting_type
		}
		case front.AST_STRUCT_DEFINITION: {
			anon_struct_type := ast.Children[1].DataType.(datatype_struct.StructType)
			struct_name := ast.Children[0].Data[0].String_value

			anon_struct_type.Name_ = struct_name
			
			struct_type_symbol := TypeCheck_Symbol{anon_struct_type}
			symbol.SymbolTableInsertInCurrentScope(struct_name, struct_type_symbol)

			ast.DataType = anon_struct_type
		}
		case front.AST_STRUCT_DEFINITION_BODY: {
			var _struct datatype_struct.StructType
			
			_struct.Scope = symbol.SymbolScopeStackCurrent()

			for _, field := range(ast.Children) {
				field_name := field.Children[0].Data[0].String_value
				field_type := field.DataType

				field_size := uint32(field_type.ByteSize())

				padding := (0b100 - ((field_size - 1) & 0b11)) - 1

				struct_field := datatype_struct.StructField{field_name, field_type, _struct.Size_}
				_struct.AddField(struct_field)
				
				_struct.Size_ += padding
				_struct.Size_ += field_size
			}

			ast.DataType = _struct
			symbol.SymbolScopeStackPop()
		}
		case front.AST_OP_DOT: {
			/*
			left := ast.Children[0]
			field_name := &ast.Children[1].Children[0]
			field_name_str := (*field_name).Data[0].String_value

			switch left.DataType.(type) {
				default: 
					typeErrorAt(ast, "left value in dot-op is not a struct")
					return nil
				case datatype_struct.StructType:
					f := left.DataType.(datatype_struct.StructType).FindField(field_name_str)
					if f == nil {
						typeErrorAt(ast, "undefined `%s`", field_name_str)
						return nil
					}
					(*field_name).DataType = f.Type
			}
			*/

			ast.DataType = ast.Children[1].DataType
		}
		case front.AST_STRUCT_LITERAL: {
			struct_type := ast.Children[0].DataType.(datatype_struct.StructType)
			values := ast.Children[1:]

			if len(values) != len(struct_type.Fields) {
				typeErrorAt(
					ast,
					"invalid number of fields for struct `%s` definition",
					struct_type.Name(),
				)
				return nil
			}

			for i, value := range(values) {
				field := struct_type.Fields[i]
				if !field.Type.Equals(value.DataType) {
					typeErrorAt(
						ast,
						"value of type `%s` is incompatible with struct field `%s` of type `%s`",  
						value.DataType.Name(),
						field.Name,
						field.Type.Name(),
					)
					return nil
				}
			}

			ast.DataType = struct_type
		}

		default: ast.DataType = datatype.TYPE_UNDEFINED
	}

	return ast
}
