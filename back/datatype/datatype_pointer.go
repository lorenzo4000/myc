package datatype

type PointerType struct {
	Pointed_type DataType
}

func (typ PointerType) Name() string {
	return "*" + typ.Pointed_type.Name()
}

func (typ PointerType) BitSize() uint64 {
	return PTR_SIZE * 8
}

func (typ PointerType) ByteSize() uint64 {
	return PTR_SIZE
}

func (typ PointerType) Equals(t DataType) bool {
	if typ.Name() != t.Name() || typ.ByteSize() != t.ByteSize() {
		return false
	}
	
	switch t.(type) {
		case PointerType: return true
	}
	return false
}

func IsPointerType(t DataType) bool {
	switch t.(type) {
		case PointerType: return true
	}
	return false
}
