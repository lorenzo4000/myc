package codegen

import (
	"strconv"
)

type Label string

func (lbl Label) Text() string {
	return string(lbl)	
}

func (lbl Label) LiteralValue() Operand {
	return Label("$" + string(lbl))	
}

func (lbl Label) Dereference() Operand {
	return Label("(" + string(lbl) + ")")	
}

var labels_count int = 0
func LabelGen() Label {
	labels_count++
	return Label("L" + strconv.Itoa(labels_count))
}
