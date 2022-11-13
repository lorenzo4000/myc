package codegen

import (
	"strconv"
)

type Index_Coeff uint8

const (
	ASMREF_INDEXCOEFF_1 = Index_Coeff(1)
	ASMREF_INDEXCOEFF_2 = Index_Coeff(2)
	ASMREF_INDEXCOEFF_4 = Index_Coeff(4)
	ASMREF_INDEXCOEFF_8 = Index_Coeff(8)
)


type Memory_Reference struct {
	Offset int64
	Start Operand
	Index Operand
	IndexCoefficient Index_Coeff
}

func (mem Memory_Reference) Text() string {
	if mem.Start == nil {
		return ""
	}
	if mem.Index == nil {
		return  strconv.FormatInt(mem.Offset, 10)           + "("  +
				mem.Start.Text()    		      		    + ", " +
				strconv.FormatInt(int64(mem.IndexCoefficient), 10) + ")"
	}
	return  strconv.FormatInt(mem.Offset, 10)           + "("  +
			mem.Start.(Register).Text()    		      		    + ", " +
			mem.Index.(Register).Text() 				            + ", "  +
			strconv.FormatInt(int64(mem.IndexCoefficient), 10) + ")"
}

func (mem Memory_Reference) LiteralValue() Operand {
	return mem
}
func (mem Memory_Reference) Dereference() Operand {
	return mem
}
