package datatype

type PointerType struct {
	Pointed_type DataType
}

func (typ PointerType) Name() string {
	return "*" + typ.Pointed_type.Name()
}

func (typ PointerType) BitSize() byte {
	return PTR_SIZE * 8
}

func (typ PointerType) ByteSize() byte {
	return PTR_SIZE
}
