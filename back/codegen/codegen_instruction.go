package codegen

import (
	"mycgo/back/datatype"
)

type Operand interface {
	Type() datatype.DataType
	Text() string
	LiteralValue() Operand // ex. '58'.LiteralValue() = '$58'
	Dereference() Operand  // ex. 'label_x'.Dereference() = '(label_x)'
}

func Instruction(op string, oprnds ...Operand) string {
	instruction := op

	for i, oprnd := range(oprnds) {
		instruction += " " + oprnd.Text()
		if i + 1 < len(oprnds) {
			instruction += ","
		}
	}

	return instruction
}
