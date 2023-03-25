package datatype

type DataType interface {
	Name() string
	BitSize() uint32
	ByteSize() uint32
	Equals(DataType) bool
}


func IsArrayType(_type DataType) bool {
	name := _type.Name()
	if len(name) <= 0 {
		return false
	}

	return _type.Name()[0] == '[' // lmao
}

