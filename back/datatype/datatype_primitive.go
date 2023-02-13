package datatype

type PrimitiveType uint8

const (
	TYPE_UNDEFINED = PrimitiveType(iota)
	TYPE_NONE = PrimitiveType(iota)

	TYPE_INT64  = PrimitiveType(iota)
	TYPE_INT32  = PrimitiveType(iota)
	TYPE_INT16  = PrimitiveType(iota)
	TYPE_INT8  = PrimitiveType(iota)

	TYPE_BOOL  = PrimitiveType(iota)

	N_PRIMITIVE_TYPES = int(iota)
)

func (typ PrimitiveType) Name() string {
	switch typ {
		case TYPE_INT64: return "int64"
		case TYPE_INT32: return "int32"
		case TYPE_INT16: return "int16"
		case TYPE_INT8: return "int8"

		case TYPE_BOOL: return "bool"
	}

	return ""
}

func (typ PrimitiveType) BitSize() byte {
	switch typ {
		case TYPE_INT64: return 64
		case TYPE_INT32: return 32
		case TYPE_INT16: return 16
		case TYPE_INT8: return 8
		
		case TYPE_BOOL: return 8
	}
	
	return 0
}

func (typ PrimitiveType) ByteSize() byte {
	return typ.BitSize() / 8
}

func (typ PrimitiveType) IsIntegerType() bool {
	return typ == TYPE_INT64 ||
		   typ == TYPE_INT32 ||
		   typ == TYPE_INT16 ||
		   typ == TYPE_INT8
}

func PrimitiveTypeFromName(typ string) PrimitiveType {
	for i := 0; i < N_PRIMITIVE_TYPES; i++ {
		if PrimitiveType(i).Name() == typ {
			return PrimitiveType(i)
		}
	}

	return TYPE_UNDEFINED
}
