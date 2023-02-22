package datatype

type PointerType struct {
	Pointed_type DataType
}

func (typ PointerType) Name() string {
	return "*" + typ.Pointed_type.Name()
}

func (typ PointerType) BitSize() uint32 {
	return PTR_SIZE * 8
}

func (typ PointerType) ByteSize() uint32 {
	return PTR_SIZE
}
