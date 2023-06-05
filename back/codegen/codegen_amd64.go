package codegen

import (
	"fmt"
	"log"
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/back/datatype/datatype_array"
	"mycgo/back/datatype/datatype_string"
	"mycgo/back/symbol"
	"mycgo/front"
	"strconv"
)

// === Register ===
const (
	REG_SUB_DOUBLE = byte(iota)
	REG_SUB_Q = byte(iota)
	REG_SUB_D = byte(iota)
	REG_SUB_W = byte(iota)
	REG_SUB_B = byte(iota)
	REG_SUB_b = byte(iota)

	REG_SUB_MAX = byte(iota)

	REG_KIND_MASK  = byte(0xE0)
	REG_KIND_MASKI = REG_KIND_MASK ^ 0xFF

	REG_KIND_QDWBb = byte(0b0010_0000)
	REG_KIND_QDWB  = byte(0b0100_0000)
	REG_KIND_QDW   = byte(0b1000_0000)
	REG_KIND_XMM   = byte(0b1010_0000)
)

type RegisterClass byte
type Register struct {
	Datatype datatype.DataType
	Class    RegisterClass
	Sub      byte
}

type RegisterPair struct {
	Datatype datatype.DataType 
	r1 Register
	r2 Register
}

const (
	REGISTER_RAX    = RegisterClass(iota | REG_KIND_QDWBb)
	REGISTER_RDI    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_RSI    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_RDX    = RegisterClass(iota | REG_KIND_QDWBb)
	REGISTER_RCX    = RegisterClass(iota | REG_KIND_QDWBb)
	REGISTER_R8     = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R9     = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R10    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R11    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_RSP    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_RBX    = RegisterClass(iota | REG_KIND_QDWBb)
	REGISTER_RBP    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R12    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R13    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R14    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_R15    = RegisterClass(iota | REG_KIND_QDWB)
	REGISTER_RIP    = RegisterClass(iota | REG_KIND_QDW)
	REGISTER_RFLAGS = RegisterClass(iota | REG_KIND_QDW)

	REGISTER_XMM0    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM1    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM2    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM3    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM4    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM5    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM6    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM7    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM8    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM9    = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM10   = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM11   = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM12   = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM13   = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM14   = RegisterClass(iota | REG_KIND_XMM)
	REGISTER_XMM15   = RegisterClass(iota | REG_KIND_XMM)

	N_REGISTERS = iota
)

var RegistersStr = [N_REGISTERS][REG_SUB_MAX]string{
	{"", "%rax", "%eax", "%ax", "%al", "%ah"},
	{"", "%rdi", "%edi", "%di", "%dil"},
	{"", "%rsi", "%esi", "%si", "%sil"},
	{"", "%rdx", "%edx", "%dx", "%dl", "%dh"},
	{"", "%rcx", "%ecx", "%cx", "%cl", "%ch"},
	{"", "%r8", "%r8d", "%r8w", "%r8b"},
	{"", "%r9", "%r9d", "%r9w", "%r9b"},
	{"", "%r10", "%r10d", "%r10w", "%r10b"},
	{"", "%r11", "%r11d", "%r11w", "%r11b"},
	{"", "%rsp", "%esp", "%sp", "%spl"},
	{"", "%rbx", "%ebx", "%bx", "%bl", "%bh"},
	{"", "%rbp", "%ebp", "%bp", "%bpl"},
	{"", "%r12", "%r12d", "%r12w", "%r12b"},
	{"", "%r13", "%r13d", "%r13w", "%r13b"},
	{"", "%r14", "%r14d", "%r14w", "%r14b"},
	{"", "%r15", "%r15d", "%r15w", "%r15b"},
	{"", "%rip", "%eip", "%ip"},
	{"", "%rflags", "%eflags", "%flags"},

	{"%xmm0"},
	{"%xmm1"},
	{"%xmm2"},
	{"%xmm3"},
	{"%xmm4"},
	{"%xmm5"},
	{"%xmm6"},
	{"%xmm7"},
	{"%xmm8"},
	{"%xmm9"},
	{"%xmm10"},
	{"%xmm11"},
	{"%xmm12"},
	{"%xmm13"},
	{"%xmm14"},
	{"%xmm15"},
}

func (reg RegisterClass) register_from_sub(sub byte) Register {
	return Register{nil, reg, sub}
}

var registers_alloc = [N_REGISTERS][REG_SUB_MAX]bool{}

func (reg RegisterClass) GetRegister(typ datatype.DataType) (Register, bool) {
	bit_size := typ.BitSize()
	reg_kind := byte(reg) & REG_KIND_MASK

	var r Register
	switch reg_kind {
	case REG_KIND_XMM:
		r = reg.register_from_sub(REG_SUB_DOUBLE)
		r.Datatype = typ
	case REG_KIND_QDW:
		switch bit_size {
		case 64:
			r = reg.register_from_sub(REG_SUB_Q)
			r.Datatype = typ
		case 32:
			r = reg.register_from_sub(REG_SUB_D)
			r.Datatype = typ
		case 16:
			r = reg.register_from_sub(REG_SUB_W)
			r.Datatype = typ
		default:
			return Register{}, true
		}
	default:
		switch bit_size {
		case 64:
			r = reg.register_from_sub(REG_SUB_Q)
			r.Datatype = typ
		case 32:
			r = reg.register_from_sub(REG_SUB_D)
			r.Datatype = typ
		case 16:
			r = reg.register_from_sub(REG_SUB_W)
			r.Datatype = typ
		case 8:
			r = reg.register_from_sub(REG_SUB_B)
			r.Datatype = typ
		default:
			return Register{}, true
		}
	}

	return r, false
}

func (reg Register) Allocate() {
	registers_alloc[byte(reg.Class)&REG_KIND_MASKI][reg.Sub] = true
}

func (reg Register) Free() {
	registers_alloc[byte(reg.Class)&REG_KIND_MASKI][reg.Sub] = false
}

func (class RegisterClass) Allocate() {
	for i := byte(0); i < REG_SUB_b; i++ {
		registers_alloc[byte(class)&REG_KIND_MASKI][i] = true
	}
}

func (class RegisterClass) Free() {
	for i := byte(0); i < REG_SUB_b; i++ {
		registers_alloc[byte(class)&REG_KIND_MASKI][i] = false
	}
}

func (reg Register) Allocated() bool {
	switch reg.Sub {
	case REG_SUB_B:
		for i := byte(0); i < REG_SUB_B; i++ {
			if registers_alloc[byte(reg.Class)&REG_KIND_MASKI][i] {
				return true
			}
		}
		if registers_alloc[byte(reg.Class)&REG_KIND_MASKI][REG_SUB_B] {
			return true
		}
	case REG_SUB_b:
		for i := byte(0); i < REG_SUB_B; i++ {
			if registers_alloc[byte(reg.Class)&REG_KIND_MASKI][i] {
				return true
			}
		}
		if registers_alloc[byte(reg.Class)&REG_KIND_MASKI][REG_SUB_b] {
			return true
		}
	default:
		for _, sub := range registers_alloc[byte(reg.Class)&REG_KIND_MASKI] {
			if sub {
				return true
			}
		}
	}
	return false
}

// register
//
func (reg Register) Text() string {
	return RegistersStr[byte(reg.Class)&REG_KIND_MASKI][reg.Sub]
}

func (reg Register) LiteralValue() Operand {
	return nil
}

func (reg Register) Dereference() Operand {
	return Memory_Reference{reg.Type(), 0, reg, nil, ASMREF_INDEXCOEFF_1}
}

func (reg Register) Type() datatype.DataType {
	return reg.Datatype
}

// registerpair
//
func (reg RegisterPair) Text() string {
	return ""
}

func (reg RegisterPair) LiteralValue() Operand {
	return nil
}

func (reg RegisterPair) Dereference() Operand {
	return nil
}

func (reg RegisterPair) Type() datatype.DataType {
	return reg.Datatype
}

func register_scratch_allocate(sub byte) (Register, bool) {
	for _, s := range ScratchRegisters {
		if sub == REG_SUB_B {
			if byte(s)&REG_KIND_MASK > REG_KIND_QDWB {
				continue
			}
		}
		if sub == REG_SUB_b {
			if byte(s)&REG_KIND_MASK > REG_KIND_QDWBb {
				continue
			}
		}

		reg := s.register_from_sub(sub)
		if reg.Allocated() {
			continue
		}

		if s == REGISTER_RAX {
			log.Fatal("???")
		}
		reg.Allocate()
		return reg, false
	}
	return Register{}, true
}

func RegisterScratchAllocate(_type datatype.DataType) (Register, bool) {
	var r Register
	f := false
	switch _type.BitSize() {
	case 64:
		r, f = register_scratch_allocate(REG_SUB_Q)
		r.Datatype = _type
	case 32:
		r, f = register_scratch_allocate(REG_SUB_D)
		r.Datatype = _type
	case 16:
		r, f = register_scratch_allocate(REG_SUB_W)
		r.Datatype = _type
	case 8:
		r, f = register_scratch_allocate(REG_SUB_B)
		if f {
			r, f = register_scratch_allocate(REG_SUB_b)
			if f {
				return Register{}, f
			}
		}
		r.Datatype = _type
	default:
		return Register{}, true
	}
	return r, f
}

func RegisterScratchFreeAll() {
	for _, s := range ScratchRegisters {
		s.Free()
	}
}

func register_integer_argument_allocate(sub byte) (Register, bool) {
	for _, s := range IntegerArgumentRegisters {
		if sub == REG_SUB_B {
			if byte(s)&REG_KIND_MASK > REG_KIND_QDWB {
				continue
			}
		}
		if sub == REG_SUB_b {
			if byte(s)&REG_KIND_MASK > REG_KIND_QDWBb {
				continue
			}
		}

		reg := s.register_from_sub(sub)
		if reg.Allocated() {
			continue
		}

		reg.Allocate()
		return reg, false
	}
	return Register{}, true
}

func register_float_argument_allocate(_type datatype.DataType) (Register, bool) {
	for _, s := range FloatArgumentRegisters {
		if !registers_alloc[byte(s) & REG_KIND_MASKI][REG_SUB_DOUBLE]  {
			s.Allocate()
			return s.GetRegister(_type)
		}
	}
	return Register{}, true
}

func register_xmm_allocate(_type datatype.DataType) (Register, bool) {
	for _, r := range [16]RegisterClass{REGISTER_XMM0,  REGISTER_XMM1, 
									    REGISTER_XMM2,  REGISTER_XMM3, 
									    REGISTER_XMM4,  REGISTER_XMM5,
									    REGISTER_XMM6,  REGISTER_XMM7,
									    REGISTER_XMM8,  REGISTER_XMM9,
									    REGISTER_XMM10, REGISTER_XMM11,
									    REGISTER_XMM12, REGISTER_XMM13,
									    REGISTER_XMM14, REGISTER_XMM15} {
		if !registers_alloc[byte(r) & REG_KIND_MASKI][REG_SUB_DOUBLE]  {
			r.Allocate()
			return r.GetRegister(_type)
		}
	}
	return Register{}, true

}

func register_xmm_free_all() {
	for _, r := range [16]RegisterClass{REGISTER_XMM0,  REGISTER_XMM1, 
									    REGISTER_XMM2,  REGISTER_XMM3, 
									    REGISTER_XMM4,  REGISTER_XMM5,
									    REGISTER_XMM6,  REGISTER_XMM7,
									    REGISTER_XMM8,  REGISTER_XMM9,
									    REGISTER_XMM10, REGISTER_XMM11,
									    REGISTER_XMM12, REGISTER_XMM13,
									    REGISTER_XMM14, REGISTER_XMM15} {
		r.Free()
	}
}

func RegisterArgumentAllocate(_type datatype.DataType) (Register, bool) {
	var r Register
	f := false
	switch _type.BitSize() {
	case 64:
		if datatype.IsFloatType(_type) {
			r, f = register_float_argument_allocate(_type)
		} else {
			r, f = register_integer_argument_allocate(REG_SUB_Q)
		}
		r.Datatype = _type
	case 32:
		if datatype.IsFloatType(_type) {
			r, f = register_float_argument_allocate(_type)
		} else {
			r, f = register_integer_argument_allocate(REG_SUB_D)
		}
		r.Datatype = _type
	case 16:
		r, f = register_integer_argument_allocate(REG_SUB_W)
		r.Datatype = _type
	case 8:
		r, f = register_integer_argument_allocate(REG_SUB_B)
		if f {
			r, f = register_integer_argument_allocate(REG_SUB_b)
			if f {
				return Register{}, f
			}
		}
		r.Datatype = _type
	default:
		return Register{}, true
	}
	return r, f
}

func RegisterArgumentFreeAll() {
	for _, s := range IntegerArgumentRegisters {
		s.Free()
	}
	register_xmm_free_all()
}

var ScratchRegisters = [5]RegisterClass{
	REGISTER_RBX,
	REGISTER_R12,
	REGISTER_R13,
	REGISTER_R14,
	REGISTER_R15,
}

var IntegerArgumentRegisters = [6]RegisterClass{
	REGISTER_RDI,
	REGISTER_RSI,
	REGISTER_RDX,
	REGISTER_RCX,
	REGISTER_R8,
	REGISTER_R9,
}

var FloatArgumentRegisters = [8]RegisterClass {
	REGISTER_XMM0,
	REGISTER_XMM1,
	REGISTER_XMM2,
	REGISTER_XMM3,
	REGISTER_XMM4,
	REGISTER_XMM5,
	REGISTER_XMM6,
	REGISTER_XMM7,
}

const RETURN_REGISTER = REGISTER_RAX

// === Memory Reference ===

type Index_Coeff uint8

const (
	ASMREF_INDEXCOEFF_1 = Index_Coeff(1)
	ASMREF_INDEXCOEFF_2 = Index_Coeff(2)
	ASMREF_INDEXCOEFF_4 = Index_Coeff(4)
	ASMREF_INDEXCOEFF_8 = Index_Coeff(8)
)

type Memory_Reference struct {
	DataType         datatype.DataType
	Offset           int64
	Start            Operand
	Index            Operand
	IndexCoefficient Index_Coeff
}

func (mem Memory_Reference) Type() datatype.DataType {
	return mem.DataType
}

func (mem Memory_Reference) Text() string {
	if mem.Start == nil {
		return ""
	}
	
	res := ""
	if mem.Index == nil {
		res += strconv.FormatInt(mem.Offset, 10) + "(" +
			mem.Start.Text() + ", " +
			strconv.FormatInt(int64(mem.IndexCoefficient), 10) + ")"
	} else {
		res += strconv.FormatInt(mem.Offset, 10) + "(" +
			mem.Start.(Register).Text() + ", " +
			mem.Index.(Register).Text() + ", " +
			strconv.FormatInt(int64(mem.IndexCoefficient), 10) + ")"
	}
	return res
}

func (mem Memory_Reference) LiteralValue() Operand {
	return mem
}
func (mem Memory_Reference) Dereference() Operand {
	return Memory_Reference{mem.Type(), 0, mem, nil, ASMREF_INDEXCOEFF_1}
}

// === Stack ===

type Stack_Region struct {
	rbp_offset uint64
	datatype   datatype.DataType

	reserved uint64
}

var CurrentReservedStack uint64 = 0

func StackReserveBytes(bytes uint64) uint64 {
	if bytes % 16 != 0 {
		bytes += 16 - (bytes & 0xF)
	}
	CurrentReservedStack += bytes
	return bytes
}
func StackUnreserveBytes(bytes uint64) uint64 {
	if bytes % 16 != 0 {
		bytes += 16 - (bytes & 0xF)
	}

	if CurrentReservedStack < bytes {
		unreserved := CurrentReservedStack
		CurrentReservedStack = 0
		return unreserved
	} else {
		CurrentReservedStack -= bytes
	}

	return bytes
}

func StackUnreserveAll() {
	CurrentReservedStack = 0
}

var CurrentAllocatedStack uint64 = 0

func StackAllocateBytes(size uint64) Stack_Region {
	reserved := uint64(0)

	for CurrentAllocatedStack+size > CurrentReservedStack {
		reserved += StackReserveBytes(16)
	}
	CurrentAllocatedStack += size

	region := Stack_Region{CurrentAllocatedStack, nil, reserved}

	return region
}

func StackAllocate(_type datatype.DataType) Stack_Region {
	region := StackAllocateBytes(_type.ByteSize())
	region.datatype = _type
	return region
}

var StackRegions []Stack_Region

func StackAllocateAndRemember(_type datatype.DataType) *Stack_Region {
	allocated := StackAllocate(_type)
	StackRegions = append(StackRegions, allocated)

	return &StackRegions[len(StackRegions)-1]
}

func StackDeallocateCurrentRegion() *Stack_Region {
	i := len(StackRegions)
	if i <= 0 {
		return nil
	}

	current_region := &StackRegions[i-1]

	CurrentAllocatedStack -= uint64(current_region.datatype.ByteSize())
	CurrentReservedStack -= current_region.reserved

	StackRegions = StackRegions[:i-1]

	return current_region
}

func (stack Stack_Region) Reference() Memory_Reference {
	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	return Memory_Reference{stack.datatype, -1 * int64(stack.rbp_offset), rbp, nil, ASMREF_INDEXCOEFF_1}
}

// === Instruction ===

func mem_reference_to_regs(mem Memory_Reference, regs_pushed *[5]bool, reserved_regs *[]RegisterClass) Codegen_Out {
	res := Codegen_Out{}

	start_register := Operand(nil)
	index_register := Operand(nil)
	switch mem.Start.(type)  {
		case Register: start_register = mem.Start.(Register)
	}
	switch mem.Index.(type)  {
		case Register: index_register = mem.Index.(Register)
	}

	if mem.Start != nil && start_register == nil {
		var new_start Operand = nil
		for j, r := range ScratchRegisters {
			for _, reserved := range *reserved_regs {
				if r == reserved {
					goto start_continue
				}
			}
			if (index_register == nil || (index_register != nil && r != index_register.(Register).Class)) {
				new_start, _ = r.GetRegister(datatype.TYPE_UINT64)
				(*regs_pushed)[j] = true
				res.Code.TextAppendSln(GEN_push(new_start).Code.Text)
				break
			}
			start_continue:
		}
		
		if new_start != nil {
			// move Start to new_start
			res.Code.TextAppendSln(ii("xorq", new_start, new_start))
			_new_start, _ := new_start.(Register).Class.GetRegister(mem.Start.Type())
			res.Code.Appendln(GEN_move(mem.Start, _new_start).Code)
			mem.Start = _new_start
			start_register = mem.Start
			*reserved_regs = append(*reserved_regs, _new_start.Class)
		}
	}
	if mem.Index != nil && index_register == nil {
		var new_index Operand = nil
		for j, r := range ScratchRegisters {
			for _, reserved := range *reserved_regs {
				if r == reserved {
					goto index_continue
				}
			}
			if (start_register  == nil || (start_register != nil && r != start_register.(Register).Class)) {
				new_index, _ = r.GetRegister(datatype.TYPE_UINT64)
				(*regs_pushed)[j] = true
				res.Code.TextAppendSln(GEN_push(new_index).Code.Text)
				break
			}
			index_continue:
		}
		
		if new_index != nil {
			// move Index to new_index
			res.Code.TextAppendSln(ii("xorq", new_index, new_index))
			_new_index, _ := new_index.(Register).Class.GetRegister(mem.Index.Type())
			res.Code.Appendln(GEN_move(mem.Index, _new_index).Code)
			mem.Index = _new_index
			index_register = mem.Index
			*reserved_regs = append(*reserved_regs, _new_index.Class)
		}
	}

	res.Result = mem
	return res
}

func ii(op string, oprnds ...Operand) string {
	instruction := ""
	pre_memory_reference_code := make([]string, len(oprnds))

	cnt := 0

	start_pushed := make([]RegisterClass, len(oprnds))
	for i, _ := range start_pushed {
		start_pushed[i] = RegisterClass(byte(0xFF))
	}
	regs_pushed := make([][5]bool, len(oprnds))

	// the destination is usually the last operand...
	destination := Operand(nil)
	if len(oprnds) > 0 {
		destination = oprnds[len(oprnds)-1]
	}	
	destination_register := Operand(nil)
	if destination != nil {
		switch destination.(type) {
			case Register: destination_register = destination.(Register)
		}
	}
	
	// the source is usually the first operand...
	source := Operand(nil)
	if len(oprnds) > 0 {
		source = oprnds[0]
	}	
	source_register := Operand(nil)
	if source != nil {
		switch source.(type) {
			case Register: source_register = source.(Register)
		}
	}

	var reserved_regs []RegisterClass
	if source_register != nil {
		reserved_regs = append(reserved_regs, source_register.(Register).Class)
	}
	if destination_register != nil {
		reserved_regs = append(reserved_regs, destination_register.(Register).Class)
	} 

	for i, oprnd := range oprnds {
		switch oprnd.(type) {
			case Memory_Reference: 
				mem := oprnd.(Memory_Reference)
				off := uint64(mem.Offset)

				to_regs := mem_reference_to_regs(mem, &(regs_pushed[i]), &reserved_regs)
				pre_memory_reference_code[i] += to_regs.Code.Text
				mem = to_regs.Result.(Memory_Reference)

				if mem.Offset < 0 {
					off = off ^ 0xFFFFFFFFFFFFFFFF
				}
				if (off >> 31) > 0 {
					pre_memory_reference_code[i] += GEN_push(mem.Start).Code.Text + "\n"
					start_pushed[i] = mem.Start.(Register).Class
					

					// add the offset manually (on the CPU)
					pre_memory_reference_code[i] += GEN_binop(front.AST_OP_SUM, 
						mem.Start,
						Asm_Int_Literal{datatype.TYPE_UINT64, mem.Offset, 10},
					).Code.Text + "\n"

					mem.Offset = 0
				}


				oprnds[i] = mem

				cnt++
			}
	}

	if cnt >= 2 {
		var allocation Operand = nil
		for _, r := range ScratchRegisters {
			for _, o := range oprnds {
				switch o.(type) {
					case Memory_Reference:
						os := o.(Memory_Reference).Start.(Register).Class
						oi := RegisterClass(byte(0xFF))
						if o.(Memory_Reference).Index != nil {
							oi = o.(Memory_Reference).Index.(Register).Class
						}
						if os == r || oi == r {
							goto _continue
						}
				}
			}

			allocation, _ = r.GetRegister(datatype.TYPE_UINT64)
			instruction += GEN_push(allocation).Code.Text 
			break

			_continue:
		}
		
		if allocation != nil {
			instruction += ii("xorq", allocation, allocation)
			allocation, _ = allocation.(Register).Class.GetRegister(oprnds[0].Type())
		} 

		// OOhhh good im gonna wrtie a master piece of code now
		for i, oprnd := range oprnds { 
			switch oprnd.(type) {
				case Memory_Reference:
					instruction += pre_memory_reference_code[i] 
			}
		}
		
		instruction += GEN_move(oprnds[0], allocation).Code.Text + "\n"
		oprnds[0] = allocation
		if start_pushed[0] != RegisterClass(byte(0xFF)) {
			sp, _ := start_pushed[0].GetRegister(datatype.TYPE_UINT64)
			instruction += GEN_pop(sp).Code.Text
		}
		for j := len(ScratchRegisters)-1; j >= 0; j-- {
			if regs_pushed[0][j] {
				r := ScratchRegisters[j]
				pushed_reg, _ := r.GetRegister(datatype.TYPE_UINT64)
				instruction += GEN_pop(pushed_reg).Code.Text
			}
		}

		instruction += Instruction(op, oprnds...) + "\n"
	
		for i := 1; i < len(oprnds); i++ {
			if start_pushed[i] != RegisterClass(byte(0xFF)) {
				sp, _ := start_pushed[i].GetRegister(datatype.TYPE_UINT64)
				instruction += GEN_pop(sp).Code.Text
			}
			for j := len(ScratchRegisters)-1; j >= 0; j-- {
				if regs_pushed[i][j] {
					r := ScratchRegisters[j]
					pushed_reg, _ := r.GetRegister(datatype.TYPE_UINT64)
					instruction += GEN_pop(pushed_reg).Code.Text
				}
			}
		}

		if allocation != nil {
			_allocation, _ := allocation.(Register).Class.GetRegister(datatype.TYPE_UINT64)
			instruction += GEN_pop(_allocation).Code.Text + "\n"
		}
		return instruction 
	}

	// OOhhh good im gonna wrtie a master piece of code now
	for i, oprnd := range oprnds { 
		switch oprnd.(type) {
			case Memory_Reference: instruction += pre_memory_reference_code[i]
		}
	}

	instruction += Instruction(op, oprnds...) + "\n"

	for i, _ := range oprnds {
		if start_pushed[i] != RegisterClass(byte(0xFF)) {
			sp, _ := start_pushed[i].GetRegister(datatype.TYPE_UINT64)
			instruction += GEN_pop(sp).Code.Text
		}
		for j := len(ScratchRegisters)-1; j >= 0; j-- {
			if regs_pushed[i][j] {
				r := ScratchRegisters[j]
				pushed_reg, _ := r.GetRegister(datatype.TYPE_UINT64)
				instruction += GEN_pop(pushed_reg).Code.Text
			}
		}
	}

	return instruction
}

// === runtime procedures ===
var Runtime Code = Code{
Text: 	
` 
function_name:
	pushq %rbp
	movq %rsp, %rbp

	// skip null-termination
	decq %rdi
	decq %rdi

	f_name_loop:
	cmpb $0, (%rdi)
	je  f_name_loop_exit

	decq %rdi
	jmp f_name_loop

	f_name_loop_exit:
	incq %rdi
	movq %rdi, %rax

	movq %rbp, %rsp
	popq %rbp
	ret
	

.string "\0stack_trace"
.global stack_trace
stack_trace:
	pushq %rbp
	movq %rsp, %rbp

	stack_trace_loop:
	// check if i am at the bottom of the stack and exit 
	
	


	// call instruction address 
	movq 8(%rbp), %rbx
	
	// to get the address of the current function, we
	// read the call instruction:
	// let's assume the opcode is big 1 byte, and the operand (address) is 
	// big 4 bytes.

	// read the opcode
	movb -5(%rbx), %sil

	//op E8 means relative addressing
	cmpb $0xe8, %sil
	je stack_trace_relative
	
	jmp stack_trace_absolute
	stack_trace_relative:
	// read function address
	xorq %r12, %r12
	movl -4(%rbx), %r12d
	
	// add to caller address
	addl %ebx, %r12d

	movq %r12, %rdi
	call function_name

	movq %rax, %rsi
	movq $stack_trace_message, %rdi
	call printf
	jmp stack_trace_continue

	stack_trace_absolute:
	// read function address
	xorq %r12, %r12
	movl -4(%rbx), %r12d

	movq %r12, %rdi
	call function_name

	movq %rax, %rsi
	movq $stack_trace_message, %rdi
	call printf
	
	stack_trace_continue:
	// if function address is == main, we are at the end!
	cmpq $main, %r12
	je stack_trace_exit

	// base pointer of caller
	movq (%rbp), %rbp  
	jmp stack_trace_loop
	
	stack_trace_exit:
	movq %rbp, %rsp
	popq %rbp
	ret
	
 
.string "\0err_oob"
.global err_oob
err_oob:
	pushq %rbp
	movq %rsp, %rbp

	// rsi = index; rdx = length
	movq $err_oob_message, %rdi
	call printf

	call stack_trace
	call exit

.string "\0_mystart"
.global _mystart
_mystart:

	// rdi, rsi: args
	// (skip argc)
	leaq 8(%rsp), %rdi
	xorq %rsi, %rsi
	_mystart_args_loop:
	// if NULL end
	cmpq $0, (%rdi, %rsi, 8)
	je _mystart_args_loop_end
	incq %rsi
	jmp _mystart_args_loop
	_mystart_args_loop_end:

	// rdx, rcx: envs
	// (skip null)
	leaq 8(%rdi, %rsi, 8), %rdx
	xorq %rcx, %rcx
	_mystart_envs_loop:
	cmpq $0, (%rdx, %rcx, 8)
	je _mystart_envs_loop_end
	incq %rcx
	jmp _mystart_envs_loop
	_mystart_envs_loop_end:
	
	call main
	movq %rax, %rdi

	call exit
`,
Data:
`
err_oob_message: .string "runtime error: index %llu is out of boundaries, with length %llu.\n"
stack_trace_message: .string "at function %s\n"
`,
}

var ERR_OOB Label = Label{nil, "err_oob"}

// === GEN_* ===

var __pushed_regs int
func GEN_push(r Operand) Codegen_Out {
	res := Codegen_Out{}

	reg, _ := r.(Register).Class.GetRegister(datatype.TYPE_UINT64)
	res.Code.TextAppendSln(ii("pushq", reg))

	__pushed_regs++
	// res.Code.TextAppendSln(fmt.Sprintf("// current pushed: %d", __pushed_regs))
	return res
}
func GEN_pop(r Operand) Codegen_Out {
	res := Codegen_Out{}

	reg, _ := r.(Register).Class.GetRegister(datatype.TYPE_UINT64)
	res.Code.TextAppendSln(ii("popq", reg))

	__pushed_regs--
	// res.Code.TextAppendSln(fmt.Sprintf("// current pushed: %d", __pushed_regs))
	return res
}

func GEN_return(v Operand, function *front.Ast_Node) Codegen_Out {
	out := Codegen_Out{}
	function_name := function.Children[0].Data[0].String_value

	if v != nil {
		return_type := v.Type()

		if return_type.ByteSize() <= 8 {
			var return_reg Register
			err := false
			if datatype.IsFloatType(return_type) {
				return_reg, err = REGISTER_XMM0.GetRegister(return_type)
			} else {
				return_reg, err = REGISTER_RAX.GetRegister(return_type)
			}

			if err {
				fmt.Println("codegen error: could not find return register for type `" + return_type.Name() + "`")
			}

			out.Code.Appendln(GEN_very_generic_move(v, return_reg).Code)
		} else if return_type.ByteSize() <= 16 {
			var return_regs RegisterPair
			switch return_type.(type) {	case datatype_struct.StructType:
				struct_type := return_type.(datatype_struct.StructType)
				f0 := struct_type.Fields[0].Type
				f1 := struct_type.Fields[1].Type

				var return_reg0 Register
				err := false
				if datatype.IsFloatType(f0) {
					return_reg0, err = REGISTER_XMM0.GetRegister(f0)
				} else {
					return_reg0, err = REGISTER_RAX.GetRegister(f0)
				}
				if err {
					fmt.Println("codegen error: could not find return register 1 for type `" + f0.Name() + "`")
				}

				var return_reg1 Register
				if datatype.IsFloatType(f1) {
					return_reg1, err = REGISTER_XMM1.GetRegister(f1)
				} else {
					return_reg1, err = REGISTER_RDX.GetRegister(f1)
				}
				if err {
					fmt.Println("codegen error: could not find return register 2 for type `" + f1.Name() + "`")
				}
				return_regs = RegisterPair{struct_type, return_reg0, return_reg1}
				goto two_regs_return_done
			}
			
			{
				rax, err := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				if err {
					fmt.Println("codegen error: could not find return register 1 for type `" + return_type.Name() + "`")
				}
				rdx, err := REGISTER_RDX.GetRegister(datatype.TYPE_UINT64)
				if err {
					fmt.Println("codegen error: could not find return register 2 for type `" + return_type.Name() + "`")
				}
				return_regs = RegisterPair{return_type, rax, rdx}
			}

			two_regs_return_done:
			out.Code.Appendln(GEN_mem_to_regpair(v.(Memory_Reference), return_regs).Code)
		} else if return_type.ByteSize() > 16 {
			// fill up the memory pointed by the ghost parameter with the return value~ ^^
			// to do this we have to actually copy the entire value into the memory pointed by ghost;
			ghost_parameter_name := ".ghost_" + function_name

			ghost_parameter, found := symbol.SymbolTableGetFromCurrentScope(ghost_parameter_name)
			if !found {
				fmt.Println("codegen error: ghost parameter `" + ghost_parameter_name + "` was not declared in this function")
				return out
			}

			// get the ghost_parameter poitner and put it in rax
			rax, _ := REGISTER_RAX.GetRegister(ghost_parameter.Type())
			out.Code.Appendln(GEN_move(ghost_parameter.(Codegen_Symbol).Data.Reference(), rax).Code)

			// create a memory reference with rax as start
			ghost_parameter_reference := Memory_Reference{
				return_type,
				0,
				rax,
				nil,
				1,
			}

			out.Code.Appendln(GEN_mem_to_mem(v.(Memory_Reference), ghost_parameter_reference).Code)
		}
	}

	function_epilogue := LabelGet("._" + function_name)
	out.Code.Appendln(GEN_jump(function_epilogue).Code)

	return out
}

func GEN_function_prologue(f *front.Ast_Node) Codegen_Out {
	res := Codegen_Out{}

	function_name := f.Children[0].Data[0].String_value

	res.Code.TextAppendSln(Instruction(".string \"\\0" + function_name + "\""))
	name := LabelGet(function_name)
	res.Code.TextAppendSln(Instruction(".global", name))
	res.Code.TextAppendSln(name.Text() + ":")

	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)
	res.Code.TextAppendSln(ii("pushq", rbp)) // don't count this
	res.Code.TextAppendSln(ii("movq", rsp, rbp))

	if CurrentReservedStack > 0 {
		// allocate used stack
		res.Code.Appendln((GEN_binop(front.AST_OP_SUB, rsp, Asm_Int_Literal{datatype.TYPE_INT64, int64(CurrentReservedStack), 10}).Code))
//		res.Code.TextAppendSln(fmt.Sprintf("// curently pushed: %d", __pushed_regs))
	//if (CurrentReservedStack - 8) % 16 != 0 {
	//	res.Code.Appendln((GEN_binop(front.AST_OP_SUB, rsp, Asm_Int_Literal{datatype.TYPE_INT64, int64(16 - ((CurrentReservedStack - 8) & 0xF)), 10}).Code))
	//}
	}

	return res
}

func GEN_function_epilogue(ast *front.Ast_Node, body_result Operand) Codegen_Out {
	res := Codegen_Out{}

	function_name := ast.Children[0].Data[0].String_value

	if body_result != nil {
		body_type := ast.Children[3].DataType

		if body_type.ByteSize() <= 8 {
			var return_reg Register
			err := false
			if datatype.IsFloatType(body_type) {
				return_reg, err = REGISTER_XMM0.GetRegister(body_type)
			} else {
				return_reg, err = REGISTER_RAX.GetRegister(body_type)
			}

			if err {
				fmt.Println("codegen error: could not find return register for type `" + body_type.Name() + "`")
			}

			res.Code.Appendln(GEN_very_generic_move(body_result, return_reg).Code)
		} else if body_type.ByteSize() <= 16 {
			var return_regs RegisterPair
			switch body_type.(type) {	case datatype_struct.StructType:
				struct_type := body_type.(datatype_struct.StructType)
				f0 := struct_type.Fields[0].Type
				f1 := struct_type.Fields[1].Type

				var return_reg0 Register
				err := false
				if datatype.IsFloatType(f0) {
					return_reg0, err = REGISTER_XMM0.GetRegister(f0)
				} else {
					return_reg0, err = REGISTER_RAX.GetRegister(f0)
				}
				if err {
					fmt.Println("codegen error: could not find return register 1 for type `" + f0.Name() + "`")
				}

				var return_reg1 Register
				if datatype.IsFloatType(f1) {
					return_reg1, err = REGISTER_XMM1.GetRegister(f1)
				} else {
					return_reg1, err = REGISTER_RDX.GetRegister(f1)
				}
				if err {
					fmt.Println("codegen error: could not find return register 2 for type `" + f1.Name() + "`")
				}
				return_regs = RegisterPair{struct_type, return_reg0, return_reg1}
				goto two_regs_return_done
			}
			
			{
				rax, err := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				if err {
					fmt.Println("codegen error: could not find return register 1 for type `" + body_type.Name() + "`")
				}
				rdx, err := REGISTER_RDX.GetRegister(datatype.TYPE_UINT64)
				if err {
					fmt.Println("codegen error: could not find return register 2 for type `" + body_type.Name() + "`")
				}
				return_regs = RegisterPair{body_type, rax, rdx}
			}

			two_regs_return_done:
			res.Code.Appendln(GEN_mem_to_regpair(body_result.(Memory_Reference), return_regs).Code)
		} else if body_type.ByteSize() > 16 {
			// fill up the memory pointed by the ghost parameter with the return value~ ^^
			// to do this we have to actually copy the entire value into the memory pointed by ghost;
			ghost_parameter_name := ".ghost_" + function_name

			ghost_parameter, found := symbol.SymbolTableGetFromCurrentScope(ghost_parameter_name)
			if !found {
				fmt.Println("codegen error: ghost parameter `" + ghost_parameter_name + "` was not declared in this function")
				return res
			}

			// get the ghost_parameter poitner and put it in rax
			rax, _ := REGISTER_RAX.GetRegister(ghost_parameter.Type())
			res.Code.Appendln(GEN_move(ghost_parameter.(Codegen_Symbol).Data.Reference(), rax).Code)

			// create a memory reference with rax as start
			ghost_parameter_reference := Memory_Reference{
				body_type,
				0,
				rax,
				nil,
				1,
			}

			res.Code.Appendln(GEN_mem_to_mem(body_result.(Memory_Reference), ghost_parameter_reference).Code)
		}
	}

	function_epilogue := "._" + function_name
	res.Code.TextAppendSln(function_epilogue + ":")

	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)

	// deallocate used stack
	res.Code.TextAppendSln(ii("movq", rbp, rsp))
	res.Code.TextAppendSln(ii("popq", rbp)) // don't count this
	CurrentReservedStack = 0
	CurrentAllocatedStack = 0

	res.Code.TextAppendSln(ii("ret"))

	return res
}

// value -> register
func GEN_load(v Operand, r Register) Codegen_Out {
	res := Codegen_Out{}

	switch v.(type) {
		case Label: 
			if v.Text()[0] != '(' {
				v = v.LiteralValue()
			}
	}
			
	if byte(r.Class) & REG_KIND_MASK == REG_KIND_XMM {
		switch v.(type) {
			case Memory_Reference:
				if v.Type().ByteSize() > 4 {
					res.Code.TextAppendSln(ii("movsd", v, r))
				} else {
					res.Code.TextAppendSln(ii("movss", v, r))
				}
			case Register:
				vr := v.(Register)
				if byte(vr.Class) & REG_KIND_MASK == REG_KIND_XMM {
					if v.Type().ByteSize() > 4 {
						res.Code.TextAppendSln(ii("movsd", vr, r))
					} else {
						res.Code.TextAppendSln(ii("movss", vr, r))
					}
				} else {
					var alloc Operand
					full := false
					alloc, full = RegisterScratchAllocate(datatype.TYPE_UINT64)
					if full {
						alloc = StackAllocate(v.Type()).Reference()

						res.Code.Appendln(GEN_move(v, alloc).Code)
						if v.Type().ByteSize() > 4 {
							res.Code.TextAppendSln(ii("movsd", alloc, r))
						} else {
							res.Code.TextAppendSln(ii("movss", alloc, r))
						}
					} else {
						_alloc, _ := alloc.(Register).Class.GetRegister(v.Type())
						res.Code.Appendln(GEN_load(v, _alloc).Code)
						res.Code.TextAppendSln(ii("movq", alloc, r))
					}
				}
		}
		return res
	}

	switch v.(type) {
		case Register:
			if byte(v.(Register).Class) & REG_KIND_MASK == REG_KIND_XMM {
				r, _ = r.Class.GetRegister(datatype.TYPE_F64)
				res.Code.TextAppendSln(ii("movq", v, r))
				return res
			}
	}

	switch v.Type().BitSize() {
	case 64:
		switch v.(type) {
			case Asm_Int_Literal:
				signed_value := v.(Asm_Int_Literal).Value
				value := uint64(signed_value)
				if signed_value < 0 {
					value = value ^ 0xFFFFFFFFFFFFFFFF
				}
				if (value >> 31) > 0 {
					res.Code.TextAppendSln(ii("movabsq", v, r))
				} else {
					res.Code.TextAppendSln(ii("movq", v, r))
				}
			default:
				res.Code.TextAppendSln(ii("movq", v, r))
		}
	case 32:
		res.Code.TextAppendSln(ii("movl", v, r))
	case 16:
		res.Code.TextAppendSln(ii("movw", v, r))
	case 8:
		res.Code.TextAppendSln(ii("movb", v, r))
	default:
		return res
	}

	return res
}

// value -> memory
func GEN_store(v Operand, m Memory_Reference) Codegen_Out {
	res := Codegen_Out{}
	
	rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)
	switch v.(type) {
		case Label: 
			if v.Text()[0] != '(' {
				v = v.LiteralValue()
			}
		case Register:
			r := v.(Register)
			if byte(r.Class) & REG_KIND_MASK == REG_KIND_XMM {
				if v.Type().ByteSize() > 4 {
					res.Code.TextAppendSln(ii("movsd", r, m))
				} else {
					res.Code.TextAppendSln(ii("movss", r, m))
				}
				return res
			}
	}
	


	switch v.Type().BitSize() {
	case 64:
		switch v.(type) {
		case Asm_Int_Literal:
			res.Code.TextAppendSln(GEN_push(rbx).Code.Text)

			res.Code.Appendln(GEN_load(v, rbx).Code)
			res.Code.TextAppendSln(ii("movq", rbx, m))

			res.Code.TextAppendSln(GEN_pop(rbx).Code.Text)
		default:
			res.Code.TextAppendSln(ii("movq", v, m))
		}
	case 32:
		res.Code.TextAppendSln(ii("movl", v, m))
	case 16:
		res.Code.TextAppendSln(ii("movw", v, m))
	case 8:
		res.Code.TextAppendSln(ii("movb", v, m))
	default:
		return res
	}

	return res
}

// value -> reg/mem
func GEN_move(s Operand, d Operand) Codegen_Out {
	switch d.(type) {
	case Register:
		return GEN_load(s, d.(Register))
	case Memory_Reference:
		return GEN_store(s, d.(Memory_Reference))
	}
	return Codegen_Out{}
}

func GEN_mem_to_mem(s Memory_Reference, d Memory_Reference) Codegen_Out {
	res := Codegen_Out{}

	rsi, _ := REGISTER_RSI.GetRegister(datatype.TYPE_UINT64)
	rdi, _ := REGISTER_RDI.GetRegister(datatype.TYPE_UINT64)
	rcx, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT64)

	res.Code.TextAppendSln(GEN_push(rsi).Code.Text)
	res.Code.TextAppendSln(GEN_push(rdi).Code.Text)
	res.Code.TextAppendSln(GEN_push(rcx).Code.Text)

	res.Code.TextAppendSln(ii("leaq", s, rsi))
	res.Code.TextAppendSln(ii("leaq", d, rdi))
	res.Code.Appendln(GEN_move(
		Asm_Int_Literal{
			datatype.TYPE_UINT64,
			int64(s.Type().ByteSize()),
			10,
		},
		rcx,
	).Code)

	res.Code.TextAppendSln(ii("cld")) // clear direction flag
	res.Code.TextAppendSln(ii("rep movsb"))

	res.Code.TextAppendSln(GEN_pop(rcx).Code.Text)
	res.Code.TextAppendSln(GEN_pop(rdi).Code.Text)
	res.Code.TextAppendSln(GEN_pop(rsi).Code.Text)

	return res
}

func GEN_mem_to_regpair(s Memory_Reference, d RegisterPair) Codegen_Out {
	res := Codegen_Out{}

	mem_size := s.Type().ByteSize()
	reg_size := d.Type().ByteSize()
	if mem_size > reg_size {
		fmt.Println("codegen error: not enough space to load memory")
		return res
	}

	a :=  mem_size
	if a > 8 {
		a = 8
	}
	b := mem_size - a
	if a + b != mem_size {
		fmt.Println("codegen error: register sizes don't match memory size")
		return res
	}

	if a > 0 {
		a_ref := Memory_Reference {
			nil, // ignore type
			s.Offset,
			s.Start,
			s.Index,
			1, 
		}
		switch a {
			case 8: res.Code.TextAppendSln(ii("movq", a_ref, d.r1))
			case 4: res.Code.TextAppendSln(ii("movl", a_ref, d.r1))
			case 2: res.Code.TextAppendSln(ii("movw", a_ref, d.r1))
			case 1: res.Code.TextAppendSln(ii("movb", a_ref, d.r1))
			default:
				fmt.Println("codegen error: the thing has a weird size!")
				return res
		}
	}

	if b > 0 {
		b_ref := Memory_Reference {
			nil, // ignore type
			s.Offset + int64(a),
			s.Start,
			s.Index,
			1, 
		}
		switch b {
			case 8: res.Code.TextAppendSln(ii("movq", b_ref, d.r2))
			case 4: res.Code.TextAppendSln(ii("movl", b_ref, d.r2))
			case 2: res.Code.TextAppendSln(ii("movw", b_ref, d.r2))
			case 1: res.Code.TextAppendSln(ii("movb", b_ref, d.r2))
			default:
				fmt.Println("codegen error: the thing has a weird size!")
				return res
		}
	}
	
	return res
}

func GEN_regpair_to_mem(s RegisterPair, d Memory_Reference) Codegen_Out {
	res := Codegen_Out{}

	mem_size := s.Type().ByteSize()
	reg_size := d.Type().ByteSize()
	if reg_size > mem_size{
		fmt.Println("codegen error: not enough space to store regs")
		return res
	}

	a :=  reg_size
	if a > 8 {
		a = 8
	}
	b := reg_size - a
	if a + b != reg_size {
		fmt.Println("codegen error: register sizes don't match expected pair size")
		return res
	}

	if a > 0 {
		a_ref := Memory_Reference {
			nil, // ignore type
			d.Offset,
			d.Start,
			d.Index,
			1, 
		}
		var a_reg Register
		switch a {
			case 8: a_reg, _ = s.r1.Class.GetRegister(datatype.TYPE_UINT64)
			case 4: a_reg, _ = s.r1.Class.GetRegister(datatype.TYPE_UINT32)
			case 2: a_reg, _ = s.r1.Class.GetRegister(datatype.TYPE_UINT16)
			case 1: a_reg, _ = s.r1.Class.GetRegister(datatype.TYPE_UINT8)
			default:
				fmt.Println("codegen error: the thing has a weird size!")
				return res
		}
		res.Code.Appendln(GEN_store(a_reg, a_ref).Code)
	}

	if b > 0 {
		b_ref := Memory_Reference {
			nil, // ignore type
			d.Offset + int64(a),
			d.Start,
			d.Index,
			1, 
		}
		var b_reg Register
		switch b {
			case 8: b_reg, _ = s.r2.Class.GetRegister(datatype.TYPE_UINT64)
			case 4: b_reg, _ = s.r2.Class.GetRegister(datatype.TYPE_UINT32)
			case 2: b_reg, _ = s.r2.Class.GetRegister(datatype.TYPE_UINT16)
			case 1: b_reg, _ = s.r2.Class.GetRegister(datatype.TYPE_UINT8)
			default:
				fmt.Println("codegen error: the thing has a weird size!")
				return res
		}
		res.Code.Appendln(GEN_store(b_reg, b_ref).Code)
	}
	
	return res
}

func GEN_storestruct_from_operands(s []Operand, d Memory_Reference) Codegen_Out {
	var res Codegen_Out

	struct_type := d.Type().(datatype_struct.StructType)
	nfields := len(s)

	fields_size := uint64(0)
	for _, f := range s {
		fields_size += f.Type().ByteSize()
	}


	if fields_size > struct_type.ByteSize() {
		fmt.Println("codegen error: not enough bytes to store struct of type `", struct_type.Name(), "`")
		return res
	}

	//struct_allocation := s
	//struct_start  := struct_allocation.Start
	//struct_offset := struct_allocation.Offset

	for field := nfields - 1; field >= 0; field-- {
		field_type := struct_type.Fields[field].Type
		field_offset := int64(struct_type.Fields[field].Offset)

		//field_allocation := Memory_Reference{
		//	field_type,
		//	field_offset,
		//	struct_start,
		//	nil,
		//	1,
		//}

		field_allocation := s[field]

		destination := Memory_Reference{
			field_type,
			field_offset + d.Offset,
			d.Start,
			d.Index,
			d.IndexCoefficient,
		}

		//
		//   in a case like this:
		//	 	struct {
		//			struct {
		//				struct {
		//					int64
		//				}
		//			}
		//		}
		//
		//	 ... we need to find the most primitive value in a rescursive way.

		res.Code.Appendln(GEN_very_generic_move(field_allocation, destination).Code)
	}

	return res
}

func GEN_arraycopy_from_operands(s []Operand, d Operand) Codegen_Out {
	res := Codegen_Out{}
	
	array_type := d.Type().(datatype_array.StaticArrayType)
	element_type := array_type.ElementType
	array_size := array_type.Length * uint64(element_type.ByteSize())

	elements_size := uint64(0)
	for _, e := range s {
		elements_size += e.Type().ByteSize()
	}
	if elements_size > array_size {
		fmt.Println("codegen error: not enough bytes to store array of type `", array_type.Name(), "`")
		return res
	}

	switch d.(type) {
		case Memory_Reference: 
			res.Code.TextAppendSln("// memory reference copy")
			destination := d.(Memory_Reference)
			for element := 0; element < len(s); element++ {
				e := s[element]
				element_destination := Memory_Reference{
					array_type.ElementType,
					int64(destination.Offset) + int64(element) * int64(array_type.ElementType.ByteSize()),
					destination.Start,
					destination.Index,
					destination.IndexCoefficient,
				}
				res.Code.Appendln(GEN_very_generic_move(e, element_destination).Code)
			}
		case RegisterPair:
			res.Code.TextAppendSln("// register pair copy!")
			destination := d.(RegisterPair)
			{
				element := 1
				e := s[element]
				element_destination := destination.r2
				res.Code.Appendln(GEN_very_generic_move(e, element_destination).Code)
			}
			{
				element := 0
				e := s[element]
				element_destination := destination.r1
				res.Code.Appendln(GEN_very_generic_move(e, element_destination).Code)
			}
	}

	return res
}

func GEN_memzero(d Memory_Reference) Codegen_Out {
	res := Codegen_Out{}
	
	rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
	rdi, _ := REGISTER_RDI.GetRegister(datatype.TYPE_UINT64)
	rcx, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT64)

	res.Code.TextAppendSln(GEN_push(rax).Code.Text)
	res.Code.TextAppendSln(GEN_push(rdi).Code.Text)
	res.Code.TextAppendSln(GEN_push(rcx).Code.Text)
	
	res.Code.TextAppendSln(ii("xorq", rax, rax)) // zero
	res.Code.TextAppendSln(ii("leaq", d, rdi))
	res.Code.Appendln(GEN_move(Asm_Int_Literal{datatype.TYPE_UINT64, int64(d.Type().ByteSize()), 10}, rcx).Code)

	res.Code.TextAppendSln(ii("cld")) // clear direction flag
	res.Code.TextAppendSln(ii("rep stosb"))

	res.Code.TextAppendSln(GEN_pop(rcx).Code.Text)
	res.Code.TextAppendSln(GEN_pop(rdi).Code.Text)
	res.Code.TextAppendSln(GEN_pop(rax).Code.Text)

	return res
}

// reference static array/string into dynamic array/string
func GEN_arrayreference(s Memory_Reference, d Operand) Codegen_Out {
	array_source := s
	switch d.(type) {
		default:
			fmt.Println("codegen error:  can't move array reference - destination to smal")
			return Codegen_Out{}
		case Memory_Reference:
			array_destination := d.(Memory_Reference)
			if array_destination.Type().Equals(datatype_string.TYPE_STRING) &&
			   !datatype_array.IsStaticArrayType(array_source.DataType) {
				array_source.DataType = datatype_array.StaticArrayType(array_source.DataType.(datatype_string.StaticStringType))
			}
			if datatype_struct.IsDynamicArrayType(array_destination.Type()) || array_destination.Type().Equals(datatype_string.TYPE_STRING) {
				out := Codegen_Out{}

				array_destination_type := datatype_struct.DynamicArrayDataType(array_destination.Type())
				array_length := array_source.Type().(datatype_array.StaticArrayType).Length
				if !array_destination.Type().Equals(datatype_string.TYPE_STRING) {
					if array_destination_type.Equals(datatype.TYPE_GENERIC) {
						array_length *= array_source.Type().(datatype_array.StaticArrayType).ElementType.ByteSize()
					}
				}
				array_data := array_source

				// get struct field references (data, len)
				s := array_destination

				struct_type := s.Type().(datatype_struct.StructType)

				struct_allocation := s
				struct_start := struct_allocation.Start
				struct_offset := struct_allocation.Offset
				struct_index := struct_allocation.Index
				struct_indexcoeff := struct_allocation.IndexCoefficient
				
				{
					field_offset := struct_offset + int64(struct_type.Fields[0].Offset)
					field_allocation := Memory_Reference{
						datatype.PointerType{array_source.Type().(datatype_array.StaticArrayType).ElementType},
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
					array_reference := GEN_reference_from_mem(array_data)
					out.Code.Appendln(array_reference.Code)

					out.Code.Appendln(GEN_move(array_reference.Result, field_allocation).Code)
				}

				{
					field_offset := struct_offset + int64(struct_type.Fields[1].Offset)
					field_allocation := Memory_Reference{
						datatype.TYPE_UINT64,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
					out.Code.Appendln(GEN_store(Asm_Int_Literal{datatype.TYPE_UINT64, int64(array_length), 10}, field_allocation).Code)
				} 
				return out
			} else {
				fmt.Println("codegen error: static to static array reference is impossible, sorry")
				return Codegen_Out{}
			}
		case RegisterPair:
			array_destination := d.(RegisterPair)

			out := Codegen_Out{}
			out.Code.TextAppendSln("// array reference")

			array_destination_type := datatype_struct.DynamicArrayDataType(array_destination.Type())
			array_length := array_source.Type().(datatype_array.StaticArrayType).Length
			if !array_destination.Type().Equals(datatype_string.TYPE_STRING) {
				if array_destination_type.Equals(datatype.TYPE_GENERIC) {
					array_length *= array_source.Type().(datatype_array.StaticArrayType).ElementType.ByteSize()
				}
			}
			array_data := array_source

			{
				field_allocation := array_destination.r1
				array_reference := GEN_reference_from_mem(array_data)
				out.Code.Appendln(array_reference.Code)
				out.Code.Appendln(GEN_move(array_reference.Result, field_allocation).Code)
			}

			{
				field_allocation := array_destination.r2
				out.Code.Appendln(GEN_load(Asm_Int_Literal{datatype.TYPE_UINT64, int64(array_length), 10}, field_allocation).Code)
			} 
			return out
	}
	return Codegen_Out{}
}

func GEN_very_generic_move(s Operand, d Operand) Codegen_Out {
	switch s.Type().(type) {
		case datatype_struct.StructType:
			res := Codegen_Out{}


			switch s.(type) { 
				case Register:
					mem := StackAllocate(s.Type()).Reference()
					res.Code.Appendln(GEN_move(s, mem).Code)
					s = mem
				case RegisterPair:
					mem := StackAllocate(s.Type()).Reference()
					res.Code.Appendln(GEN_regpair_to_mem(s.(RegisterPair), mem).Code)
					s = mem
			}
			struct_allocation := s.(Memory_Reference)


			switch d.(type) {
				case Register:
					res.Code.Appendln(GEN_move(struct_allocation, d).Code)
				case Memory_Reference:
					res.Code.Appendln(GEN_mem_to_mem(struct_allocation, d.(Memory_Reference)).Code)
				case RegisterPair:
					res.Code.Appendln(GEN_mem_to_regpair(struct_allocation, d.(RegisterPair)).Code)
			}

			if datatype_struct.IsDynamicArrayType(s.Type()) &&
			   datatype_struct.DynamicArrayDataType(s.Type()).Equals(datatype.TYPE_GENERIC) {

				// get destination length
				array_destination_length := Operand(nil)
				array_destination_type := datatype_struct.DynamicArrayDataType(d.Type())
				switch d.(type) {
					case RegisterPair:
						array_destination := d.(RegisterPair)
						array_destination_length = array_destination.r2

					case Memory_Reference:
						array_destination := d.(Memory_Reference)

						struct_type := array_destination.Type().(datatype_struct.StructType)
						struct_offset:= array_destination.Offset
						struct_start := array_destination.Start
						struct_index := array_destination.Index
						struct_indexcoeff := array_destination.IndexCoefficient

						{
							field := 1
							field_type := struct_type.Fields[field].Type
							field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

							array_destination_length = Memory_Reference{
								field_type,
								field_offset,
								struct_start,
								struct_index,
								struct_indexcoeff,
							}
						}
				}

				// divide times destination element type
				res.Code.Appendln(GEN_binop(
					front.AST_OP_DIV, array_destination_length, 
					Asm_Int_Literal{
						datatype.TYPE_UINT64,
						int64(array_destination_type.ByteSize()),
						10,
					}).Code,
				)
			} else 
			if datatype_struct.IsDynamicArrayType(d.Type()) &&
			   datatype_struct.DynamicArrayDataType(d.Type()).Equals(datatype.TYPE_GENERIC) {
				array_source := s.(Memory_Reference)
				array_source_type := datatype_struct.DynamicArrayDataType(array_source.Type())
				
				// get destination length
				array_destination_length := Operand(nil)
				switch d.(type) {
					case RegisterPair:
						array_destination := d.(RegisterPair)
						array_destination_length = array_destination.r2

					case Memory_Reference:
						array_destination := d.(Memory_Reference)

						struct_type := array_destination.Type().(datatype_struct.StructType)
						struct_offset:= array_destination.Offset
						struct_start := array_destination.Start
						struct_index := array_destination.Index
						struct_indexcoeff := array_destination.IndexCoefficient

						{
							field := 1
							field_type := struct_type.Fields[field].Type
							field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

							array_destination_length = Memory_Reference{
								field_type,
								field_offset,
								struct_start,
								struct_index,
								struct_indexcoeff,
							}
						}
				}

				// multiply times source element type
				res.Code.Appendln(GEN_binop(
					front.AST_OP_MUL, array_destination_length, 
					Asm_Int_Literal{
						datatype.TYPE_UINT64,
						int64(array_source_type.ByteSize()),
						10,
					}).Code,
				)
			}

			return res

		case datatype_array.StaticArrayType:
			if datatype_struct.IsDynamicArrayType(d.Type()) ||
			   d.Type().Equals(datatype_string.TYPE_STRING)  {
				res := Codegen_Out{}
				 
				switch s.(type) { 
					case Register:
						mem := StackAllocate(s.Type()).Reference()
						res.Code.Appendln(GEN_move(s, mem).Code)
						s = mem
					case RegisterPair:
						mem := StackAllocate(s.Type()).Reference()
						res.Code.Appendln(GEN_regpair_to_mem(s.(RegisterPair), mem).Code)
						s = mem
				}

				res.Code.Appendln(GEN_arrayreference(s.(Memory_Reference), d).Code)
				return res
			} else {
				switch d.(type) {
					case Memory_Reference:
						switch s.(type) {
							case Memory_Reference: return GEN_mem_to_mem(s.(Memory_Reference), d.(Memory_Reference))
							case RegisterPair:     return GEN_regpair_to_mem(s.(RegisterPair), d.(Memory_Reference))
						}
					case RegisterPair:
						switch s.(type) {
							case Memory_Reference: return GEN_mem_to_regpair(s.(Memory_Reference), d.(RegisterPair))
							case RegisterPair:     
								res := Codegen_Out{}

								s_pair := s.(RegisterPair)
								d_pair := d.(RegisterPair)
								res.Code.Appendln(GEN_load(s_pair.r1, d_pair.r1).Code)
								res.Code.Appendln(GEN_load(s_pair.r2, d_pair.r2).Code)
								return res
						}
				}
			}

			fmt.Println("codegen error:  can't move array reference - destination to smal")
			return Codegen_Out{}
		case datatype_string.StaticStringType:	
			// can only move static string to string
			if !d.Type().Equals(datatype_string.TYPE_STRING) {
				fmt.Println("codegen error: can't move static string to `", d.Type().Name(), "`")
				return Codegen_Out{}
			}
			out := Codegen_Out{}

			// static strings are always in the read-only data section, so they are always Labels!
			string_label := s.(Label)

			rax, _ := REGISTER_RAX.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			out.Code.Appendln(GEN_move(string_label, rax).Code)

			string_allocation := Memory_Reference{
				datatype_array.StaticArrayType(s.Type().(datatype_string.StaticStringType)),
				0,
				rax,
				nil,
				1,
			}

			out.Code.Appendln(GEN_very_generic_move(string_allocation, d).Code)
			return out
		default:
			res := Codegen_Out{}
			res.Code.Appendln(GEN_move(s, d).Code)
			return res
	}

	return Codegen_Out{}
}

func GEN_jump(a Operand) Codegen_Out {
	res := Codegen_Out{}

	res.Code.TextAppendSln(ii("jmp", a))

	return res
}

func GEN_function_params(f *front.Ast_Node, args []Operand) Codegen_Out {
	res := Codegen_Out{}
	function_name := f.Children[0].Data[0].String_value
	
	RegisterArgumentFreeAll()

	if f.DataType.ByteSize() > 16 {
		// create a ghost parameter for returning the big stuff
		ghost_parameter_name := ".ghost_" + function_name
		variable_type := datatype.PointerType{f.DataType}

		// this is expensive and superflous
		/*
			_, found := symbol.SymbolTableGetInCurrentScope(ghost_parameter_name)

			if found {
				fmt.Println("codegen error: `" + ghost_parameter_name + "` was already declared in this scope")
				return out
			}
		*/

		variable_allc := StackAllocate(variable_type)
		init_value := Asm_Int_Literal{variable_type, 0, 10}
		res.Code.Appendln(GEN_move(init_value, variable_allc.Reference()).Code)

		prev_scope := symbol.Symbol_Scope_Stack[len(symbol.Symbol_Scope_Stack)-2]
		err := symbol.SymbolTableInsert(ghost_parameter_name, prev_scope, Codegen_Symbol{variable_type, variable_allc, nil})
		if err != nil {
			fmt.Println(err)
			return res
		}

		// push-front the ghost parameter into args
		new_args := make([]Operand, 0, 1+len(args))
		new_args = append(new_args, variable_allc.Reference())
		new_args = append(new_args, args...)
		args = new_args
	}

	allocated_int_regs := 0
	allocated_float_regs := 0
	allocated_stack := int64(16) // return address (8B) + pushed rbp (8B)
	for _, a := range args {
		if (a.Type().ByteSize() > 16 || ((datatype.IsIntegerType(a.Type()) && allocated_int_regs >= len(IntegerArgumentRegisters)) || (a.Type().ByteSize() > 8 && allocated_int_regs >= len(IntegerArgumentRegisters)-1))) ||
		   (datatype.IsFloatType(a.Type()) && allocated_float_regs >= len(FloatArgumentRegisters)) {
			rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_UINT64)

			stack_region := Memory_Reference{
				a.Type(),
				allocated_stack,
				rbp,
				nil,
				1,
			}

			res.Code.Appendln(GEN_very_generic_move(stack_region, a.(Memory_Reference)).Code)

			allocated_stack += int64(a.Type().ByteSize())
		} else if a.Type().ByteSize() > 8 {
			// TODO: don't just assume it's a struct with two fields
			reg_a, full := RegisterArgumentAllocate(datatype.TYPE_UINT64)
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + a.Type().Name() + "`")
				return res
			}
			reg_b, full := RegisterArgumentAllocate(datatype.TYPE_UINT64)
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + a.Type().Name() + "`")
				return res
			}

			res.Code.Appendln(GEN_very_generic_move(RegisterPair{a.Type(), reg_a, reg_b}, a.(Memory_Reference)).Code)

			allocated_int_regs += 2
		} else {
			var arg Operand
			arg = a

			arg_reg, full := RegisterArgumentAllocate(arg.Type())
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + arg.Type().Name() + "`")
				return res
			}
			
			if datatype.IsFloatType(a.Type()) {
				allocated_float_regs++
			} else {
				allocated_int_regs++
			}

			res.Code.Appendln(GEN_move(arg_reg, arg).Code)
		}
	}

	RegisterArgumentFreeAll()

	return res
}
func GEN_callargs(args []Operand, params []datatype.DataType) Codegen_Out {
	res := Codegen_Out{}

	// TODO: get rid of this!!
	for i := len(params); i < len(args); i++ {
		params = append(params, args[i].Type())
	}

	// TODO: dont do thsi
	register_xmm_free_all()

	allocated_int_regs := 0
	allocated_float_regs := 0

	var args_in_stack []int
	for i, a := range args {
		if (params[i].ByteSize() > 16 || ((datatype.IsIntegerType(params[i]) && allocated_int_regs >= len(IntegerArgumentRegisters)) || (params[i].ByteSize() > 8 && allocated_int_regs >= len(IntegerArgumentRegisters)-1))) ||
		   (datatype.IsFloatType(params[i]) && allocated_float_regs >= len(FloatArgumentRegisters)) {

			args_in_stack = append(args_in_stack, i)
		} else if params[i].ByteSize() > 8 {
			// TODO: don't just assume it's a struct
			reg_a, full := RegisterArgumentAllocate(datatype.TYPE_UINT64)
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + params[i].Name() + "`")
				return res
			}
			reg_b, full := RegisterArgumentAllocate(datatype.TYPE_UINT64)
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + params[i].Name() + "`")
				return res
			}

			allocated_int_regs += 2

			res.Code.Appendln(GEN_very_generic_move(a, RegisterPair{params[i], reg_a, reg_b}).Code)
		} else {
			var arg Operand
			arg = a

			fmt.Println(arg.Type().Name())
			arg_reg, full := RegisterArgumentAllocate(arg.Type())
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + arg.Type().Name() + "`")
				return res
			}

			if datatype.IsFloatType(params[i]) {
				allocated_float_regs++
			} else {
				allocated_int_regs++
			}
			res.Code.Appendln(GEN_load(arg, arg_reg).Code)
		}
	}

	// ** reserve stack for args
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_UINT64)
	for j := 0; j < len(args_in_stack); j++ {
		i := args_in_stack[j]

		// We unreserve this in GEN_call. I know this is confusing.
		allocated_region := StackAllocateAndRemember(params[i])
		res.Code.TextAppendSln(ii("subq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(allocated_region.reserved), 10}, rsp))
	}

	// ** put args in stack
	rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
	res.Code.Appendln(GEN_move(rsp, rax).Code)
	for j := 0; j < len(args_in_stack); j++ {
		i := args_in_stack[j]
		
		stack_region := Memory_Reference{
			params[i],
			0,
			rax,
			nil,
			1,
		}
		
		res.Code.Appendln(GEN_very_generic_move(args[i], stack_region).Code)
		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(params[i].ByteSize()), 10}, rax))
	}

	RegisterArgumentFreeAll()

	return res
}

func GEN_call(f *front.Ast_Node, args []Operand) Codegen_Out {
	res := Codegen_Out{}
	
	function_name := f.Data[0].String_value
	declaration, found := symbol.SymbolTableGetFromCurrentScope(function_name)
	if !found {
		fmt.Println("codegen error: undefined function `", function_name, "`")
		return res
	}
	function_params := declaration.(Codegen_Symbol).ArgTypes

	var return_value_memory Memory_Reference
	pushed_rbx := false
	if f.DataType.ByteSize() > 16 {
		// allocate memory
		memory := StackAllocate(f.DataType).Reference()
		return_value_memory = memory

		// get a pointer to that memory and put it in a register
		pointer_type := datatype.PointerType{memory.Type()}
		var allocation Operand
		var full bool
		reg, full := RegisterScratchAllocate(pointer_type)
		if full {
			allocation, full = REGISTER_RBX.GetRegister(pointer_type)
			if full {
				fmt.Println("codegen error: could not find return register for type `" + f.DataType.Name() + "`")
			}
			res.Code.TextAppendSln(GEN_push(allocation).Code.Text)
			pushed_rbx = true
		} else {
			allocation = reg
		}

		res.Code.TextAppendSln(ii("leaq", memory, allocation))

		// push-front pointer to args
		new_args := make([]Operand, 0, 1+len(args))
		new_args = append(new_args, allocation)
		new_args = append(new_args, args...)
		args = new_args
		
		// push-front type to params
		new_function_params := make([]datatype.DataType, 0, 1+len(function_params))
		new_function_params = append(new_function_params, pointer_type)
		new_function_params = append(new_function_params, function_params...)
		function_params = new_function_params
	}


	
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)
	actually_reserved := CurrentReservedStack + uint64(__pushed_regs * 8)
//	res.Code.TextAppendSln(fmt.Sprintf("// currently reserved: %x; actually_reserved: %x; currently pueshed: %d", CurrentReservedStack, actually_reserved, __pushed_regs))
	bytes := uint64(0)
	if actually_reserved % 16 != 0 {
		bytes = 16 - (actually_reserved & 0xF)
		CurrentReservedStack += bytes
		res.Code.TextAppendSln(ii("subq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(bytes), 10}, rsp))
	}



	call_args := GEN_callargs(args, function_params)
	res.Code.Appendln(call_args.Code)

	// C uses rax to know if we are passing
	// floating point arguments as varargs.
	// TODO: do this only if varargs
	rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)

	rax_value := Asm_Int_Literal{datatype.TYPE_UINT64, 0, 10}
	for _, a := range args {
		if datatype.IsFloatType(a.Type()) {
			rax_value.Value = 1
			break
		}
	}
	res.Code.Appendln(GEN_move(rax_value, rax).Code)
	


	name := LabelGet(function_name)
	res.Code.TextAppendSln(ii("call", name))
	

	if bytes > 0 {
		CurrentReservedStack -= bytes
		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(bytes), 10}, rsp))
	}
	

	/*
	nargs := len(f.Children)
	nargs_in_stack := nargs - len(IntegerArgumentRegisters)
	if nargs_in_stack > 0 {
		reserved_stack := uint32(nargs_in_stack * 8)
		if reserved_stack%16 != 0 {
			reserved_stack += 16 - (reserved_stack & 0xF)
		}

		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_INT64, int64(reserved_stack), 10}, rsp))
		for i := 0; i < nargs_in_stack; i += 2 {
			StackUnreserveBytes(16)
		}
	}
	*/

	// unreserve the stack space where we passed the arguments
	var arguments_in_stack *Stack_Region =  StackDeallocateCurrentRegion()
	for arguments_in_stack != nil {
		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(arguments_in_stack.reserved), 10}, rsp))
		arguments_in_stack  = StackDeallocateCurrentRegion()
	}
	
	if pushed_rbx {
		allocation, _ := REGISTER_RBX.GetRegister(datatype.TYPE_UINT64)
		res.Code.TextAppendSln(GEN_pop(allocation).Code.Text)
	}


	if f.DataType != nil &&
		f.DataType != datatype.TYPE_NONE &&
		f.DataType != datatype.TYPE_UNDEFINED {
		var result Operand

		if f.DataType.ByteSize() <= 8 {
			reg, full := RegisterScratchAllocate(f.DataType)
			if full {
				result = StackAllocate(f.DataType).Reference()
			} else {
				result = reg
			}

			var return_reg Register
			err := false
			if datatype.IsFloatType(f.DataType) {
				return_reg, err = REGISTER_XMM0.GetRegister(f.DataType)
			} else {
				return_reg, err = REGISTER_RAX.GetRegister(f.DataType)
			}

			if err {
				fmt.Println("codegen error: could not find return register for type `" + f.DataType.Name() + "`")
			}

			res.Code.Appendln(GEN_very_generic_move(return_reg, result).Code)
		} else if f.DataType.ByteSize() <= 16 {
			result = StackAllocate(f.DataType).Reference()

			var return_regs RegisterPair
			switch f.DataType.(type) {	case datatype_struct.StructType:
				struct_type := f.DataType.(datatype_struct.StructType)
				f0 := struct_type.Fields[0].Type
				f1 := struct_type.Fields[1].Type

				var return_reg0 Register
				err := false
				if datatype.IsFloatType(f0) {
					return_reg0, err = REGISTER_XMM0.GetRegister(f0)
				} else {
					return_reg0, err = REGISTER_RAX.GetRegister(f0)
				}
				if err {
					fmt.Println("codegen error: could not find return register 1 for type `" + f0.Name() + "`")
				}

				var return_reg1 Register
				if datatype.IsFloatType(f1) {
					return_reg1, err = REGISTER_XMM1.GetRegister(f1)
				} else {
					return_reg1, err = REGISTER_RDX.GetRegister(f1)
				}
				if err {
					fmt.Println("codegen error: could not find return register 2 for type `" + f1.Name() + "`")
				}
				return_regs = RegisterPair{struct_type, return_reg0, return_reg1}
				goto two_regs_return_done
			}
			
			{
				rax, err := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				if err {
					fmt.Println("codegen error: could not find return register 1 for type `" + f.DataType.Name() + "`")
				}
				rdx, err := REGISTER_RDX.GetRegister(datatype.TYPE_UINT64)
				if err {
					fmt.Println("codegen error: could not find return register 2 for type `" + f.DataType.Name() + "`")
				}
				return_regs = RegisterPair{f.DataType, rax, rdx}
			}

			two_regs_return_done:
			res.Code.Appendln(GEN_regpair_to_mem(return_regs, result.(Memory_Reference)).Code)
		} else if f.DataType.ByteSize() > 16 {
			return_type := datatype.PointerType{f.DataType}
			reg, full := RegisterScratchAllocate(return_type)
			if full {
				result = StackAllocate(return_type).Reference()
			} else {
				result = reg
			}

			return_reg, err := REGISTER_RAX.GetRegister(return_type)
			if err {
				fmt.Println("codegen error: could not find return register for type `" + f.DataType.Name() + "`")
			}

			res.Code.Appendln(GEN_very_generic_move(return_reg, result).Code)

			// the actual result is going to be the stack allocation that we allocated before...
			// this is true if we assume that returned pointer = given pointer
			// but is this always true? TODO: figure this out
			result = return_value_memory

		}

		res.Result = result
	} else {
		res.Result = nil
	}

	return res
}

func GEN_for(i Codegen_Out, c Codegen_Out, e Codegen_Out, b Codegen_Out) Codegen_Out {
	res := Codegen_Out{}

	res.Code.Appendln(i.Code)

	for_label := LabelGen()
	for_exit_label := LabelGen()
	res.Code.TextAppendSln(for_label.Text() + ":")

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result))
	res.Code.TextAppendSln(ii("jz", for_exit_label))

	res.Code.Appendln(b.Code)

	res.Code.Appendln(e.Code)

	res.Code.TextAppendSln(ii("jmp", for_label))

	res.Code.TextAppendSln(for_exit_label.Text() + ":")
	return res
}

func GEN_while(c Codegen_Out, b Codegen_Out) Codegen_Out {
	res := Codegen_Out{}

	while_label := LabelGen()
	while_exit_label := LabelGen()
	res.Code.TextAppendSln(while_label.Text() + ":")

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result))
	res.Code.TextAppendSln(ii("jz", while_exit_label))

	res.Code.Appendln(b.Code)

	res.Code.TextAppendSln(ii("jmp", while_label))
	res.Code.TextAppendSln(while_exit_label.Text() + ":")

	return res
}

func GEN_switch(exp Codegen_Out, c_exp []Codegen_Out, c_body []Codegen_Out, d_body Codegen_Out, _type datatype.DataType) Codegen_Out {
	res := Codegen_Out{}

	var allocation Operand
	if _type != datatype.TYPE_NONE {
		reg, full := RegisterScratchAllocate(_type)
		if full {
			allocation = StackAllocate(_type).Reference()
		} else {
			allocation = reg
		}
	}

	var def Operand
	reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
	if full {
		def = StackAllocate(datatype.TYPE_BOOL).Reference()
	} else {
		def = reg
	}

	res.Code.TextAppendSln(ii("movb $0, ", def))
	
	res.Code.Appendln(exp.Code)
	for i, _case := range(c_exp) {
		res.Code.Appendln(_case.Code)
		c := GEN_binop(front.AST_OP_EQU, exp.Result, _case.Result)
		res.Code.Appendln(c.Code)
		res.Code.TextAppendSln(ii("andb", c.Result, c.Result))

		case_end := LabelGen()
		res.Code.TextAppendSln(ii("jz", case_end))

		 // update default condition
		res.Code.TextAppendSln(ii("movb $0xFF, ", def))
		
		res.Code.Appendln(c_body[i].Code)
	
		if _type != datatype.TYPE_NONE && c_body[i].Result != nil {
			res.Code.Appendln(GEN_move(c_body[i].Result, allocation).Code)
		}
		
		res.Code.TextAppendSln(case_end.Text() + ":")
	}

	res.Code.TextAppendSln(ii("andb", def, def))

	default_end := LabelGen()
	res.Code.TextAppendSln(ii("jnz", default_end))

	res.Code.Appendln(d_body.Code)
	if _type != datatype.TYPE_NONE && d_body.Result != nil {
		res.Code.Appendln(GEN_move(d_body.Result, allocation).Code)
	}
	res.Code.TextAppendSln(default_end.Text() + ":")

	res.Result = allocation
	return res
}
func GEN_if(c Codegen_Out, t Codegen_Out) Codegen_Out {
	res := Codegen_Out{}
	if_exit_label := LabelGen()

	if_type := datatype.DataType(datatype.TYPE_NONE)

	if t.Result != nil {
		if_type = t.Result.Type()
	}

	var allocation Operand
	if if_type != datatype.TYPE_NONE {
		reg, full := RegisterScratchAllocate(if_type)
		if full {
			allocation = StackAllocate(if_type).Reference()
		} else {
			allocation = reg
		}
	}

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result))
	res.Code.TextAppendSln(ii("jz", if_exit_label))

	res.Code.Appendln(t.Code)

	if if_type != datatype.TYPE_NONE && t.Result != nil {
		res.Code.Appendln(GEN_move(t.Result, allocation).Code)
	}

	res.Code.TextAppendSln(if_exit_label.Text() + ":")
	res.Result = allocation
	return res
}

func GEN_ifelse(c Codegen_Out, t Codegen_Out, f Codegen_Out) Codegen_Out {
	res := Codegen_Out{}

	if_false_label := LabelGen()
	if_exit_label := LabelGen()

	if_type := datatype.DataType(datatype.TYPE_NONE)

	if t.Result != nil {
		if_type = t.Result.Type()
	}

	var allocation Operand
	if if_type != datatype.TYPE_NONE {
		reg, full := RegisterScratchAllocate(if_type)
		if full {
			allocation = StackAllocate(if_type).Reference()
		} else {
			allocation = reg
		}
	}

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result))
	res.Code.TextAppendSln(ii("jz", if_false_label))

	res.Code.Appendln(t.Code)

	if if_type != datatype.TYPE_NONE && t.Result != nil {
		res.Code.Appendln(GEN_move(t.Result, allocation).Code)
	}

	res.Code.Appendln(GEN_jump(if_exit_label).Code)
	res.Code.TextAppendSln(if_false_label.Text() + ":")

	res.Code.Appendln(f.Code)

	if if_type != datatype.TYPE_NONE && f.Result != nil {
		res.Code.Appendln(GEN_move(f.Result, allocation).Code)
	}

	res.Code.TextAppendSln(if_exit_label.Text() + ":")

	res.Result = allocation
	return res
}

func GEN_reference(s Codegen_Symbol) Codegen_Out {
	res := Codegen_Out{}

	pointer_type := datatype.PointerType{s.Type()}

	rbx, _ := REGISTER_RBX.GetRegister(pointer_type)

	ref := s.Data.Reference()

	var allocation Operand

	var full bool
	reg, full := RegisterScratchAllocate(pointer_type)
	if full {
		allocation = rbx
		res.Code.TextAppendSln(GEN_push(allocation).Code.Text)
	} else {
		allocation = reg
	}

	res.Code.TextAppendSln(ii("leaq", ref, allocation))

	if full {
		old := allocation
		allocation = StackAllocate(pointer_type).Reference()
		res.Code.Appendln(GEN_move(old, allocation).Code)
		res.Code.TextAppendSln(GEN_pop(old).Code.Text)
	}

	res.Result = allocation
	return res
}

func GEN_reference_from_mem(s Memory_Reference) Codegen_Out {
	res := Codegen_Out{}
	pointer_type := datatype.PointerType{s.Type()}
	rbx, _ := REGISTER_RBX.GetRegister(pointer_type)
	ref := s
	var allocation Operand

	var full bool
	reg, full := RegisterScratchAllocate(pointer_type)
	if full {
		allocation = rbx
		res.Code.TextAppendSln(GEN_push(allocation).Code.Text)
	} else {
		allocation = reg
	}

	res.Code.TextAppendSln(ii("leaq", ref, allocation))

	if full {
		old := allocation
		allocation = StackAllocate(pointer_type).Reference()
		res.Code.Appendln(GEN_move(old, allocation).Code)
		res.Code.TextAppendSln(GEN_pop(old).Code.Text)
	}

	res.Result = allocation
	return res


}

func GEN_uniop(t front.Ast_Type, v Operand) Codegen_Out {
	res := Codegen_Out{}
	var allocation Operand

	data_size := v.Type().BitSize()

	switch t {
	case front.AST_OP_NEG:
		if datatype.IsFloatType(v.Type()) {
			// load to scratch
			var full bool
			reg, full := RegisterScratchAllocate(v.Type())
			if full {
				allocation = StackAllocate(v.Type()).Reference()
			} else {
				allocation = reg
			}
			
			res.Code.Appendln(GEN_move(Asm_Int_Literal{v.Type(), 0, 10}, allocation).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_ESUB, allocation, v).Code)
			res.Code.Appendln(GEN_move(allocation, v).Code)
		} else {
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("negq", v))
			case 32:
				res.Code.TextAppendSln(ii("negl", v))
			case 16:
				res.Code.TextAppendSln(ii("negw", v))
			case 8:
				res.Code.TextAppendSln(ii("negb", v))
			}
		}
		allocation = v
	case front.AST_OP_NOT:
		res.Code.TextAppendSln(
			ii(
				"xorb",
				Asm_Int_Literal{datatype.TYPE_BOOL, 1, 10},
				v,
			),
		)
		allocation = v
	case front.AST_OP_BNOT:
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("notq", v))
		case 32:
			res.Code.TextAppendSln(ii("notl", v))
		case 16:
			res.Code.TextAppendSln(ii("notw", v))
		case 8:
			res.Code.TextAppendSln(ii("notb", v))
		}
		allocation = v
	case front.AST_OP_INC:
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("incq", v))
		case 32:
			res.Code.TextAppendSln(ii("incl", v))
		case 16:
			res.Code.TextAppendSln(ii("incw", v))
		case 8:
			res.Code.TextAppendSln(ii("incb", v))
		}
		allocation = v
	case front.AST_OP_DEC:
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("decq", v))
		case 32:
			res.Code.TextAppendSln(ii("decl", v))
		case 16:
			res.Code.TextAppendSln(ii("decw", v))
		case 8:
			res.Code.TextAppendSln(ii("decb", v))
		}
		allocation = v
	}

	res.Result = allocation
	return res
}

func GEN_binop(t front.Ast_Type, l Operand, r Operand) Codegen_Out {
	res := Codegen_Out{}
	var allocation Operand

	data_size := l.Type().BitSize()
	rax, _ := REGISTER_RAX.GetRegister(r.Type())
	rax_pushed := false
	switch r.(type) {
		case Asm_Int_Literal: {
			if (uint64(r.(Asm_Int_Literal).Value) >> 31) > 0 {
				// this is buggy !
				if rax.Allocated() {
					res.Code.TextAppendSln(GEN_push(rax).Code.Text)
					rax_pushed = true
				}
				rax.Allocate()

				res.Code.Appendln(GEN_load(r, rax).Code)
				r = rax
			}
		}
	}

	switch t {
	case front.AST_OP_SUM, front.AST_OP_ESUM:
		if l.Type().Equals(datatype_string.TYPE_STRING) {
			// allocate result 
			result := StackAllocate(datatype_string.TYPE_STRING).Reference()

			// get r.data and r.length
			rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
			r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			r_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
			res.Code.Appendln(GEN_very_generic_move(r, r_regs).Code)

			// get l.data and l.length
			l_data := Operand(nil)
			l_length := Operand(nil)
			{
				struct_type := l.Type().(datatype_struct.StructType)
				l_ref := l.(Memory_Reference)
				struct_offset:= l_ref.Offset
				struct_start := l_ref.Start
				struct_index := l_ref.Index
				struct_indexcoeff := l_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// get result.data and result.length
			res_data := Operand(nil)
			res_length := Operand(nil)
			{
				struct_type := result.Type().(datatype_struct.StructType)
				res_ref := result
				struct_offset:= res_ref.Offset
				struct_start := res_ref.Start
				struct_index := res_ref.Index
				struct_indexcoeff := res_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			rdi, _ := REGISTER_RDI.GetRegister(l_length.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, rdi).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, l_length).Code)
			res.Code.TextAppendSln(ii("incq", rdi)) // allocate +1 for zero-termination
			res.Code.TextAppendSln(ii("call", Label{nil, "malloc"}))

			rax, _ = REGISTER_RAX.GetRegister(res_data.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, res_data).Code)
			
			{
				/*
					// copy left into res.data
					movq l.data, %rsi
					movq res.data, %rdi
					movq l.len, %rcx
					cld
					rep movsb
				*/
				rsi, _ := REGISTER_RSI.GetRegister(r10.Type())
				rcx, _ := REGISTER_RCX.GetRegister(rax.Type())
				res.Code.Appendln(GEN_very_generic_move(l_data, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(res_data, rdi).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))
			}
				
			
			// TODO: check is l_data_save is freeable and free it!

			{
				/*
					// copy right into left.data + left.len
					movq r.data, %rsi

					movq l.data, %rdi
					addq l.len, %rdi

					movq r.len, %rcx
					cld
					rep movsb
				*/

				// again, get r.data and r.length
				rax, _ = REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				r10, _ = REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
				r_regs = RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
				res.Code.Appendln(GEN_very_generic_move(r, r_regs).Code)

				rcx, _ := REGISTER_RCX.GetRegister(rax.Type())
				rsi, _ := REGISTER_RSI.GetRegister(r10.Type())
				res.Code.Appendln(GEN_very_generic_move(r10, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(res_data, rdi).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, l_length).Code)
				res.Code.Appendln(GEN_very_generic_move(rax, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))
			}

			/*
				// update l.len
				addq r.len, l.len
			*/
			{
			res.Code.Appendln(GEN_very_generic_move(l_length, res_length).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_SUM, res_length, rax).Code)

			res.Code.Appendln(GEN_very_generic_move(res_length, r10).Code)
			res.Code.TextAppendSln(ii("incq", r10))

			// zero-terminate
			string_tail := GEN_dynamic_array_index(result, r10)
			res.Code.Appendln(string_tail.Code)
			string_tail_reference := string_tail.Result.(Memory_Reference)
			res.Code.Appendln(GEN_very_generic_move(Asm_Int_Literal{datatype.TYPE_UINT8, 0, 10}, string_tail_reference).Code)
			}


			allocation = result
			if t == front.AST_OP_ESUM {
				res.Code.Appendln(GEN_very_generic_move(allocation, l).Code)
			}
			break
		}
		if r.Type().Equals(datatype_string.TYPE_STRING) {
			// literally swap them out because i'm lazy!
			tmp := l
			l = r
			r = tmp

			// allocate result 
			result := StackAllocate(datatype_string.TYPE_STRING).Reference()

			// get r.data and r.length
			rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
			r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			r_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
			res.Code.Appendln(GEN_very_generic_move(r, r_regs).Code)

			// get l.data and l.length
			l_data := Operand(nil)
			l_length := Operand(nil)
			{
				struct_type := l.Type().(datatype_struct.StructType)
				l_ref := l.(Memory_Reference)
				struct_offset:= l_ref.Offset
				struct_start := l_ref.Start
				struct_index := l_ref.Index
				struct_indexcoeff := l_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// get result.data and result.length
			res_data := Operand(nil)
			res_length := Operand(nil)
			{
				struct_type := result.Type().(datatype_struct.StructType)
				res_ref := result
				struct_offset:= res_ref.Offset
				struct_start := res_ref.Start
				struct_index := res_ref.Index
				struct_indexcoeff := res_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			rdi, _ := REGISTER_RDI.GetRegister(l_length.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, rdi).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, l_length).Code)
			res.Code.TextAppendSln(ii("incq", rdi)) // allocate +1 for zero-termination
			res.Code.TextAppendSln(ii("call", Label{nil, "malloc"}))

			rax, _ = REGISTER_RAX.GetRegister(res_data.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, res_data).Code)
			
			{
				/*
					// copy left into res.data
					movq l.data, %rsi
					movq res.data, %rdi
					movq l.len, %rcx
					cld
					rep movsb
				*/
				rax, _ = REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				r10, _ = REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
				r_regs = RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
				res.Code.Appendln(GEN_very_generic_move(r, r_regs).Code)

				rsi, _ := REGISTER_RSI.GetRegister(r10.Type())
				rcx, _ := REGISTER_RCX.GetRegister(rax.Type())
				res.Code.Appendln(GEN_very_generic_move(l_data, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(res_data, rdi).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, rax).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))
			}
				
			
			// TODO: check is l_data_save is freeable and free it!

			{
				/*
					// copy right into left.data + left.len
					movq r.data, %rsi

					movq l.data, %rdi
					addq l.len, %rdi

					movq r.len, %rcx
					cld
					rep movsb
				*/
				rcx, _ := REGISTER_RCX.GetRegister(rax.Type())
				rsi, _ := REGISTER_RSI.GetRegister(r10.Type())
				res.Code.Appendln(GEN_very_generic_move(r10, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(res_data, rdi).Code)
				res.Code.Appendln(GEN_very_generic_move(rax, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))
			}

			/*
				// update l.len
				addq r.len, l.len
			*/

			{
			res.Code.Appendln(GEN_very_generic_move(l_length, res_length).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_SUM, res_length, rax).Code)

			res.Code.Appendln(GEN_very_generic_move(res_length, r10).Code)
			res.Code.TextAppendSln(ii("incq", r10))

			// zero-terminate
			string_tail := GEN_dynamic_array_index(result, r10)
			res.Code.Appendln(string_tail.Code)
			string_tail_reference := string_tail.Result.(Memory_Reference)
			res.Code.Appendln(GEN_very_generic_move(Asm_Int_Literal{datatype.TYPE_UINT8, 0, 10}, string_tail_reference).Code)
			}

			allocation = result
			if t == front.AST_OP_ESUM {
				res.Code.Appendln(GEN_very_generic_move(allocation, l).Code)
			}
			break
		}

		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto r_fine
					} 
				case Memory_Reference:
					goto r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			r_fine:


			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("addsd", r, l))
			case 32:
				res.Code.TextAppendSln(ii("addss", r, l))
			}
			res.Code.Appendln(GEN_move(l, old_l).Code)

			l = old_l	
			r = old_r
		} else {
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("addq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("addl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("addw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("addb", r, l))
			}
		}
		allocation = l
	case front.AST_OP_SUB, front.AST_OP_ESUB:
		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto sub_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			sub_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto sub_r_fine
					}
				case Memory_Reference:
					goto sub_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			sub_r_fine:


			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("subsd", r, l))
			case 32:
				res.Code.TextAppendSln(ii("subss", r, l))
			}
			res.Code.Appendln(GEN_move(l, old_l).Code)
			l = old_l
			r = old_r
		} else {	
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("subq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("subl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("subw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("subb", r, l))
			}
		}
		allocation = l
	case front.AST_OP_MUL, front.AST_OP_EMUL:
		if datatype_string.IsStaticStringType(l.Type()) {
			// allocate result 
			result := StackAllocate(datatype_string.TYPE_STRING).Reference()

			// get result.data and result.length
			res_data := Operand(nil)
			res_length := Operand(nil)
			{
				struct_type := result.Type().(datatype_struct.StructType)
				res_ref := result
				struct_offset:= res_ref.Offset
				struct_start := res_ref.Start
				struct_index := res_ref.Index
				struct_indexcoeff := res_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// get l.data and l.length
			var l_data Register
			var l_length Register

			{
				rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
				l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
				res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)
				l_data = r10
				l_length = rax
			}

			rdi, _ := REGISTER_RDI.GetRegister(r.Type())
			res.Code.Appendln(GEN_very_generic_move(r, rdi).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, l_length).Code)
			res.Code.TextAppendSln(ii("incq", rdi)) // allocate +1 for zero-termination
			res.Code.TextAppendSln(ii("call", Label{nil, "malloc"}))
			rax, _ = REGISTER_RAX.GetRegister(res_data.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, res_data).Code)

			{
				rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
				l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
				res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)
				l_data = r10
				l_length = rax
			}

			{
				// r11 = counter = 0
				r11, _ := REGISTER_R11.GetRegister(r.Type())
				res.Code.TextAppendSln(ii("xorq", r11, r11))

				// make loop
				copy_loop := LabelGen()
				copy_loop_end := LabelGen()
				res.Code.TextAppendSln(copy_loop.Text() + ":")

				res.Code.TextAppendSln(ii("cmpq", r11, r))
				res.Code.TextAppendSln(ii("jle", copy_loop_end))

				/*
					// copy left into res.data
					movq l.data, %rsi
					movq res.data, %rdi
					movq l.len, %rcx
					cld
					rep movsb
				*/
				rsi, _ := REGISTER_RSI.GetRegister(l_data.Type())
				rcx, _ := REGISTER_RCX.GetRegister(l_length.Type())
				res.Code.Appendln(GEN_very_generic_move(l_data, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rdi).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, r11).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, res_data).Code)

				{
					rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
					r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
					l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
					res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)
					l_data = r10
					l_length = rax
				}

				res.Code.Appendln(GEN_very_generic_move(l_length, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))

				// increment counter
				res.Code.TextAppendSln(ii("incq", r11))
				res.Code.TextAppendSln(ii("jmp", copy_loop))
				res.Code.TextAppendSln(copy_loop_end.Text() + ":")
			}
				
			
			// TODO: check is l_data_save is freeable and free it!

			/*
				// update l.len
				addq r.len, l.len
			*/
			{
			r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			res.Code.Appendln(GEN_very_generic_move(l_length, res_length).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, res_length, r).Code)

			res.Code.Appendln(GEN_very_generic_move(res_length, r10).Code)
			res.Code.TextAppendSln(ii("incq", r10))

			// zero-terminate
			string_tail := GEN_dynamic_array_index(result, r10)
			res.Code.Appendln(string_tail.Code)
			string_tail_reference := string_tail.Result.(Memory_Reference)
			res.Code.Appendln(GEN_very_generic_move(Asm_Int_Literal{datatype.TYPE_UINT8, 0, 10}, string_tail_reference).Code)
			}


			allocation = result
			if t == front.AST_OP_EMUL {
				res.Code.Appendln(GEN_very_generic_move(allocation, l).Code)
			}
			break
		}
		if datatype_string.IsStaticStringType(r.Type()) {
			// shameless
			tmp := l
			l = r
			r = tmp

			// allocate result 
			result := StackAllocate(datatype_string.TYPE_STRING).Reference()

			// get result.data and result.length
			res_data := Operand(nil)
			res_length := Operand(nil)
			{
				struct_type := result.Type().(datatype_struct.StructType)
				res_ref := result
				struct_offset:= res_ref.Offset
				struct_start := res_ref.Start
				struct_index := res_ref.Index
				struct_indexcoeff := res_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// get l.data and l.length
			var l_data Register
			var l_length Register

			{
				rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
				l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
				res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)
				l_data = r10
				l_length = rax
			}

			rdi, _ := REGISTER_RDI.GetRegister(r.Type())
			res.Code.Appendln(GEN_very_generic_move(r, rdi).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, l_length).Code)
			res.Code.TextAppendSln(ii("incq", rdi)) // allocate +1 for zero-termination
			res.Code.TextAppendSln(ii("call", Label{nil, "malloc"}))
			rax, _ = REGISTER_RAX.GetRegister(res_data.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, res_data).Code)

			{
				rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
				r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
				l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
				res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)
				l_data = r10
				l_length = rax
			}

			{
				// r11 = counter = 0
				r11, _ := REGISTER_R11.GetRegister(r.Type())
				res.Code.TextAppendSln(ii("xorq", r11, r11))

				// make loop
				copy_loop := LabelGen()
				copy_loop_end := LabelGen()
				res.Code.TextAppendSln(copy_loop.Text() + ":")

				res.Code.TextAppendSln(ii("cmpq", r11, r))
				res.Code.TextAppendSln(ii("jle", copy_loop_end))

				/*
					// copy left into res.data
					movq l.data, %rsi
					movq res.data, %rdi
					movq l.len, %rcx
					cld
					rep movsb
				*/
				rsi, _ := REGISTER_RSI.GetRegister(l_data.Type())
				rcx, _ := REGISTER_RCX.GetRegister(l_length.Type())
				res.Code.Appendln(GEN_very_generic_move(l_data, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rdi).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, r11).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, res_data).Code)

				{
					rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
					r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
					l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : r10, r2 : rax}
					res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)
					l_data = r10
					l_length = rax
				}

				res.Code.Appendln(GEN_very_generic_move(l_length, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))

				// increment counter
				res.Code.TextAppendSln(ii("incq", r11))
				res.Code.TextAppendSln(ii("jmp", copy_loop))
				res.Code.TextAppendSln(copy_loop_end.Text() + ":")
			}
				
			
			// TODO: check is l_data_save is freeable and free it!

			/*
				// update l.len
				addq r.len, l.len
			*/

			{
			r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			res.Code.Appendln(GEN_very_generic_move(l_length, res_length).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, res_length, r).Code)

			res.Code.Appendln(GEN_very_generic_move(res_length, r10).Code)
			res.Code.TextAppendSln(ii("incq", r10))

			// zero-terminate
			string_tail := GEN_dynamic_array_index(result, r10)
			res.Code.Appendln(string_tail.Code)
			string_tail_reference := string_tail.Result.(Memory_Reference)
			res.Code.Appendln(GEN_very_generic_move(Asm_Int_Literal{datatype.TYPE_UINT8, 0, 10}, string_tail_reference).Code)
			}

			allocation = result
			if t == front.AST_OP_EMUL {
				res.Code.Appendln(GEN_very_generic_move(allocation, l).Code)
			}
			break
		}
		if l.Type().Equals(datatype_string.TYPE_STRING) {
			// allocate result 
			result := StackAllocate(datatype_string.TYPE_STRING).Reference()

			// get l.data and l.length
			l_data := Operand(nil)
			l_length := Operand(nil)
			{
				struct_type := l.Type().(datatype_struct.StructType)
				l_ref := l.(Memory_Reference)
				struct_offset:= l_ref.Offset
				struct_start := l_ref.Start
				struct_index := l_ref.Index
				struct_indexcoeff := l_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// get result.data and result.length
			res_data := Operand(nil)
			res_length := Operand(nil)
			{
				struct_type := result.Type().(datatype_struct.StructType)
				res_ref := result
				struct_offset:= res_ref.Offset
				struct_start := res_ref.Start
				struct_index := res_ref.Index
				struct_indexcoeff := res_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// allocate length * n
			rdi, _ := REGISTER_RDI.GetRegister(r.Type())
			res.Code.Appendln(GEN_very_generic_move(r, rdi).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, l_length).Code)
			res.Code.TextAppendSln(ii("incq", rdi)) // allocate +1 for zero-termination
			res.Code.TextAppendSln(ii("call", Label{nil, "malloc"}))

			rax, _ = REGISTER_RAX.GetRegister(res_data.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, res_data).Code)
			
			{
				// r10 = counter = 0
				r10, _ := REGISTER_R10.GetRegister(r.Type())
				res.Code.TextAppendSln(ii("xorq", r10, r10))

				// make loop
				copy_loop := LabelGen()
				copy_loop_end := LabelGen()
				res.Code.TextAppendSln(copy_loop.Text() + ":")

				res.Code.TextAppendSln(ii("cmpq", r10, r))
				res.Code.TextAppendSln(ii("jle", copy_loop_end))

				/*
					// copy left into res.data
					movq l.data, %rsi
					movq res.data, %rdi
					movq l.len, %rcx
					cld
					rep movsb
				*/
				rsi, _ := REGISTER_RSI.GetRegister(l_data.Type())
				rcx, _ := REGISTER_RCX.GetRegister(l_length.Type())
				res.Code.Appendln(GEN_very_generic_move(l_data, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rdi).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, r10).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, res_data).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))

				// increment counter
				res.Code.TextAppendSln(ii("incq", r10))
				res.Code.TextAppendSln(ii("jmp", copy_loop))
				res.Code.TextAppendSln(copy_loop_end.Text() + ":")
			}
				
			
			// TODO: check is l_data_save is freeable and free it!

			/*
				// update l.len
				addq r.len, l.len
			*/

			{
			r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			res.Code.Appendln(GEN_very_generic_move(l_length, res_length).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, res_length, r).Code)

			res.Code.Appendln(GEN_very_generic_move(res_length, r10).Code)
			res.Code.TextAppendSln(ii("incq", r10))

			// zero-terminate
			string_tail := GEN_dynamic_array_index(result, r10)
			res.Code.Appendln(string_tail.Code)
			string_tail_reference := string_tail.Result.(Memory_Reference)
			res.Code.Appendln(GEN_very_generic_move(Asm_Int_Literal{datatype.TYPE_UINT8, 0, 10}, string_tail_reference).Code)
			}

			allocation = result
			if t == front.AST_OP_EMUL {
				res.Code.Appendln(GEN_very_generic_move(allocation, l).Code)
			}
			break
		}
		if r.Type().Equals(datatype_string.TYPE_STRING) {
			// very lazy!
			tmp := l
			l = r
			r = tmp

			// allocate result 
			result := StackAllocate(datatype_string.TYPE_STRING).Reference()

			// get l.data and l.length
			l_data := Operand(nil)
			l_length := Operand(nil)
			{
				struct_type := l.Type().(datatype_struct.StructType)
				l_ref := l.(Memory_Reference)
				struct_offset:= l_ref.Offset
				struct_start := l_ref.Start
				struct_index := l_ref.Index
				struct_indexcoeff := l_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					l_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// get result.data and result.length
			res_data := Operand(nil)
			res_length := Operand(nil)
			{
				struct_type := result.Type().(datatype_struct.StructType)
				res_ref := result
				struct_offset:= res_ref.Offset
				struct_start := res_ref.Start
				struct_index := res_ref.Index
				struct_indexcoeff := res_ref.IndexCoefficient

				{
					field := 0
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_data = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
				{
					field := 1
					field_type := struct_type.Fields[field].Type
					field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

					res_length = Memory_Reference{
						field_type,
						field_offset,
						struct_start,
						struct_index,
						struct_indexcoeff,
					}
				}
			}
			// allocate length * n
			rdi, _ := REGISTER_RDI.GetRegister(r.Type())
			res.Code.Appendln(GEN_very_generic_move(r, rdi).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, l_length).Code)
			res.Code.TextAppendSln(ii("incq", rdi)) // allocate +1 for zero-termination
			res.Code.TextAppendSln(ii("call", Label{nil, "malloc"}))

			rax, _ = REGISTER_RAX.GetRegister(res_data.Type())
			res.Code.Appendln(GEN_very_generic_move(rax, res_data).Code)
			
			{
				// r10 = counter = 0
				r10, _ := REGISTER_R10.GetRegister(r.Type())
				res.Code.TextAppendSln(ii("xorq", r10, r10))

				// make loop
				copy_loop := LabelGen()
				copy_loop_end := LabelGen()
				res.Code.TextAppendSln(copy_loop.Text() + ":")

				res.Code.TextAppendSln(ii("cmpq", r10, r))
				res.Code.TextAppendSln(ii("jle", copy_loop_end))

				/*
					// copy left into res.data
					movq l.data, %rsi
					movq res.data, %rdi
					movq l.len, %rcx
					cld
					rep movsb
				*/
				rsi, _ := REGISTER_RSI.GetRegister(l_data.Type())
				rcx, _ := REGISTER_RCX.GetRegister(l_length.Type())
				res.Code.Appendln(GEN_very_generic_move(l_data, rsi).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rdi).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_MUL, rdi, r10).Code)
				res.Code.Appendln(GEN_binop(front.AST_OP_SUM, rdi, res_data).Code)
				res.Code.Appendln(GEN_very_generic_move(l_length, rcx).Code)
				
				res.Code.TextAppendSln(ii("cld"))
				res.Code.TextAppendSln(ii("rep movsb"))

				// increment counter
				res.Code.TextAppendSln(ii("incq", r10))
				res.Code.TextAppendSln(ii("jmp", copy_loop))
				res.Code.TextAppendSln(copy_loop_end.Text() + ":")
			}
				
			
			// TODO: check is l_data_save is freeable and free it!

			/*
				// update l.len
				addq r.len, l.len
			*/

			{
			r10, _ := REGISTER_R10.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			res.Code.Appendln(GEN_very_generic_move(l_length, res_length).Code)
			res.Code.Appendln(GEN_binop(front.AST_OP_MUL, res_length, r).Code)

			res.Code.Appendln(GEN_very_generic_move(res_length, r10).Code)
			res.Code.TextAppendSln(ii("incq", r10))

			// zero-terminate
			string_tail := GEN_dynamic_array_index(result, r10)
			res.Code.Appendln(string_tail.Code)
			string_tail_reference := string_tail.Result.(Memory_Reference)
			res.Code.Appendln(GEN_very_generic_move(Asm_Int_Literal{datatype.TYPE_UINT8, 0, 10}, string_tail_reference).Code)
			}

			allocation = result
			if t == front.AST_OP_EMUL {
				res.Code.Appendln(GEN_very_generic_move(allocation, l).Code)
			}
			break
		}
		rax, _ := REGISTER_RAX.GetRegister(l.Type())
		res.Code.Appendln(GEN_load(l, rax).Code)

		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto mul_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			mul_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto mul_r_fine
					}
				case Memory_Reference:
					goto mul_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			mul_r_fine:


			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("mulsd", r, l))
			case 32:
				res.Code.TextAppendSln(ii("mulss", r, l))
			}
			res.Code.Appendln(GEN_move(l, old_l).Code)
			l = old_l
			r = old_r
		} else {
			switch r.Type().BitSize() {
			case 64:
				res.Code.TextAppendSln(ii("imulq", r, rax))
			case 32:
				res.Code.TextAppendSln(ii("imull", r, rax))
			case 16:
				res.Code.TextAppendSln(ii("imulw", r, rax))
			case 8:
				res.Code.TextAppendSln(ii("imulb", r))
			}
			res.Code.Appendln(GEN_move(rax, l).Code)
		}
		allocation = l
	case front.AST_OP_DIV, front.AST_OP_EDIV:
		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto div_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			div_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto div_r_fine
					}
				case Memory_Reference:
					goto div_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			div_r_fine:


			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("divsd", r, l))
			case 32:
				res.Code.TextAppendSln(ii("divss", r, l))
			}
			res.Code.Appendln(GEN_move(l, old_l).Code)
			l = old_l
			r = old_r
		} else {
			rax, _ := REGISTER_RAX.GetRegister(l.Type())
			rax_64, _ := REGISTER_RAX.GetRegister(datatype.TYPE_INT64)
			rdx_64, _ := REGISTER_RDX.GetRegister(datatype.TYPE_INT64)

			res.Code.TextAppendSln(ii("xorq", rdx_64, rdx_64))
			res.Code.TextAppendSln(ii("xorq", rax_64, rax_64))

			res.Code.Appendln(GEN_load(l, rax).Code)

			switch r.(type) {
				case Asm_Int_Literal:
					var full bool
					var right Operand
					reg, full := RegisterScratchAllocate(r.Type())
					if full {
						 right = StackAllocate(r.Type()).Reference()
					} else {
						 right = reg
					}
					
					res.Code.Appendln(GEN_move(r, right).Code)
					
					r = right
			}

			switch r.Type().BitSize() {
			case 64:
				res.Code.TextAppendSln(ii("idivq", r))
			case 32:
				res.Code.TextAppendSln(ii("idivl", r))
			case 16:
				res.Code.TextAppendSln(ii("idivw", r))
			case 8:
				res.Code.TextAppendSln(ii("idivb", r))
			}
			res.Code.Appendln(GEN_move(rax, l).Code)
		}

		allocation = l
	case front.AST_OP_MOD, front.AST_OP_EMOD:
		rax, _ := REGISTER_RAX.GetRegister(l.Type())
		rdx, _ := REGISTER_RDX.GetRegister(l.Type())
		rax_64, _ := REGISTER_RAX.GetRegister(datatype.TYPE_INT64)
		rdx_64, _ := REGISTER_RDX.GetRegister(datatype.TYPE_INT64)

		rem := rdx

		res.Code.TextAppendSln(ii("xorq", rdx_64, rdx_64))
		res.Code.TextAppendSln(ii("xorq", rax_64, rax_64))

		res.Code.Appendln(GEN_load(l, rax).Code)

		switch r.(type) {
			case Asm_Int_Literal:
				var full bool
				var right Operand
				reg, full := RegisterScratchAllocate(r.Type())
				if full {
					 right = StackAllocate(r.Type()).Reference()
				} else {
					 right = reg
				}
				
				res.Code.Appendln(GEN_move(r, right).Code)
				
				r = right
		}

		switch r.Type().BitSize() {
		case 64:
			res.Code.TextAppendSln(ii("idivq", r))
		case 32:
			res.Code.TextAppendSln(ii("idivl", r))
		case 16:
			res.Code.TextAppendSln(ii("idivw", r))
		case 8:
			res.Code.TextAppendSln(ii("idivb", r))
			ah := REGISTER_RAX.register_from_sub(REG_SUB_b)
			ah.Datatype = l.Type()
			res.Code.Appendln(GEN_move(ah, rax).Code)
			rem = rax
		}

		res.Code.Appendln(GEN_move(rem, l).Code)
		allocation = l
	case front.AST_OP_GRT:
		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto grt_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			grt_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto grt_r_fine
					}
				case Memory_Reference:
					goto grt_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			grt_r_fine:

			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpsd $14, ", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpss $14, ", r, l))
			}

			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			_l, _ := l.(Register).Class.GetRegister(datatype.TYPE_BOOL)
			res.Code.Appendln(GEN_move(_l, allocation).Code)
			res.Code.TextAppendSln(ii("andb $1, ", allocation))

			l = old_l
			r = old_r
		} else {
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}

			res.Code.TextAppendSln(ii("xorb", allocation, allocation))
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("cmpw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setg", allocation))
			} else {
				res.Code.TextAppendSln(ii("seta", allocation))
			}
		}
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_LES:
		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto les_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			les_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto les_r_fine
					}
				case Memory_Reference:
					goto les_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			les_r_fine:

			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpsd $1, ", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpss $1, ", r, l))
			}

			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			_l, _ := l.(Register).Class.GetRegister(datatype.TYPE_BOOL)
			res.Code.Appendln(GEN_move(_l, allocation).Code)
			res.Code.TextAppendSln(ii("andb $1, ", allocation))

			l = old_l
			r = old_r
		} else {
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}

			res.Code.TextAppendSln(ii("xorb", allocation, allocation))
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("cmpw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setl", allocation))
			} else {
				res.Code.TextAppendSln(ii("setb", allocation))
			}
		}
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_GOE:
		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto goe_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			goe_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto goe_r_fine
					}
				case Memory_Reference:
					goto goe_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			goe_r_fine:

			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpsd $13, ", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpss $13, ", r, l))
			}

			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			_l, _ := l.(Register).Class.GetRegister(datatype.TYPE_BOOL)
			res.Code.Appendln(GEN_move(_l, allocation).Code)
			res.Code.TextAppendSln(ii("andb $1, ", allocation))

			l = old_l
			r = old_r
		} else {
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}

			res.Code.TextAppendSln(ii("xorb", allocation, allocation))
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("cmpw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setge", allocation))
			} else {
				res.Code.TextAppendSln(ii("setae", allocation))
			}
		}
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_LOE:
		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto loe_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			loe_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto loe_r_fine
					}
				case Memory_Reference:
					goto loe_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			loe_r_fine:

			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpsd $2, ", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpss $2, ", r, l))
			}

			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			_l, _ := l.(Register).Class.GetRegister(datatype.TYPE_BOOL)
			res.Code.Appendln(GEN_move(_l, allocation).Code)
			res.Code.TextAppendSln(ii("andb $1, ", allocation))

			l = old_l
			r = old_r
		} else {
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}

			res.Code.TextAppendSln(ii("xorb", allocation, allocation))
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("cmpw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setle", allocation))
			} else {
				res.Code.TextAppendSln(ii("setbe", allocation))
			}
		}
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_EQU:
		var full bool
		reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
		if full {
			allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
		} else {
			allocation = reg
		}

		res.Code.TextAppendSln(ii("xorb", allocation, allocation))

		// ** string equality
		if l.Type().Equals(datatype_string.TYPE_STRING) ||
		   datatype_string.IsStaticStringType(l.Type()) {
			/*
				// compare lengths
				cmpq l.length, r.length
				jne end

				movq l.data, %rdi
				movq r.data, %rsi
				movq l.length, %rcx 

				repq cmpsb
				
				end:
			*/
			// get l and r
			rcx, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT64)
			rdi, _ := REGISTER_RDI.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			r10, _ := REGISTER_R10.GetRegister(datatype.TYPE_UINT64)
			rsi, _ := REGISTER_RSI.GetRegister(datatype.PointerType{datatype.TYPE_UINT8})
			res.Code.TextAppendSln(GEN_push(rcx).Code.Text)
            res.Code.TextAppendSln(GEN_push(rdi).Code.Text)
            res.Code.TextAppendSln(GEN_push(r10).Code.Text)
            res.Code.TextAppendSln(GEN_push(rsi).Code.Text)


			r_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : rdi, r2 : rcx}
			res.Code.Appendln(GEN_very_generic_move(r, r_regs).Code)

			l_regs := RegisterPair{Datatype : datatype_string.TYPE_STRING, r1 : rsi, r2 : r10}
			res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)

			cmp_end := LabelGen()

			// compare lengths
			res.Code.TextAppendSln(ii("cmpq", rcx, r10))
			res.Code.TextAppendSln(ii("jne", cmp_end))

			// compare actual bytes
			res.Code.TextAppendSln(ii("cld"))
			res.Code.TextAppendSln(ii("repe cmpsb"))
			
			res.Code.TextAppendSln(ii(cmp_end.Text() + ":"))

            res.Code.TextAppendSln(GEN_pop(rsi).Code.Text)
            res.Code.TextAppendSln(GEN_pop(r10).Code.Text)
            res.Code.TextAppendSln(GEN_pop(rdi).Code.Text)
			res.Code.TextAppendSln(GEN_pop(rcx).Code.Text)
			res.Code.TextAppendSln(ii("sete", allocation))
			break
		}

		// ** struct equality
		switch l.Type().(type) {
			case datatype_struct.StructType: { 
				if l.Type().ByteSize() <= 8 {
					switch data_size {
					case 64:
						res.Code.TextAppendSln(ii("cmpq", r, l))
					case 32:
						res.Code.TextAppendSln(ii("cmpl", r, l))
					case 16:
						res.Code.TextAppendSln(ii("cmpw", r, l))
					case 8:
						res.Code.TextAppendSln(ii("cmpb", r, l))
					}
					res.Code.TextAppendSln(ii("sete", allocation))
					goto exit_eq
				} 

				if l.Type().ByteSize() <= 16 { 
					switch l.(type) {
						case RegisterPair:
							mem := StackAllocate(l.Type()).Reference()
							GEN_regpair_to_mem(l.(RegisterPair), mem)
							l = mem
					}
					switch r.(type) {
						case RegisterPair:
							mem := StackAllocate(r.Type()).Reference()
							GEN_regpair_to_mem(r.(RegisterPair), mem)
							r = mem
					}
				} 

				res.Code.TextAppendSln(ii("movb $1,", allocation))

				struct_type := l.Type().(datatype_struct.StructType)
				nfields := len(struct_type.Fields)

				s := l.(Memory_Reference)
				z := r.(Memory_Reference)
				for field := 0; field < nfields; field++ {
					field_type := struct_type.Fields[field].Type

					f := Memory_Reference{
						field_type,
						s.Offset + int64(struct_type.Fields[field].Offset),
						s.Start,
						s.Index,
						s.IndexCoefficient,
					}
					e := Memory_Reference{
						field_type,
						z.Offset + int64(struct_type.Fields[field].Offset),
						z.Start,
						z.Index,
						z.IndexCoefficient,
					}

					fields_eq := GEN_binop(front.AST_OP_EQU, f, e)
					res.Code.Appendln(fields_eq.Code)
					
					// AND
					res.Code.Appendln(GEN_binop(front.AST_OP_AND, allocation, fields_eq.Result).Code)
				}
				
				goto exit_eq
			}
		}

		// ** array equality
		if datatype_array.IsStaticArrayType(l.Type()) ||
		   datatype_struct.IsDynamicArrayType(l.Type()) {
			/*
				// compare lengths
				cmpq l.length, r.length
				jne end

				movq l.data, %rdi
				movq r.data, %rsi
				movq l.length, %rcx 

				repq cmpsb
				
				end:
			*/
			// get l and r
			l_element_type := datatype.DataType(nil)
			if datatype_array.IsStaticArrayType(l.Type()) {
				l_element_type = l.Type().(datatype_array.StaticArrayType).ElementType
			} else {
				l_element_type = datatype_struct.DynamicArrayDataType(l.Type())
			}
			r_element_type := datatype.DataType(nil)
			if datatype_array.IsStaticArrayType(r.Type()) {
				r_element_type = r.Type().(datatype_array.StaticArrayType).ElementType
			} else {
				r_element_type = datatype_struct.DynamicArrayDataType(r.Type())
			}

			r_dynamic := new_dynamic_array_type("[]"+r_element_type.Name(), r_element_type)
			l_dynamic := new_dynamic_array_type("[]"+l_element_type.Name(), l_element_type)

			r12, _ := REGISTER_R12.GetRegister(datatype.TYPE_UINT64)
			rcx, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT64)
			rdi, _ := REGISTER_RDI.GetRegister(datatype.PointerType{r_element_type})
			r_regs := RegisterPair{Datatype : r_dynamic, r1 : rdi, r2 : rcx}
			res.Code.Appendln(GEN_very_generic_move(r, r_regs).Code)

			r10, _ := REGISTER_R10.GetRegister(datatype.TYPE_UINT64)
			rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_UINT64)
			rsi, _ := REGISTER_RSI.GetRegister(datatype.PointerType{l_element_type})
			l_regs := RegisterPair{Datatype : l_dynamic, r1 : rsi, r2 : r10}
			res.Code.Appendln(GEN_very_generic_move(l, l_regs).Code)

			cmp := LabelGen()
			cmp_end := LabelGen()
			
			res.Code.Appendln(GEN_move(rcx, r12).Code)

			// compare lengths
			res.Code.TextAppendSln(ii("movb $0,", allocation))
			res.Code.TextAppendSln(ii("cmpq", r12, r10))
			res.Code.TextAppendSln(ii("jne", cmp_end))
			
			// compare actual elements loop
			res.Code.TextAppendSln(ii("movb $1,", allocation))
			res.Code.TextAppendSln(ii(cmp.Text() + ":"))
			res.Code.TextAppendSln(ii("andq", r12, r12))
			res.Code.TextAppendSln(ii("jz", cmp_end))
			res.Code.TextAppendSln(ii("decq", r12))
			
			res.Code.TextAppendSln(GEN_push(rdi).Code.Text)
			res.Code.TextAppendSln(GEN_push(rsi).Code.Text)
			res.Code.TextAppendSln(GEN_push(r12).Code.Text)
			res.Code.TextAppendSln(GEN_push(r10).Code.Text)
			res.Code.TextAppendSln(GEN_push(rcx).Code.Text)
			res.Code.TextAppendSln(GEN_push(rbx).Code.Text)
			
			res.Code.Appendln(GEN_move(r12, rbx).Code)

			r_index := GEN_dynamic_array_index(r_regs, r12)
			r_e := r_index.Result
			res.Code.Appendln(r_index.Code)

			l_index := GEN_dynamic_array_index(l_regs, rbx)
			l_e := l_index.Result
			res.Code.Appendln(l_index.Code)

			eq := GEN_binop(front.AST_OP_EQU, l_e, r_e)
			res.Code.Appendln(eq.Code)

			res.Code.TextAppendSln(GEN_pop(rbx).Code.Text)
			res.Code.TextAppendSln(GEN_pop(rcx).Code.Text)
			res.Code.TextAppendSln(GEN_pop(r10).Code.Text)
			res.Code.TextAppendSln(GEN_pop(r12).Code.Text)
			res.Code.TextAppendSln(GEN_pop(rsi).Code.Text)
			res.Code.TextAppendSln(GEN_pop(rdi).Code.Text)
					
			// AND
			res.Code.Appendln(GEN_binop(front.AST_OP_AND, allocation, eq.Result).Code)

			res.Code.TextAppendSln(ii("jmp", cmp))

			res.Code.TextAppendSln(ii(cmp_end.Text() + ":"))
			goto exit_eq
		}

		if datatype.IsFloatType(l.Type()) {
			old_l := l
			full := false

			switch l.(type) {
				case Register :
					if byte(l.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto equ_l_fine
					}
			}

			// move l to xmm regs
			l, full = register_xmm_allocate(l.Type())
			if full {
				// TODO: something
			} else {
				defer l.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_l, l).Code)
			
			equ_l_fine:
		

			old_r := r
			full = false

			switch r.(type) {
				case Register :
					if byte(r.(Register).Class)&REG_KIND_MASK == REG_KIND_XMM { 
						goto equ_r_fine
					}
				case Memory_Reference:
					goto equ_r_fine
			}

			// move l to xmm regs
			r, full = register_xmm_allocate(r.Type())
			if full {
				// TODO: something
			} else {
				defer r.(Register).Free()
			}
			res.Code.Appendln(GEN_move(old_r, r).Code)


			equ_r_fine:

			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpsd $0, ", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpss $0, ", r, l))
			}

			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			_l, _ := l.(Register).Class.GetRegister(datatype.TYPE_BOOL)
			res.Code.Appendln(GEN_move(_l, allocation).Code)
			res.Code.TextAppendSln(ii("andb $1, ", allocation))
			
			l = old_l
			r = old_r
		} else {
			switch data_size {
			case 64:
				res.Code.TextAppendSln(ii("cmpq", r, l))
			case 32:
				res.Code.TextAppendSln(ii("cmpl", r, l))
			case 16:
				res.Code.TextAppendSln(ii("cmpw", r, l))
			case 8:
				res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			res.Code.TextAppendSln(ii("sete", allocation))
		}	
		exit_eq:
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_NEQ:
		eq := GEN_binop(front.AST_OP_EQU, l, r)
		res.Code.Appendln(eq.Code)
		res.Code.TextAppendSln(ii("xorb $1,", eq.Result))
		allocation = eq.Result
	case front.AST_OP_AND:
		res.Code.TextAppendSln(ii("andb", r, l))

		allocation = l
	case front.AST_OP_OR:
		res.Code.TextAppendSln(ii("orb", r, l))

		allocation = l

	case front.AST_OP_BAND, front.AST_OP_EBAND:
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("andq", r, l))
		case 32:
			res.Code.TextAppendSln(ii("andl", r, l))
		case 16:
			res.Code.TextAppendSln(ii("andw", r, l))
		case 8:
			res.Code.TextAppendSln(ii("andb", r, l))
		}
		allocation = l
	case front.AST_OP_BORE, front.AST_OP_EBORE:
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("xorq", r, l))
		case 32:
			res.Code.TextAppendSln(ii("xorl", r, l))
		case 16:
			res.Code.TextAppendSln(ii("xorw", r, l))
		case 8:
			res.Code.TextAppendSln(ii("xorb", r, l))
		}
		allocation = l
	case front.AST_OP_BORI, front.AST_OP_EBORI:
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("orq", r, l))
		case 32:
			res.Code.TextAppendSln(ii("orl", r, l))
		case 16:
			res.Code.TextAppendSln(ii("orw", r, l))
		case 8:
			res.Code.TextAppendSln(ii("orb", r, l))
		}
		allocation = l
	case front.AST_OP_SHL, front.AST_OP_ESHL:
		rcx, _ := REGISTER_RCX.GetRegister(r.Type())
		res.Code.Appendln(GEN_load(r, rcx).Code)

		cl, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT8)
		
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("shlq", cl, l))
		case 32:
			res.Code.TextAppendSln(ii("shll", cl, l))
		case 16:
			res.Code.TextAppendSln(ii("shlw", cl, l))
		case 8:
			res.Code.TextAppendSln(ii("shlb", cl, l))
		}
		allocation = l
	case front.AST_OP_SHR, front.AST_OP_ESHR:
		rcx, _ := REGISTER_RCX.GetRegister(r.Type())
		res.Code.Appendln(GEN_load(r, rcx).Code)

		cl, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT8)
		
		switch data_size {
		case 64:
			res.Code.TextAppendSln(ii("shrq", cl, l))
		case 32:
			res.Code.TextAppendSln(ii("shrl", cl, l))
		case 16:
			res.Code.TextAppendSln(ii("shrw", cl, l))
		case 8:
			res.Code.TextAppendSln(ii("shrb", cl, l))
		}
		allocation = l
	}


	switch r.(type) {
		case Register:
			if rax_pushed {
				res.Code.TextAppendSln(GEN_pop(rax).Code.Text)
				rax.Free()
			}
			r.(Register).Free()
	}

	res.Result = allocation
	return res
}

func GEN_static_array_index(array_allocation Operand, index Operand) Codegen_Out {
	res := Codegen_Out{}
	
	address_type := datatype.TYPE_INT64
	
	// make index big
	if index.Type().ByteSize() < 8 {
		var v Operand
		reg, full := RegisterScratchAllocate(address_type)
		if full {
			v = StackAllocate(address_type).Reference()
			res.Code.Appendln(GEN_very_generic_move(index, v).Code)
		} else {
			v = reg
			view, _ := reg.Class.GetRegister(index.Type())
			res.Code.Appendln(GEN_very_generic_move(index, view).Code)
		}
		mask := uint64(1 << index.Type().BitSize()) - uint64(1)
		mask_literal := Asm_Int_Literal{v.Type(), int64(mask), 10}
		rax, _ := REGISTER_RAX.GetRegister(mask_literal.Type())
		res.Code.Appendln(GEN_move(mask_literal, rax).Code)
		mask_code := ii("andq", rax, v)
		res.Code.TextAppendSln(mask_code)
		
		index = v
	}

	var element_type datatype.DataType
	length := uint64(0)
	if datatype_string.IsStaticStringType(array_allocation.Type()) {
		static_string := array_allocation.Type().(datatype_string.StaticStringType)
		element_type = datatype.TYPE_UINT8
		length = static_string.Length
	} else
	if datatype_array.IsStaticArrayType(array_allocation.Type()) {
		static_array_type := array_allocation.Type().(datatype_array.StaticArrayType)
		element_type = static_array_type.ElementType
		length = static_array_type.Length
	}
	length_literal := Asm_Int_Literal{address_type, int64(length), 10}

	// this deallocates the inedex for some reason... so don't do it
	//cmp := GEN_binop(front.AST_OP_GOE, index, length)
	
	res.Code.TextAppendSln(ii("cmpq", length_literal, index))
	no_oob_err := LabelGen()
	res.Code.TextAppendSln(ii("jb", no_oob_err)) // less means fine!

	// greater or equal means error
	rsi, _ := REGISTER_RSI.GetRegister(address_type)
	rdx, _ := REGISTER_RDX.GetRegister(address_type)
	res.Code.Appendln(GEN_move(index, rsi).Code)   
	res.Code.Appendln(GEN_move(length_literal, rdx).Code)   
	res.Code.TextAppendSln(ii("call", ERR_OOB))   

	res.Code.TextAppendSln(no_oob_err.Text()+":")
	r10, _ := REGISTER_R10.GetRegister(address_type)
	res.Code.TextAppendSln(GEN_push(r10).Code.Text)
	res.Code.TextAppendSln(ii("leaq", array_allocation, r10))

	start := StackAllocate(address_type).Reference()  // start and index need to be the same type
	res.Code.Appendln(GEN_move(r10, start).Code)
	
	res.Code.TextAppendSln(GEN_pop(r10).Code.Text)

	if element_type.ByteSize() <= 8 {
		array_index_reference := Memory_Reference{
			element_type,
			0, // Offset int64
			start,
			index, //Index Operand
			Index_Coeff(element_type.ByteSize()),     // IndexCoefficient Index_Coeff
		}
	
		res.Result = array_index_reference
	} else {
		// we need to do the multiplication on the CPU
		element_size := Asm_Int_Literal{address_type, int64(element_type.ByteSize()), 10}

		// TODO: do the thing for every binop, also check if left is left value!
		left_value  := index
		right_value := element_size
		switch left_value.(type) {
			case Memory_Reference: {
				// .. we don't wanna do nasty stuff on the long term memory, so : 

				// move it to a new location ~< ~
				var v Operand
				reg, full := RegisterScratchAllocate(left_value.Type())
				if full {
					v = StackAllocate(left_value.Type()).Reference()
				} else {
					v = reg
				}
				res.Code.Appendln(GEN_move(left_value, v).Code)

				// do the op  ^< ^  ~< ^
				op := GEN_binop(front.AST_OP_MUL, v, right_value)
				res.Code.Appendln(op.Code)
				res.Code.TextAppendSln("// mul on the CPU up here ^\n")

				index = op.Result
			}
			default: {
				op := GEN_binop(front.AST_OP_MUL, left_value, right_value)
				res.Code.Appendln(op.Code)

				index = op.Result
			}
		}

		array_index_reference := Memory_Reference{
			element_type,
			0, // Offset int64
			start,
			index, //Index Operand
			1,     // IndexCoefficient Index_Coeff
		}

		res.Result = array_index_reference
	}

	return res
}

// this uses R10 and R11 !!
func GEN_dynamic_array_index(array_struct Operand, index Operand) Codegen_Out {
	res := Codegen_Out{}

	address_type := datatype.TYPE_INT64

	// make index big
	if index.Type().ByteSize() < 8 {
		var v Operand
		reg, full := RegisterScratchAllocate(address_type)
		if full {
			v = StackAllocate(address_type).Reference()
			res.Code.Appendln(GEN_very_generic_move(index, v).Code)
		} else {
			v = reg
			view, _ := reg.Class.GetRegister(index.Type())
			res.Code.Appendln(GEN_very_generic_move(index, view).Code)
		}
		mask := uint64(1 << index.Type().BitSize()) - uint64(1)
		mask_literal := Asm_Int_Literal{v.Type(), int64(mask), 10}
		rax, _ := REGISTER_RAX.GetRegister(mask_literal.Type())
		res.Code.Appendln(GEN_move(mask_literal, rax).Code)
		mask_code := ii("andq", rax, v)
		res.Code.TextAppendSln(mask_code)
		
		index = v
	}
		
	var start Operand
	var length Operand
	switch array_struct.(type) {
		case Memory_Reference:
			r10, _ := REGISTER_R10.GetRegister(address_type) // length or size... idk
			r11, _ := REGISTER_R11.GetRegister(address_type) // data

			start = StackAllocate(address_type).Reference()
			length = StackAllocate(address_type).Reference()

			// load array.data, array.len => r10, r11
			res.Code.TextAppendSln(GEN_push(r10).Code.Text)
			res.Code.TextAppendSln(GEN_push(r11).Code.Text)

			load := GEN_mem_to_regpair(array_struct.(Memory_Reference), RegisterPair{array_struct.Type(), r11, r10})
			res.Code.Appendln(load.Code)

			res.Code.Appendln(GEN_move(r11, start).Code)
			res.Code.Appendln(GEN_move(r10, length).Code)

			res.Code.TextAppendSln(GEN_pop(r11).Code.Text)
			res.Code.TextAppendSln(GEN_pop(r10).Code.Text)
			
		case RegisterPair:
			start = array_struct.(RegisterPair).r1
			length = array_struct.(RegisterPair).r2
		default:
			fmt.Println("codegen error: invalid operand kind for dynamic array struct")
			return res
	}
			
	// this deallocates the inedex for some reason... so don't do it
	//cmp := GEN_binop(front.AST_OP_GOE, index, length)
	res.Code.TextAppendSln(ii("cmpq", length, index))
	no_oob_err := LabelGen()
	res.Code.TextAppendSln(ii("jb", no_oob_err)) // less means fine!

	// greater or equal means error
	rsi, _ := REGISTER_RSI.GetRegister(address_type)
	rdx, _ := REGISTER_RDX.GetRegister(address_type)
	res.Code.Appendln(GEN_move(index, rsi).Code)   
	res.Code.Appendln(GEN_move(length, rdx).Code)   
	res.Code.TextAppendSln(ii("call", ERR_OOB))   
	res.Code.TextAppendSln(no_oob_err.Text() + ":")   


	var element_type datatype.DataType
	if datatype_struct.IsDynamicArrayType(array_struct.Type()) {
		element_type = datatype_struct.DynamicArrayDataType(array_struct.Type())
	} else
	if datatype_string.IsStaticStringType(array_struct.Type()) ||
	   datatype_string.TYPE_STRING.Equals(array_struct.Type()) {
		element_type = datatype.TYPE_UINT8
	}
	if element_type.ByteSize() <= 8 {
		array_index_reference := Memory_Reference{
			element_type,
			0, // Offset int64
			start,
			index, //Index Operand
			Index_Coeff(element_type.ByteSize()),     // IndexCoefficient Index_Coeff
		}
	
		res.Result = array_index_reference
	} else {
		// we need to do the multiplication on the CPU
		element_size := Asm_Int_Literal{address_type, int64(element_type.ByteSize()), 10}

		// TODO: do the thing for every binop, also check if left is left value!
		left_value  := index
		right_value := element_size
		switch left_value.(type) {
			case Memory_Reference: {
				// .. we don't wanna do nasty stuff on the long term memory, so : 

				// move it to a new location ~< ~
				var v Operand
				reg, full := RegisterScratchAllocate(left_value.Type())
				if full {
					v = StackAllocate(left_value.Type()).Reference()
				} else {
					v = reg
				}
				res.Code.Appendln(GEN_move(left_value, v).Code)

				// do the op  ^< ^  ~< ^
				op := GEN_binop(front.AST_OP_MUL, v, right_value)
				res.Code.Appendln(op.Code)
				res.Code.TextAppendSln("// mul on the CPU up here ^\n")

				index = op.Result
			}
			default: {
				op := GEN_binop(front.AST_OP_MUL, left_value, right_value)
				res.Code.Appendln(op.Code)

				index = op.Result
			}
		}
		
		array_index_reference := Memory_Reference{
			element_type,
			0, // Offset int64
			start,
			index, //Index Operand
			1,     // IndexCoefficient Index_Coeff
		}

		res.Result = array_index_reference
	}

	return res
}
