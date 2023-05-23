package typecheck

import (
	"fmt"
	"strconv"

	"mycgo/front"
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/back/datatype/datatype_array"
	"mycgo/back/datatype/datatype_string"
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

func ExpressionIsLeftValue(exp *front.Ast_Node) *front.Ast_Node {
	if exp.Type == front.AST_EXPRESSION {
		if len(exp.Children) <= 0 {
			return nil
		}
		return ExpressionIsLeftValue(exp.Children[0])
	}

	if exp.Type == front.AST_VARIABLE_NAME  		  ||
		   exp.Type == front.AST_OP_DEREFERENCE 		  ||
		   (exp.Type == front.AST_OP_DOT                  &&
			!datatype_array.IsStaticArrayType(exp.Children[0].DataType)) ||
		   exp.Type == front.AST_OP_INDEX {
		return exp
	}
	return nil
}

func Writable(exp *front.Ast_Node) bool {
	if ExpressionIsLeftValue(exp) == nil {
		return false
	}
	if datatype_string.IsStaticStringType(exp.DataType) {
		return false
	}
	if (exp.Type == front.AST_OP_DOT || exp.Type == front.AST_OP_INDEX) &&
	   exp.Children[0].DataType.Equals(datatype_string.TYPE_STRING) {
		return false
	}

	if exp.Type == front.AST_OP_DOT || 
	   exp.Type == front.AST_OP_INDEX {
		return Writable(exp.Children[0])
	}

	return true
}

func TypeFromName(type_name string) datatype.DataType {
	if len(type_name) <= 0 {
		return nil
	}
	
	// pointer
	if type_name[0] == '*' {
		pointed_type_name := type_name[1:]
		pointed_type := TypeFromName(pointed_type_name)

		if pointed_type == nil || pointed_type.Equals(datatype.TYPE_UNDEFINED) || pointed_type.Equals(datatype.TYPE_NONE) {
			return pointed_type
		}

		return datatype.PointerType{pointed_type}
	}

	// array
	if type_name[0] == '[' {
		size_literal := ""

		i := 1
		for type_name[i] != ']' {
			size_literal += string(type_name[i])
			i++
		}

		type_of_array_name := type_name[i+1:]
		type_of_array := TypeFromName(type_of_array_name)

		if len(size_literal) <= 0 {
			return new_dynamic_array_type(type_name, type_of_array)
		} else {
			size, err := strconv.ParseInt(size_literal, 0, 64)
			if err != nil {
				fmt.Println(err)
				return nil
			}
			
			return datatype_array.StaticArrayType{type_of_array, uint64(size)}
		}
	}

	// primitive
	primitive_type := datatype.PrimitiveTypeFromName(type_name)
	if primitive_type != datatype.TYPE_UNDEFINED {
		return primitive_type
	}

	// string
	if type_name == "string" {
		return datatype_string.TYPE_STRING
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

func new_dynamic_array_type(name string, _type datatype.DataType) datatype_struct.StructType {
	symbol.SymbolScopeStackPush()

	// declare fields in this scope, this feels hackish
	symbol.SymbolTableInsertInCurrentScope(
		"data", 
		TypeCheck_Symbol{datatype.PointerType{ _type }, nil},
	)
	symbol.SymbolTableInsertInCurrentScope(
		"len", 
		TypeCheck_Symbol{datatype.TYPE_UINT64, nil},
	)

	array_type_scope := symbol.SymbolScopeStackCurrent()
	symbol.SymbolScopeStackPop()

	return datatype_struct.StructType {
		name,
		datatype.PTR_SIZE + 8,

		array_type_scope,
		[]datatype_struct.StructField {
			datatype_struct.StructField{
				"data",
				datatype.PointerType{ _type },

				0,
			},
			datatype_struct.StructField{
				"len",
				datatype.TYPE_UINT64,

				datatype.PTR_SIZE,
			},
		},
	}
}

func Compatible(source *datatype.DataType, destination *datatype.DataType) bool {
	s := *source
	d := *destination

	if s.Equals(d) {
		return true
	}

	if d.Equals(datatype.TYPE_NULL) {
		return true
	}

	switch s.(type) {
		case datatype.PrimitiveType:
			switch d.(type) {
				case datatype.PrimitiveType:
					if datatype.IsIntegerType(s.(datatype.PrimitiveType)) && datatype.IsIntegerType(d.(datatype.PrimitiveType)) {
						if s == datatype.TYPE_INT_LITERAL || d == datatype.TYPE_INT_LITERAL {
							return true
						}
					}
					if datatype.IsFloatType(s.(datatype.PrimitiveType)) && datatype.IsFloatType(d.(datatype.PrimitiveType)) {
						if s == datatype.TYPE_FLOAT_LITERAL || d == datatype.TYPE_FLOAT_LITERAL {
							return true
						}
					}
			}

			return s.Equals(datatype.TYPE_NULL) // null is compatible with every type
		case datatype.PointerType:
			sp := s.(datatype.PointerType)
			switch d.(type) {
				case datatype.PointerType:
					dp := d.(datatype.PointerType)
					if sp.Pointed_type.Equals(datatype.TYPE_GENERIC) || dp.Pointed_type.Equals(datatype.TYPE_GENERIC) {
						return true
					}
			}

		case datatype_struct.StructType:
			ss := s.(datatype_struct.StructType)
			switch d.(type) {
				case datatype_struct.StructType:
					ds := d.(datatype_struct.StructType)
					if datatype_struct.IsDynamicArrayType(s) && datatype_struct.IsDynamicArrayType(d) {
						s_array_type := ss.Fields[0].Type
						d_array_type   := ds.Fields[0].Type
						s_array_pointer_type := s_array_type.(datatype.PointerType).Pointed_type
						d_array_pointer_type  := d_array_type.(datatype.PointerType).Pointed_type

						if s_array_pointer_type.Equals(datatype.TYPE_GENERIC)  || 
							d_array_pointer_type.Equals(datatype.TYPE_GENERIC) {
							return true
						}
					}
			}
		case datatype_array.StaticArrayType:
			sa := s.(datatype_array.StaticArrayType)
			switch d.(type) {
				case datatype_array.StaticArrayType:
					da := d.(datatype_array.StaticArrayType)
					if sa.ElementType.Equals(datatype.TYPE_GENERIC) || da.ElementType.Equals(datatype.TYPE_GENERIC) {
						return true
					}
				case datatype_struct.StructType: 
					if datatype_struct.IsDynamicArrayType(d) {
						ds := d.(datatype_struct.StructType)
						d_array_type := ds.Fields[0].Type
						d_array_pointer_type := d_array_type.(datatype.PointerType).Pointed_type
						if sa.ElementType.Equals(d_array_pointer_type)   ||
						   sa.ElementType.Equals(datatype.TYPE_GENERIC)			   || 
						   d_array_pointer_type.Equals(datatype.TYPE_GENERIC) {
							return true
						}
					}
			}
		case datatype_string.StaticStringType:
			return d.Equals(datatype_string.TYPE_STRING)
	}

	return false
}

func TypeCheck(ast *front.Ast_Node) *front.Ast_Node {
	if (ast.Type == front.AST_BODY 						&&
	   (ast.Flags & front.ASTO_BODY_FUNCTION == 0)      &&
	   (ast.Flags & front.ASTO_BODY_FOR == 0)) 			|| 
	   (ast.Type == front.AST_FUNCTION_DEFINITION 		/*&& (ast.Flags & front.ASTO_FUNCTION_EXTERNAL == 0)*/) ||
	    ast.Type == front.AST_FOR						||
	    ast.Type == front.AST_HEAD 				    	||
	    ast.Type == front.AST_STRUCT_DEFINITION_BODY {
		symbol.SymbolScopeStackPush()
	} 
		
	if ast.Type == front.AST_BODY {
		current_body_ast = ast
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
			left := ast.Children[0]

			switch left.DataType.(type) {
				default: 
					typeErrorAt(ast, "left value in dot-op is not valid")
					return nil
				case datatype_struct.StructType:
					if left.DataType.Equals(datatype_string.TYPE_STRING) {
						// ** just brutally override this motherfucker!!
						//current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
				
						right := ast.Children[1]
						field_name := ast.Data[0].String_value

						switch field_name {
							case "len": 
								right.DataType = datatype.TYPE_UINT64
								ast.DataType = right.DataType
							case "data":
								right.DataType = datatype.PointerType{datatype.TYPE_UINT8}
								ast.DataType = right.DataType
							default: 
								typeErrorAt(ast, "string doesn't have a field named %s", field_name)
								return nil
						}
						return ast
					}
					current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
				case datatype_array.StaticArrayType:
					// ** just brutally override this motherfucker!!
					//current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
			
					right := ast.Children[1]
					field_name := ast.Data[0].String_value
					
					array_type := left.DataType.(datatype_array.StaticArrayType)
					switch field_name {
						case "len": 
							right.DataType = datatype.TYPE_UINT64
							ast.DataType = right.DataType
						case "data":
							right.DataType = datatype.PointerType{array_type.ElementType}
							ast.DataType = right.DataType
						default: 
							typeErrorAt(ast, "static array doesn't have a field named %s", field_name)
							return nil
					}
					return ast
				case datatype_string.StaticStringType:
					// ** just brutally override this motherfucker!!
					//current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
			
					right := ast.Children[1]
					field_name := ast.Data[0].String_value
					
					array_type := left.DataType.(datatype_string.StaticStringType)
					switch field_name {
						case "len": 
							right.DataType = datatype.TYPE_UINT64
							ast.DataType = right.DataType
						case "data":
							right.DataType = datatype.PointerType{array_type.ElementType}
							ast.DataType = right.DataType
						default: 
							typeErrorAt(ast, "static string doesn't have a field named %s", field_name)
							return nil
					}
					return ast
			}
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
			if _type.Equals(datatype.TYPE_GENERIC) {
				typeErrorAt(ast, "`%s` can only be used as pointer or array type", type_name)
				return nil
			}

			ast.DataType = _type
		}
		case front.AST_FUNCTION_DEFINITION: {
			if ast.Flags & front.ASTO_FUNCTION_EXTERNAL != 0 {
				symbol.SymbolScopeStackPop()
			}
		
			function_name := ast.Children[0].Data[0].String_value
			_, found := symbol.SymbolTableGetInCurrentScope(function_name)
			if found {
				typeErrorAt(ast, "function `%s` was already declared in this scope", function_name)
				return nil
			}

			return_type := &ast.Children[2].DataType

			if ast.Flags & front.ASTO_FUNCTION_EXTERNAL == 0 {
				body := ast.Children[3]
				body_type := &body.DataType

				if !Compatible(body_type, return_type) {
					ret_typ := (*return_type).Name()
					bod_typ := (*body_type).Name()
					typeErrorAt(ast, "function should return `%s`, but returns `%s`", ret_typ, bod_typ)
					return nil
				}
			}

			args := ast.Children[1].Children
			arg_types := []datatype.DataType{}
			for _, arg := range(args) {
				arg_types = append(arg_types, arg.DataType)
			}
			
			err := symbol.SymbolTableInsertInCurrentScope(function_name, TypeCheck_Symbol{*return_type, arg_types}) 
			if err != nil {
				fmt.Println(err)	
				return nil
			}

			ast.DataType = *return_type

		}
		case front.AST_RETURN: {
			if len(ast.Children) <= 0 {
				function_return_type := current_function_ast.Children[2].DataType
				if function_return_type != nil && function_return_type != datatype.TYPE_NONE {
					typeErrorAt(
						ast,
						"function should return `%s`, but returning nothing",  
						(function_return_type).Name(),
					)
					return nil
				}
				ast.Flags |= front.ASTO_ALWAYS_RETURNS
				current_body_ast.Flags |= front.ASTO_ALWAYS_RETURNS
				ast.DataType = datatype.TYPE_NONE
			} else {
				return_type := &ast.Children[0].DataType
				function_return_type := &current_function_ast.Children[2].DataType
				
				if !Compatible(return_type, function_return_type) {
						typeErrorAt(
							ast,
							"incompatible return type and declared function type: `%s` and `%s`",  
							(*return_type).Name(),
							(*function_return_type).Name(),
						)
						return nil
				}

				if current_function_body_ast.DataType == nil || 
				   current_function_body_ast.DataType.Equals(datatype.TYPE_NONE) {
					current_function_body_ast.DataType = *return_type
				} else {
					if !Compatible(return_type, & current_function_body_ast.DataType) {
						typeErrorAt(
							ast,
							"function can't return two incompatible types `%s` and `%s`",  
							current_function_body_ast.DataType.Name(),
							(*return_type).Name(),
						)
						return nil
					}
				}


				ast.Flags |= front.ASTO_ALWAYS_RETURNS
				current_body_ast.Flags |= front.ASTO_ALWAYS_RETURNS

				ast.DataType = *return_type
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
						if !Compatible(&last_child.DataType, &ast.DataType) {
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
			function_name := ast.Data[0].String_value
			declaration, found := symbol.SymbolTableGetFromCurrentScope(function_name)
			if !found {
				typeErrorAt(ast, "undefined `%s`", function_name)
				return nil
			}

			function_params := declaration.(TypeCheck_Symbol).ArgTypes
			for i, param := range(function_params) {
				if i >= len(ast.Children) {
					break
				}
				if !Compatible(&ast.Children[i].DataType, &function_params[i]) {
					typeExpectErrorAt(ast, param, ast.Children[i].DataType)
					return nil
				}
			}

			ast.DataType = declaration.Type()
		}
		case front.AST_LITERAL: {
			switch ast.Data[0].Type {
				case front.TOKEN_INT_LITERAL: ast.DataType = datatype.TYPE_INT_LITERAL
				case front.TOKEN_FLOAT_LITERAL: ast.DataType = datatype.TYPE_FLOAT_LITERAL
				case front.TOKEN_BOOL_LITERAL: ast.DataType = datatype.TYPE_BOOL
				case front.TOKEN_STRING_LITERAL: {
					string_length := len(ast.Data[0].String_value)
					ast.DataType = datatype_string.NewStaticStringType(uint64(string_length))
				}
				case front.TOKEN_NULL:  ast.DataType = datatype.TYPE_NULL
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
			variable_type := &ast.Children[1].DataType
			if len(ast.Children) >= 3 {
				initialization_type := &ast.Children[2].DataType
				if !Compatible(initialization_type, variable_type) {
					typeExpectErrorAt(ast, *variable_type, *initialization_type)
					return nil
				}
			}

			err := symbol.SymbolTableInsertInCurrentScope(variable_name, TypeCheck_Symbol{*variable_type, nil})
			if err != nil {
				fmt.Println(err)	
				return nil
			}
			ast.DataType = *variable_type
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
			
			if_type	:= &ast.Children[1].DataType
			else_type := (*datatype.DataType)(nil)

			if len(ast.Children) > 2 {
				else_type = &ast.Children[2].DataType

				if ((ast.Children[1].Flags & ast.Children[2].Flags) & front.ASTO_ALWAYS_RETURNS) != 0 {
					ast.Flags |= front.ASTO_ALWAYS_RETURNS
					ast.DataType = datatype.TYPE_NONE
				} else {
					if ast.Children[1].Flags & front.ASTO_ALWAYS_RETURNS != 0 {
						ast.DataType = *else_type
					} else
					if ast.Children[2].Flags & front.ASTO_ALWAYS_RETURNS != 0 {
						ast.DataType = *if_type
					} else
					if !Compatible(else_type, if_type) {
						typeErrorAt(ast, "incompatible types `%s` (if body) and `%s` (else body)", (*if_type).Name(), (*else_type).Name())
						return nil
					} else {
						ast.DataType = *if_type
					}
				}
			} else {
				ast.DataType = datatype.TYPE_NONE
			}
		}
		case front.AST_SWITCH: {
			switch_exp := ast.Children[0]

			ast.Flags |= front.ASTO_ALWAYS_RETURNS

			// iterate over cases
			for i := 1; i < len(ast.Children); i++ {
				// ** switch/case type-checking
				switch_case := ast.Children[i]
				switch_case_exp := switch_case.Children[0]

				if !Compatible(&switch_case_exp.DataType, &switch_exp.DataType) {
					typeExpectErrorAt(switch_case, switch_exp.DataType, switch_case_exp.DataType)
					return nil
				}

				// ** check if duplciate case
				for j := i+1; j < len(ast.Children); j++ {
					if switch_case_exp.Equals(*ast.Children[j].Children[0]) {
						typeErrorAt(ast, "duplicate cases in switch statement")
						return nil
					}
				}


				// ** result types checking 
				if switch_case.Flags & front.ASTO_ALWAYS_RETURNS == 0 {
					ast.Flags &= ^front.ASTO_ALWAYS_RETURNS

					if ast.DataType != nil {
						if !Compatible(&switch_case.DataType, &ast.DataType) {
							typeErrorAt(ast, "incompatible types `%s` (case result) and `%s` (switch result based on other cases)", 
										switch_case.DataType.Name(), ast.DataType.Name())
							return nil
						}
					}
					ast.DataType = switch_case.DataType
				}
			}
				
			// if all of the cases return, or there are no cases, type is NONE
			if ast.Flags & front.ASTO_ALWAYS_RETURNS != 0 {
				ast.DataType = datatype.TYPE_NONE
			}	
		}
		case front.AST_CASE: {
			ast.DataType = ast.Children[1].DataType
			ast.Flags |= ast.Children[1].Flags & front.ASTO_ALWAYS_RETURNS
		}
		case front.AST_DEFAULT: {
			ast.DataType = ast.Children[0].DataType
			ast.Flags |= ast.Children[0].Flags & front.ASTO_ALWAYS_RETURNS
		}

		// ** binary ops
		case front.AST_OP_SUM, front.AST_OP_SUB, front.AST_OP_MUL, front.AST_OP_DIV, front.AST_OP_MOD, front.AST_OP_BAND, front.AST_OP_BORE, front.AST_OP_BORI, front.AST_OP_SHL, front.AST_OP_SHR: {
			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType

			// *** static string operations done here ***
			if datatype_string.IsStaticStringType(*left_type) {
				if ast.Type == front.AST_OP_MUL {
					if datatype.IsIntegerType(*right_type) {
						if ast.Children[1].Type != front.AST_LITERAL {  
							// * dynamic stuff is done in the codegen!
							ast.DataType = datatype_string.TYPE_STRING
							break
						}
						// ** static integers (dynamic stuff is done in the codegen!)
						right_value := ast.Children[1].Data[0].Int_value
						if right_value < 0 { 
							typeErrorAt(ast, "can't multiply string times negative number (%d)!", right_value)
							return nil
						}

						ast.DataType = datatype_string.NewStaticStringType(
							datatype_array.StaticArrayType((*left_type).(datatype_string.StaticStringType)).Length * 
							uint64(right_value),
						)

						// concatenate stuff
						ast.Data = make([]front.Token, 1)
						ast.Data[0].String_value = ""
						for i := 0; i < int(right_value); i++ {
							ast.Data[0].String_value += ast.Children[0].Data[0].String_value
						}

						ast.Data[0].Type = front.TOKEN_STRING_LITERAL
						ast.Type = front.AST_LITERAL

						// kill children
						ast.Children = nil
						
						break
					}
				} 
				if ast.Type == front.AST_OP_SUM {
					if datatype_string.IsStaticStringType(*right_type) {
						ast.DataType = datatype_string.NewStaticStringType(
							datatype_array.StaticArrayType((*left_type).(datatype_string.StaticStringType)).Length +
							datatype_array.StaticArrayType((*right_type).(datatype_string.StaticStringType)).Length,
						)

						// concatenate stuff
						ast.Data = make([]front.Token, 1)
						ast.Data[0].String_value = ast.Children[0].Data[0].String_value +
												   ast.Children[1].Data[0].String_value
						ast.Data[0].Type = front.TOKEN_STRING_LITERAL

						ast.Type = front.AST_LITERAL

						// kill children
						ast.Children = nil
						break
					}

					if (*right_type).Equals(datatype_string.TYPE_STRING) {
						ast.DataType = datatype_string.TYPE_STRING
						break
					}
				}

				typeErrorAt(ast, "invalid operation for types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			}
			if datatype_string.IsStaticStringType(*right_type) {
				if ast.Type == front.AST_OP_MUL {
					if datatype.IsIntegerType(*left_type) {
						if ast.Children[0].Type != front.AST_LITERAL {  
							// * dynamic stuff is done in the codegen!
							ast.DataType = datatype_string.TYPE_STRING
							break
						}
						// ** static integers 
						left_value := ast.Children[0].Data[0].Int_value
						if left_value < 0 { 
							typeErrorAt(ast, "can't multiply string times negative number (%d)!", left_value)
							return nil
						}

						ast.DataType = datatype_string.NewStaticStringType(
							datatype_array.StaticArrayType((*right_type).(datatype_string.StaticStringType)).Length * 
							uint64(left_value),
						)

						// concatenate stuff
						ast.Data = make([]front.Token, 1)
						ast.Data[0].String_value = ""
						for i := 0; i < int(left_value); i++ {
							ast.Data[0].String_value += ast.Children[1].Data[0].String_value
						}

						ast.Data[0].Type = front.TOKEN_STRING_LITERAL
						ast.Type = front.AST_LITERAL

						// kill children
						ast.Children = nil
						
						break
					}
				} 
				if ast.Type != front.AST_OP_SUM {
					typeErrorAt(ast, "invalid operation for types `%s` and `%s`", (*right_type).Name(), (*left_type).Name())
					return nil
				}
			}

			if (*left_type).Equals(datatype_string.TYPE_STRING) {
				if ast.Type == front.AST_OP_MUL {
					if datatype.IsIntegerType(*right_type) {
						ast.DataType = datatype_string.TYPE_STRING
						break
					}
				}
			}
			if (*right_type).Equals(datatype_string.TYPE_STRING) {
				if ast.Type == front.AST_OP_MUL {
					if datatype.IsIntegerType(*left_type) {
						ast.DataType = datatype_string.TYPE_STRING
						break
					}
				}
			}


			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			}
			
			if *left_type == datatype.TYPE_INT_LITERAL   ||
			   *left_type == datatype.TYPE_FLOAT_LITERAL {
				ast.DataType = *right_type 
			} else {
				ast.DataType = *left_type
			}

			if !datatype.IsIntegerType(ast.DataType) 			 &&
			   !(datatype.IsFloatType(ast.DataType) && (ast.Type == front.AST_OP_SUM ||
			   										   	ast.Type == front.AST_OP_SUB ||
													   	ast.Type == front.AST_OP_MUL ||
													   	ast.Type == front.AST_OP_DIV )) &&
			   !datatype_string.IsStaticStringType(ast.DataType) &&
			   !ast.DataType.Equals(datatype_string.TYPE_STRING) {
				typeErrorAt(ast, "invalid operation for types `%s` and `%s`", (*right_type).Name(), (*left_type).Name())
				return nil
			   }
			  
		}
		case front.AST_OP_GRT, front.AST_OP_LES, front.AST_OP_GOE, front.AST_OP_LOE: {
			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType
			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			} 

			if (!datatype.IsIntegerType((*left_type)) || !datatype.IsIntegerType((*right_type))) &&
			   (!datatype.IsFloatType((*left_type)) || !datatype.IsFloatType((*right_type))) {
				typeErrorAt(ast, "invalid operation for types `%s` and `%s`", (*right_type).Name(), (*left_type).Name())
				return nil
		    }

			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_EQU,  front.AST_OP_NEQ: {
			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType

			// ** static string comparison done here **
			if datatype_string.IsStaticStringType(*left_type) && 
			   datatype_string.IsStaticStringType(*right_type) {
			     eq := ast.Children[0].Data[0].String_value ==
					   ast.Children[1].Data[0].String_value

				ast.Type = front.AST_LITERAL
				ast.DataType = datatype.TYPE_BOOL
				ast.Data = make([]front.Token, 1)
				ast.Data[0].Type = front.TOKEN_BOOL_LITERAL
				if eq {
					ast.Data[0].Int_value = 1
				} else {
					ast.Data[0].Int_value = 0
				}
				break
			}

			if (datatype_array.IsStaticArrayType(*left_type) ||
			    datatype_struct.IsDynamicArrayType(*left_type)) &&
			   (datatype_array.IsStaticArrayType(*right_type) ||
			    datatype_struct.IsDynamicArrayType(*right_type)) {
				l_element_type := datatype.DataType(nil)
				if datatype_array.IsStaticArrayType((*left_type)) {
					l_element_type = (*left_type).(datatype_array.StaticArrayType).ElementType
				} else {
					l_element_type = datatype_struct.DynamicArrayDataType((*left_type))
				}
				r_element_type := datatype.DataType(nil)
				if datatype_array.IsStaticArrayType((*right_type)) {
					r_element_type = (*right_type).(datatype_array.StaticArrayType).ElementType
				} else {
					r_element_type = datatype_struct.DynamicArrayDataType((*right_type))
				}
				if !(l_element_type).Equals(r_element_type) {
					typeErrorAt(ast, "incompatible array types for comparison: `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
					return nil
				}

				// if they are both static also check the lengths
				if datatype_array.IsStaticArrayType((*right_type)) &&
				   datatype_array.IsStaticArrayType((*left_type)) {
					if (*right_type).(datatype_array.StaticArrayType).Length !=
					   (*left_type).(datatype_array.StaticArrayType).Length {
						typeErrorAt(ast, "incompatible array types for comparison: `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
						return nil
				   }
				}
				ast.DataType = datatype.TYPE_BOOL
				break
		   }

			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			} 
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_AND,  front.AST_OP_OR: {
			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType
			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			} 
			if !(*left_type).Equals(datatype.TYPE_BOOL) {
				typeErrorAt(ast, "expected `bool`, got `%s`", (*left_type).Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_ESUM, front.AST_OP_ESUB, front.AST_OP_EDIV, front.AST_OP_EMOD, front.AST_OP_EBAND, front.AST_OP_EBORI, front.AST_OP_EBORE, front.AST_OP_ESHL, front.AST_OP_ESHR: { 
			if ExpressionIsLeftValue(ast.Children[0]) == nil {
				typeErrorAt(ast, "invalid expression in left side of assignment")
				return nil
			}
			if !Writable(ast.Children[0]) {
				typeErrorAt(ast, "expression in left side of assignment is not writable")
				return nil
			}

			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType
			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			}
			ast.DataType = *left_type

			if !datatype.IsIntegerType(ast.DataType) &&
			   !(datatype.IsFloatType(ast.DataType) && (ast.Type == front.AST_OP_ESUM ||
			   										   	ast.Type == front.AST_OP_ESUB ||
													   	ast.Type == front.AST_OP_EDIV ||
													   	ast.Type == front.AST_OP_EMOD)) &&
			   (front.AST_OP_ESUM != ast.Type && 
				ast.DataType.Equals(datatype_string.TYPE_STRING)) {
				typeErrorAt(ast, "invalid operation for types `%s` and `%s`", (*right_type).Name(), (*left_type).Name())
				return nil
			}
		}

		case front.AST_OP_EMUL: {
			if ExpressionIsLeftValue(ast.Children[0]) == nil {
				typeErrorAt(ast, "invalid expression in left side of assignment")
				return nil
			}
			if !Writable(ast.Children[0]) {
				typeErrorAt(ast, "expression in left side of assignment is not writable")
				return nil
			}

			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType
			
			if (*left_type).Equals(datatype_string.TYPE_STRING) {
				if datatype.IsIntegerType(*right_type) {
					ast.DataType = datatype_string.TYPE_STRING
					break
				}
			}

			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			}
			ast.DataType = *left_type

			if !datatype.IsIntegerType(ast.DataType) && 
			   !datatype.IsFloatType(ast.DataType)  {
				typeErrorAt(ast, "invalid operation for types `%s` and `%s`", (*right_type).Name(), (*left_type).Name())
				return nil
			}
		}
		case front.AST_OP_ASN: {
			if ExpressionIsLeftValue(ast.Children[0]) == nil {
				typeErrorAt(ast, "invalid expression in left side of assignment")
				return nil
			}
			if !Writable(ast.Children[0]) {
				typeErrorAt(ast, "expression in left side of assignment is not writable")
				return nil
			}

			left_type := &ast.Children[0].DataType
			right_type := &ast.Children[1].DataType
			if !Compatible(right_type, left_type) {
				typeErrorAt(ast, "incompatible types `%s` and `%s`", (*left_type).Name(), (*right_type).Name())
				return nil
			}
			ast.DataType = *left_type
		}

		// ** unary ops
		case front.AST_OP_NEG: {
			ast.DataType = ast.Children[0].DataType

			if !datatype.IsIntegerType(ast.DataType) &&
			   !datatype.IsFloatType(ast.DataType) {
				typeErrorAt(ast, "invalid operation for types `%s`", ast.DataType.Name())
				return nil
			}
		}
		case front.AST_OP_BNOT: {
			ast.DataType = ast.Children[0].DataType

			if !datatype.IsIntegerType(ast.DataType) {
				typeErrorAt(ast, "invalid operation for types `%s`", ast.DataType.Name())
				return nil
			}
		}
		case front.AST_OP_INC, front.AST_OP_DEC: {
			if ExpressionIsLeftValue(ast.Children[0]) == nil { 
				typeErrorAt(ast, "invalid expression in left side of increment/decrement operator")
				return nil
			}
			if !Writable(ast.Children[0]) {
				typeErrorAt(ast, "expression in left side of increment/decrement operator is not writable")
				return nil
			}

			ast.DataType = ast.Children[0].DataType
			
			if !datatype.IsIntegerType(ast.DataType) {
				typeErrorAt(ast, "invalid operation for types `%s`", ast.DataType.Name())
				return nil
			}
		}	
		case front.AST_OP_NOT: {
			t := ast.Children[0].DataType
			if !t.Equals(datatype.TYPE_BOOL) {
				typeErrorAt(ast, "expected `bool`, got `%s`", t.Name())
				return nil
			}
			ast.DataType = datatype.TYPE_BOOL
		}
		case front.AST_OP_REFERENCE: {
			referenced_expression := ast.Children[0]
			
			if ExpressionIsLeftValue(referenced_expression) == nil {
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
			
			// NOTE: For now it's only valid if they are both integer and float types.
			switch casting_type.(type) {
				case datatype.PrimitiveType: 
					switch expression_type.(type) {
						case datatype.PrimitiveType:
							if !(datatype.IsIntegerType(casting_type) ||
								 datatype.IsFloatType(casting_type))   && 
							    (datatype.IsIntegerType(expression_type) ||
							      datatype.IsFloatType(expression_type)) {
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
			
			struct_type_symbol := TypeCheck_Symbol{anon_struct_type, nil}
			symbol.SymbolTableInsertInCurrentScope(struct_name, struct_type_symbol)

			ast.DataType = anon_struct_type
		}
		case front.AST_STRUCT_DEFINITION_BODY: {
			var _struct datatype_struct.StructType
			
			_struct.Scope = symbol.SymbolScopeStackCurrent()

			for _, field := range(ast.Children) {
				field_name := field.Children[0].Data[0].String_value
				field_type := field.DataType

				field_size := uint64(field_type.ByteSize())
				field_offset := uint64(_struct.Size_)

				/*
					A char (one byte) will be 1-byte aligned.
					A short (two bytes) will be 2-byte aligned.
					An int (four bytes) will be 4-byte aligned.
					A long (eight bytes) will be 8-byte aligned.
					Any pointer (eight bytes) will be 8-byte aligned.
				*/
				align := field_size
				
				// search elementary type
				_static_type := field_type
				for datatype_array.IsStaticArrayType(_static_type) {
					_static_type = _static_type.(datatype_array.StaticArrayType).ElementType
					align = _static_type.ByteSize()
				}

				padding := (align - (field_offset & uint64(align - 1))) & uint64(align - 1)

				struct_field := datatype_struct.StructField{field_name, field_type, padding + field_offset}
				_struct.AddField(struct_field)
				
				_struct.Size_ += padding
				_struct.Size_ += field_size
			}

			ast.DataType = _struct
			symbol.SymbolScopeStackPop()
		}
		case front.AST_OP_DOT: {
			/*
			field_name := &ast.Children[1].Children[0]
			field_name_str := (*field_name).Data[0].String_value

			switch left.DataType.(type) {
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
		case front.AST_COMPOSITE_LITERAL: {
			switch ast.Children[0].DataType.(type) {
				case datatype_struct.StructType:
					struct_type := ast.Children[0].DataType.(datatype_struct.StructType)
					values := ast.Children[1:]

					if len(values) != len(struct_type.Fields) {
						typeErrorAt(
							ast,
							"invalid number of fields for struct literal of type `%s` : wanted %d and got %d",
							struct_type.Name(),
							len(struct_type.Fields),
							len(values),
						)
						return nil
					}

					for i, value := range(values) {
						field := struct_type.Fields[i]
						if !Compatible(&value.DataType, &field.Type) {
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
				case  datatype_array.StaticArrayType:	
					array_type := ast.Children[0].DataType.(datatype_array.StaticArrayType)
					values := ast.Children[1:]

					if uint64(len(values)) != array_type.Length {
						typeErrorAt(
							ast,
							"invalid number of elements for array literal of type `%s` : wanted %d and got %d",
							array_type.Name(),
							array_type.Length,
							len(values),
						)
						return nil
					}

					for _, value := range(values) {
						if !Compatible(&value.DataType, &array_type.ElementType) {
							typeErrorAt(
								ast,
								"can't use value of type `%s` as array element of type `%s`",  
								value.DataType.Name(),
								array_type.ElementType.Name(),
							)
							return nil
						}
					}

					ast.DataType = array_type

				default:
					typeErrorAt(
						ast,
						"type `%s` is not a valid composite literal type (only structs or static arrays are)",
						ast.Children[0].DataType.Name(),
					)
					return nil
			}
		}
		case front.AST_OP_INDEX: {
			left := ast.Children[0]

			if datatype_struct.IsDynamicArrayType(left.DataType) {
				ast.DataType = datatype_struct.DynamicArrayDataType(left.DataType)
			} else
			if datatype_array.IsStaticArrayType(left.DataType) {
				ast.DataType = left.DataType.(datatype_array.StaticArrayType).ElementType
			} else
			if datatype_string.IsStaticStringType(left.DataType) ||
			   datatype_string.TYPE_STRING.Equals(left.DataType) {
				ast.DataType = datatype.TYPE_UINT8
			} else {
				typeErrorAt(ast, "left value in indexing is not an array")
				return nil
			}
		}

		default: ast.DataType = datatype.TYPE_UNDEFINED
	}

	return ast
}
