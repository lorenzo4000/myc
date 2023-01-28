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


// === GEN_* ===

func GEN_function_prologue() string {
	res := ""
	res += (Instruction("pushq", REGISTER_RBP.GetRegister(datatype.TYPE_INT64))) + "\n"
	res += (Instruction("movq", REGISTER_RSP.GetRegister(datatype.TYPE_INT64), REGISTER_RBP.GetRegister(datatype.TYPE_INT64))) + "\n"

	if CurrentReservedStack > 0 {
		// allocate used stack
		res += (Instruction("subq", Asm_Int_Literal{int64(CurrentReservedStack), 10}, REGISTER_RSP.GetRegister(datatype.TYPE_INT64))) + "\n"
	}

	return res
}

func GEN_function_epilogue() string {
	res := ""

	// deallocate used stack
	res += Instruction("movq", REGISTER_RBP.GetRegister(datatype.TYPE_INT64), REGISTER_RSP.GetRegister(datatype.TYPE_INT64)) + "\n"
	res += Instruction("popq", REGISTER_RBP.GetRegister(datatype.TYPE_INT64)) + "\n"
	CurrentReservedStack = 0
	CurrentAllocatedStack = 0

	res += Instruction("ret") + "\n"

	return res
}

// v -> r
func GEN_load(v Operand, r Operand) string {
	res := ""

	switch v.Type().BitSize() {
		case 64:  res += Instruction("movq", v, r)
		case 32:  res += Instruction("movl", v, r)
		case 16:  res += Instruction("movw", v, r)
		case 8:   res += Instruction("movb", v, r)
		default: return ""
	}

	res += "\n"

	return res
}

func GEN_jump(a Operand) string {
	res := ""

	res += Instruction("jmp", a) + "\n"

	return res
}

func GEN_function_params(args []Operand) string {
	res := ""

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
		
		res += GEN_load(parameter, arg_v) + "\n"
	}

	return res
}
func GEN_callargs(args []Operand) string {
	res := ""

	nargs := len(args)
	nargs_in_stack := nargs - len(ArgumentRegisters)
	if nargs_in_stack < 0 {
		nargs_in_stack = 0
	}
	nargs_in_regs :=  nargs - nargs_in_stack

	if nargs_in_stack % 2 != 0 {
		res += Instruction("pushq", Asm_Int_Literal{0, 10}) + "\n"
	}
	for i := nargs_in_stack - 1; i >= 0; i-=2 {
		res += Instruction("pushq", args[nargs_in_regs + i].LiteralValue()) + "\n"
		if i > 0 {
			res += Instruction("pushq", args[nargs_in_regs + i - 1].LiteralValue()) + "\n"
		}
	}

	for i := nargs_in_regs - 1; i >= 0; i-- {
		reg := ArgumentRegisters[i].GetRegister(datatype.TYPE_INT64)
		res += Instruction("movq", args[i].LiteralValue(), reg) + "\n"
	}
	StackReserveBytes(uint32(nargs_in_stack * 8))

	return res
}

func GEN_call(f *front.Ast_Node) string {
	res := ""
	name := Label(f.Children[0].Data[0].String_value)

	res += Instruction("call", name) + "\n"

	nargs := len(f.Children[1].Children)
	nargs_in_stack := nargs - len(ArgumentRegisters)
	if nargs_in_stack > 0 {
		reserved_stack := uint32(nargs_in_stack * 8)
		if reserved_stack % 16 != 0 {
			reserved_stack += 16 - (reserved_stack & 0xF)
		}
		
		res += Instruction("addq", Asm_Int_Literal{int64(reserved_stack), 10}, REGISTER_RSP.GetRegister(datatype.TYPE_INT64)) + "\n"
		for i := 0; i < nargs_in_stack; i+=2 {
			StackUnreserve16Bytes()
		}
	}

	return res
}

func GEN_while(c Codegen_Out, b Codegen_Out) string {
	res := ""

	while_label := LabelGen()
	while_exit_label := LabelGen()
	res += while_label.Text() + ":\n"

	res += c.Code.Text + "\n"

	res += Instruction("and", c.Result, c.Result) + "\n"
	res += Instruction("jz", while_exit_label) + "\n"

	res += b.Code.Text + "\n"

	res += Instruction("jmp", while_label)
	res += while_exit_label.Text() + ":\n"

	return res
}

func GEN_if(c Codegen_Out, t Codegen_Out) (string, Operand) {
	res := ""
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

	res += c.Code.Text + "\n"
	res += Instruction("and", c.Result, c.Result) + "\n"
	res += Instruction("jz", if_exit_label) + "\n"

	res += t.Code.Text + "\n"

	if if_type != datatype.TYPE_NONE && t.Result != nil {
		res += GEN_load(t.Result, allocation) + "\n"
	}

	res += if_exit_label.Text() + ":\n"
	return res, allocation
}

func GEN_ifelse(c Codegen_Out, t Codegen_Out, f Codegen_Out) (string, Operand) {
	res := ""

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

	res += c.Code.Text + "\n"
	res += Instruction("and", c.Result, c.Result) + "\n"
	res += Instruction("jz", if_false_label) + "\n"

	res += t.Code.Text + "\n"

	if if_type != datatype.TYPE_NONE && t.Result != nil {
		res += GEN_load(t.Result, allocation) + "\n"
	}

	res += GEN_jump(if_exit_label) + "\n"
	res += if_false_label.Text() + ":\n"

	res += f.Code.Text + "\n"
	if if_type != datatype.TYPE_NONE && f.Result != nil {
		res += GEN_load(f.Result, allocation) + "\n"
	}

	res += if_exit_label.Text() + ":\n"

	return res, allocation
}

func GEN_binop(t front.Ast_Type, l Operand, r Operand) (string, Operand) {
	res := ""
	var allocation Operand
	
	data_size := l.Type().BitSize()

	switch t {
		case front.AST_OP_SUM: 
			switch data_size {
				case 64:  res += Instruction("addq", l, r)
				case 32:  res += Instruction("addl", l, r)
				case 16:  res += Instruction("addw", l, r)
				case 8:   res += Instruction("addb", l, r)
			}
			res += "\n"
			allocation = l
		case front.AST_OP_SUB: 
			switch data_size {
				case 64:  res += Instruction("subq", l, r)
				case 32:  res += Instruction("subl", l, r)
				case 16:  res += Instruction("subw", l, r)
				case 8:   res += Instruction("subb", l, r)
			}
			res += "\n"
			allocation = l
		case front.AST_OP_GRT: 
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			switch data_size {
				case 64:  res += Instruction("cmpq", l, r)
				case 32:  res += Instruction("cmpl", l, r)
				case 16:  res += Instruction("cmpw", l, r)
				case 8:   res += Instruction("cmpb", l, r)
			}

			res += "\n"

			res += Instruction("xorb", allocation, allocation) + "\n"
			res += Instruction("setg", allocation) + "\n"
		case front.AST_OP_LES: 
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			switch data_size {
				case 64:  res += Instruction("cmpq", l, r)
				case 32:  res += Instruction("cmpl", l, r)
				case 16:  res += Instruction("cmpw", l, r)
				case 8:   res += Instruction("cmpb", l, r)
			}

			res += "\n"

			res += Instruction("xorb", allocation, allocation) + "\n"
			res += Instruction("setl", allocation) + "\n"
		case front.AST_OP_GOE:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			switch data_size {
				case 64:  res += Instruction("cmpq", l, r)
				case 32:  res += Instruction("cmpl", l, r)
				case 16:  res += Instruction("cmpw", l, r)
				case 8:   res += Instruction("cmpb", l, r)
			}

			res += "\n"

			res += Instruction("xorb", allocation, allocation) + "\n"
			res += Instruction("setge", allocation) + "\n"
		case front.AST_OP_LOE:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			switch data_size {
				case 64:  res += Instruction("cmpq", l, r)
				case 32:  res += Instruction("cmpl", l, r)
				case 16:  res += Instruction("cmpw", l, r)
				case 8:   res += Instruction("cmpb", l, r)
			}

			res += "\n"

			res += Instruction("xorb", allocation, allocation) + "\n"
			res += Instruction("setle", allocation) + "\n"
		case front.AST_OP_EQU:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			switch data_size {
				case 64:  res += Instruction("cmpq", l, r)
				case 32:  res += Instruction("cmpl", l, r)
				case 16:  res += Instruction("cmpw", l, r)
				case 8:   res += Instruction("cmpb", l, r)
			}

			res += "\n"

			res += Instruction("xorb", allocation, allocation) + "\n"
			res += Instruction("sete", allocation) + "\n"
		case front.AST_OP_NEQ:
			var full bool
			reg, full := RegisterScratchAllocate()
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg.GetRegister(datatype.TYPE_BOOL)
			}
			
			switch data_size {
				case 64:  res += Instruction("cmpq", l, r)
				case 32:  res += Instruction("cmpl", l, r)
				case 16:  res += Instruction("cmpw", l, r)
				case 8:   res += Instruction("cmpb", l, r)
			}

			res += "\n"

			res += Instruction("xorb", allocation, allocation) + "\n"
			res += Instruction("setne", allocation) + "\n"
	}

	switch r.(type) {
		case Register: r.(Register).Free()
	}

	return res, allocation
}
