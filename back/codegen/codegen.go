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
			out.Code.TextAppendSln(Instruction(PSOP_GLOBAL, name))
			out.Code.TextAppendSln(name.Text() + ":")
			
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSH, 64, REGISTER_RBP.GetSubRegister(uint64(64))))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, 64, REGISTER_RSP.GetSubRegister(uint64(64)), REGISTER_RBP.GetSubRegister(uint64(64))))

			if CurrentReservedStack > 0 {
				// allocate used stack
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_SUB, 64, Asm_Int_Literal{int64(CurrentReservedStack), 10}, REGISTER_RSP.GetSubRegister(uint64(64))))
			}

			out.Code.Appendln(children_out[1].Code)
			out.Code.Appendln(children_out[3].Code)


			body_result := children_out[3].Result
			if body_result != nil {
				body_type := ast.Children[3].DataType

				out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, body_type.BitSize(), body_result, REGISTER_RAX.GetSubRegister(uint64(body_type.BitSize()))))
			}


			function_epilogue := "._" + function_name
			out.Code.TextAppendSln(function_epilogue + ":")

			// deallocate used stack
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, 64, REGISTER_RBP.GetSubRegister(uint64(64)), REGISTER_RSP.GetSubRegister(uint64(64))))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_POP, 64, REGISTER_RBP.GetSubRegister(uint64(64))))
			CurrentReservedStack = 0
			CurrentAllocatedStack = 0

			out.Code.TextAppendSln(Instruction(OP_RET))

		case front.AST_RETURN:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			function_name := current_function_ast.Children[0].Data[0].String_value
			return_value := children_out[0].Result
			return_type := ast.Children[0].DataType

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, return_type.BitSize(), return_value, REGISTER_RAX.GetSubRegister(uint64(return_type.BitSize()))))
		
			function_epilogue := Label("._" + function_name)
			out.Code.TextAppendSln(Instruction(OP_JMP, function_epilogue))

		case front.AST_FUNCTION_DEFINITION_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
			for arg, child_out := range(children_out) {
				var parameter Operand
				size := ast.Children[arg].DataType.BitSize()

				if arg >= 6 {
					parameter = Memory_Reference{int64(16 + ((arg - 6) * 8)), REGISTER_RBP.GetSubRegister(uint64(64)), nil, ASMREF_INDEXCOEFF_1}	
				} else {
					reg := ArgumentRegisters[arg]
					parameter = reg.GetSubRegister(uint64(size))
				}
				
				println(child_out.Result.Text())
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, size, parameter, child_out.Result))
			}

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
						allocation = StackAllocate(uint32(ast.DataType.ByteSize())).Reference()
					} else {
						allocation = reg.GetSubRegister(uint64(ast.DataType.BitSize()))
					}
					out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, ast.DataType.BitSize(), Asm_Int_Literal{ast.Data[0].Int_value, 10}, allocation))
				case front.TOKEN_BOOL_LITERAL:
					var full bool
					reg, full := RegisterScratchAllocate()
					if full {
						allocation = StackAllocate(uint32(ast.DataType.ByteSize())).Reference()
					} else {
						allocation = reg.GetSubRegister(uint64(ast.DataType.BitSize()))
					}
					out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, ast.DataType.BitSize(), Asm_Int_Literal{ast.Data[0].Int_value, 10}, allocation))
				

			}
			out.Result = allocation

		case front.AST_FUNCTION_CALL:
			out.Code.Append(children_out[1].Code)
			name := Label(ast.Children[0].Data[0].String_value)
			out.Code.TextAppendSln(Instruction(OP_CALL, name))

			var result Operand
			reg, full := RegisterScratchAllocate()
			if full {
				result = StackAllocate(8).Reference()
			} else {
				result = reg.GetSubRegister(uint64(ast.DataType.BitSize()))
			}
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, 64, REGISTER_RAX.GetSubRegister(uint64(64)), result))
			
			nargs := len(ast.Children[1].Children)
			nargs_in_stack := nargs - len(ArgumentRegisters)
			if nargs_in_stack > 0 {
				reserved_stack := uint32(nargs_in_stack * 8)
				if reserved_stack % 16 != 0 {
					reserved_stack += 16 - (reserved_stack & 0xF)
				}
				
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_ADD, 64, Asm_Int_Literal{int64(reserved_stack), 10}, REGISTER_RSP.GetSubRegister(uint64(64))))
				for i := 0; i < nargs_in_stack; i+=2 {
					StackUnreserve16Bytes()
				}
			}
			
			out.Result = result

		case front.AST_FUNCTION_CALL_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			nargs := len(ast.Children)
			nargs_in_stack := nargs - len(ArgumentRegisters)
			if nargs_in_stack < 0 {
				nargs_in_stack = 0
			}
			nargs_in_regs :=  nargs - nargs_in_stack

			if nargs_in_stack % 2 != 0 {
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSH, 64, Asm_Int_Literal{0, 10}))
			}
			for i := nargs_in_stack - 1; i >= 0; i-=2 {
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSH, 64, children_out[nargs_in_regs + i].Result.LiteralValue()))
				if i > 0 {
					out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSH, 64, children_out[nargs_in_regs + i - 1].Result.LiteralValue()))
				}
			}

			for i := nargs_in_regs - 1; i >= 0; i-- {
				reg := ArgumentRegisters[i].GetSubRegister(uint64(64))
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, 64, children_out[i].Result.LiteralValue(), reg))
			}
			StackReserveBytes(uint32(nargs_in_stack * 8))

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

							variable_allc = StackAllocate(uint32(byte_size))

							init_value := PrimitiveZeroValue(variable_type.(datatype.PrimitiveType))
							if len(ast.Children) > 2 {
								out.Code.Appendln(children_out[2].Code)
								init_value = children_out[2].Result
							}

							out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, bit_size, init_value, variable_allc.Reference()))
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
				allocation = StackAllocate(uint32(symbol.Type().ByteSize())).Reference()
			} else {
				allocation = reg.GetSubRegister(uint64(ast.DataType.BitSize()))
			}
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, ast.DataType.BitSize(), symbol.(Codegen_Symbol).Data.Reference(), allocation))
			out.Result = allocation
		}
		case front.AST_WHILE: {
			while_label := LabelGen()
			while_exit_label := LabelGen()
			out.Code.TextAppendSln(while_label.Text() + ":")

			out.Code.Appendln(children_out[0].Code)
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_AND, ast.Children[0].DataType.BitSize(), children_out[0].Result, children_out[0].Result))
			out.Code.TextAppendSln(Instruction(OP_JZ, while_exit_label))

			out.Code.Appendln(children_out[1].Code)

			out.Code.TextAppendSln(Instruction(OP_JMP, while_label))
			out.Code.TextAppendSln(while_exit_label.Text() + ":")
		}
		case front.AST_IF: {
			if_false_label := LabelGen()
			if_exit_label := LabelGen()
		
			var allocation Operand
			if ast.DataType != datatype.TYPE_NONE {
				reg, full := RegisterScratchAllocate()
				if full {
					allocation = StackAllocate(uint32(ast.DataType.BitSize())).Reference()
				} else {
					allocation = reg.GetSubRegister(uint64(ast.DataType.BitSize()))
				}
			}

			out.Code.Appendln(children_out[0].Code)
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_AND, ast.Children[0].DataType.BitSize(), children_out[0].Result, children_out[0].Result))
			if len(ast.Children) > 2 {
				out.Code.TextAppendSln(Instruction(OP_JZ, if_false_label))
			} else {
				out.Code.TextAppendSln(Instruction(OP_JZ, if_exit_label))
			}

			out.Code.Appendln(children_out[1].Code)
			if ast.DataType != datatype.TYPE_NONE && children_out[1].Result != nil {
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, ast.DataType.BitSize(), children_out[1].Result, allocation))
			}

			if len(ast.Children) > 2 {
				out.Code.TextAppendSln(Instruction(OP_JMP, if_exit_label))
				out.Code.TextAppendSln(if_false_label.Text() + ":")

				out.Code.Appendln(children_out[2].Code)
			if ast.DataType != datatype.TYPE_NONE && children_out[2].Result != nil {
					out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, ast.DataType.BitSize(), children_out[2].Result, allocation))
				}
			}

			out.Code.TextAppendSln(if_exit_label.Text() + ":")
			out.Result = allocation
		}
		case front.AST_OP_SUM: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_ADD, ast.DataType.BitSize(), right_value, left_value))

			switch right_value.(type) {
				case SubRegister: right_value.(SubRegister).Free()
			}

			out.Result = left_value
		}
		case front.AST_OP_SUB: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_SUB, ast.DataType.BitSize(), right_value, left_value))

			switch right_value.(type) {
				case SubRegister: right_value.(SubRegister).Free()
			}

			out.Result = left_value
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

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, ast.DataType.BitSize(), right_value, symbol.(Codegen_Symbol).Data.Reference()))
			out.Code.Appendln(children_out[0].Code)
			
			
			out.Result = left_value
		}
		case front.AST_OP_GRT: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result
			
			size  := ast.Children[0].DataType.BitSize()
		
			var allocation Operand
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(uint32(datatype.TYPE_BOOL.BitSize())).Reference()
			} else {
				allocation = reg.GetSubRegister(uint64(datatype.TYPE_BOOL.BitSize()))
			}

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_XOR, datatype.TYPE_BOOL.BitSize(), allocation, allocation))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_CMP, size, right_value, left_value))
			out.Code.TextAppendSln(Instruction(OP_SETG, allocation))

			out.Result = allocation
		}
		case front.AST_OP_LES: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result
			
			size  := ast.Children[0].DataType.BitSize()
		
			var allocation Operand
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(uint32(datatype.TYPE_BOOL.BitSize())).Reference()
			} else {
				allocation = reg.GetSubRegister(uint64(datatype.TYPE_BOOL.BitSize()))
			}

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_XOR, datatype.TYPE_BOOL.BitSize(), allocation, allocation))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_CMP, size, right_value, left_value))
			out.Code.TextAppendSln(Instruction(OP_SETL, allocation))

			out.Result = allocation
		}
		case front.AST_OP_GOE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result
			
			size  := ast.Children[0].DataType.BitSize()
		
			var allocation Operand
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(uint32(datatype.TYPE_BOOL.BitSize())).Reference()
			} else {
				allocation = reg.GetSubRegister(uint64(datatype.TYPE_BOOL.BitSize()))
			}

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_XOR, datatype.TYPE_BOOL.BitSize(), allocation, allocation))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_CMP, size, right_value, left_value))
			out.Code.TextAppendSln(Instruction(OP_SETGE, allocation))

			out.Result = allocation
		}
		case front.AST_OP_LOE: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result
			
			size  := ast.Children[0].DataType.BitSize()
		
			var allocation Operand
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(uint32(datatype.TYPE_BOOL.BitSize())).Reference()
			} else {
				allocation = reg.GetSubRegister(uint64(datatype.TYPE_BOOL.BitSize()))
			}

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_XOR, datatype.TYPE_BOOL.BitSize(), allocation, allocation))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_CMP, size, right_value, left_value))
			out.Code.TextAppendSln(Instruction(OP_SETLE, allocation))

			out.Result = allocation
		}
	}

	return out
}
