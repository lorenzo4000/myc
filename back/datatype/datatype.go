package datatype

type DataType interface {
	Name() string
	BitSize() byte
	ByteSize() byte
}

func TypeFromName(type_name string) DataType {
	if len(type_name) <= 0 {
		return nil
	}

	if type_name[0] == '*' {
		pointed_type := TypeFromName(type_name[1:])
		return PointerType{pointed_type}
	}

	 return PrimitiveTypeFromName(type_name)
}
