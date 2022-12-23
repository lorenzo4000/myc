package codegen


type Register byte

const (
	REGISTER_RAX = Register(iota) 
	REGISTER_RDI = Register(iota)  
	REGISTER_RSI = Register(iota)  
	REGISTER_RDX = Register(iota)
	REGISTER_RCX = Register(iota)
	REGISTER_R8 =  Register(iota)
	REGISTER_R9 =  Register(iota)
	REGISTER_R10 =  Register(iota)
	REGISTER_R11 =  Register(iota)
	REGISTER_RSP = Register(iota)  
	REGISTER_RBX = Register(iota)
	REGISTER_RBP = Register(iota)  
	REGISTER_R12 =  Register(iota)
	REGISTER_R13 =  Register(iota)
	REGISTER_R14 =  Register(iota)
	REGISTER_R15 =  Register(iota)
	REGISTER_RIP = Register(iota)
	REGISTER_RFLAGS = Register(iota)

	N_REGISTERS = iota
)

type SubRegister struct {
	parent Register
	index  byte
}

const MAX_SUB_REGISTERS byte = 5

var registers_str = [N_REGISTERS][MAX_SUB_REGISTERS]string {
	{"%rax", "%eax", "%ax", "%al", "%ah"},
	{"%rdi", "%edi", "%di", "%dil"},
	{"%rsi", "%esi", "%si", "%sil"},
	{"%rdx", "%edx", "%dx", "%dl", "%dh"},
	{"%rcx", "%ecx", "%cx", "%cl", "%ch"},
	{"%r8", "%r8d", "%r8w", "%r8b"},
	{"%r9", "%r9d", "%r9w", "%r9b"},
	{"%r10", "%r10d", "%r10w", "%r10b"},
	{"%r11", "%r11d", "%r11w", "%r11b"},
	{"%rsp", "%esp", "%sp", "%spl"},
	{"%rbx", "%ebx", "%bx", "%bl", "%bh"},
	{"%rbp", "%ebp", "%bp", "%bpl"},
	{"%r12", "%r12d", "%r12w", "%r12b"},
	{"%r13", "%r13d", "%r13w", "%r13b"},
	{"%r14", "%r14d", "%r14w", "%r14b"},
	{"%r15", "%r15d", "%r15w", "%r15b"},
	{"%rip", "%eip", "%ip"},
	{"%rflags", "%eflags", "%flags"},
}
var registers_size = [N_REGISTERS][MAX_SUB_REGISTERS]uint64 {
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16, 8},
	{64, 32, 16}, 
	{64, 32, 16},
}

func (reg SubRegister) Size() uint64 {
	return registers_size[reg.parent][reg.index]
}

func (reg Register) GetSubRegister(size uint64) SubRegister {
	for i, sub_size := range registers_size[reg] {
		if size == sub_size {
			return SubRegister{reg, byte(i)}
		}
	}
	return SubRegister{0, 0}
}

var registers_alloc = [N_REGISTERS]bool{}

func (reg Register) Allocate() {
	registers_alloc[reg] = true
}

func (reg Register) Free() {
	registers_alloc[reg] = false
}

func (reg SubRegister) Allocate() {
	reg.parent.Allocate()
}

func (reg SubRegister) Free() {
	reg.parent.Free()
}

func (reg SubRegister) Text() string {
	return registers_str[reg.parent][reg.index]
}

func (reg SubRegister) LiteralValue() Operand {
	return reg
}

func (reg SubRegister) Dereference() Operand {
	return Memory_Reference{0, reg, nil, ASMREF_INDEXCOEFF_1}
}

var ScratchRegisters = [5]Register {
	REGISTER_RBX,
	REGISTER_R12,
	REGISTER_R13,
	REGISTER_R14,
	REGISTER_R15,
}

func RegisterScratchAllocate() (Register, bool) {
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

var ArgumentRegisters = [6]Register {
	REGISTER_RDI,
	REGISTER_RSI,
	REGISTER_RDX,
	REGISTER_RCX,
	REGISTER_R8 ,
    REGISTER_R9 ,
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
