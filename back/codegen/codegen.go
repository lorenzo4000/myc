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

func Codegen(ast *front.Ast_Node) (Codegen_Out) {
	if ast.Type == front.AST_FUNCTION_DEFINITION || 
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
			
		case front.AST_FUNCTION_DEFINITION:
			name := Label(ast.Children[0].Data[0].String_value)
			out.Code.TextAppendSln(InstructionDereferenceAware(PSOP_GLOBAL, name))
			out.Code.TextAppendSln(name.Text() + ":")
			
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSH, REGISTER_RBP))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, REGISTER_RSP, REGISTER_RBP))

			if CurrentReservedStack > 0 {
				// allocate used stack
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_SUB, Asm_Int_Literal{int64(CurrentReservedStack), 10}, REGISTER_RSP))
			}

			out.Code.Appendln(children_out[1].Code)
			out.Code.Appendln(children_out[2].Code)
			
			// deallocate used stack
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, REGISTER_RBP, REGISTER_RSP))
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_POP, REGISTER_RBP))
			CurrentReservedStack = 0
			CurrentAllocatedStack = 0

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_RET))

		
		case front.AST_FUNCTION_DEFINITION_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
			for arg, child_out := range(children_out) {
				var parameter Operand
				if arg >= 6 {
					parameter = Memory_Reference{int64(16 + ((arg - 6) * 8)), REGISTER_RBP, nil, ASMREF_INDEXCOEFF_1}	
				} else {
					parameter = ArgumentRegisters[arg]
				}
				
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, parameter, child_out.Result))
			}

		case front.AST_FUNCTION_DEFINITION_BODY:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

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
					allocation, full = RegisterScratchAllocate()
					if full {
						allocation = StackAllocate(8).Reference()
					}
					out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, Asm_Int_Literal{ast.Data[0].Int_value, 10}, allocation))
					
			}
			out.Result = allocation

		case front.AST_FUNCTION_CALL:
			out.Code.Append(children_out[1].Code)
			name := Label(ast.Children[0].Data[0].String_value)
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_CALL, name))

			var result Operand
			result, full := RegisterScratchAllocate()
			if full {
				result = StackAllocate(8).Reference()
			}
			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, REGISTER_RAX, result))
			
			nargs := len(ast.Children[1].Children)
			nargs_in_stack := nargs - len(ArgumentRegisters)
			if nargs_in_stack > 0 {
				reserved_stack := uint32(nargs_in_stack * 8)
				if reserved_stack % 16 != 0 {
					reserved_stack += 16 - (reserved_stack & 0xF)
				}
				
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_ADD, Asm_Int_Literal{int64(reserved_stack), 10}, REGISTER_RSP))
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
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSHQ, Asm_Int_Literal{0, 10}))
			}
			for i := nargs_in_stack - 1; i >= 0; i-=2 {
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSHQ, children_out[nargs_in_regs + i].Result.LiteralValue()))
				if i > 0 {
					out.Code.TextAppendSln(InstructionDereferenceAware(OP_PUSHQ, children_out[nargs_in_regs + i - 1].Result.LiteralValue()))
				}
			}

			for i := nargs_in_regs - 1; i >= 0; i-- {
				out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, children_out[i].Result.LiteralValue(), ArgumentRegisters[i]))
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
						case datatype.TYPE_INT64:
							variable_allc = StackAllocate(uint32(variable_type.ByteSize()))

							init_value := PrimitiveZeroValue(variable_type.(datatype.PrimitiveType))
							if len(ast.Children) > 2 {
								out.Code.Appendln(children_out[2].Code)
								init_value = children_out[2].Result
							}

							out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, init_value, variable_allc.Reference()))
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
			allocation, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(uint32(symbol.Type().ByteSize())).Reference()
			}

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_MOV, symbol.(Codegen_Symbol).Data.Reference(), allocation))
			out.Result = allocation
		}
		case front.AST_OP_SUM: {
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			left_value  := children_out[0].Result
			right_value := children_out[1].Result

			out.Code.TextAppendSln(InstructionDereferenceAware(OP_ADD, right_value, left_value))

			switch right_value.(type) {
				case Register: right_value.(Register).Free()
			}

			out.Result = left_value
		}
	}

	return out
}
