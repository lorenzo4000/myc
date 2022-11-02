package codegen

import (
	"mycgo/back/datatype"
)


func PrimitiveZeroValue(typ datatype.PrimitiveType) Operand {
	switch typ {
		case datatype.TYPE_INT64: return Operand(Asm_Int_Literal{0, 10})
	}
	return Operand(Asm_Int_Literal{})
}

