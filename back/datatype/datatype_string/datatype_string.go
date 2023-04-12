package datatype_string

import (
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/back/datatype/datatype_array"
)

// ** string ** 
var TYPE_STRING = 
datatype_struct.StructType {
	"string",
	datatype.PTR_SIZE + 8,

	0,
	[]datatype_struct.StructField {
		datatype_struct.StructField{
			"data",
			datatype.PointerType{ datatype.TYPE_UINT8 },

			0,
		},
		datatype_struct.StructField{
			"len",
			datatype.TYPE_UINT64,

			datatype.PTR_SIZE,
		},
	},
}

// ** static string **
type StaticStringType datatype_array.StaticArrayType
func NewStaticStringType(length uint64) StaticStringType {
	return StaticStringType {
		datatype.TYPE_UINT8,
		length,
	}
}

func (typ StaticStringType) Name() string {
	return "static_string"
}

func (typ StaticStringType) ByteSize() uint64 {
	return 8 //uint64(typ.Length) * typ.ElementType.ByteSize()
}

func (typ StaticStringType) BitSize() uint64 {
	return typ.ByteSize() * 8
}

func (typ StaticStringType) Equals(t datatype.DataType) bool {
	if typ.Name() != t.Name() || typ.ByteSize() != t.ByteSize() {
		return false
	}
	
	switch t.(type) {
		case StaticStringType: return true
	}
	return false
}

func IsStaticStringType(_type datatype.DataType) bool {
	name := _type.Name()
	if len(name) <= 0 {
		return false
	}

	if _type.Name() == "static_string" {
		switch _type.(type) {
			case StaticStringType : return true
			default : return false
		}
	}
	return false
}
