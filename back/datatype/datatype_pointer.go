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

func (typ PointerType) Equals(t DataType) bool {
	switch t.(type) {
		case PointerType:
			if typ.Pointed_type == TYPE_GENERIC || t.(PointerType).Pointed_type == TYPE_GENERIC {
				return true
			}
	}

	if typ.Name() != t.Name() || typ.ByteSize() != t.ByteSize() {
		return false
	}
	
	switch t.(type) {
		case PointerType: return true
	}
	return false
}
