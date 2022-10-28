package codegen

import (
	"strconv"
)

type Asm_Literal interface {
	Text() string
}

type Asm_Int_Literal struct {
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
