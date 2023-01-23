package codegen

import (
	"strconv"
	"mycgo/back/datatype"
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
