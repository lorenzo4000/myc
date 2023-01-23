package codegen

import (
	"mycgo/back/datatype"
)

type RegisterClass byte

type Register struct {
	datatype datatype.DataType
	class RegisterClass
}

// N_REGISTERS is defined by target
var registers_alloc = [N_REGISTERS]bool{}

func (reg RegisterClass) GetRegister(typ datatype.DataType) Register {
	for _, sub_size := range RegistersSize[reg] {
		if typ.BitSize() == sub_size {
			return Register{typ, class}
		}
	}
	return Register{}
}


func (reg RegisterClass) Allocate() {
	registers_alloc[reg] = true
}

func (reg RegisterClass) Free() {
	registers_alloc[reg] = false
}

func (reg Register) Allocate() {
	reg.class.Allocate()
}

func (reg Register) Free() {
	reg.class.Free()
}

func (reg Register) Text() string {
	for i, sub_size := range RegistersSize[reg.class] {
		if reg.datatype.BitSize() <= sub_size {
			return RegistersStr[reg.class][i]
		}
	}
	return ""
}

func (reg Register) LiteralValue() Operand {
	return nil
}

func (reg Register) Dereference() Operand {
	return Memory_Reference{0, reg, nil, ASMREF_INDEXCOEFF_1}
}

func (reg Register) Type() datatype.DataType {
	return reg.datatype
}

func RegisterScratchAllocate() (RegisterClass, bool) {
	for _, s := range(ScratchRegisters) {
		if(!registers_alloc[s]) {
			s.Allocate()
			return s, false
		}
	}
	return 0, true
}

func RegisterScratchFreeAll() {
	for _, s := range(ScratchRegisters) {
		s.Free()
	}
}

func RegisterArgumentAllocate() (Register, bool) {
	for _, s := range(ArgumentRegisters) {
		if(!registers_alloc[s]) {
			s.Allocate()
			return s, false
		}
	}
	return 0, true
}

func RegisterArgumentFreeAll() {
	for _, s := range(ArgumentRegisters) {
		s.Free()
	}
}
