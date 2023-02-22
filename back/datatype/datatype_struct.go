package datatype

type StructField struct {
	Name string
	Type DataType
}

type StructType struct {
	Name_ string
	Size_ uint32

	Fields []StructField
}

func (_struct StructType) Name() string {
	return _struct.Name_
}

func (_struct StructType) BitSize() uint32 {
	return _struct.Size_ * 8
}

func (_struct StructType) ByteSize() uint32 {
	return _struct.Size_
}

func (_struct StructType) AddField(field StructField) {
	_struct.Fields = append(_struct.Fields, field)
}
