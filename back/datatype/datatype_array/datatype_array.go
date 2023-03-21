package datatype_array

import (
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
)

type DynamicArrayType datatype_struct.StructType
//type StaticArrayType datatype.PointerType

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

func NewDynamicArrayType(name string, _type datatype.DataType) DynamicArrayType {
	return DynamicArrayType {
		name,
		datatype.PTR_SIZE + 64,

		0,
		[]datatype_struct.StructField {
			datatype_struct.StructField{
				"data",
				datatype.PointerType{ _type },

				0,
			},
			datatype_struct.StructField{
				"len",
				datatype.PointerType{ datatype.TYPE_UINT64 },

				datatype.PTR_SIZE,
			},
		},
	}
}
