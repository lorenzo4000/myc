package codegen

import (
	"strconv"
	"mycgo/back/datatype"
	"mycgo/front"
)

// === Register ===

const (
	REGISTER_RAX = RegisterClass(iota) 
	REGISTER_RDI = RegisterClass(iota)  
	REGISTER_RSI = RegisterClass(iota)  
	REGISTER_RDX = RegisterClass(iota)
	REGISTER_RCX = RegisterClass(iota)
	REGISTER_R8 =  RegisterClass(iota)
	REGISTER_R9 =  RegisterClass(iota)
	REGISTER_R10 =  RegisterClass(iota)
	REGISTER_R11 =  RegisterClass(iota)
	REGISTER_RSP = RegisterClass(iota)  
	REGISTER_RBX = RegisterClass(iota)
	REGISTER_RBP = RegisterClass(iota)  
	REGISTER_R12 =  RegisterClass(iota)
	REGISTER_R13 =  RegisterClass(iota)
	REGISTER_R14 =  RegisterClass(iota)
	REGISTER_R15 =  RegisterClass(iota)
	REGISTER_RIP = RegisterClass(iota)
	REGISTER_RFLAGS = RegisterClass(iota)

	N_REGISTERS = iota
)

const MAX_SUB_REGISTERS byte = 5
var RegistersStr = [N_REGISTERS][MAX_SUB_REGISTERS]string {
	{"%rax", "%eax", "%ax", "%al", "%ah"},
	{"%rdi", "%edi", "%di", "%dil"},
	{"%rsi", "%esi", "%si", "%sil"},
	{"%rdx", "%edx", "%dx", "%dl", "%dh"},
	{"%rcx", "%ecx", "%cx", "%cl", "%ch"},
	{"%r8", "%r8d", "%r8w", "%r8b"},
	{"%r9", "%r9d", "%r9w", "%r9b"},
	{"%r10", "%r10d", "%r10w", "%r10b"},
	{"%r11", "%r11d", "%r11w", "%r11b"},
	{"%rsp", "%esp", "%sp", "%spl"},
	{"%rbx", "%ebx", "%bx", "%bl", "%bh"},
	{"%rbp", "%ebp", "%bp", "%bpl"},
	{"%r12", "%r12d", "%r12w", "%r12b"},
	{"%r13", "%r13d", "%r13w", "%r13b"},
	{"%r14", "%r14d", "%r14w", "%r14b"},
	{"%r15", "%r15d", "%r15w", "%r15b"},
	{"%rip", "%eip", "%ip"},
	{"%rflags", "%eflags", "%flags"},
}
var RegistersSize = [N_REGISTERS][MAX_SUB_REGISTERS]uint64 {
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16}, 
	{64, 32, 16},
}

var ScratchRegisters = [5]RegisterClass {
	REGISTER_RBX,
	REGISTER_R12,
	REGISTER_R13,
	REGISTER_R14,
	REGISTER_R15,
}

var ArgumentRegisters = [6]RegisterClass {
	REGISTER_RDI,
	REGISTER_RSI,
	REGISTER_RDX,
	REGISTER_RCX,
	REGISTER_R8 ,
    REGISTER_R9 ,
}

const RETURN_REGISTER = REGISTER_RAX

// === Memory Reference ===

type Index_Coeff uint8

const (
	ASMREF_INDEXCOEFF_1 = Index_Coeff(1)
	ASMREF_INDEXCOEFF_2 = Index_Coeff(2)
	ASMREF_INDEXCOEFF_4 = Index_Coeff(4)
	ASMREF_INDEXCOEFF_8 = Index_Coeff(8)
)


type Memory_Reference struct {
	DataType datatype.DataType
	Offset int64
	Start Operand
	Index Operand
	IndexCoefficient Index_Coeff
}

func (mem Memory_Reference) Type() datatype.DataType {
	return mem.DataType
}

func (mem Memory_Reference) Text() string {
	if mem.Start == nil {
		return ""
	}
	if mem.Index == nil {
		return  strconv.FormatInt(mem.Offset, 10)           + "("  +
				mem.Start.Text()    		      		    + ", " +
				strconv.FormatInt(int64(mem.IndexCoefficient), 10) + ")"
	}
	return  strconv.FormatInt(mem.Offset, 10)           + "("  +
			mem.Start.(Register).Text()    		      		    + ", " +
			mem.Index.(Register).Text() 				            + ", "  +
			strconv.FormatInt(int64(mem.IndexCoefficient), 10) + ")"
}

func (mem Memory_Reference) LiteralValue() Operand {
	return mem
}
func (mem Memory_Reference) Dereference() Operand {
	return mem
}

// === Stack ===

type Stack_Region struct {
	rbp_offset uint32
	datatype datatype.DataType
}

var CurrentReservedStack uint32 = 0
func StackReserveBytes(bytes uint32) {
	if bytes % 16 != 0 {
		bytes += 16 - (bytes & 0xF)
	}
	CurrentReservedStack += bytes
}
func StackReserve16Bytes() {
	CurrentReservedStack += 0x10
}
func StackUnreserve16Bytes() bool {
	if CurrentReservedStack < 0x10 {
		return false
	}
	CurrentReservedStack -= 0x10
	return true
}
func StackUnreserveAll() {
	CurrentReservedStack = 0
}

var CurrentAllocatedStack uint32 = 0
func StackAllocate(_type datatype.DataType) Stack_Region {
	size := uint32(_type.ByteSize())

	for CurrentAllocatedStack + size > CurrentReservedStack {
		StackReserve16Bytes()
	}
	CurrentAllocatedStack += size

	return Stack_Region{CurrentAllocatedStack, _type}
}

func (stack Stack_Region) Reference() Memory_Reference {
	return Memory_Reference{stack.datatype, -1 * int64(stack.rbp_offset), REGISTER_RBP.GetRegister(datatype.TYPE_INT64), nil, ASMREF_INDEXCOEFF_1}
}

// === Instruction ===

func ii(op string, oprnds ...Operand) string {
	cnt := 0
	for _, oprnd := range oprnds {
		switch oprnd.(type) {
			case Memory_Reference: cnt++
		}
	}

	if cnt >= 2 {
		var instruction string = ""
		var allocation Operand

		reg, full := RegisterScratchAllocate()
		if full {
			allocation   = REGISTER_RBX.GetRegister(oprnds[0].Type())
			instruction += Instruction("pushq", REGISTER_RBX.GetRegister(datatype.TYPE_INT64)) + "\n"
		} else {
			allocation   = reg.GetRegister(oprnds[0].Type())
		}

		instruction += GEN_move(oprnds[0], allocation).Code.Text + "\n"
		oprnds[0] = allocation
	    instruction += Instruction(op, oprnds...) + "\n"

		if full {
			instruction  += Instruction("popq", REGISTER_RBX.GetRegister(datatype.TYPE_INT64)) + "\n"
		} else {
			reg.Free()
		}
		return instruction
	}	

	return Instruction(op, oprnds...)
}

// === GEN_* ===

func GEN_function_prologue() Codegen_Out {
	res := Codegen_Out{}
	res.Code.TextAppendSln((ii("pushq", REGISTER_RBP.GetRegister(datatype.TYPE_INT64))) )
	res.Code.TextAppendSln((ii("movq", REGISTER_RSP.GetRegister(datatype.TYPE_INT64), REGISTER_RBP.GetRegister(datatype.TYPE_INT64))) )

	if CurrentReservedStack > 0 {
		// allocate used stack
		res.Code.TextAppendSln((ii("subq", Asm_Int_Literal{datatype.TYPE_INT64, int64(CurrentReservedStack), 10}, REGISTER_RSP.GetRegister(datatype.TYPE_INT64))) )
	}

	return res
}

func GEN_function_epilogue() Codegen_Out {
	res := Codegen_Out{}

	// deallocate used stack
	res.Code.TextAppendSln(ii("movq", REGISTER_RBP.GetRegister(datatype.TYPE_INT64), REGISTER_RSP.GetRegister(datatype.TYPE_INT64)) )
	res.Code.TextAppendSln(ii("popq", REGISTER_RBP.GetRegister(datatype.TYPE_INT64)) )
	CurrentReservedStack = 0
	CurrentAllocatedStack = 0

	res.Code.TextAppendSln(ii("ret") )

	return res
}

// value -> register
func GEN_load(v Operand, r Register) Codegen_Out {
	res := Codegen_Out{}

	switch v.Type().BitSize() {
		case 64:  
			switch v.(type) {
				case Asm_Int_Literal: res.Code.TextAppendSln(ii("movabsq", v, r))
				default:			  res.Code.TextAppendSln(ii("movq", v, r))
			}
		case 32:  res.Code.TextAppendSln(ii("movl", v, r))
		case 16:  res.Code.TextAppendSln(ii("movw", v, r))
		case 8:   res.Code.TextAppendSln(ii("movb", v, r))
		default: return res
	}

	return res
}

// value -> memory
func GEN_store(v Operand, m Memory_Reference) Codegen_Out {
	res := Codegen_Out{}

	switch v.Type().BitSize() {
		case 64:  
			switch v.(type) {
				case Asm_Int_Literal: 
					res.Code.TextAppendSln(Instruction("pushq", REGISTER_RBX.GetRegister(datatype.TYPE_INT64)) + "\n")

					res.Code.Appendln(GEN_load(v, REGISTER_RBX.GetRegister(datatype.TYPE_INT64)).Code)
					res.Code.TextAppendSln(ii("movq", REGISTER_RBX.GetRegister(datatype.TYPE_INT64), m))

					res.Code.TextAppendSln(Instruction("popq", REGISTER_RBX.GetRegister(datatype.TYPE_INT64)) + "\n")
				default: 
					res.Code.TextAppendSln(ii("movq", v, m))
			}
		case 32:  res.Code.TextAppendSln(ii("movl", v, m))
		case 16:  res.Code.TextAppendSln(ii("movw", v, m))
		case 8:   res.Code.TextAppendSln(ii("movb", v, m))
		default: return res
	}

	return res
}

// generic move
// value -> reg/mem
func GEN_move(s Operand, d Operand) Codegen_Out {
	switch d.(type) {
		case Register: 		   return GEN_load(s, d.(Register))
		case Memory_Reference: return GEN_store(s, d.(Memory_Reference))
	}
	return Codegen_Out{}
}

func GEN_jump(a Operand) Codegen_Out {
	res := Codegen_Out{}

	res.Code.TextAppendSln(ii("jmp", a) )

	return res
}

func GEN_function_params(args []Operand) Codegen_Out {
	res := Codegen_Out{}

	for arg, arg_v := range(args) {
		var parameter Operand
		typ := arg_v.Type()

		if arg >= 6 {
			parameter = Memory_Reference{
				datatype.TYPE_INT64,
				int64(16 + ((arg - 6) * 8)),
				REGISTER_RBP.GetRegister(datatype.TYPE_INT64),
				nil,
				ASMREF_INDEXCOEFF_1,
			}	
		} else {
			reg := ArgumentRegisters[arg]
			parameter = reg.GetRegister(typ)
		}
		
		res.Code.Appendln(GEN_move(parameter, arg_v).Code)
	}

	return res
}
func GEN_callargs(args []Operand) Codegen_Out {
	res := Codegen_Out{}

	nargs := len(args)
	nargs_in_stack := nargs - len(ArgumentRegisters)
	if nargs_in_stack < 0 {
		nargs_in_stack = 0
	}
	nargs_in_regs :=  nargs - nargs_in_stack

	if nargs_in_stack % 2 != 0 {
		res.Code.TextAppendSln(ii("pushq", Asm_Int_Literal{datatype.TYPE_INT64, 0, 10}) )
	}
	for i := nargs_in_stack - 1; i >= 0; i-=2 {
		res.Code.TextAppendSln(ii("pushq", args[nargs_in_regs + i].LiteralValue()) )
		if i > 0 {
			res.Code.TextAppendSln(ii("pushq", args[nargs_in_regs + i - 1].LiteralValue()) )
		}
	}

	for i := nargs_in_regs - 1; i >= 0; i-- {
		var arg Operand
		switch args[i].(type) {
			case Label: 
				arg = args[i].LiteralValue()
			default:
				arg = args[i]
		}
		reg := ArgumentRegisters[i].GetRegister(arg.Type())
		res.Code.Appendln(GEN_move(arg, reg).Code)
	}
	StackReserveBytes(uint32(nargs_in_stack * 8))

	return res
}

func GEN_call(f *front.Ast_Node) Codegen_Out {
	res := Codegen_Out{}
	name := LabelGet(f.Children[0].Data[0].String_value)

	res.Code.TextAppendSln(ii("call", name) )

	nargs := len(f.Children[1].Children)
	nargs_in_stack := nargs - len(ArgumentRegisters)
	if nargs_in_stack > 0 {
		reserved_stack := uint32(nargs_in_stack * 8)
		if reserved_stack % 16 != 0 {
			reserved_stack += 16 - (reserved_stack & 0xF)
		}
		
		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_INT64, int64(reserved_stack), 10}, REGISTER_RSP.GetRegister(datatype.TYPE_INT64)) )
		for i := 0; i < nargs_in_stack; i+=2 {
			StackUnreserve16Bytes()
		}
	}

	return res
}

func GEN_for(i Codegen_Out, c Codegen_Out, e Codegen_Out, b Codegen_Out) Codegen_Out {
	res := Codegen_Out{}
	
	res.Code.Appendln(i.Code)

	for_label := LabelGen()
	for_exit_label := LabelGen()
	res.Code.TextAppendSln(for_label.Text() + ":")

	res.Code.Appendln(c.Code)
	
	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", for_exit_label) )

	res.Code.Appendln(b.Code)

	res.Code.Appendln(e.Code)
	
	res.Code.TextAppendSln(ii("jmp", for_label) )

	res.Code.TextAppendSln(for_exit_label.Text() + ":")
	return res
}

func GEN_while(c Codegen_Out, b Codegen_Out) Codegen_Out {
	res := Codegen_Out{}

	while_label := LabelGen()
	while_exit_label := LabelGen()
	res.Code.TextAppendSln(while_label.Text() + ":")

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", while_exit_label) )

	res.Code.Appendln(b.Code)

	res.Code.TextAppendSln(ii("jmp", while_label) )
	res.Code.TextAppendSln(while_exit_label.Text() + ":")
	
	return res
}

func GEN_if(c Codegen_Out, t Codegen_Out) Codegen_Out {
	res := Codegen_Out{}
	if_exit_label := LabelGen()
	

	if_type := datatype.DataType(datatype.TYPE_NONE)

	if t.Result != nil {
		if_type = t.Result.Type()
	}

	var allocation Operand
	if if_type != datatype.TYPE_NONE {
		reg, full := RegisterScratchAllocate()
		if full {
			allocation = StackAllocate(if_type).Reference()
		} else {
			allocation = reg.GetRegister(if_type)
		}
	}

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", if_exit_label) )

	res.Code.Appendln(t.Code)

	if if_type != datatype.TYPE_NONE && t.Result != nil {
		res.Code.Appendln(GEN_move(t.Result, allocation).Code)
	}

	res.Code.TextAppendSln(if_exit_label.Text() + ":")
	res.Result = allocation
	return res
}

func GEN_ifelse(c Codegen_Out, t Codegen_Out, f Codegen_Out) Codegen_Out {
	res := Codegen_Out{}

	if_false_label := LabelGen()
	if_exit_label := LabelGen()
	
	if_type := datatype.DataType(datatype.TYPE_NONE)

	if t.Result != nil {
		if_type = t.Result.Type()
	}


	var allocation Operand
	if if_type != datatype.TYPE_NONE {
		reg, full := RegisterScratchAllocate()
		if full {
			allocation = StackAllocate(if_type).Reference()
		} else {
			allocation = reg.GetRegister(if_type)
		}
	}

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", if_false_label) )

	res.Code.Appendln(t.Code)

	if if_type != datatype.TYPE_NONE && t.Result != nil {
		res.Code.Appendln(GEN_move(t.Result, allocation).Code)
	}

	res.Code.Appendln(GEN_jump(if_exit_label).Code)
	res.Code.TextAppendSln(if_false_label.Text() + ":")

	res.Code.Appendln(f.Code)

	if if_type != datatype.TYPE_NONE && f.Result != nil {
		res.Code.Appendln(GEN_move(f.Result, allocation).Code)
	}

	res.Code.TextAppendSln(if_exit_label.Text() + ":")

	res.Result = allocation
	return res
}

func GEN_uniop(t front.Ast_Type, v Operand) Codegen_Out {
	res := Codegen_Out{}
	var allocation Operand
	
	data_size := v.Type().BitSize()

	switch t {
		case front.AST_OP_NEG:
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("negq", v))
				case 32:  res.Code.TextAppendSln(ii("negl", v))
				case 16:  res.Code.TextAppendSln(ii("negw", v))
				case 8:   res.Code.TextAppendSln(ii("negb", v))
			}
			res.Code.TextAppendSln("\n")
			allocation = v
		case front.AST_OP_NOT:
			res.Code.TextAppendSln(
				ii(
					"xorb",
					Asm_Int_Literal{datatype.TYPE_BOOL, 1, 10},
					v,
				),
			)
			allocation = v
	}
	
	res.Result = allocation
	return res
}

func GEN_binop(t front.Ast_Type, l Operand, r Operand) Codegen_Out {
	res := Codegen_Out{}
	var allocation Operand
	
	data_size := l.Type().BitSize()

	switch t {
		case front.AST_OP_SUM: 
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("addq", r, l))
				case 32:  res.Code.TextAppendSln(ii("addl", r, l))
				case 16:  res.Code.TextAppendSln(ii("addw", r, l))
				case 8:   res.Code.TextAppendSln(ii("addb", r, l))
			}
			res.Code.TextAppendSln("\n")
			allocation = l
		case front.AST_OP_SUB: 
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("subq", r, l))
				case 32:  res.Code.TextAppendSln(ii("subl", r, l))
				case 16:  res.Code.TextAppendSln(ii("subw", r, l))
				case 8:   res.Code.TextAppendSln(ii("subb", r, l))
			}
			res.Code.TextAppendSln("\n")
			allocation = l
		case front.AST_OP_MUL:
			rax := REGISTER_RAX.GetRegister(l.Type())

			res.Code.Appendln(GEN_load(l, rax).Code)
			switch r.Type().BitSize() {
				case 64:  res.Code.TextAppendSln(ii("imulq", r))
				case 32:  res.Code.TextAppendSln(ii("imull", r))
				case 16:  res.Code.TextAppendSln(ii("imulw", r))
				case 8:   res.Code.TextAppendSln(ii("imulb", r))
			}
			res.Code.Appendln(GEN_move(rax, l).Code)

			allocation = l
		case front.AST_OP_DIV:
			rax := REGISTER_RAX.GetRegister(l.Type())
			rdx := REGISTER_RDX.GetRegister(datatype.TYPE_INT64)

			res.Code.TextAppendSln(ii("xorq", rdx, rdx))

			res.Code.Appendln(GEN_load(l, rax).Code)
			switch r.Type().BitSize() {
				case 64:  res.Code.TextAppendSln(ii("idivq", r))
				case 32:  res.Code.TextAppendSln(ii("idivl", r))
				case 16:  res.Code.TextAppendSln(ii("idivw", r))
				case 8:   res.Code.TextAppendSln(ii("idivb", r))
			}
			res.Code.Appendln(GEN_move(rax, l).Code)

			allocation = l
		case front.AST_OP_MOD:
			rax := REGISTER_RAX.GetRegister(l.Type())
			rdx := REGISTER_RDX.GetRegister(datatype.TYPE_INT64)

			res.Code.TextAppendSln(ii("xorq", rdx, rdx))

			res.Code.Appendln(GEN_load(l, rax).Code)
			switch r.Type().BitSize() {
				case 64:  res.Code.TextAppendSln(ii("idivq", r))
				case 32:  res.Code.TextAppendSln(ii("idivl", r))
				case 16:  res.Code.TextAppendSln(ii("idivw", r))
				case 8:   res.Code.TextAppendSln(ii("idivb", r))
			}
			res.Code.Appendln(GEN_move(rdx, l).Code)

			allocation = l
		case front.AST_OP_GRT: 
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln("\n")

			res.Code.TextAppendSln(ii("setg", allocation) )
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_LES: 
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln("\n")

			res.Code.TextAppendSln(ii("setl", allocation) )
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_GOE:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln("\n")

			res.Code.TextAppendSln(ii("setge", allocation) )
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_LOE:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln("\n")

			res.Code.TextAppendSln(ii("setle", allocation) )
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_EQU:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln("\n")

			res.Code.TextAppendSln(ii("sete", allocation) )
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_NEQ:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln("\n")

			res.Code.TextAppendSln(ii("setne", allocation) )
			
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_AND:
			res.Code.TextAppendSln(ii("andb", r, l))

			allocation = l
		case front.AST_OP_OR:
			res.Code.TextAppendSln(ii("orb", r, l))

			allocation = l
	}

	switch r.(type) {
		case Register: r.(Register).Free()
	}

	res.Result = allocation
	return res
}
