package codegen

type Op byte

const (
	OP_MOV  = Op(iota)
	OP_CALL = Op(iota)
	OP_RET = Op(iota)
	
	OP_ADD = Op(iota)
	OP_SUB = Op(iota)
	
	OP_PUSH = Op(iota)
	OP_POP = Op(iota)

	// gnu pseudo-ops
	PSOP_GLOBAL = Op(iota)

	N_OP = iota
)

var op_str = [N_OP]string {
	"mov",
	"call",
	"ret",
	
	"add",
	"sub",
	
	"push",
	"pop",
	
	// gnu pseudo-ops
	".global",
}

type Operand interface {
	Text() string
	LiteralValue() Operand // ex. '58'.LiteralValue() = '$58'
	Dereference() Operand  // ex. 'label_x'.Dereference() = '(label_x)'
}

func Instruction(op Op, oprnds ...Operand) string {
	instruction := op_str[op]

	for i, oprnd := range(oprnds) {
		instruction += " " + oprnd.Text()
		if i + 1 < len(oprnds) {
			instruction += ","
		}
	}

	return instruction
}

func InstructionDereferenceAware(op Op, oprnds ...Operand) string {
	cnt := 0
	for _, oprnd := range oprnds {
		switch oprnd.(type) {
			case Memory_Reference: cnt++
		}
	}

	
	if cnt >= 2 {
		var instruction string = ""
		allocation, full := RegisterScratchAllocate()

		if full {
			instruction += Instruction(OP_PUSH, REGISTER_RBX) + "\n"
			allocation  = REGISTER_RBX
		}

		instruction += Instruction(OP_MOV, oprnds[0], allocation) + "\n"
		oprnds[0] = allocation
	    instruction += Instruction(op, oprnds...) + "\n"

		if full {
			instruction  += Instruction(OP_POP, REGISTER_RBX) + "\n"
		}
		return instruction
	}	
	return Instruction(op, oprnds...)
}
