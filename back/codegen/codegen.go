package codegen

import (
	"fmt"
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/front"

	"mycgo/back/symbol"
	"mycgo/back/typecheck"
)

type Code struct {
	Text string
	Data string
}

type Codegen_Out struct {
	Code   Code
	Result Operand
}

func (code *Code) TextAppend(appendee Code) {
	code.Text += appendee.Text
}

func (code *Code) TextAppendln(appendee Code) {
	code.Text += appendee.Text + "\n"
}

func (code *Code) TextAppendS(appendee string) {
	code.Text += appendee
}

func (code *Code) TextAppendSln(appendee string) {
	code.Text += appendee + "\n"
}

func (code *Code) DataAppend(appendee Code) {
	code.Data += appendee.Data
}

func (code *Code) DataAppendln(appendee Code) {
	code.Data += appendee.Data + "\n"
}

func (code *Code) DataAppendS(appendee string) {
	code.Data += appendee
}

func (code *Code) DataAppendSln(appendee string) {
	code.Data += appendee + "\n"
}

func (code *Code) Append(appendee Code) {
	code.TextAppend(appendee)
	code.DataAppend(appendee)
}

func (code *Code) Appendln(appendee Code) {
	code.TextAppendln(appendee)
	code.DataAppendln(appendee)
}

var current_function_ast *front.Ast_Node

var current_dot_scope symbol.Symbol_Scope_Id = -1

func new_dynamic_array_type(name string, _type datatype.DataType) datatype_struct.StructType {
	symbol.SymbolScopeStackPush()

	// declare fields in this scope, this feels hackish
	symbol.SymbolTableInsertInCurrentScope(
		"data",
		Codegen_Symbol{
			datatype.PointerType{_type},
			Stack_Region{},
		},
	)
	symbol.SymbolTableInsertInCurrentScope(
		"len",
		Codegen_Symbol{
			datatype.TYPE_UINT64,
			Stack_Region{},
		},
	)

	array_type_scope := symbol.SymbolScopeStackCurrent()
	symbol.SymbolScopeStackPop()

	return datatype_struct.StructType{
		name,
		datatype.PTR_SIZE + 8,

		array_type_scope,
		[]datatype_struct.StructField{
			datatype_struct.StructField{
				"data",
				datatype.PointerType{_type},

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

func Codegen(ast *front.Ast_Node) Codegen_Out {
	if ast.Type == front.AST_FUNCTION_DEFINITION {
		current_function_ast = ast
	}

	if (ast.Type == front.AST_BODY &&
		(ast.Flags&front.ASTO_BODY_FUNCTION == 0)) ||
		(ast.Type == front.AST_FUNCTION_DEFINITION &&
			(ast.Flags&front.ASTO_FUNCTION_EXTERNAL == 0)) ||
		ast.Type == front.AST_HEAD ||
		ast.Type == front.AST_STRUCT_DEFINITION_BODY {
		symbol.SymbolScopeStackPush()
	}

	var children_out []Codegen_Out

	for _, child := range ast.Children {
		children_out = append(children_out, Codegen(child))

		if ast.Type == front.AST_OP_DOT {
			left := ast.Children[0]

			switch left.DataType.(type) {
			default:
				fmt.Println("codegen error: left value in dot-op is not a struct")
			case datatype_struct.StructType:
				current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
			}
		} else {
			current_dot_scope = -1
		}
	}

	out := Codegen_Out{}

	switch ast.Type {
	case front.AST_HEAD:
		for _, child_out := range children_out {
			out.Code.Appendln(child_out.Code)
		}
		symbol.SymbolScopeStackPop()

	case front.AST_DATATYPE:
		if datatype.IsArrayType(ast.DataType) {
			_type := ast.DataType.(datatype_struct.StructType)
			new_dynamic_array_type(_type.Name(), _type.Fields[0].Type.(datatype.PointerType).Pointed_type)
		}

	case front.AST_FUNCTION_DEFINITION:
		if ast.Flags&front.ASTO_FUNCTION_EXTERNAL != 0 {
			break
		}

		//_, found := symbol.SymbolTableGetInCurrentScope(function_name)
		//if found {
		//	fmt.Println("codegen error: `" + function_name + "` was already declared in this scope")
		//	return out
		//}
		//
		//var function_symbol Codegen_Symbol
		//function_symbol.DataType = ast.DataType
		//err := symbol.SymbolTableInsertInCurrentScope(function_name, function_symbol)
		//if err != nil {
		//	fmt.Println(err)
		//	return out
		//}

		out.Code.Appendln(GEN_function_prologue(ast).Code)

		out.Code.Appendln(children_out[1].Code)
		out.Code.Appendln(children_out[3].Code)

		body_result := children_out[3].Result

		out.Code.Appendln(GEN_function_epilogue(ast, body_result).Code)

		RegisterScratchFreeAll()

	case front.AST_RETURN:
		for _, child_out := range children_out {
			out.Code.Appendln(child_out.Code)
		}

		var return_value Operand = nil
		if len(ast.Children) > 0 {
			return_value = children_out[0].Result
		}

		out.Code.Appendln(GEN_return(return_value, current_function_ast).Code)

	case front.AST_FUNCTION_DEFINITION_ARGS:
		for _, child_out := range children_out {
			out.Code.Appendln(child_out.Code)
		}

		var results []Operand = make([]Operand, len(children_out))

		for i, _ := range children_out {
			results[i] = children_out[i].Result
		}

		out.Code.Appendln(GEN_function_params(current_function_ast, results).Code)

	case front.AST_BODY:
		for _, child_out := range children_out {
			out.Code.Appendln(child_out.Code)
		}

		children := len(ast.Children)
		if children > 0 {
			last_child := ast.Children[children-1]
			if last_child.Type == front.AST_BODY_RESULT {
				out.Result = children_out[children-1].Result
			}
		}

		symbol.SymbolScopeStackPop()

	case front.AST_BODY_RESULT:
		out = children_out[0]

	case front.AST_EXPRESSION:
		out = children_out[0]

	case front.AST_LITERAL:
		var allocation Operand
		switch ast.Data[0].Type {
		case front.TOKEN_STRING_LITERAL:
			label := LabelGen()
			label.datatype = datatype.TYPE_NONE // TODO: TYPE_STRING

			allocation = label

			out.Code.DataAppendSln(allocation.Text() + ": .string \"" + ast.Data[0].String_value + "\"")
		case front.TOKEN_INT_LITERAL:
			var full bool
			reg, full := RegisterScratchAllocate(ast.DataType)
			if full {
				allocation = StackAllocate(ast.DataType).Reference()
			} else {
				allocation = reg
			}
			load := GEN_move(Asm_Int_Literal{datatype.TYPE_INT64, ast.Data[0].Int_value, 10}, allocation)
			out.Code.Appendln(load.Code)
		case front.TOKEN_BOOL_LITERAL:
			var full bool
			reg, full := RegisterScratchAllocate(ast.DataType)
			if full {
				allocation = StackAllocate(ast.DataType).Reference()
			} else {
				allocation = reg
			}
			load := GEN_move(Asm_Int_Literal{datatype.TYPE_BOOL, ast.Data[0].Int_value, 10}, allocation)
			out.Code.Appendln(load.Code)
		}
		out.Result = allocation

	case front.AST_FUNCTION_CALL:
		for _, child_out := range children_out {
			out.Code.Appendln(child_out.Code)
		}

		var results []Operand = make([]Operand, len(children_out))
		for i, _ := range children_out {
			results[i] = children_out[i].Result
		}

		call := GEN_call(ast, results)

		out.Code.Appendln(call.Code)
		out.Result = call.Result

	case front.AST_VARIABLE_DEFINITION:
		{
			variable_name := ast.Children[0].Data[0].String_value
			variable_type := ast.Children[1].DataType
			var variable_allc Stack_Region

			_, found := symbol.SymbolTableGetInCurrentScope(variable_name)

			if found {
				fmt.Println("codegen error: `" + variable_name + "` was already declared in this scope")
				return out
			}

			switch variable_type.(type) {
			case datatype.PrimitiveType:
				variable_allc = StackAllocate(variable_type)

				init_value := PrimitiveZeroValue(variable_type.(datatype.PrimitiveType))
				if len(ast.Children) > 2 {
					out.Code.Appendln(children_out[2].Code)
					init_value = children_out[2].Result
				}

				out.Code.Appendln(GEN_move(init_value, variable_allc.Reference()).Code)
			case datatype.PointerType:
				variable_allc = StackAllocate(variable_type)

				var init_value Operand
				init_value = Asm_Int_Literal{variable_type, 0, 10}
				if len(ast.Children) > 2 {
					out.Code.Appendln(children_out[2].Code)
					init_value = children_out[2].Result
				}

				out.Code.Appendln(GEN_move(init_value, variable_allc.Reference()).Code)
			case datatype_struct.StructType:
				variable_allc = StackAllocate(variable_type)
			}

			err := symbol.SymbolTableInsertInCurrentScope(variable_name, Codegen_Symbol{variable_type, variable_allc})
			if err != nil {
				fmt.Println(err)
				return out
			}

			out.Result = variable_allc.Reference()
		}
	case front.AST_VARIABLE_NAME:
		{
			variable_name := ast.Data[0].String_value

			var sym symbol.Symbol
			found := false
			if current_dot_scope >= 0 {
				sym, found = symbol.SymbolTableGet(variable_name, current_dot_scope)
			} else {
				sym, found = symbol.SymbolTableGetFromCurrentScope(variable_name)
			}

			if !found {
				fmt.Println("codegen error: undefined `" + variable_name + "`")
				return out
			}

			/*
				allocation := Allocate_For_Scratchy(sym.Type())

				out.Code.Appendln(GEN_move(sym.(Codegen_Symbol).Data.Reference(), allocation).Code)
			*/
			out.Result = sym.(Codegen_Symbol).Data.Reference()
		}
	case front.AST_WHILE:
		{
			condition := children_out[0]
			body := children_out[1]

			out.Code.Appendln(GEN_while(condition, body).Code)
		}
	case front.AST_FOR:
		{
			init := children_out[0]
			cond := children_out[1]
			expr := children_out[2]
			body := children_out[3]

			out.Code.Appendln(GEN_for(init, cond, expr, body).Code)
		}
	case front.AST_FOR_INIT:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}
		}
	case front.AST_FOR_UPDATE:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}
		}
	case front.AST_IF:
		{
			condition := children_out[0]
			body_true := children_out[1]

			var _if Codegen_Out
			if len(ast.Children) > 2 {
				body_false := children_out[2]
				_if = GEN_ifelse(condition, body_true, body_false)

			} else {
				_if = GEN_if(condition, body_true)
			}

			out.Code.Appendln(_if.Code)

			out.Result = _if.Result
		}
	case front.AST_OP_SUM:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_SUB:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_MUL:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_DIV:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_MOD:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}

	case front.AST_OP_ASN:
		{
			out.Code.Appendln(children_out[1].Code)

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			if ast.Children[0].Type == front.AST_OP_DOT || ast.Children[0].Type == front.AST_OP_INDEX {
				// we can just move the thing into the thing
				out.Code.Appendln(children_out[0].Code)
				out.Code.Appendln(GEN_very_generic_move(right_value, left_value).Code)
			} else {
				variable_name := ast.Children[0].Data[0].String_value
				symbol, found := symbol.SymbolTableGetFromCurrentScope(variable_name)
				if !found {
					fmt.Println("codegen error: undefined `" + variable_name + "`")
					return out
				}

				out.Code.Appendln(GEN_very_generic_move(right_value, symbol.(Codegen_Symbol).Data.Reference()).Code)
				out.Code.Appendln(children_out[0].Code)

				switch right_value.(type) {
				case Register:
					right_value.(Register).Free()
				}
			}
			out.Result = left_value
		}
	case front.AST_OP_NEG:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			value := children_out[0].Result

			op := GEN_uniop(ast.Type, value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_GRT:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_LES:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_GOE:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_LOE:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_EQU:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_NEQ:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_NOT:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			value := children_out[0].Result

			op := GEN_uniop(ast.Type, value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_AND:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_OR:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
	case front.AST_OP_REFERENCE:
		{
			//for _, child_out := range(children_out) {
			//	out.Code.Appendln(child_out.Code)
			//}

			value := ast.Children[0]

			if !typecheck.ExpressionIsLeftValue(value) {
				goto reference_error
			}

			switch value.Type {
			case front.AST_VARIABLE_NAME:
				symbol_name := value.Data[0].String_value

				symbol, found := symbol.SymbolTableGetFromCurrentScope(symbol_name)

				if !found {
					fmt.Println("codegen error: undefined variable `", symbol_name, "`")
					goto reference_error
				}

				op := GEN_reference(symbol.(Codegen_Symbol))

				out.Code.Appendln(op.Code)
				out.Result = op.Result
			case front.AST_OP_DEREFERENCE:
				// TODO: fix this crap. I should NEVER do this, I just
				// don't know how to get the result of that stuff back,
				// since it's two nodes below the current one...
				reference_gen := Codegen(value.Children[0])
				reference := reference_gen.Result
				out.Code.Appendln(reference_gen.Code)

				var allocation Operand
				reg, full := RegisterScratchAllocate(reference.Type())
				if full {
					allocation = StackAllocate(reference.Type()).Reference()
				} else {
					allocation = reg
				}

				op := GEN_move(reference, allocation)

				out.Code.Appendln(op.Code)
				out.Result = allocation
			default:
				goto reference_error
			}

			break

		reference_error:
			fmt.Println("codegen error: cannot reference invalid left-value")
			return out
		}
	case front.AST_OP_DEREFERENCE:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			value := children_out[0].Result

			var allocation Operand
			var full bool
			reg, full := RegisterScratchAllocate(ast.DataType)
			if full {
				allocation = StackAllocate(ast.DataType).Reference()
			} else {
				allocation = reg
			}

			switch value.(type) {
			case Memory_Reference:
				var v Register

				rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)

				r, full := RegisterScratchAllocate(value.Type())
				if full {
					v, _ = REGISTER_RBX.GetRegister(value.Type())
					out.Code.TextAppendSln(ii("pushq", rbx))
				} else {
					v = r
				}

				out.Code.Appendln(GEN_move(value, v).Code)
				load := GEN_move(v.Dereference(), allocation)
				out.Code.Appendln(load.Code)

				if full {
					out.Code.TextAppendSln(ii("popq", rbx))
				} else {
					reg.Free()
				}

			default:
				load := GEN_move(value.Dereference(), allocation)
				out.Code.Appendln(load.Code)
			}

			out.Result = allocation
		}
	case front.AST_CASTING:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			expression := children_out[1].Result

			var result Operand
			var result_expression_type_view Operand
			reg, full := RegisterScratchAllocate(ast.DataType)
			if full {
				result = StackAllocate(ast.DataType).Reference()

				view := result.(Memory_Reference)
				view.DataType = datatype.TYPE_INT64

				result_expression_type_view = view
			} else {
				result = reg
				err := false
				result_expression_type_view, err = reg.Class.GetRegister(datatype.TYPE_INT64)
				if err {
					fmt.Println("codegen error: could not find sub 64-bit for type casting")
				}
			}

			var expression_view Operand
			switch expression.(type) {
			case Register:
				err := false
				expression_view, err = expression.(Register).Class.GetRegister(ast.DataType)
				if err {
					fmt.Println("codegen error: could not find sub 64-bit for type casting")
				}
			case Memory_Reference:
				view := expression.(Memory_Reference)
				view.DataType = ast.DataType
				expression_view = view
			}

			move := GEN_move(expression_view, result)
			out.Code.Appendln(move.Code)

			mask := uint64(1<<expression.Type().BitSize()) - uint64(1)
			mask_code := ii("andq", Asm_Int_Literal{ast.DataType, int64(mask), 10}, result_expression_type_view)
			out.Code.TextAppendSln(mask_code)

			out.Result = result
		}
	case front.AST_STRUCT_DEFINITION_BODY:
		{
			symbol.SymbolScopeStackPop()
		}
	case front.AST_OP_DOT:
		{
			left := ast.Children[0]
			right := ast.Children[1]

			struct_type := left.DataType.(datatype_struct.StructType)

			field_type := right.DataType
			field_name := /*right*/ ast.Data[0].String_value

			field := struct_type.FindField(field_name)
			if field == nil {
				fmt.Println("codegen error: undefined `" + field_name + "`")
				return out
			}

			struct_allocation := children_out[0].Result
			struct_start := struct_allocation.(Memory_Reference).Start
			struct_offset := struct_allocation.(Memory_Reference).Offset

			field_offset := struct_offset + int64(field.Offset)

			field_allocation := Memory_Reference{
				field_type,
				field_offset,
				struct_start,
				nil,
				1,
			}

			//result := Allocate_For_Scratchy(field_type)

			//out.Code.Appendln(GEN_move(field_allocation, result).Code)

			out.Result = field_allocation
		}
	case front.AST_STRUCT_LITERAL:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			struct_type := ast.DataType.(datatype_struct.StructType)
			struct_allocation := StackAllocate(struct_type).Reference()

			values := make([]Operand, len(children_out)-1)

			if len(values) != len(struct_type.Fields) {
				fmt.Println("codegen error: invalid number of fields for struct `%s` definition", struct_type.Name())
				return out
			}

			for i, _ := range values {
				values[i] = children_out[i+1].Result
			}

			out.Code.Appendln(GEN_storestruct_from_operands(values, struct_allocation).Code)
			out.Result = struct_allocation
		}
	case front.AST_OP_INDEX:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			array := children_out[0].Result
			index := children_out[1].Result

			rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_INT64)
			switch index.(type) {
			default:
				out.Code.Appendln(GEN_move(index, rax).Code)
				index = rax
			case Register:
				break
			}

			array_index := GEN_array_index(array.(Memory_Reference), index.(Register), ast)

			out.Code.Appendln(array_index.Code)
			out.Result = array_index.Result
		}
	}

	return out
}
