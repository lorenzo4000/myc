package codegen
import (	
	"mycgo/back/datatype"
)

type Codegen_Symbol struct {
	DataType datatype.DataType
	Data Stack_Region
}

func (sym Codegen_Symbol) Type() datatype.DataType {
	return sym.DataType
}
