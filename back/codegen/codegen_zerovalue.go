package codegen

import (
	"mycgo/back/datatype"
)


func PrimitiveZeroValue(typ datatype.PrimitiveType) Operand {
	switch typ {
		case datatype.TYPE_INT64: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_INT32: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_INT16: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_INT8: return Operand(Asm_Int_Literal{typ, 0, 10})
		
		case datatype.TYPE_UINT64: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_UINT32: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_UINT16: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_UINT8: return Operand(Asm_Int_Literal{typ, 0, 10})
		
		case datatype.TYPE_F64: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_F32: return Operand(Asm_Int_Literal{typ, 0, 10})

		case datatype.TYPE_BOOL: return Operand(Asm_Int_Literal{typ, 0, 10})
		case datatype.TYPE_NULL: return Operand(Asm_Int_Literal{typ, 0, 10})
	}
	return nil
}
