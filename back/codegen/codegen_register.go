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
	REGISTER_R10 = Register(iota)
	REGISTER_R11 = Register(iota)
	REGISTER_RSP = Register(iota)
	REGISTER_RBX = Register(iota)
	REGISTER_RBP = Register(iota)
	REGISTER_R12 = Register(iota)
	REGISTER_R13 = Register(iota)
	REGISTER_R14 = Register(iota)
	REGISTER_R15 = Register(iota)
	REGISTER_RIP = Register(iota)
	REGISTER_RFLAGS = Register(iota)

	N_REGISTERS = iota
)

var registers_str = [N_REGISTERS]string {
	"%rax",    
	"%rdi",
	"%rsi",
	"%rdx",
	"%rcx",
	"%r8",
	"%r9",
	"%r10",
	"%r11",
	"%rsp",
	"%rbx",
	"%rbp",
	"%r12",
	"%r13",
	"%r14",
	"%r15",
	"%rip",
	"%rflags",            
}

var registers_alloc = [N_REGISTERS]bool{}

func (reg Register) Allocate() {
	registers_alloc[reg] = true
}

func (reg Register) Free() {
	registers_alloc[reg] = false
}

func (reg Register) Text() string {
	return registers_str[reg]
}

func (reg Register) LiteralValue() Operand {
	return reg
}

func (reg Register) Dereference() Operand {
	return Memory_Reference{0, reg, nil, ASMREF_INDEXCOEFF_1}
}

var scratch_registers = [5]Register {
	REGISTER_RBX,
	REGISTER_R12,
	REGISTER_R13,
	REGISTER_R14,
	REGISTER_R15,
}

func RegisterScratchAllocate() (Register, bool) {
	for _, s := range(scratch_registers) {
		if(!registers_alloc[s]) {
			s.Allocate()
			return s, false
		}
	}
	return 0, true
}

func RegisterScratchFreeAll() {
	for _, s := range(scratch_registers) {
		s.Free()
	}
}

var argument_registers = [6]Register {
	REGISTER_RDI,
	REGISTER_RSI,
	REGISTER_RDX,
	REGISTER_RCX,
	REGISTER_R8 ,
    REGISTER_R9 ,
}

func RegisterArgumentAllocate() (Register, bool) {
	for _, s := range(argument_registers) {
		if(!registers_alloc[s]) {
			s.Allocate()
			return s, false
		}
	}
	return 0, true
}

func RegisterArgumentFreeAll() {
	for _, s := range(argument_registers) {
		s.Free()
	}
}
