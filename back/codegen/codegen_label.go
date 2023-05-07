package codegen

import (
	"strconv"
	"mycgo/back/datatype"
	"mycgo/back/symbol"
)

type Label struct {
	datatype datatype.DataType
	text string
}

func (lbl Label) Type() datatype.DataType {
	if lbl.datatype != nil {
		return lbl.datatype
	}

	symbol, found := symbol.SymbolTableGetInCurrentScope(lbl.text)
	if found {
		return symbol.Type()
	}
	return nil
}

func (lbl Label) Text() string {
	return lbl.text
}

func (lbl Label) LiteralValue() Operand {
	label := LabelGet("$" + lbl.text)	
	label.datatype = datatype.TYPE_INT64 // TODO: fix and clean all of this mess

	return label
}

func (lbl Label) Dereference() Operand {
	l := LabelGet("(" + lbl.text + ")")	
	l.datatype = lbl.datatype
	return l
}

var labels_count int = 0
func LabelGen() Label {
	labels_count++
	return Label{nil, ".L" + strconv.Itoa(labels_count)}
}

func LabelGet(text string) Label {
	return Label{nil, text}
}
