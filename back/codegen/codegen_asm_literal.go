package codegen

import (
	"strconv"
	"mycgo/back/datatype"
)

type Asm_Literal interface {
	Type() datatype.DataType
	Text() string
}

type Asm_Int_Literal struct {
	DataType datatype.DataType
	Value int64
	Base int
}

type Asm_String_Literal struct {
	Value string
}

func (i Asm_Int_Literal) Text() string {
	return "$" + strconv.FormatInt(i.Value, i.Base)
}

func (s Asm_String_Literal) Text() string {
	return "\"" + s.Value + "\""
}
func (i Asm_Int_Literal) Dereference() Operand {
	return i
}

func (s Asm_String_Literal) Dereference() Operand {
	return s
}
func (i Asm_Int_Literal) LiteralValue() Operand {
	return i
}

func (s Asm_String_Literal) LiteralValue() Operand {
	return s
}

func (i Asm_Int_Literal) Type() datatype.DataType {
	return i.DataType
}

func (i Asm_String_Literal) Type() datatype.DataType {
	return datatype.TYPE_NONE
}
