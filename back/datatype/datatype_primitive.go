package datatype

type PrimitiveType uint8

const (
	TYPE_UNDEFINED = PrimitiveType(iota)
	TYPE_NONE = PrimitiveType(iota)

	TYPE_INT64  = PrimitiveType(iota)
	TYPE_INT32  = PrimitiveType(iota)
	TYPE_INT16  = PrimitiveType(iota)
	TYPE_INT8  = PrimitiveType(iota)
	TYPE_UINT64  = PrimitiveType(iota)
	TYPE_UINT32  = PrimitiveType(iota)
	TYPE_UINT16  = PrimitiveType(iota)
	TYPE_UINT8  = PrimitiveType(iota)
	TYPE_INT_LITERAL = PrimitiveType(iota)

	TYPE_BOOL  = PrimitiveType(iota)

	TYPE_F64  = PrimitiveType(iota)
	TYPE_F32  = PrimitiveType(iota)
	TYPE_FLOAT_LITERAL = PrimitiveType(iota)

	// works only as pointer and array! It's basically C's void type~ ^^;
	TYPE_GENERIC  = PrimitiveType(iota)

	N_PRIMITIVE_TYPES = int(iota)
)

func (typ PrimitiveType) Name() string {
	switch typ {
		case TYPE_INT64:  return "int64"
		case TYPE_INT32:  return "int32"
		case TYPE_INT16:  return "int16"
		case TYPE_INT8:   return "int8"

		case TYPE_UINT64: return "uint64"
		case TYPE_UINT32: return "uint32"
		case TYPE_UINT16: return "uint16"
		case TYPE_UINT8:  return "uint8"
	
		case TYPE_INT_LITERAL: return "int_literal"

		case TYPE_BOOL: return "bool"

		case TYPE_F64:  return "f64"
		case TYPE_F32:  return "f32"
		case TYPE_FLOAT_LITERAL:  return "float_literal"
		
		case TYPE_GENERIC: return "?"
	}

	return ""
}

func (typ PrimitiveType) BitSize() uint64 {
	switch typ {
		case TYPE_INT64: return 64
		case TYPE_INT32: return 32
		case TYPE_INT16: return 16
		case TYPE_INT8: return 8

		case TYPE_UINT64: return 64
		case TYPE_UINT32: return 32
		case TYPE_UINT16: return 16
		case TYPE_UINT8: return 8
		
		case TYPE_INT_LITERAL: return 64

		case TYPE_BOOL: return 8
		
		case TYPE_F64:  return 64
		case TYPE_F32:  return 32
		case TYPE_FLOAT_LITERAL:  return 64
		
		case TYPE_GENERIC: return 8
	}
	
	return 0
}

func (typ PrimitiveType) ByteSize() uint64 {
	return typ.BitSize() / 8
}

func IsIntegerType(typ DataType) bool {
	switch typ.(type) {
		case PrimitiveType:
			return typ == TYPE_INT64  ||
				   typ == TYPE_INT32  ||
				   typ == TYPE_INT16  ||
				   typ == TYPE_INT8   || 

				   typ == TYPE_UINT64 ||
				   typ == TYPE_UINT32 ||
				   typ == TYPE_UINT16 ||
				   typ == TYPE_UINT8  ||

				   typ == TYPE_INT_LITERAL
	}
	return false
}

func IsFloatType(typ DataType) bool {
	switch typ.(type) {
		case PrimitiveType:
			return typ == TYPE_F64  ||
				   typ == TYPE_F32  ||
				   
				   typ == TYPE_FLOAT_LITERAL
	}
	return false
}


// true = signed / false = unsigned
func (typ PrimitiveType) Sign() bool {
	return typ == TYPE_INT64  ||
		   typ == TYPE_INT32  ||
		   typ == TYPE_INT16  ||
		   typ == TYPE_INT8	  ||

		   typ == TYPE_F64	  ||
		   typ == TYPE_F32	  ||

		   typ == TYPE_INT_LITERAL ||
		   typ == TYPE_FLOAT_LITERAL 

}

func (typ PrimitiveType) Equals(t DataType) bool {
	if typ.Name() != t.Name() || typ.ByteSize() != t.ByteSize() {
		return false
	}
	
	switch t.(type) {
		case PrimitiveType: return true
	}
	return false
}

func PrimitiveTypeFromName(typ string) PrimitiveType {
	for i := 0; i < N_PRIMITIVE_TYPES; i++ {
		if PrimitiveType(i).Name() == typ {
			return PrimitiveType(i)
		}
	}

	return TYPE_UNDEFINED
}

