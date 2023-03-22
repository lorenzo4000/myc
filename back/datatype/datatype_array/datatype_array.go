package datatype_array

import (
	"mycgo/back/datatype"
)

//type DynamicArrayType datatype_struct.StructType
//type StaticArrayType datatype.PointerType

/*
func (_type DynamicArrayType) Name() string {
	return _type.Name_
}

func (_type DynamicArrayType) BitSize() uint32 {
	return datatype.PTR_SIZE + 64
}
func (_type DynamicArrayType) ByteSize() uint32 {
	return _type.BitSize() / 8
}

func (_type DynamicArrayType) Equals(t datatype.DataType) bool {
	return datatype_struct.StructType(_type).Equals(t)
}
*/

func IsArrayType(_type datatype.DataType) bool {
	name := _type.Name()
	if len(name) <= 0 {
		return false
	}

	return _type.Name()[0] == '[' // lmao
}

