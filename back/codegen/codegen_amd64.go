package codegen

import (
	"strconv"
	"log"
	"fmt"
	"mycgo/back/datatype"
	"mycgo/back/datatype/datatype_struct"
	"mycgo/front"
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
	Class RegisterClass
	Sub byte
}

type RegisterPair struct {
	r1 Register
	r2 Register
}

const (
	REGISTER_RAX	= RegisterClass(iota|REG_KIND_QDWBb)
	REGISTER_RDI	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_RSI	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_RDX	= RegisterClass(iota|REG_KIND_QDWBb)
	REGISTER_RCX	= RegisterClass(iota|REG_KIND_QDWBb)
	REGISTER_R8 	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R9 	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R10	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R11	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_RSP	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_RBX	= RegisterClass(iota|REG_KIND_QDWBb)
	REGISTER_RBP	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R12	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R13	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R14	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_R15	= RegisterClass(iota|REG_KIND_QDWB)
	REGISTER_RIP    = RegisterClass(iota|REG_KIND_QDW)
	REGISTER_RFLAGS = RegisterClass(iota|REG_KIND_QDW)

	N_REGISTERS = iota
)

var RegistersStr = [N_REGISTERS][REG_SUB_MAX]string {
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
				case 64: r = reg.register_from_sub(REG_SUB_Q)
						 r.Datatype = typ
				case 32: r = reg.register_from_sub(REG_SUB_D)
						 r.Datatype = typ
				case 16: r = reg.register_from_sub(REG_SUB_W)
						 r.Datatype = typ
				case 8:  return Register{}, true
			}
		default:
			switch bit_size {
				case 64: r = reg.register_from_sub(REG_SUB_Q)
						 r.Datatype = typ
				case 32: r = reg.register_from_sub(REG_SUB_D)
						 r.Datatype = typ
				case 16: r = reg.register_from_sub(REG_SUB_W)
						 r.Datatype = typ
				case 8:  r = reg.register_from_sub(REG_SUB_B)
						 r.Datatype = typ
			}
	}

	return r, false
}

func (reg Register) Allocate() {
	registers_alloc[byte(reg.Class) & REG_KIND_MASKI][reg.Sub] = true
}

func (reg Register) Free() {
	registers_alloc[byte(reg.Class) & REG_KIND_MASKI][reg.Sub] = false
}

func (class RegisterClass) Allocate() {
	for i := byte(0); i < REG_SUB_b; i++ {
		registers_alloc[byte(class) & REG_KIND_MASKI][i] = true
	}
}

func (class RegisterClass) Free() {
	for i := byte(0); i < REG_SUB_b; i++ {
		registers_alloc[byte(class) & REG_KIND_MASKI][i] = false
	}
}

func (reg Register) Allocated() bool {
	switch reg.Sub {
		case REG_SUB_B:
			for i := byte(0); i < REG_SUB_B; i++ {
				if registers_alloc[byte(reg.Class) & REG_KIND_MASKI][i] {
					return true
				}
			}
			if registers_alloc[byte(reg.Class) & REG_KIND_MASKI][REG_SUB_B] {
				return true
			}
		case REG_SUB_b:
			for i := byte(0); i < REG_SUB_B; i++ {
				if registers_alloc[byte(reg.Class) & REG_KIND_MASKI][i] {
					return true
				}
			}
			if registers_alloc[byte(reg.Class) & REG_KIND_MASKI][REG_SUB_b] {
				return true
			}
		default:
			for _, sub := range registers_alloc[byte(reg.Class) & REG_KIND_MASKI] {
				if sub {
					return true
				}
			}
	}
	return false
}

func (reg Register) Text() string {
	return RegistersStr[byte(reg.Class) & REG_KIND_MASKI][reg.Sub]
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

func register_scratch_allocate(sub byte) (Register, bool) {
	for _, s := range(ScratchRegisters) {
		if sub == REG_SUB_B {
			if byte(s) & REG_KIND_MASK > REG_KIND_QDWB {
				continue
			}
		}
		if sub == REG_SUB_b {
			if byte(s) & REG_KIND_MASK > REG_KIND_QDWBb {
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
		case 64: r, f = register_scratch_allocate(REG_SUB_Q)
				 r.Datatype = _type
		case 32: r, f = register_scratch_allocate(REG_SUB_D)
				 r.Datatype = _type
		case 16: r, f = register_scratch_allocate(REG_SUB_W)
				 r.Datatype = _type
		case 8:
			r, f =  register_scratch_allocate(REG_SUB_B)
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
	for _, s := range(ScratchRegisters) {
		s.Free()
	}
}

func register_argument_allocate(sub byte) (Register, bool) {
	for _, s := range(ArgumentRegisters) {
		if sub == REG_SUB_B {
			if byte(s) & REG_KIND_MASK > REG_KIND_QDWB {
				continue
			}
		}
		if sub == REG_SUB_b {
			if byte(s) & REG_KIND_MASK > REG_KIND_QDWBb {
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
		case 64: r, f = register_argument_allocate(REG_SUB_Q)
				 r.Datatype = _type
		case 32: r, f = register_argument_allocate(REG_SUB_D)
				 r.Datatype = _type
		case 16: r, f = register_argument_allocate(REG_SUB_W)
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
	for _, s := range(ArgumentRegisters) {
		s.Free()
	}
}

var ScratchRegisters = [5]RegisterClass {
	REGISTER_RBX,
	REGISTER_R12,
	REGISTER_R13,
	REGISTER_R14,
	REGISTER_R15,
}

var ArgumentRegisters = [6]RegisterClass {
	REGISTER_RDI,
	REGISTER_RSI,
	REGISTER_RDX,
	REGISTER_RCX,
	REGISTER_R8 ,
    REGISTER_R9 ,
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
	DataType datatype.DataType
	Offset int64
	Start Operand
	Index Operand
	IndexCoefficient Index_Coeff
}

func (mem Memory_Reference) Type() datatype.DataType {
	return mem.DataType
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

// === Stack ===

type Stack_Region struct {
	rbp_offset uint32
	datatype datatype.DataType
}

var CurrentReservedStack uint32 = 0
func StackReserveBytes(bytes uint32) {
	if bytes % 16 != 0 {
		bytes += 16 - (bytes & 0xF)
	}
	CurrentReservedStack += bytes
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

var CurrentAllocatedStack uint32 = 0
func StackAllocate(_type datatype.DataType) Stack_Region {
	size := uint32(_type.ByteSize())

	for CurrentAllocatedStack + size > CurrentReservedStack {
		StackReserve16Bytes()
	}
	CurrentAllocatedStack += size

	return Stack_Region{CurrentAllocatedStack, _type}
}

func (stack Stack_Region) Reference() Memory_Reference {
	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	return Memory_Reference{stack.datatype, -1 * int64(stack.rbp_offset), rbp, nil, ASMREF_INDEXCOEFF_1}
}

// === Instruction ===

func ii(op string, oprnds ...Operand) string {
	cnt := 0
	for _, oprnd := range oprnds {
		switch oprnd.(type) {
			case Memory_Reference: cnt++
		}
	}

	if cnt >= 2 {
		var instruction string = ""
		var allocation Operand

		reg, full := RegisterScratchAllocate(oprnds[0].Type())
		if full {
			allocation, _ = REGISTER_RBX.GetRegister(oprnds[0].Type())
			rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)

			instruction += Instruction("pushq", rbx) + "\n"
		} else {
			allocation   = reg
		}

		instruction += GEN_move(oprnds[0], allocation).Code.Text + "\n"
		oprnds[0] = allocation
	    instruction += Instruction(op, oprnds...) + "\n"

		if full {
			rbx, _ := REGISTER_RBX.GetRegister(datatype.TYPE_INT64)
			instruction  += Instruction("popq", rbx) + "\n"
		} else {
			reg.Free()
		}
		return instruction
	}	

	return Instruction(op, oprnds...)
}

// === general data allocation === 

func Allocate_For_Scratchy(_type datatype.DataType) Operand {
	size := _type.ByteSize()

	if size <= 8 {
		reg, full := RegisterScratchAllocate(_type)
		if full {
			return StackAllocate(_type).Reference()
		} 
		return reg
	}
	if size <= 16 {
		// TODO: allocate register pair (SystemV C ABI)
	} 
	return StackAllocate(_type).Reference()
}


// === GEN_* ===

func GEN_function_prologue() Codegen_Out {
	res := Codegen_Out{}
	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)
	res.Code.TextAppendSln((ii("pushq", rbp)))
	res.Code.TextAppendSln((ii("movq", rsp, rbp)))

	if CurrentReservedStack > 0 {
		// allocate used stack
		res.Code.TextAppendSln((ii("subq", Asm_Int_Literal{datatype.TYPE_INT64, int64(CurrentReservedStack), 10}, rsp)))
	}

	return res
}

func GEN_function_epilogue() Codegen_Out {
	res := Codegen_Out{}

	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)

	// deallocate used stack
	res.Code.TextAppendSln(ii("movq", rbp, rsp) )
	res.Code.TextAppendSln(ii("popq", rbp))
	CurrentReservedStack = 0
	CurrentAllocatedStack = 0

	res.Code.TextAppendSln(ii("ret") )

	return res
}

// value -> register
func GEN_load(v Operand, r Register) Codegen_Out {
	res := Codegen_Out{}
	
	switch v.Type().BitSize() {
		case 64:  
			switch v.(type) {
				case Asm_Int_Literal: res.Code.TextAppendSln(ii("movabsq", v, r))
				default:			  res.Code.TextAppendSln(ii("movq", v, r))
			}
		case 32:  res.Code.TextAppendSln(ii("movl", v, r))
		case 16:  res.Code.TextAppendSln(ii("movw", v, r))
		case 8:   res.Code.TextAppendSln(ii("movb", v, r))
		default: return res
	}

	return res
}

// value -> memory
func GEN_store(v Operand, m Memory_Reference) Codegen_Out {
	res := Codegen_Out{}

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
		case 32:  res.Code.TextAppendSln(ii("movl", v, m))
		case 16:  res.Code.TextAppendSln(ii("movw", v, m))
		case 8:   res.Code.TextAppendSln(ii("movb", v, m))
		default: return res
	}

	return res
}

// value -> reg/mem
func GEN_move(s Operand, d Operand) Codegen_Out {
	switch d.(type) {
		case Register: 		   return GEN_load(s, d.(Register))
		case Memory_Reference: return GEN_store(s, d.(Memory_Reference))
	}
	return Codegen_Out{}
}

func GEN_loadstruct(s Memory_Reference, d []Register) Codegen_Out {
	var res Codegen_Out

	struct_type := s.Type().(datatype_struct.StructType)
	nfields := len(struct_type.Fields)

	if nfields > len(d) {
		fmt.Println("codegen error: not enough registers to load struct of type `", struct_type.Name, "`")
		return res
	}
	
	struct_allocation := s
	struct_start  := struct_allocation.Start
	struct_offset := struct_allocation.Offset

	for field := nfields - 1; field >= 0; field-- {
		field_type := struct_type.Fields[field].Type
		field_name := struct_type.Fields[field].Name
		field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

		field_destination := d[(nfields - field) - 1]
		
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
			nil,
			1,
		}


		res.Code.Appendln(GEN_very_generic_move(field_allocation.LiteralValue(), field_destination).Code)
	}

	return res
}

func GEN_storestruct(s Memory_Reference, d Memory_Reference) Codegen_Out {
	var res Codegen_Out

	struct_type := s.Type().(datatype_struct.StructType)
	nfields := len(struct_type.Fields)
	
	if s.DataType.ByteSize() > d.DataType.ByteSize() {
		fmt.Println("codegen error: not enough bytes to store struct of type `", struct_type.Name, "`")
		return res
	}
	
	struct_allocation := s
	struct_start  := struct_allocation.Start
	struct_offset := struct_allocation.Offset

	for field := nfields - 1; field >= 0; field-- {
		field_type := struct_type.Fields[field].Type
		field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

		field_allocation := Memory_Reference{
			field_type,
			field_offset,
			struct_start,
			nil,
			1,
		}

		destination := Memory_Reference{
			field_type,
			field_offset - struct_offset,
			d.Start,
			nil,
			1,
		}

		//   struct {struct {struct {int64}}}
		//	 need to find the most primitive in a rescursive way
		//
		//	 so this doesnt work.
		//   how do i solve?
		

		// intermidiate_register := REGISTER_RBX.GetRegister(field_type)
		

		res.Code.Appendln(GEN_very_generic_move(field_allocation.LiteralValue(), destination).Code)
		//res.Code.Appendln(GEN_store())
	}

	return res
}

func GEN_very_generic_move(s Operand, d any) Codegen_Out {
	switch s.Type().(type) {
		case datatype_struct.StructType: 
			struct_allocation := s.(Memory_Reference)
			switch d.(type) {
				case Register: return GEN_loadstruct(struct_allocation, []Register{d.(Register)})
				case Memory_Reference: return GEN_storestruct(struct_allocation, d.(Memory_Reference))
				case []Register: return GEN_loadstruct(struct_allocation, d.([]Register))
			}
		default:
			return GEN_move(s, d.(Operand))
	}

	return Codegen_Out{}
}

func GEN_jump(a Operand) Codegen_Out {
	res := Codegen_Out{}

	res.Code.TextAppendSln(ii("jmp", a) )

	return res
}

func GEN_function_params(args []Operand) Codegen_Out {
	res := Codegen_Out{}

	rbp, _ := REGISTER_RBP.GetRegister(datatype.TYPE_INT64)

	for arg, arg_v := range(args) {
		var parameter Operand
		typ := arg_v.Type()

		if arg >= 6 {
			parameter = Memory_Reference{
				datatype.TYPE_INT64,
				int64(16 + ((arg - 6) * 8)),
				rbp,
				nil,
				ASMREF_INDEXCOEFF_1,
			}	
		} else {
			reg := ArgumentRegisters[arg]
			err := false
			parameter, err = reg.GetRegister(typ)
			if err {
				fmt.Println("codegen error: could not find an argument register for type `" + typ.Name() + "`")
			}
		}
		
		res.Code.Appendln(GEN_move(parameter, arg_v).Code)
	}

	return res
}
func GEN_callargs(args []Operand) Codegen_Out {
	res := Codegen_Out{}

	nargs := len(args)
	
	args_in_stack := make([]Operand, 0, nargs)
	args_in_regs  := make([]Operand, 0, nargs)

	for k, a := range args {
		i := len(args_in_stack)
		j := len(args_in_regs)

		if a.Type().ByteSize() > 16 || k >= len(ArgumentRegisters) {
			args_in_stack = args_in_stack[:i+1]
			args_in_stack[i] = a
		} else
		if a.Type().ByteSize() > 8 {
			// TODO: don't just assume it's a struct
			struct_allocation := a
			struct_type := a.Type().(datatype_struct.StructType)
			struct_start  := struct_allocation.(Memory_Reference).Start
			struct_offset := struct_allocation.(Memory_Reference).Offset

			if cap(args_in_regs) < j + 2 {
				new_ := make([]Operand, (j + 2) * 2)
				copy(args_in_regs, new_)
				args_in_regs = new_
			}
			args_in_regs = args_in_regs[:j+2]

			// could expand
			for field := 0; field < 2; field++ {
				field_type := struct_type.Fields[field].Type
				field_offset := struct_offset + int64(struct_type.Fields[field].Offset)
				
				field_allocation := Memory_Reference {
					field_type,
					field_offset,
					struct_start,
					nil,
					1,
				}

				args_in_regs[j+field] = field_allocation
			}
		} else {
			args_in_regs = args_in_regs[:j+1]
			args_in_regs[j] = a
		}
	}
	
	nargs_in_stack := len(args_in_stack)
	nargs_in_regs :=  len(args_in_regs)
		
	size_in_stack := uint32(0)
	for _, a := range args_in_stack {
		size_in_stack += a.Type().ByteSize()
	}
	StackReserveBytes(uint32(size_in_stack * 8))

	if size_in_stack % 16 != 0 {
		res.Code.TextAppendSln(ii("pushq", Asm_Int_Literal{datatype.TYPE_INT64, 0, 10}))
	}

	for i := nargs_in_stack - 1; i >= 0; i-- {
		arg := args_in_stack[i]

		if arg.Type().ByteSize() > 16 {
			// TODO: don't assert it's a struct
			struct_type := arg.Type().(datatype_struct.StructType)
			nfields := len(struct_type.Fields)
			
			struct_allocation := arg
			struct_start  := struct_allocation.(Memory_Reference).Start
			struct_offset := struct_allocation.(Memory_Reference).Offset

			for field := nfields - 1; field >= 0; field-- {
				field_type := struct_type.Fields[field].Type
				field_offset := struct_offset + int64(struct_type.Fields[field].Offset)

				field_allocation := Memory_Reference{
					field_type,
					field_offset,
					struct_start,
					nil,
					1,
				}

				res.Code.TextAppendSln(ii("pushq", field_allocation.LiteralValue()) )
			}
		} else {
			res.Code.TextAppendSln(ii("pushq", arg.LiteralValue()))
		}
	}

	for i := nargs_in_regs - 1; i >= 0; i-- {
		arg := args_in_regs[i]
	
		/*
		switch args_in_regs[i].(type) {
			case Label: 
				arg = args_in_regs[i].LiteralValue()
			default:
				arg = args_in_regs[i]
		}
		*/

		//arg_type := arg.Type()
		//arg_size := arg_type.ByteSize()
		/*
		if arg_size > 8 {
			reg_a := ArgumentRegisters[i].register_from_sub(REG_SUB_Q)
			reg_b := ArgumentRegisters[i - 1].register_from_sub(REG_SUB_Q)

			res.Code.Appendln(GEN_very_generic_move(arg, []Register{reg_a, reg_b}).Code)
		} else {
		*/
			reg, err := ArgumentRegisters[i].GetRegister(arg.Type())
			if err {
				fmt.Println("codegen error: could not find an argument register for type `" + arg.Type().Name() + "`")
			}
			res.Code.Appendln(GEN_move(arg, reg).Code)
		//}
	}
	return res
}

func GEN_call(f *front.Ast_Node) Codegen_Out {
	res := Codegen_Out{}
	
	rsp, _ := REGISTER_RSP.GetRegister(datatype.TYPE_INT64)

	name := LabelGet(f.Children[0].Data[0].String_value)

	res.Code.TextAppendSln(ii("call", name) )

	nargs := len(f.Children[1].Children)
	nargs_in_stack := nargs - len(ArgumentRegisters)
	if nargs_in_stack > 0 {
		reserved_stack := uint32(nargs_in_stack * 8)
		if reserved_stack % 16 != 0 {
			reserved_stack += 16 - (reserved_stack & 0xF)
		}
		
		res.Code.TextAppendSln(ii("addq", Asm_Int_Literal{datatype.TYPE_INT64, int64(reserved_stack), 10}, rsp) )
		for i := 0; i < nargs_in_stack; i+=2 {
			StackUnreserve16Bytes()
		}
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
	
	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", for_exit_label) )

	res.Code.Appendln(b.Code)

	res.Code.Appendln(e.Code)
	
	res.Code.TextAppendSln(ii("jmp", for_label) )

	res.Code.TextAppendSln(for_exit_label.Text() + ":")
	return res
}

func GEN_while(c Codegen_Out, b Codegen_Out) Codegen_Out {
	res := Codegen_Out{}

	while_label := LabelGen()
	while_exit_label := LabelGen()
	res.Code.TextAppendSln(while_label.Text() + ":")

	res.Code.Appendln(c.Code)

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", while_exit_label) )

	res.Code.Appendln(b.Code)

	res.Code.TextAppendSln(ii("jmp", while_label) )
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

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", if_exit_label) )

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

	res.Code.TextAppendSln(ii("andb", c.Result, c.Result) )
	res.Code.TextAppendSln(ii("jz", if_false_label) )

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

func GEN_uniop(t front.Ast_Type, v Operand) Codegen_Out {
	res := Codegen_Out{}
	var allocation Operand
	
	data_size := v.Type().BitSize()

	switch t {
		case front.AST_OP_NEG:
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("negq", v))
				case 32:  res.Code.TextAppendSln(ii("negl", v))
				case 16:  res.Code.TextAppendSln(ii("negw", v))
				case 8:   res.Code.TextAppendSln(ii("negb", v))
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
		case front.AST_OP_REFERENCE:
			

			
	}
	
	res.Result = allocation
	return res
}

func GEN_binop(t front.Ast_Type, l Operand, r Operand) Codegen_Out {
	res := Codegen_Out{}
	var allocation Operand
	
	data_size := l.Type().BitSize()

	switch t {
		case front.AST_OP_SUM: 
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("addq", r, l))
				case 32:  res.Code.TextAppendSln(ii("addl", r, l))
				case 16:  res.Code.TextAppendSln(ii("addw", r, l))
				case 8:   res.Code.TextAppendSln(ii("addb", r, l))
			}
			allocation = l
		case front.AST_OP_SUB: 
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("subq", r, l))
				case 32:  res.Code.TextAppendSln(ii("subl", r, l))
				case 16:  res.Code.TextAppendSln(ii("subw", r, l))
				case 8:   res.Code.TextAppendSln(ii("subb", r, l))
			}
			allocation = l
		case front.AST_OP_MUL:
			rax, _ := REGISTER_RAX.GetRegister(l.Type())

			res.Code.Appendln(GEN_load(l, rax).Code)
			switch r.Type().BitSize() {
				case 64:  res.Code.TextAppendSln(ii("imulq", r))
				case 32:  res.Code.TextAppendSln(ii("imull", r))
				case 16:  res.Code.TextAppendSln(ii("imulw", r))
				case 8:   res.Code.TextAppendSln(ii("imulb", r))
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
				case 64:  res.Code.TextAppendSln(ii("idivq", r))
				case 32:  res.Code.TextAppendSln(ii("idivl", r))
				case 16:  res.Code.TextAppendSln(ii("idivw", r))
				case 8:   res.Code.TextAppendSln(ii("idivb", r))
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
				case 64:  res.Code.TextAppendSln(ii("idivq", r))
				case 32:  res.Code.TextAppendSln(ii("idivl", r))
				case 16:  res.Code.TextAppendSln(ii("idivw", r))
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
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setg", allocation) )
			} else {
				res.Code.TextAppendSln(ii("seta", allocation) )
			}
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_LES: 
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}

			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setl", allocation) )
			} else {
				res.Code.TextAppendSln(ii("setb", allocation) )
			}
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_GOE:
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}


			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setge", allocation) )
			} else {
				res.Code.TextAppendSln(ii("setae", allocation) )
			}
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_LOE:
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}


			if r.Type().(datatype.PrimitiveType).Sign() {
				res.Code.TextAppendSln(ii("setle", allocation) )
			} else {
				res.Code.TextAppendSln(ii("setbe", allocation) )
			}
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_EQU:
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}


			res.Code.TextAppendSln(ii("sete", allocation) )
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_NEQ:
			var full bool
			reg, full := RegisterScratchAllocate(datatype.TYPE_BOOL)
			if full {
				allocation = StackAllocate(datatype.TYPE_BOOL).Reference()
			} else {
				allocation = reg
			}
			
			res.Code.TextAppendSln(ii("xorb", allocation, allocation) )
			switch data_size {
				case 64:  res.Code.TextAppendSln(ii("cmpq", r, l))
				case 32:  res.Code.TextAppendSln(ii("cmpl", r, l))
				case 16:  res.Code.TextAppendSln(ii("cmpw", r, l))
				case 8:   res.Code.TextAppendSln(ii("cmpb", r, l))
			}


			res.Code.TextAppendSln(ii("setne", allocation) )
			
			switch l.(type) {
				case Register: l.(Register).Free()
			}
		case front.AST_OP_AND:
			res.Code.TextAppendSln(ii("andb", r, l))

			allocation = l
		case front.AST_OP_OR:
			res.Code.TextAppendSln(ii("orb", r, l))

			allocation = l
	}

	switch r.(type) {
		case Register: r.(Register).Free()
	}

	res.Result = allocation
	return res
}
