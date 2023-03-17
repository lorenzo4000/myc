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

func (field StructField) Equals(f StructField) bool {
	return field.Name == f.Name && field.Offset == f.Offset && field.Type.Equals(f.Type)
}

func (_struct StructType) Equals(_type datatype.DataType) bool {
	if _struct.Name_ != _type.Name() || _struct.Size_ != _type.ByteSize() {
		return false
	}
	
	switch _type.(type) {
		case StructType: 
			struct_type := _type.(StructType)
			if len(_struct.Fields) != len(struct_type.Fields) {
				return false
			}
			for i, f := range(_struct.Fields) {
				if !f.Equals(struct_type.Fields[i]) {
					return false
				}
			}
	}
	return true
}
