package datatype_array

import (
	"strconv"
	"mycgo/back/datatype"
)

type StaticArrayType struct {
	ElementType datatype.DataType
	Length uint64
}

func (typ StaticArrayType) Name() string {
	return "[" + strconv.FormatUint(typ.Length, 10) + "]" + typ.ElementType.Name()
}

func (typ StaticArrayType) ByteSize() uint64 {
	return uint64(typ.Length) * typ.ElementType.ByteSize()
}

func (typ StaticArrayType) BitSize() uint64 {
	return typ.ByteSize() * 8
}

func (typ StaticArrayType) Equals(t datatype.DataType) bool {
	switch t.(type) {
		case StaticArrayType:
			if typ.ElementType == datatype.TYPE_GENERIC || t.(StaticArrayType).ElementType == datatype.TYPE_GENERIC {
				return true
			}
	}

	if typ.Name() != t.Name() || typ.ByteSize() != t.ByteSize() {
		return false
	}
	
	switch t.(type) {
		case StaticArrayType: return true
	}
	return false
}

func IsStaticArrayType(_type datatype.DataType) bool {
	name := _type.Name()
	if len(name) <= 0 {
		return false
	}

	if _type.Name()[0] == '[' {
		switch _type.(type) {
			case StaticArrayType : return true
			default : return false
		}
	}
	return false
}
