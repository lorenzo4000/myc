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
	REG_SUB_Q = byte(iota)
	REG_SUB_D = byte(iota)
	REG_SUB_W = byte(iota)
	REG_SUB_B = byte(iota)
	REG_SUB_b = byte(iota)

	REG_SUB_MAX = byte(iota)

	REG_KIND_MASK  = byte(0xE0)
	REG_KIND_MASKI = REG_KIND_MASK ^ 0xFF

	REG_KIND_QDWBb = byte(0x20)
	REG_KIND_QDWB  = byte(0x40)
	REG_KIND_QDW   = byte(0x80)
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

	N_REGISTERS = iota
)

var RegistersStr = [N_REGISTERS][REG_SUB_MAX]string{
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

func (reg RegisterClass) register_from_sub(sub byte) Register {
	return Register{nil, reg, sub}
}

var registers_alloc = [N_REGISTERS][REG_SUB_MAX]bool{}

func (reg RegisterClass) GetRegister(typ datatype.DataType) (Register, bool) {
	bit_size := typ.BitSize()
	reg_kind := byte(reg) & REG_KIND_MASK

	var r Register
	switch reg_kind {
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

func register_argument_allocate(sub byte) (Register, bool) {
	for _, s := range ArgumentRegisters {
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

func RegisterArgumentAllocate(_type datatype.DataType) (Register, bool) {
	var r Register
	f := false
	switch _type.BitSize() {
	case 64:
		r, f = register_argument_allocate(REG_SUB_Q)
		r.Datatype = _type
	case 32:
		r, f = register_argument_allocate(REG_SUB_D)
		r.Datatype = _type
	case 16:
		r, f = register_argument_allocate(REG_SUB_W)
		r.Datatype = _type
	case 8:
		r, f = register_argument_allocate(REG_SUB_B)
		if f {
			r, f = register_argument_allocate(REG_SUB_b)
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
	for _, s := range ArgumentRegisters {
		s.Free()
	}
}

var ScratchRegisters = [5]RegisterClass{
	REGISTER_RBX,
	REGISTER_R12,
	REGISTER_R13,
	REGISTER_R14,
	REGISTER_R15,
}

var ArgumentRegisters = [6]RegisterClass{
	REGISTER_RDI,
	REGISTER_RSI,
	REGISTER_RDX,
	REGISTER_RCX,
	REGISTER_R8,
	REGISTER_R9,
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
	return mem
}

// === Stack ===

type Stack_Region struct {
	rbp_offset uint64
	datatype   datatype.DataType

	reserved uint64
}

var CurrentReservedStack uint64 = 0

func StackReserveBytes(bytes uint64) uint64 {
	if bytes%16 != 0 {
		bytes += 16 - (bytes & 0xF)
	}
	CurrentReservedStack += bytes
	return bytes
}
func StackReserve16Bytes() {
	CurrentReservedStack += 0x10
}
func StackUnreserve16Bytes() bool {
	if CurrentReservedStack < 0x10 {
		return false
	}
	CurrentReservedStack -= 0x10
	return true
}
func StackUnreserveAll() {
	CurrentReservedStack = 0
}

var CurrentAllocatedStack uint64 = 0

func StackAllocate(_type datatype.DataType) Stack_Region {
	size := uint64(_type.ByteSize())
	reserved := uint64(0)

	for CurrentAllocatedStack+size > CurrentReservedStack {
		StackReserve16Bytes()
		reserved += 0x10
	}
	CurrentAllocatedStack += size

	region := Stack_Region{CurrentAllocatedStack, _type, reserved}

	return region
}

var StackRegions []Stack_Region

func StackAllocateAndRemember(_type datatype.DataType) Stack_Region {
	allocated := StackAllocate(_type)
	StackRegions = append(StackRegions, allocated)

	return allocated
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

func ii(op string, oprnds ...Operand) string {
	instruction := ""
	pre_memory_reference_code := make([]string, len(oprnds))

	cnt := 0

	rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
	r10, _ := REGISTER_R10.GetRegister(datatype.TYPE_UINT64)

	rax_pushed := make([]bool, len(oprnds))
	r10_pushed := make([]bool, len(oprnds))
	start_pushed := make([]bool, len(oprnds))

	// the destination is usually the last operand...
	//
	// what do you want me to do anyway huh?
	// this is a stupid toy compiler, i don't mean to make it actually work lol.
	// You are so dumb for thinking that this stupid thing is "designed" to work.
	// This compiler only works on a very limited subset of examples...
	// It's literally a LIE! YOU SHOULD NOT USE IT! you should instead WRITE YOUR OWN!
	// i so so SO hate this thing i'm building. I want to kill myself for wasting time on this absolute CRAP.
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

	for i, oprnd := range oprnds {
		switch oprnd.(type) {
			case Memory_Reference:
				mem := oprnd.(Memory_Reference)
				off := uint64(mem.Offset)

				switch mem.Start.(type)  {
					case Memory_Reference :
						// if the destination is rax, it doesn't make sense to save it... and if i saved it
						// it wouldn't actually work... trust me, i tried.
						if destination_register != nil {
							if destination_register.(Register).Class != REGISTER_RAX {
								pre_memory_reference_code[i] += ii("pushq", rax)
								rax_pushed[i] = true
							}
						}

						// move Start to rax
						pre_memory_reference_code[i] += GEN_move(mem.Start, rax).Code.Text
						instruction += "// using rax\n"
						if mem.Index != nil {
							instruction += "// the index is very cute! : " + mem.Index.Text() + "\n"
						}
						mem.Start = rax
				}
				switch mem.Index.(type)  {
					case Memory_Reference :
						pre_memory_reference_code[i] += "// i am trying to move the index to r10, am i going to succeed? ...\n"
						if destination_register != nil {
							if destination_register.(Register).Class != REGISTER_R10 {
								pre_memory_reference_code[i] += ii("pushq", r10)
								r10_pushed[i] = true
							}
						}

						// move Index to r10
						pre_memory_reference_code[i] += GEN_move(mem.Index, r10).Code.Text
						instruction += "// using r10\n"
						mem.Index = r10
				}

				if mem.Offset < 0 {
					off = off ^ 0xFFFFFFFFFFFFFFFF
				}
				if (off >> 32) > 0 {
					pre_memory_reference_code[i] += ii("pushq", mem.Start) + "\n"
					start_pushed[i] = true
					

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
		var allocation Operand

		reg, full := RegisterScratchAllocate(oprnds[0].Type())
		if full {
			allocation, _ = REGISTER_RBX.GetRegister(oprnds[0].Type())
			rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)

			instruction += Instruction("pushq", rbx) + "\n"
		} else {
			allocation = reg
		}

		// OOhhh good im gonna wrtie a master piece of code now
		for i, oprnd := range oprnds { 
			switch oprnd.(type) {
				case Memory_Reference:
					instruction += "// hello \n" + pre_memory_reference_code[i] + "\n // byee \n"
			}
		}
		
		instruction += GEN_move(oprnds[0], allocation).Code.Text + "\n"
		oprnds[0] = allocation

		instruction += Instruction(op, oprnds...) + "\n"
	
		for i, oprnd := range oprnds {
			switch oprnd.(type) {
				case Memory_Reference:
					if start_pushed[i] {
						instruction += ii("popq", oprnd.(Memory_Reference).Start)
					}
					if r10_pushed[i] {
						instruction += ii("popq", r10)
					}
					if rax_pushed[i] {
						instruction += ii("popq", rax)
					}
			}
		}

		if full {
			rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)
			instruction += Instruction("popq", rbx) + "\n"
		} else {
			reg.Free()
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

	for i, oprnd := range oprnds {
		switch oprnd.(type) {
			case Memory_Reference:
				if start_pushed[i] {
					instruction += ii("popq", oprnd.(Memory_Reference).Start)
				}
				if r10_pushed[i] {
					instruction += ii("popq", r10)
				}
				if rax_pushed[i] {
					instruction += ii("popq", rax)
				}
		}
	}

	return instruction
}

// === GEN_* ===

func GEN_return(v Operand, function *front.Ast_Node) Codegen_Out {
	out := Codegen_Out{}
	function_name := function.Children[0].Data[0].String_value

	if v != nil {
		return_type := v.Type()

		if return_type.ByteSize() <= 8 {
			return_reg, err := RETURN_REGISTER.GetRegister(return_type)
			if err {
				fmt.Println("codegen error: could not find return register for type `" + return_type.Name() + "`")
			}

			out.Code.Appendln(GEN_very_generic_move(v, return_reg).Code)
		} else if return_type.ByteSize() <= 16 {
			rax, err := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
			if err {
				fmt.Println("codegen error: could not find return register 1 for type `" + return_type.Name() + "`")
			}
			rdx, err := REGISTER_RDX.GetRegister(datatype.TYPE_UINT64)
			if err {
				fmt.Println("codegen error: could not find return register 2 for type `" + return_type.Name() + "`")
			}

			return_regs := RegisterPair{return_type, rdx, rax}
			out.Code.Appendln(GEN_loadstruct(v.(Memory_Reference), return_regs).Code)
		} else if return_type.ByteSize() > 16 {
			// fill up the memory pointed by the ghost parameter with the return value~ ^^
			// to do this we have to actually copy the entire value into the memory pointed by ghost;
			ghost_parameter_name := ".ghost_" + function_name

			ghost_parameter, found := symbol.SymbolTableGetInCurrentScope(ghost_parameter_name)
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

			out.Code.Appendln(GEN_storestruct(v.(Memory_Reference), ghost_parameter_reference).Code)
		}
	}

	function_epilogue := LabelGet("._" + function_name)
	out.Code.Appendln(GEN_jump(function_epilogue).Code)

	return out
}

func GEN_function_prologue(f *front.Ast_Node) Codegen_Out {
	res := Codegen_Out{}

	function_name := f.Children[0].Data[0].String_value

	name := LabelGet(function_name)
	res.Code.TextAppendSln(Instruction(".global", name))
	res.Code.TextAppendSln(name.Text() + ":")

	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)
	res.Code.TextAppendSln((ii("pushq", rbp)))
	res.Code.TextAppendSln((ii("movq", rsp, rbp)))

	if CurrentReservedStack > 0 {
		// allocate used stack
		res.Code.Appendln((GEN_binop(front.AST_OP_SUB, rsp, Asm_Int_Literal{datatype.TYPE_INT64, int64(CurrentReservedStack), 10}).Code))
	}

	return res
}

func GEN_function_epilogue(ast *front.Ast_Node, body_result Operand) Codegen_Out {
	res := Codegen_Out{}

	function_name := ast.Children[0].Data[0].String_value

	if body_result != nil {
		body_type := ast.Children[3].DataType

		if body_type.ByteSize() <= 8 {
			return_reg, err := RETURN_REGISTER.GetRegister(body_type)
			if err {
				fmt.Println("codegen error: could not find return register for type `" + body_type.Name() + "`")
			}

			res.Code.Appendln(GEN_very_generic_move(body_result, return_reg).Code)
		} else if body_type.ByteSize() <= 16 {
			rax, err := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
			if err {
				fmt.Println("codegen error: could not find return register 1 for type `" + body_type.Name() + "`")
			}
			rdx, err := REGISTER_RDX.GetRegister(datatype.TYPE_UINT64)
			if err {
				fmt.Println("codegen error: could not find return register 2 for type `" + body_type.Name() + "`")
			}

			return_regs := RegisterPair{body_type, rdx, rax}
			res.Code.Appendln(GEN_loadstruct(body_result.(Memory_Reference), return_regs).Code)
		} else if body_type.ByteSize() > 16 {
			// TODO
		}
	}

	function_epilogue := "._" + function_name
	res.Code.TextAppendSln(function_epilogue + ":")

	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)

	// deallocate used stack
	res.Code.TextAppendSln(ii("movq", rbp, rsp))
	res.Code.TextAppendSln(ii("popq", rbp))
	CurrentReservedStack = 0
	CurrentAllocatedStack = 0

	res.Code.TextAppendSln(ii("ret"))

	return res
}

// value -> register
func GEN_load(v Operand, r Register) Codegen_Out {
	res := Codegen_Out{}

	switch v.(type) {
		case Label: v = v.LiteralValue()
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
				if (value >> 32) > 0 {
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
	
	switch v.(type) {
		case Label: v = v.LiteralValue()
	}

	rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)

	switch v.Type().BitSize() {
	case 64:
		switch v.(type) {
		case Asm_Int_Literal:
			res.Code.TextAppendSln(Instruction("pushq", rbx))

			res.Code.Appendln(GEN_load(v, rbx).Code)
			res.Code.TextAppendSln(ii("movq", rbx, m))

			res.Code.TextAppendSln(Instruction("popq", rbx))
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

func GEN_loadstruct(s Memory_Reference, d RegisterPair) Codegen_Out {
	var res Codegen_Out

	struct_type := s.Type().(datatype_struct.StructType)
	nfields := len(struct_type.Fields)

	if nfields > 2 {
		fmt.Println("codegen error: not enough registers to load struct of type `", struct_type.Name, "`")
		return res
	}

	struct_allocation := s
	struct_start := struct_allocation.Start
	struct_offset := struct_allocation.Offset
	struct_index := struct_allocation.Index
	struct_indexcoeff := struct_allocation.IndexCoefficient

	{
		field := 1
		field_type := struct_type.Fields[field].Type
		field_name := struct_type.Fields[field].Name
		field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

		field_destination := d.r1

		if field_type.ByteSize() > field_destination.Datatype.ByteSize() {
			fmt.Println(
				"codegen error: struct field `",
				field_name,
				"` (of type `", field_type.Name(),
				"`) is too big for register of type `",
				field_destination.Datatype.Name(), "`",
			)
			return res
		}

		field_allocation := Memory_Reference{
			field_type,
			field_offset,
			struct_start,
			struct_index,
			struct_indexcoeff,
		}

		res.Code.Appendln(GEN_very_generic_move(field_allocation, field_destination).Code)
	}
	
	{
		field := 0
		field_type := struct_type.Fields[field].Type
		field_name := struct_type.Fields[field].Name
		field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

		field_destination := d.r2

		if field_type.ByteSize() > field_destination.Datatype.ByteSize() {
			fmt.Println(
				"codegen error: struct field `",
				field_name,
				"` (of type `", field_type.Name(),
				"`) is too big for register of type `",
				field_destination.Datatype.Name(), "`",
			)
			return res
		}

		field_allocation := Memory_Reference{
			field_type,
			field_offset,
			struct_start,
			struct_index,
			struct_indexcoeff,
		}

		res.Code.Appendln(GEN_very_generic_move(field_allocation, field_destination).Code)
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
		fmt.Println("codegen error: not enough bytes to store struct of type `", struct_type.Name, "`")
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

func GEN_storestruct_from_regpair(s RegisterPair, d Memory_Reference) Codegen_Out {
	source := []Operand{s.r1, s.r2}
	return GEN_storestruct_from_operands(source, d)
}

func GEN_storestruct_from_memory(s Memory_Reference, d Memory_Reference) Codegen_Out {
	var res Codegen_Out

	struct_type := s.Type().(datatype_struct.StructType)
	nfields := len(struct_type.Fields)

	if s.DataType.ByteSize() > d.DataType.ByteSize() {
		fmt.Println("codegen error: not enough bytes to store struct of type `", struct_type.Name, "`")
		return res
	}

	struct_allocation := s
	struct_start := struct_allocation.Start
	struct_offset := struct_allocation.Offset
	struct_index := struct_allocation.Index
	struct_indexcoeff := struct_allocation.IndexCoefficient

	for field := nfields - 1; field >= 0; field-- {
		field_type := struct_type.Fields[field].Type
		field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

		field_allocation := Memory_Reference{
			field_type,
			field_offset,
			struct_start,
			struct_index,
			struct_indexcoeff,
		}

		destination := Memory_Reference{
			field_type,
			(field_offset - struct_offset) + d.Offset,
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

func GEN_storestruct(s Operand, d Memory_Reference) Codegen_Out {
	switch s.(type) {
		case RegisterPair: return GEN_storestruct_from_regpair(s.(RegisterPair), d)
		case Memory_Reference: return GEN_storestruct_from_memory(s.(Memory_Reference), d)
	}
	return Codegen_Out{}
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
			destination := d.(Memory_Reference)
			for element := len(s) - 1; element >= 0; element-- {
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

func GEN_arraycopy(s Memory_Reference, d Operand) Codegen_Out {
	res := Codegen_Out{}
	
	array_type := s.Type().(datatype_array.StaticArrayType)
	element_type := array_type.ElementType

	array_size := array_type.Length * uint64(element_type.ByteSize())
	switch d.(type) {
		case Memory_Reference: 
			destination := d.(Memory_Reference)
			rsi, _ := REGISTER_RSI.GetRegister(datatype.TYPE_UINT64)
			rdi, _ := REGISTER_RDI.GetRegister(datatype.TYPE_UINT64)
			rcx, _ := REGISTER_RCX.GetRegister(datatype.TYPE_UINT64)

			res.Code.TextAppendSln(ii("pushq", rsi))
			res.Code.TextAppendSln(ii("pushq", rdi))
			res.Code.TextAppendSln(ii("pushq", rcx))
			

			res.Code.TextAppendSln(ii("leaq", s, rsi))
			res.Code.TextAppendSln(ii("leaq", destination, rdi))
			res.Code.Appendln(GEN_move(Asm_Int_Literal{datatype.TYPE_UINT64, int64(array_size), 10}, rcx).Code)

			res.Code.TextAppendSln(ii("cld")) // clear direction flag
			res.Code.TextAppendSln(ii("rep movsb"))

			res.Code.TextAppendSln(ii("popq", rcx))
			res.Code.TextAppendSln(ii("popq", rdi))
			res.Code.TextAppendSln(ii("popq", rsi))
		case RegisterPair:
			destination := d.(RegisterPair)

			// TODO: actually get registers and compare sizes !!!
			if array_size > destination.Type().ByteSize() {
				fmt.Println("codegen error: can't copy the array - the destination is to smal! ~ i'm really sorry >< <")
			}

			// TODO: actually get number of elements and do stuff !!!
			rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)

			res.Code.TextAppendSln(ii("xorq", rax, rax))
			index_a := GEN_static_array_index(s, rax)
			res.Code.Appendln(index_a.Code)
			res.Code.Appendln(GEN_very_generic_move(index_a.Result, destination.r1).Code)

			res.Code.TextAppendSln(ii("incq", rax))
			index_b := GEN_static_array_index(s, rax)
			res.Code.Appendln(index_b.Code)
			res.Code.Appendln(GEN_very_generic_move(index_b.Result, destination.r2).Code)
	}

	return res
}

// reference static array/string into dynamic array/string
func GEN_arrayreference(s Memory_Reference, d Operand) Codegen_Out {
	array_source := s
	switch d.(type) {
		case Register:
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

				// TODO: change this when i have struct literals
				array_size := array_source.Type().(datatype_array.StaticArrayType).Length * 
							  array_source.Type().(datatype_array.StaticArrayType).ElementType.ByteSize()
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
					out.Code.Appendln(GEN_store(Asm_Int_Literal{datatype.TYPE_UINT64, int64(array_size), 10}, field_allocation).Code)
				} 
				return out
			} else {
				fmt.Println("codegen error: static to static array reference is impossible, sorry")
				return Codegen_Out{}
			}
		case RegisterPair:
			array_destination := d.(RegisterPair)

			out := Codegen_Out{}

			// TODO: change this when i have struct literals
			array_size := array_source.Type().(datatype_array.StaticArrayType).Length * 
						  array_source.Type().(datatype_array.StaticArrayType).ElementType.ByteSize()
			array_data := array_source

			{
				field_allocation := array_destination.r2
				array_reference := GEN_reference_from_mem(array_data)
				out.Code.Appendln(array_reference.Code)
				out.Code.Appendln(GEN_move(array_reference.Result, field_allocation).Code)
			}

			{
				field_allocation := array_destination.r1
				out.Code.Appendln(GEN_load(Asm_Int_Literal{datatype.TYPE_UINT64, int64(array_size), 10}, field_allocation).Code)
			} 
			return out
	}
	return Codegen_Out{}
}

func GEN_very_generic_move(s Operand, d Operand) Codegen_Out {
	switch s.(type) {
		default:
			s_operand := s.(Operand)
				switch s_operand.Type().(type) {
					case datatype_struct.StructType:
						struct_allocation := s_operand.(Memory_Reference)
						switch d.(type) {
							case Register:
								return GEN_loadstruct(struct_allocation, RegisterPair{Datatype : d.Type(), r1 : d.(Register)})
							case Memory_Reference:
								return GEN_storestruct(struct_allocation, d.(Memory_Reference))
							case RegisterPair:
								return GEN_loadstruct(struct_allocation, d.(RegisterPair))
						}

					case datatype_array.StaticArrayType:
						array_source := s_operand.(Memory_Reference)
						switch d.(type) {
							case Register:
								fmt.Println("codegen error:  can't move array reference - destination to smal")
								return Codegen_Out{}
							case Memory_Reference:
								array_destination := d.(Memory_Reference)

								if datatype_struct.IsDynamicArrayType(array_destination.Type()) ||
								   array_destination.Type().Equals(datatype_string.TYPE_STRING)  {
									return GEN_arrayreference(array_source, array_destination)
								}else {
									return GEN_arraycopy(array_source, array_destination)
								}
							case RegisterPair:
								array_destination := d.(RegisterPair)

								//assert array_destination is dynamic array 
								out := Codegen_Out{}

								// TODO: change this when i have struct literals
								array_size := array_source.Type().(datatype_array.StaticArrayType).Length * 
											  array_source.Type().(datatype_array.StaticArrayType).ElementType.ByteSize()
								array_data := array_source

								{
									field_allocation := array_destination.r2
									array_reference := GEN_reference_from_mem(array_data)
									out.Code.Appendln(array_reference.Code)
									out.Code.Appendln(GEN_move(array_reference.Result, field_allocation).Code)
								}

								{
									field_allocation := array_destination.r1
									out.Code.Appendln(GEN_load(Asm_Int_Literal{datatype.TYPE_UINT64, int64(array_size), 10}, field_allocation).Code)
								} 
								return out
							}
					case datatype_string.StaticStringType:	
						// can only move static string to string
						if !d.Type().Equals(datatype_string.TYPE_STRING) {
							fmt.Println("codegen error: can't move static string to `", d.Type().Name(), "`")
							return Codegen_Out{}
						}
						out := Codegen_Out{}

						// static strings are always in the read-only data section, so they are always Labels!
						string_label := s_operand.(Label)

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
						return GEN_move(s_operand, d)
				}

		case RegisterPair:
			return GEN_storestruct_from_regpair(s.(RegisterPair), d.(Memory_Reference))
			
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

		err := symbol.SymbolTableInsertInCurrentScope(ghost_parameter_name, Codegen_Symbol{variable_type, variable_allc, nil})
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

	allocated_regs := 0
	allocated_stack := int64(16) // return address (8B) + pushed rbp (8B)
	for _, a := range args {
		if (a.Type().ByteSize() > 16 || allocated_regs >= len(ArgumentRegisters) || (a.Type().ByteSize() > 8 && allocated_regs >= len(ArgumentRegisters)-1)) {
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

			allocated_regs += 2
		} else {
			var arg Operand
			/*
			switch a.(type) {
			case Label:
				arg = a.LiteralValue()
			default:
				arg = a
			}
			*/
			arg = a

			arg_reg, full := RegisterArgumentAllocate(arg.Type())
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + arg.Type().Name() + "`")
				return res
			}

			allocated_regs++

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

	allocated_regs := 0
	for i, a := range args {
		if (params[i].ByteSize() > 16 || allocated_regs >= len(ArgumentRegisters) || (params[i].ByteSize() > 8 && allocated_regs >= len(ArgumentRegisters)-1)){ 
			rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_UINT64)
			rax, _ := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)

			// We unreserve this in GEN_call. I know this is confusing.
			allocated_region := StackAllocateAndRemember(params[i])
			res.Code.TextAppendSln(ii("subq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(allocated_region.reserved), 10}, rsp))

			res.Code.Appendln(GEN_move(rsp, rax).Code)

			stack_region := Memory_Reference{
				params[i],
				0,
				rax,
				nil,
				1,
			}

			res.Code.Appendln(GEN_very_generic_move(a, stack_region).Code)
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

			allocated_regs += 2
			res.Code.Appendln(GEN_very_generic_move(a, RegisterPair{params[i], reg_b, reg_a}).Code)
		} else {

			var arg Operand
			/*
			switch a.(type) {
			case Label:
				arg = a.LiteralValue()
			default:
				arg = a
			}
			*/
			arg = a

			arg_reg, full := RegisterArgumentAllocate(arg.Type())
			if full {
				fmt.Println("codegen error: could not find an argument register for type `" + arg.Type().Name() + "`")
				return res
			}

			allocated_regs++
			res.Code.Appendln(GEN_load(arg, arg_reg).Code)
		}
	}

	RegisterArgumentFreeAll()

	return res
}

func GEN_call(f *front.Ast_Node, args []Operand) Codegen_Out {
	res := Codegen_Out{}

	var return_value_memory Memory_Reference
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
			allocation, full := REGISTER_RBX.GetRegister(pointer_type)
			if full {
				fmt.Println("codegen error: could not find return register for type `" + f.DataType.Name() + "`")
			}
			res.Code.TextAppendSln(ii("pushq", allocation))
		} else {
			allocation = reg
		}
		res.Code.TextAppendSln(ii("leaq", memory, allocation))

		// push-front pointer to args
		new_args := make([]Operand, 0, 1+len(args))
		new_args = append(new_args, allocation)
		new_args = append(new_args, args...)
		args = new_args
	}


	function_name := f.Data[0].String_value
	declaration, found := symbol.SymbolTableGetFromCurrentScope(function_name)
	if !found {
		fmt.Println("codegen error: undefined function `", function_name, "`")
		return res
	}

	function_params := declaration.(Codegen_Symbol).ArgTypes

	call_args := GEN_callargs(args, function_params)
	res.Code.Appendln(call_args.Code)

	name := LabelGet(function_name)
	res.Code.TextAppendSln(ii("call", name))

	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)

	nargs := len(f.Children)
	nargs_in_stack := nargs - len(ArgumentRegisters)
	if nargs_in_stack > 0 {
		reserved_stack := uint32(nargs_in_stack * 8)
		if reserved_stack%16 != 0 {
			reserved_stack += 16 - (reserved_stack & 0xF)
		}

		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_INT64, int64(reserved_stack), 10}, rsp))
		for i := 0; i < nargs_in_stack; i += 2 {
			StackUnreserve16Bytes()
		}
	}

	// unreserve the stack space where we passed the arguments
	arguments_in_stack := StackDeallocateCurrentRegion()
	if arguments_in_stack != nil {
		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_UINT64, int64(arguments_in_stack.reserved), 10}, rsp))
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

			return_reg, err := REGISTER_RAX.GetRegister(f.DataType)
			if err {
				fmt.Println("codegen error: could not find return register for type `" + f.DataType.Name() + "`")
			}

			res.Code.Appendln(GEN_very_generic_move(return_reg, result).Code)
		} else if f.DataType.ByteSize() <= 16 {
			result = StackAllocate(f.DataType).Reference()

			rax, err := REGISTER_RAX.GetRegister(datatype.TYPE_UINT64)
			if err {
				fmt.Println("codegen error: could not find return register 1 for type `" + f.DataType.Name() + "`")
			}
			rdx, err := REGISTER_RDX.GetRegister(datatype.TYPE_UINT64)
			if err {
				fmt.Println("codegen error: could not find return register 2 for type `" + f.DataType.Name() + "`")
			}

			return_regs := RegisterPair{f.DataType, rax, rdx}
			res.Code.Appendln(GEN_storestruct_from_regpair(return_regs, result.(Memory_Reference)).Code)
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
		res.Code.TextAppendSln(ii("pushq", allocation))
	} else {
		allocation = reg
	}

	res.Code.TextAppendSln(ii("leaq", ref, allocation))

	if full {
		old := allocation
		allocation = StackAllocate(pointer_type).Reference()
		res.Code.Appendln(GEN_move(old, allocation).Code)
		res.Code.TextAppendSln(ii("popq", old))
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
		res.Code.TextAppendSln(ii("pushq", allocation))
	} else {
		allocation = reg
	}

	res.Code.TextAppendSln(ii("leaq", ref, allocation))

	if full {
		old := allocation
		allocation = StackAllocate(pointer_type).Reference()
		res.Code.Appendln(GEN_move(old, allocation).Code)
		res.Code.TextAppendSln(ii("popq", old))
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
			if (uint64(r.(Asm_Int_Literal).Value) >> 32) > 0 {
				// this is buggy !
				if rax.Allocated() {
					res.Code.TextAppendSln(ii("pushq", rax))
					rax_pushed = true
				}
				rax.Allocate()

				res.Code.Appendln(GEN_load(r, rax).Code)
				r = rax
			}
		}
	}

	switch t {
	case front.AST_OP_SUM:
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
		allocation = l
	case front.AST_OP_SUB:
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
		allocation = l
	case front.AST_OP_MUL:
		rax, _ := REGISTER_RAX.GetRegister(l.Type())
		res.Code.Appendln(GEN_load(l, rax).Code)

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

		allocation = l
	case front.AST_OP_DIV:
		rax, _ := REGISTER_RAX.GetRegister(l.Type())
		rax_64, _ := REGISTER_RAX.GetRegister(datatype.TYPE_INT64)
		rdx_64, _ := REGISTER_RDX.GetRegister(datatype.TYPE_INT64)

		res.Code.TextAppendSln(ii("xorq", rdx_64, rdx_64))
		res.Code.TextAppendSln(ii("xorq", rax_64, rax_64))

		res.Code.Appendln(GEN_load(l, rax).Code)
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

		allocation = l
	case front.AST_OP_MOD:
		rax, _ := REGISTER_RAX.GetRegister(l.Type())
		rdx, _ := REGISTER_RDX.GetRegister(l.Type())
		rax_64, _ := REGISTER_RAX.GetRegister(datatype.TYPE_INT64)
		rdx_64, _ := REGISTER_RDX.GetRegister(datatype.TYPE_INT64)

		rem := rdx

		res.Code.TextAppendSln(ii("xorq", rdx_64, rdx_64))
		res.Code.TextAppendSln(ii("xorq", rax_64, rax_64))

		res.Code.Appendln(GEN_load(l, rax).Code)
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
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_LES:
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
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_GOE:
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
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_LOE:
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
		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_NEQ:
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

		res.Code.TextAppendSln(ii("setne", allocation))

		switch l.(type) {
		case Register:
			l.(Register).Free()
		}
	case front.AST_OP_AND:
		res.Code.TextAppendSln(ii("andb", r, l))

		allocation = l
	case front.AST_OP_OR:
		res.Code.TextAppendSln(ii("orb", r, l))

		allocation = l

	case front.AST_OP_BAND:
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
	case front.AST_OP_BORE:
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
	case front.AST_OP_BORI:
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
	}

	switch r.(type) {
		case Register:
			if rax_pushed {
				res.Code.TextAppendSln(ii("popq", rax))
				rax.Free()
			}
			r.(Register).Free()
	}

	res.Result = allocation
	return res
}

func GEN_static_array_index(array_allocation Operand, index Operand) Codegen_Out {
	res := Codegen_Out{}

	var element_type datatype.DataType
	if datatype_string.IsStaticStringType(array_allocation.Type()) {
		element_type = datatype.TYPE_UINT8
	} else
	if datatype_array.IsStaticArrayType(array_allocation.Type()) {
		static_array_type := array_allocation.Type().(datatype_array.StaticArrayType)
		element_type = static_array_type.ElementType
	}

	r10, _ := REGISTER_R10.GetRegister(datatype.TYPE_INT64)
	res.Code.TextAppendSln(ii("pushq",r10))
	res.Code.TextAppendSln(ii("leaq", array_allocation, r10))

	start := StackAllocate(r10.Type()).Reference()
	res.Code.Appendln(GEN_move(r10, start).Code)
	
	res.Code.TextAppendSln(ii("popq",r10))

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
		element_size := Asm_Int_Literal{datatype.TYPE_UINT64, int64(element_type.ByteSize()), 10}

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
func GEN_dynamic_array_index(array_struct Memory_Reference, index Operand, ast *front.Ast_Node) Codegen_Out {
	res := Codegen_Out{}

	r10, _ := REGISTER_R10.GetRegister(datatype.TYPE_INT64) // length or size... idk
	r11, _ := REGISTER_R11.GetRegister(datatype.TYPE_INT64) // data

	start := StackAllocate(r11.Type()).Reference() // data

	// load array.data, array.len => r10, r11
	res.Code.TextAppendSln(ii("pushq",r10))
	res.Code.TextAppendSln(ii("pushq",r11))

	
	load := GEN_loadstruct(array_struct, RegisterPair{array_struct.Type(), r10, r11})
	res.Code.Appendln(load.Code)
	res.Code.Appendln(GEN_move(r11, start).Code)

	res.Code.TextAppendSln(ii("popq",r11))
	res.Code.TextAppendSln(ii("popq",r10))

	// TODO: do boundary checking

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
		element_size := Asm_Int_Literal{datatype.TYPE_UINT64, int64(element_type.ByteSize()), 10}

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
