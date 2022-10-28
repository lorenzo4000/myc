package codegen

import (
	"mycgo/front"
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
			out.Code.TextAppendSln(Instruction(PSOP_GLOBAL, name))
			out.Code.TextAppendSln(name.Text() + ":")
			out.Code.Appendln(children_out[1].Code)

		case front.AST_FUNCTION_DEFINITION_BODY:
			out.Code.TextAppendSln(Instruction(OP_PUSH, REGISTER_RBP))
			out.Code.TextAppendSln(Instruction(OP_MOV, REGISTER_RSP, REGISTER_RBP))

			if CurrentStackSize > 0 {
				// allocate used stack
				out.Code.TextAppendSln(Instruction(OP_SUB, Asm_Int_Literal{int64(CurrentStackSize), 10}, REGISTER_RSP))
			}

			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}

			// deallocate used stack
			out.Code.TextAppendSln(Instruction(OP_MOV, REGISTER_RBP, REGISTER_RSP))
			out.Code.TextAppendSln(Instruction(OP_POP, REGISTER_RBP))
			CurrentStackSize = 0

			out.Code.TextAppendSln(Instruction(OP_RET))

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
						allocation = StackAllocate(8)
					}
					out.Code.TextAppendSln(Instruction(OP_MOV, Asm_Int_Literal{ast.Data[0].Int_value, 10}, allocation))
					
			}
			out.Result = allocation

		case front.AST_FUNCTION_CALL:
			out.Code.Append(children_out[1].Code)
			name := Label(ast.Children[0].Data[0].String_value)
			out.Code.TextAppendSln(Instruction(OP_CALL, name))

			var result Operand
			result, full := RegisterScratchAllocate()
			if full {
				result = StackAllocate(8)
			}
			out.Code.TextAppendS(Instruction(OP_MOV, REGISTER_RAX, result))
			
			out.Result = result

		case front.AST_FUNCTION_CALL_ARGS:
			for _, child_out := range(children_out) {
				out.Code.Appendln(child_out.Code)
			}
			for _, child_out := range(children_out) {
				var arg_alloc Operand
				arg_alloc, full := RegisterArgumentAllocate()
				if full {
					arg_alloc = StackAllocate(8)
				}	

				out.Code.TextAppendSln(Instruction(OP_MOV, child_out.Result.LiteralValue(), arg_alloc))
			}
			RegisterArgumentFreeAll()
	}

	return out
}
