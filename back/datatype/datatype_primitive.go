package datatype

type PrimitiveType int8

const (
	TYPE_UNDEFINED = PrimitiveType(-1)

	TYPE_INT64 = PrimitiveType(iota)

	N_PRIMITIVE_TYPES = int(iota)
)

func (typ PrimitiveType) Name() string {
	switch typ {
		case TYPE_INT64: return "int64"
	}

	return ""
}

func (typ PrimitiveType) BitSize() byte {
	switch typ {
		case TYPE_INT64: return 64
	}
	
	return 0
}

func PrimitiveTypeFromName(typ string) PrimitiveType {
	for i := 0; i < N_PRIMITIVE_TYPES; i++ {
		if PrimitiveType(i).Name() == typ {
			return PrimitiveType(i)
		}
	}

	return TYPE_UNDEFINED
}
