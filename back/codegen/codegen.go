package codegen

import (
	"mycgo/front"
	"fmt"
	"mycgo/back/datatype"
	"mycgo/back/symbol"
)	

type Code struct {
	Text string
	Data string
}

type Codegen_Out struct {
	Code Code
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

func Codegen(ast *front.Ast_Node) (Codegen_Out) {
	if ast.Type == front.AST_FUNCTION_DEFINITION {
		current_function_ast = ast
	}

	if ast.Type == front.AST_BODY || 
	   ast.Type == front.AST_HEAD {
		symbol.SymbolScopeStackPush()
	}

	var children_out []Codegen_Out

	for _, child := range(ast.Children) {
		children_out = append(children_out, Codegen(child))
	}

	out := Codegen_Out{}

	switch ast.Type {
		case front.AST_HEAD:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
			symbol.SymbolScopeStackPop()
			
		case front.AST_FUNCTION_DEFINITION:
			function_name := ast.Children[0].Data[0].String_value
			name := LabelGet(function_name)
			out.Code.TextAppendSln(Instruction(".global", name))
			out.Code.TextAppendSln(name.Text() + ":")
			
			out.Code.Appendln(GEN_function_prologue().Code)
			
			out.Code.Appendln(children_out[1].Code)
			out.Code.Appendln(children_out[3].Code)

			body_result := children_out[3].Result

			if body_result != nil {
				body_type := ast.Children[3].DataType
				out.Code.Appendln(GEN_move(body_result, RETURN_REGISTER.GetRegister(body_type)).Code)
			}
	
			function_epilogue := "._" + function_name
			out.Code.TextAppendSln(function_epilogue + ":")

			out.Code.Appendln(GEN_function_epilogue().Code)
			
			RegisterScratchFreeAll()

		case front.AST_RETURN:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			function_name := current_function_ast.Children[0].Data[0].String_value

			if len(ast.Children) > 0 {
				return_value := children_out[0].Result
				return_type := ast.Children[0].DataType

				out.Code.Appendln(GEN_move(return_value, RETURN_REGISTER.GetRegister(return_type)).Code)
			}

			function_epilogue := LabelGet("._" + function_name)
			out.Code.Appendln(GEN_jump(function_epilogue).Code)

		case front.AST_FUNCTION_DEFINITION_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			var results []Operand = make([]Operand, len(children_out))

			for i, _ := range(children_out) {
				results[i] = children_out[i].Result
			}

			out.Code.Appendln(GEN_function_params(results).Code)

		case front.AST_BODY:
			for _, child_out := range(children_out) {
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
					reg, full := RegisterScratchAllocate()
					if full {
						allocation = StackAllocate(ast.DataType).Reference()
					} else {
						allocation = reg.GetRegister(ast.DataType)
					}
					load := GEN_move(Asm_Int_Literal{datatype.TYPE_INT64, ast.Data[0].Int_value, 10}, allocation)
					out.Code.Appendln(load.Code)
				case front.TOKEN_BOOL_LITERAL:
					var full bool
					reg, full := RegisterScratchAllocate()
					if full {
						allocation = StackAllocate(ast.DataType).Reference()
					} else {
						allocation = reg.GetRegister(ast.DataType)
					}
					load := GEN_move(Asm_Int_Literal{datatype.TYPE_BOOL, ast.Data[0].Int_value, 10}, allocation)
					out.Code.Appendln(load.Code)
			}
			out.Result = allocation

		case front.AST_FUNCTION_CALL:
			out.Code.Append(children_out[1].Code)

			out.Code.Appendln(GEN_call(ast).Code)
			
			var result Operand
			reg, full := RegisterScratchAllocate()
			if full {
				result = StackAllocate(datatype.TYPE_BOOL).Reference() // TODO: (TYPE_BYTE)
			} else {
				result = reg.GetRegister(ast.DataType)
			}
			// TODO: get function type and size the result accordingly.
			out.Code.Appendln(GEN_move(RETURN_REGISTER.GetRegister(ast.DataType), result).Code)
	
			out.Result = result

		case front.AST_FUNCTION_CALL_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
			
			var results []Operand = make([]Operand, len(children_out))
			for i, _ := range(children_out) {
				results[i] = children_out[i].Result
			}

			out.Code.Appendln(GEN_callargs(results).Code)

		case front.AST_VARIABLE_DEFINITION: {
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
			}

			err := symbol.SymbolTableInsertInCurrentScope(variable_name, Codegen_Symbol{variable_type, variable_allc})
			if err != nil {
				fmt.Println(err)	
				return out
			}

			out.Result = variable_allc.Reference()
		}
		case front.AST_VARIABLE_NAME: {
			variable_name := ast.Data[0].String_value
			symbol, found := symbol.SymbolTableGetFromCurrentScope(variable_name)

			if !found {
				fmt.Println("codegen error: undefined `" + variable_name + "`")
				return out
			}

			var allocation Operand
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(symbol.Type()).Reference()
			} else {
				allocation = reg.GetRegister(ast.DataType)
			}

			out.Code.Appendln(GEN_move(symbol.(Codegen_Symbol).Data.Reference(), allocation).Code)
			out.Result = allocation
		}
		case front.AST_WHILE: {
			condition := children_out[0]
			body	  := children_out[1]

			out.Code.Appendln(GEN_while(condition, body).Code)
		}
		case front.AST_FOR: {
			init := children_out[0]
			cond := children_out[1]
			expr := children_out[2]
			body := children_out[3]

			out.Code.Appendln(GEN_for(init, cond, expr, body).Code)
		}
		case front.AST_FOR_INIT: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
		}
		case front.AST_FOR_UPDATE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
		}
		case front.AST_IF: {
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
		case front.AST_OP_SUM: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_SUB: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_MUL: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_DIV: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_MOD: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}

		case front.AST_OP_ASN: {
			out.Code.Appendln(children_out[1].Code)
			
			left_value := children_out[0].Result
			right_value := children_out[1].Result
			
			variable_name := ast.Children[0].Data[0].String_value
			symbol, found := symbol.SymbolTableGetFromCurrentScope(variable_name)
			if !found {
				fmt.Println("codegen error: undefined `" + variable_name + "`")
				return out
			}

			out.Code.Appendln(GEN_move(right_value, symbol.(Codegen_Symbol).Data.Reference()).Code)
			out.Code.Appendln(children_out[0].Code)
			
			out.Result = left_value
		}
		case front.AST_OP_NEG: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			value  := children_out[0].Result

			op := GEN_uniop(ast.Type, value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_GRT: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_LES: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_GOE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_LOE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_EQU: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_NEQ: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_NOT: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			value  := children_out[0].Result

			op := GEN_uniop(ast.Type, value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_AND: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_OR: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			op := GEN_binop(ast.Type, left_value, right_value)

			out.Code.Appendln(op.Code)
			out.Result = op.Result
		}
		case front.AST_OP_REFERENCE: {
			//for _, child_out := range(children_out) {
			//	out.Code.Appendln(child_out.Code)
			//}

			referenced_expression := ast.Children[0]
			value := referenced_expression.Children[0]
			symbol_name := value.Data[0].String_value

			symbol, found := symbol.SymbolTableGetFromCurrentScope(symbol_name)

			if !found {
				fmt.Println("codegen error: undefined `" + symbol_name + "`")
				return out
			}

			op := GEN_reference(symbol.(Codegen_Symbol))

			out.Code.Appendln(op.Code)

			println("asfasfas: ", op.Result)
			out.Result = op.Result
		}
	}

	return out
}
