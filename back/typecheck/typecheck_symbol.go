package typecheck

import (	
	"mycgo/back/datatype"
)

type TypeCheck_Symbol struct {
	DataType datatype.DataType

	// function information
	ArgTypes []datatype.DataType
}

func (sym TypeCheck_Symbol) Type() datatype.DataType {
	return sym.DataType
}

