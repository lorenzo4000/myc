package codegen

type Op uint32

const (
	O_SUFFIXABLE = Op(1 << 31)
)

const (
	OP_MOV  = Op(iota) | O_SUFFIXABLE
	OP_MOVQ  = Op(iota)
	OP_MOVL  = Op(iota)

	OP_CALL = Op(iota)
	OP_RET = Op(iota)
	OP_JMP = Op(iota)
	OP_JZ = Op(iota)
	
	OP_ADD = Op(iota) | O_SUFFIXABLE
	OP_SUB = Op(iota) | O_SUFFIXABLE
	
	OP_AND = Op(iota) | O_SUFFIXABLE
	OP_XOR = Op(iota) | O_SUFFIXABLE
	
	OP_CMP = Op(iota) | O_SUFFIXABLE
	
	OP_SETG = Op(iota)
	OP_SETL = Op(iota)
	OP_SETGE = Op(iota)
	OP_SETLE = Op(iota)

	OP_PUSH = Op(iota) | O_SUFFIXABLE
	OP_PUSHQ = Op(iota)
	OP_POP = Op(iota) | O_SUFFIXABLE

	// gnu pseudo-ops
	PSOP_GLOBAL = Op(iota)

	N_OP = iota
)

func (op Op) Str() string {
	switch op {
		case OP_MOV  : return "mov"
		case OP_MOVQ : return "movq"
		case OP_MOVL : return "movl"
	 		
		case OP_CALL : return "call"
		case OP_RET  : return "ret"
		case OP_JMP  : return "jmp"
		case OP_JZ   : return "jz"
		 			
		case OP_ADD  : return "add"
		case OP_SUB  : return "sub"

		case OP_AND  : return "and"
		case OP_XOR  : return "xor"

		case OP_CMP  : return "cmp"

		case OP_SETG : return "setg"
		case OP_SETL : return "setl"
		case OP_SETGE: return "setge"
		case OP_SETLE: return "setle"
		
		case OP_PUSH : return "push"
		case OP_PUSHQ: return "pushq"
		case OP_POP  : return "pop"
		
		// gnu pseudo-ops
		case PSOP_GLOBAL : return ".global"
	}
	return ""
}

type Op_Suffix byte

const (
	OPS_BYTE = Op_Suffix('b')
	OPS_WIDE = Op_Suffix('w')
	OPS_LONG = Op_Suffix('l')
	OPS_QUAD = Op_Suffix('q')
)

func OpSuffixFromSize(size uint32) Op_Suffix {
	switch size {
		case 8:  return OPS_BYTE
		case 16: return OPS_WIDE
		case 32: return OPS_LONG
		case 64: return OPS_QUAD
	}
	return 0
}

func (op Op) StrWithSuffix(suffix Op_Suffix) string {
	if op & O_SUFFIXABLE != 0 {
		return op.Str() + string(suffix)
	}
	return ""
}


type Operand interface {
	Text() string
	LiteralValue() Operand // ex. '58'.LiteralValue() = '$58'
	Dereference() Operand  // ex. 'label_x'.Dereference() = '(label_x)'
}

func Instruction(op Op, oprnds ...Operand) string {
	instruction := op.Str()

	for i, oprnd := range(oprnds) {
		instruction += " " + oprnd.Text()
		if i + 1 < len(oprnds) {
			instruction += ","
		}
	}

	return instruction
}

func InstructionSized(op Op, size byte, oprnds ...Operand) string {
	operand_suffix := OpSuffixFromSize(uint32(size))
	instruction := op.StrWithSuffix(operand_suffix)

	for i, oprnd := range(oprnds) {
		instruction += " " + oprnd.Text()
		if i + 1 < len(oprnds) {
			instruction += ","
		}
	}

	return instruction
}
func InstructionDereferenceAware(op Op, size byte, oprnds ...Operand) string {
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
			allocation   = REGISTER_RBX.GetSubRegister(uint64(size))
			instruction += InstructionSized(OP_PUSH, 64, REGISTER_RBX.GetSubRegister(uint64(64))) + "\n"
		} else {
			allocation = reg.GetSubRegister(uint64(size))
		}

		instruction += InstructionSized(OP_MOV, size, oprnds[0], allocation) + "\n"
		oprnds[0] = allocation
	    instruction += InstructionSized(op, size, oprnds...) + "\n"

		if full {
			instruction  += InstructionSized(OP_POP, 64, REGISTER_RBX.GetSubRegister(uint64(64))) + "\n"
		}
		return instruction
	}	
	return InstructionSized(op, size, oprnds...)
}

