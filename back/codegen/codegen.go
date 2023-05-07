package codegen

import (
	"fmt"
	"math"
	"strconv"
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/back/datatype/datatype_array"
	"mycgo/back/datatype/datatype_string"
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
	
	// additional info
	PushedRegs map[RegisterClass]Stack_Region // lmao
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

	if datatype_struct.IsDynamicArrayType(_type) { 
		_type = new_dynamic_array_type(_type.Name(), _type.(datatype_struct.StructType).Fields[0].Type.(datatype.PointerType).Pointed_type)
	}

	// declare fields in this scope, this feels hackish
	symbol.SymbolTableInsertInCurrentScope(
		"data",
		Codegen_Symbol{
			datatype.PointerType{_type},
			Stack_Region{},

			nil,
		},
	)
	symbol.SymbolTableInsertInCurrentScope(
		"len",
		Codegen_Symbol{
			datatype.TYPE_UINT64,
			Stack_Region{},

			nil,
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

	if (ast.Type == front.AST_BODY 						&&
	   (ast.Flags & front.ASTO_BODY_FUNCTION == 0)      &&
	   (ast.Flags & front.ASTO_BODY_FOR == 0)) 			|| 
	   (ast.Type == front.AST_FUNCTION_DEFINITION 		/*&& (ast.Flags & front.ASTO_FUNCTION_EXTERNAL == 0)*/) ||
	    ast.Type == front.AST_FOR						||
	    ast.Type == front.AST_HEAD 				    	||
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
					if left.DataType.Equals(datatype_string.TYPE_STRING) {
						goto break_children_loop
					}
					current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
				case datatype_array.StaticArrayType, datatype_string.StaticStringType:
					// ** just brutally override this motherfucker!!
					//current_dot_scope = left.DataType.(datatype_struct.StructType).Scope
			
					/*
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
						default: typeErrorAt(ast, "static array doesn't have a field named %s", field_name)
					}
					return ast
					*/

					goto break_children_loop
			}
		} else {
			current_dot_scope = -1
		}
	}

	break_children_loop:
	out := Codegen_Out{ PushedRegs: make(map[RegisterClass]Stack_Region, N_REGISTERS)}

	/*
	for _, child := range children_out {
		for reg, stk := range child.PushedRegs {
			mem := stk.Reference()
			r, _ := reg.GetRegister(mem.Type())
			out.Code.Appendln(GEN_very_generic_move(stk.Reference(), r).Code)
		}
	}
	*/

	switch ast.Type {
	case front.AST_HEAD:
		for _, child_out := range children_out {
			out.Code.Appendln(child_out.Code)
		}
		symbol.SymbolScopeStackPop()

	case front.AST_DATATYPE:
		if datatype_struct.IsDynamicArrayType(ast.DataType) {
			_type := ast.DataType.(datatype_struct.StructType)
			element_type := _type.Fields[0].Type.(datatype.PointerType).Pointed_type
			new_dynamic_array_type(_type.Name(), element_type)
		}

	case front.AST_FUNCTION_DEFINITION:
		if ast.Flags & front.ASTO_FUNCTION_EXTERNAL != 0 {
			symbol.SymbolScopeStackPop()
		}
		
		function_name := ast.Children[0].Data[0].String_value

		args := ast.Children[1].Children
		arg_types := []datatype.DataType{}
		for _, arg := range(args) {
			arg_types = append(arg_types, arg.DataType)
		}

		_, found := symbol.SymbolTableGetInCurrentScope(function_name)
		if found {
			fmt.Println("codegen error: `" + function_name + "` was already declared in this scope")
			return out
		}
		
		var function_symbol Codegen_Symbol
		function_symbol.DataType = ast.DataType
		function_symbol.ArgTypes = arg_types
		err := symbol.SymbolTableInsertInCurrentScope(function_name, function_symbol)
		if err != nil {
			fmt.Println(err)
			return out
		}

		if ast.Flags & front.ASTO_FUNCTION_EXTERNAL != 0 {
			break
		}

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
			label.datatype = ast.DataType

			allocation = label

			out.Code.DataAppendS(allocation.Text() + ": .byte ")

			for _, c := range(ast.Data[0].String_value) {
				out.Code.DataAppendS(strconv.FormatUint(uint64(c), 10) + ", ")
			}
			
			// zero-terminate!
			out.Code.DataAppendSln("0")
		case front.TOKEN_INT_LITERAL:
			var full bool
			reg, full := RegisterScratchAllocate(ast.DataType)
			if full {
				allocation = StackAllocate(ast.DataType).Reference()
			} else {
				allocation = reg
			}
			load := GEN_move(Asm_Int_Literal{ast.DataType, ast.Data[0].Int_value, 10}, allocation)
			out.Code.Appendln(load.Code)

		case front.TOKEN_FLOAT_LITERAL:
			// get bits of floating point number
			f := ast.Data[0].Float_value

			f_bits := uint64(0)
			switch ast.DataType.ByteSize() {
				case 8:
					f_bits = math.Float64bits(f)
				case 4:
					f_bits = uint64(math.Float32bits(float32(f)))
				
			}
			
			// load to scratch
			var full bool
			reg, full := RegisterScratchAllocate(ast.DataType)
			if full {
				allocation = StackAllocate(ast.DataType).Reference()
			} else {
				allocation, _ = reg.Class.GetRegister(datatype.TYPE_F64)
			}
			
			load := GEN_move(Asm_Int_Literal{datatype.TYPE_UINT64, int64(f_bits), 10}, allocation)
			out.Code.Appendln(load.Code)

			if !full {
				allocation = reg
			}

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

					zero := GEN_structzero(variable_allc.Reference())
					out.Code.Appendln(zero.Code)
					if len(ast.Children) > 2 {
						out.Code.Appendln(children_out[2].Code)
						out.Code.Appendln(GEN_very_generic_move(children_out[2].Result, variable_allc.Reference()).Code)
					}
				case datatype_array.StaticArrayType: 
					variable_allc = StackAllocate(variable_type)

					zero := GEN_arrayzero(variable_allc.Reference())
					out.Code.Appendln(zero.Code)
					if len(ast.Children) > 2 {
						out.Code.Appendln(children_out[2].Code)
						out.Code.Appendln(GEN_very_generic_move(children_out[2].Result, variable_allc.Reference()).Code)
					}
			}

			err := symbol.SymbolTableInsertInCurrentScope(variable_name, Codegen_Symbol{variable_type, variable_allc, nil})
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
	case front.AST_SWITCH:
		{
			switch_exp := children_out[0]

			cases := ast.Children[1:]
			cases_exp    := make([]Codegen_Out, len(cases))
			cases_bodies := make([]Codegen_Out, len(cases))
			for i, _case := range cases {
				_case_body := Codegen(_case.Children[1])
				cases_bodies[i] = _case_body
				
				_case_exp  := Codegen(_case.Children[0])
				if _case_exp.Result == nil {
					return Codegen_Out{}
				}
				cases_exp[i] = _case_exp
			}
			_switch := GEN_switch(switch_exp, cases_exp, cases_bodies, ast.DataType)
			out.Result = _switch.Result
			out.Code.Appendln(_switch.Code)
		}

	// ** unary ops
	case front.AST_OP_NOT, front.AST_OP_NEG, front.AST_OP_BNOT: 
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			value := children_out[0].Result

			if typecheck.ExpressionIsLeftValue(ast.Children[0]) {
				switch value.(type) {
					case Memory_Reference: {
						// .. we don't wanna do nasty stuff on the long term memory, so : 

						// move it to a new location ~< ~
						var v Operand
						reg, full := RegisterScratchAllocate(value.Type())
						if full {
							v = StackAllocate(value.Type()).Reference()
						} else {
							v = reg
						}
						out.Code.Appendln(GEN_very_generic_move(value, v).Code)

						// do the op  ^< ^  ~< ^
						op := GEN_uniop(ast.Type, v)
						out.Code.Appendln(op.Code)
						out.Result = op.Result
					}
					default: {
						op := GEN_uniop(ast.Type, value)

						out.Code.Appendln(op.Code)
						out.Result = op.Result
					}
				}
			} else {
				op := GEN_uniop(ast.Type, value)

				out.Code.Appendln(op.Code)
				out.Result = op.Result
			}
		}
	case front.AST_OP_INC, front.AST_OP_DEC: 
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			value := children_out[0].Result

			op := GEN_uniop(ast.Type, value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
	}

	// ** binary ops
	case front.AST_OP_SUM, front.AST_OP_SUB, front.AST_OP_MUL, front.AST_OP_DIV, front.AST_OP_MOD,
	     front.AST_OP_GRT, front.AST_OP_LES, front.AST_OP_GOE, front.AST_OP_LOE,  
	     front.AST_OP_EQU,  front.AST_OP_NEQ, front.AST_OP_AND,  front.AST_OP_OR, front.AST_OP_BAND, front.AST_OP_BORE, front.AST_OP_BORI, 
		 front.AST_OP_SHL, front.AST_OP_SHR:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value :=  children_out[0].Result
			right_value := children_out[1].Result
			if typecheck.ExpressionIsLeftValue(ast.Children[0]) {
				switch left_value.(type) {
					case Memory_Reference: {
						// .. we don't wanna do nasty stuff on the long term memory, so : 

						// move it to a new location ~< ~
						var v Operand
						reg, full := RegisterScratchAllocate(left_value.Type())
						if full {
							v = StackAllocate(left_value.Type()).Reference()
						} else {
							v = reg
						}
						out.Code.Appendln(GEN_very_generic_move(left_value, v).Code)

						// do the op  ^< ^  ~< ^
						op := GEN_binop(ast.Type, v, right_value)
						out.Code.Appendln(op.Code)
						out.Result = op.Result
					}
					default: {
						op := GEN_binop(ast.Type, left_value, right_value)

						out.Code.Appendln(op.Code)
						out.Result = op.Result
					}
				}
			} else {
				op := GEN_binop(ast.Type, left_value, right_value)

				out.Code.Appendln(op.Code)
				out.Result = op.Result
			}
		}
	case front.AST_OP_ESUM, front.AST_OP_ESUB, front.AST_OP_EMUL, front.AST_OP_EDIV, front.AST_OP_EMOD, 
		 front.AST_OP_EBAND, front.AST_OP_EBORI, front.AST_OP_EBORE, front.AST_OP_ESHL, front.AST_OP_ESHR:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			left_value :=  children_out[0].Result
			right_value := children_out[1].Result

			// do the op  ^< ^  ~< ^
			op := GEN_binop(ast.Type, left_value, right_value)
			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}

	case front.AST_OP_ASN:
		{
			out.Code.Appendln(children_out[1].Code)

			left_value := children_out[0].Result
			right_value := children_out[1].Result

			switch right_value.(type) {
				case Memory_Reference: {
					// move it to a new location ~< ~ just because lmaoooo. this is SO BAAADDDD!!!!
					var v Operand
					reg, full := RegisterScratchAllocate(right_value.Type())
					if full {
						v = StackAllocate(right_value.Type()).Reference()
					} else {
						v = reg
					}
					out.Code.Appendln(GEN_very_generic_move(right_value, v).Code)

					out.Code.Appendln(children_out[0].Code)
					out.Code.Appendln(GEN_very_generic_move(v, left_value).Code)

					out.Result = left_value
				}
				default: {
					out.Code.Appendln(children_out[0].Code)
					out.Code.Appendln(GEN_very_generic_move(right_value, left_value).Code)

					out.Result = left_value
				}
			}
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
			case front.AST_OP_INDEX:
				out.Code.Appendln(children_out[0].Code)

				out.Code.TextAppendSln("// referencing stuff from mem!")
				println("// referencing stuff from mem!")
				ref := GEN_reference_from_mem(children_out[0].Result.(Memory_Reference))
				out.Code.Appendln(ref.Code)
				
				out.Result = ref.Result
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
					r.Free()
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
			if datatype.IsIntegerType(ast.DataType) {
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
				rax, _ := REGISTER_RAX.GetRegister(result_expression_type_view.Type())
				out.Code.Appendln(GEN_move(Asm_Int_Literal{result_expression_type_view.Type(), int64(mask), 10}, rax).Code)
				mask_code := ii("andq", rax, result_expression_type_view)
				out.Code.TextAppendSln(mask_code)
			} else { // float
				// ** allocate xmm() result
				reg, full := register_xmm_allocate(ast.DataType)
				var save Operand
				if full {
					var reg Register
					switch expression.(type) {
						case Register:
							for _, x := range [16]RegisterClass{REGISTER_XMM0,  REGISTER_XMM1, 
																REGISTER_XMM2,  REGISTER_XMM3, 
																REGISTER_XMM4,  REGISTER_XMM5,
																REGISTER_XMM6,  REGISTER_XMM7,
																REGISTER_XMM8,  REGISTER_XMM9,
																REGISTER_XMM10, REGISTER_XMM11,
																REGISTER_XMM12, REGISTER_XMM13,
																REGISTER_XMM14, REGISTER_XMM15} {
								if x != expression.(Register).Class  {
									reg, _ = x.GetRegister(expression.Type())
									break
								}
							}
					}

					save = StackAllocate(reg.Type()).Reference()
					out.Code.Appendln(GEN_move(reg, save).Code)
				} 

				// ** convert
				if expression.Type().ByteSize() == 8 {
					if ast.DataType.ByteSize() == 4 {
						out.Code.TextAppendSln(ii("cvtsd2ss", expression, reg))
					} else { // 8 (do nothing)
						reg.Free()
						result = expression
						goto casting_done
					}
				} else { // 4
					if ast.DataType.ByteSize() == 8 {
						out.Code.TextAppendSln(ii("cvtss2sd", expression, reg))
					} else { // 4 (do nothing)
						reg.Free()
						result = expression
						goto casting_done
					}
				}

				// ** put result into new allocation
				_full := false
				result, _full = RegisterScratchAllocate(ast.DataType)
				if _full {
					result = StackAllocate(ast.DataType).Reference()
				}

				out.Code.Appendln(GEN_move(reg, result).Code)

				if full {
					// restore save
					out.Code.Appendln(GEN_move(save, reg).Code)
				}
			}

			casting_done:
			out.Result = result
		}
	case front.AST_STRUCT_DEFINITION_BODY:
		{
			symbol.SymbolScopeStackPop()
		}
	case front.AST_OP_DOT:
		{
			for _, child := range children_out {
				out.Code.Appendln(child.Code)
			}

			left := ast.Children[0]
			right := ast.Children[1]

			switch left.DataType.(type) {
				case datatype_struct.StructType:
					_type := left.DataType.(datatype_struct.StructType)

					field_type := right.DataType
					field_name := /*right*/ ast.Data[0].String_value

					field := _type.FindField(field_name)

					if field == nil {
						fmt.Println("codegen error: undefined `" + field_name + "`")
						return out
					}

					struct_allocation := children_out[0].Result
					struct_start := struct_allocation.(Memory_Reference).Start
					struct_offset := struct_allocation.(Memory_Reference).Offset
					struct_index  := struct_allocation.(Memory_Reference).Index
					struct_coeff  := struct_allocation.(Memory_Reference).IndexCoefficient

					field_offset := struct_offset + int64(field.Offset)

					field_allocation := Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_coeff,
					}

					out.Result = field_allocation
				case datatype_array.StaticArrayType:
					array_allocation := children_out[0].Result.(Memory_Reference)
					array_type := array_allocation.Type().(datatype_array.StaticArrayType)
					//array_size := array_type.Length * array_type.ElementType.ByteSize()
							
					field_name := ast.Data[0].String_value
					var result Operand
					switch field_name {
						case "data":
							array_reference := GEN_reference_from_mem(array_allocation)
							out.Code.Appendln(array_reference.Code)
							result = array_reference.Result
						case "len":
							reg, full := RegisterScratchAllocate(datatype.TYPE_UINT64)
							if full {
								result = StackAllocate(datatype.TYPE_UINT64).Reference()
							} else {
								result = reg
							}
							
							size_literal := Asm_Int_Literal{
								datatype.TYPE_UINT64,
								int64(array_type.Length),
								10,
							}
							out.Code.Appendln(GEN_move(size_literal, result).Code)
						default: fmt.Println("codegen error: static array doesn't have a field named %s", field_name)
					}

					out.Result = result
				case datatype_string.StaticStringType:
					//out.Code.Appendln(children_out[0].Code)

					string_allocation := children_out[0].Result.(Label)
					string_type := string_allocation.Type().(datatype_string.StaticStringType)
					//string_size := string_type.Length * string_type.ElementType.ByteSize()
							
					field_name := ast.Data[0].String_value
					var result Operand
					switch field_name {
						case "data":
							result = Label{datatype.PointerType{datatype.TYPE_UINT8}, string_allocation.Text()}
						case "len":
							reg, full := RegisterScratchAllocate(datatype.TYPE_UINT64)
							if full {
								result = StackAllocate(datatype.TYPE_UINT64).Reference()
							} else {
								result = reg
							}
							
							size_literal := Asm_Int_Literal{
								datatype.TYPE_UINT64,
								int64(string_type.Length),
								10,
							}
							out.Code.Appendln(GEN_move(size_literal, result).Code)
						default: fmt.Println("codegen error: static string doesn't have a field named %s", field_name)
					}

					out.Result = result

			}	

		}
	case front.AST_COMPOSITE_LITERAL:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			switch ast.DataType.(type) {
				case datatype_struct.StructType:
					struct_type := ast.DataType.(datatype_struct.StructType)
					struct_allocation := StackAllocate(struct_type).Reference()

					values := make([]Operand, len(children_out)-1)

					if len(values) != len(struct_type.Fields) {
						fmt.Println("codegen error: invalid number of fields for struct literal of type `%s` : wanted %d and got %d", struct_type.Name(), len(struct_type.Fields), len(values))
						return out
					}

					for i, _ := range values {
						values[i] = children_out[i+1].Result
					}

					out.Code.Appendln(GEN_storestruct_from_operands(values, struct_allocation).Code)
					out.Result = struct_allocation
				case datatype_array.StaticArrayType:
					array_type := ast.DataType.(datatype_array.StaticArrayType)
					array_allocation := StackAllocate(array_type).Reference()

					values := make([]Operand, len(children_out)-1)
					if len(values) != int(array_type.Length) {
						fmt.Println("codegen error: invalid number of elements for array literal of type `%s` : wanted %d and got %d", array_type.Name(), array_type.Length, len(values))
						return out
					}

					for i, _ := range values {
						values[i] = children_out[i+1].Result
					}

					out.Code.Appendln(GEN_arraycopy_from_operands(values, array_allocation).Code)
					out.Result = array_allocation
			}
		}
	case front.AST_OP_INDEX:
		{
			for _, child_out := range children_out {
				out.Code.Appendln(child_out.Code)
			}

			array := children_out[0].Result
			index := children_out[1].Result

			var array_index Codegen_Out
			switch array.Type().(type) {
				case datatype_struct.StructType:
					array_index = GEN_dynamic_array_index(array.(Memory_Reference), index)
				case datatype_array.StaticArrayType:
					array_index = GEN_static_array_index(array.(Memory_Reference), index)
				case datatype_string.StaticStringType:
					array_index = GEN_static_array_index(array.(Label), index)
				default :
					fmt.Println("codegen error: left value in indexing is not an array")
					return out
			}

			out.Code.Appendln(array_index.Code)
			out.Result = array_index.Result
		}
	case front.AST_LABEL:
		{
			label_name := ast.Data[0].String_value
			out.Code.TextAppendSln(label_name + ":")
		}
	case front.AST_JUMP:
		{
			label_name := ast.Data[0].String_value
			label := LabelGet(label_name)

			out.Code.Appendln(GEN_jump(label).Code)
		}
	}
	return out
}
