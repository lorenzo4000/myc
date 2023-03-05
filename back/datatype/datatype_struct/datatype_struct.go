package datatype_struct

import (
	"mycgo/back/datatype"
	"mycgo/back/symbol"
)

type StructField struct {
	Name string
	Type datatype.DataType

	Offset uint32
}

type StructType struct {
	Name_ string
	Size_ uint32

	Scope  symbol.Symbol_Scope_Id
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

func (_struct *StructType) AddField(field StructField) {
	_struct.Fields = append(_struct.Fields, field)
}

func (_struct StructType) FindField(name string) *StructField {
	for i, f := range(_struct.Fields) {
		if f.Name == name {
			return &_struct.Fields[i]
		}
	}
	return nil
}
