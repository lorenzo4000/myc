package datatype

type PrimitiveType int8

const (
	TYPE_UNDEFINED = PrimitiveType(-1)
	TYPE_NONE = PrimitiveType(iota)

	TYPE_INT64  = PrimitiveType(iota)
	TYPE_BOOL  = PrimitiveType(iota)

	N_PRIMITIVE_TYPES = int(iota)
)

func (typ PrimitiveType) Name() string {
	switch typ {
		case TYPE_INT64: return "int64"
		case TYPE_BOOL: return "bool"
	}

	return ""
}

func (typ PrimitiveType) BitSize() byte {
	switch typ {
		case TYPE_INT64: return 64
		case TYPE_BOOL: return 8
	}
	
	return 0
}

func (typ PrimitiveType) ByteSize() byte {
	return typ.BitSize() / 8
}

func PrimitiveTypeFromName(typ string) PrimitiveType {
	for i := 0; i < N_PRIMITIVE_TYPES; i++ {
		if PrimitiveType(i).Name() == typ {
			return PrimitiveType(i)
		}
	}

	return TYPE_UNDEFINED
}
