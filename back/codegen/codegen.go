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
			name := Label(function_name)
			out.Code.TextAppendSln(Instruction(".global", name))
			out.Code.TextAppendSln(name.Text() + ":")
			
			out.Code.TextAppendSln(GEN_function_prologue())
			
			out.Code.Appendln(children_out[1].Code)
			out.Code.Appendln(children_out[3].Code)

			body_result := children_out[3].Result

			if body_result != nil {
				body_type := ast.Children[3].DataType
				out.Code.TextAppendSln(Instruction(GEN_load(body_result, RETURN_REGISTER.GetRegister(body_type))))
			}
	
			function_epilogue := "._" + function_name
			out.Code.TextAppendSln(function_epilogue + ":")

			out.Code.TextAppendSln(GEN_function_epilogue())

		case front.AST_RETURN:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			function_name := current_function_ast.Children[0].Data[0].String_value

			if len(ast.Children) > 0 {
				return_value := children_out[0].Result
				return_type := ast.Children[0].DataType

				out.Code.TextAppendSln(GEN_load(return_value, RETURN_REGISTER.GetRegister(return_type)))
			}

			function_epilogue := Label("._" + function_name)
			out.Code.TextAppendSln(GEN_jump(function_epilogue))

		case front.AST_FUNCTION_DEFINITION_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			var results []Operand = make([]Operand, len(children_out))

			for i, _ := range(children_out) {
				results[i] = children_out[i].Result
			}

			out.Code.TextAppendSln(GEN_function_params(results))

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
					allocation = LabelGen()
					out.Code.DataAppendSln(allocation.Text() + ": .string \"" + ast.Data[0].String_value + "\"")
				case front.TOKEN_INT_LITERAL:
					var full bool
					reg, full := RegisterScratchAllocate()
					if full {
						allocation = StackAllocate(ast.DataType).Reference()
					} else {
						allocation = reg.GetRegister(ast.DataType)
					}
					out.Code.TextAppendSln(GEN_load(Asm_Int_Literal{ast.Data[0].Int_value, 10}, allocation))
				case front.TOKEN_BOOL_LITERAL:
					var full bool
					reg, full := RegisterScratchAllocate()
					if full {
						allocation = StackAllocate(ast.DataType).Reference()
					} else {
						allocation = reg.GetRegister(ast.DataType)
					}
					out.Code.TextAppendSln(GEN_load(Asm_Int_Literal{ast.Data[0].Int_value, 10}, allocation))
			}
			out.Result = allocation

		case front.AST_FUNCTION_CALL:
			out.Code.Append(children_out[1].Code)

			out.Code.TextAppendSln(GEN_call(ast))
			
			var result Operand
			reg, full := RegisterScratchAllocate()
			if full {
				result = StackAllocate(datatype.TYPE_BOOL).Reference() // TODO: (TYPE_BYTE)
			} else {
				result = reg.GetRegister(ast.DataType)
			}
			// TODO: get function type and size the result accordingly.
			out.Code.TextAppendSln(GEN_load(RETURN_REGISTER.GetRegister(datatype.TYPE_INT64), result))
	
			out.Result = result

		case front.AST_FUNCTION_CALL_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
			
			var results []Operand = make([]Operand, len(children_out))
			for i, _ := range(children_out) {
				results[i] = children_out[i].Result
			}

			out.Code.TextAppendSln(GEN_callargs(results))

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
					switch variable_type {
						default:
							bit_size := variable_type.BitSize()
							byte_size := variable_type.ByteSize()

							fmt.Printf("bit_size: %d\n", bit_size)
							fmt.Printf("byte_size: %d\n", byte_size)

							variable_allc = StackAllocate(variable_type)

							init_value := PrimitiveZeroValue(variable_type.(datatype.PrimitiveType))
							if len(ast.Children) > 2 {
								out.Code.Appendln(children_out[2].Code)
								init_value = children_out[2].Result
							}

							out.Code.TextAppendSln(GEN_load(init_value, variable_allc.Reference()))
					}
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

			out.Code.TextAppendSln(GEN_load(symbol.(Codegen_Symbol).Data.Reference(), allocation))
			out.Result = allocation
		}
		case front.AST_WHILE: {
			condition := children_out[0]
			body	  := children_out[1]

			out.Code.TextAppendSln(GEN_while(condition, body))

			out.Code.DataAppendln(condition.Code)
			out.Code.DataAppendln(body.Code)
		}
		case front.AST_IF: {
			condition := children_out[0]
			body_true := children_out[1]

			var t string
			var result Operand
			if len(ast.Children) > 2 {
				body_false := children_out[2]
				t, result = GEN_ifelse(condition, body_true, body_false)
			} else {
				t, result = GEN_if(condition, body_true)
			}

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_SUM: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_SUB: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
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

			out.Code.TextAppendSln(GEN_load(right_value, symbol.(Codegen_Symbol).Data.Reference()))
			out.Code.Appendln(children_out[0].Code)
			
			out.Result = left_value
		}
		case front.AST_OP_GRT: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_LES: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_GOE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_LOE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_EQU: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
		case front.AST_OP_NEQ: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			t, result := GEN_binop(ast.Type, left_value, right_value)

			out.Code.TextAppendSln(t)
			out.Result = result
		}
	}

	return out
}
