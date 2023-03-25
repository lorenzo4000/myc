package datatype_array

import (
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
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
func ArrayDataType(_type datatype.DataType) datatype.DataType {
	if !datatype.IsArrayType(_type) {
		return nil
	}

	_type_struct := _type.(datatype_struct.StructType)
	array_data := _type_struct.Fields[0].Type.(datatype.PointerType)
	array_data_pointed_type := array_data.Pointed_type

	return array_data_pointed_type
}
