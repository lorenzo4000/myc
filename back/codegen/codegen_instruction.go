package codegen

type Op byte

const (
	OP_MOV  = Op(iota)
	OP_CALL = Op(iota)
	OP_RET = Op(iota)
	
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
