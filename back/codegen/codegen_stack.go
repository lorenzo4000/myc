package codegen

type Stack_Region struct {
	rbp_offset uint32
	size uint32
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
func StackAllocate(size uint32) Stack_Region {
	for CurrentAllocatedStack + size > CurrentReservedStack {
		StackReserve16Bytes()
	}
	CurrentAllocatedStack += size
	return Stack_Region{CurrentAllocatedStack, size}
}

func (stack Stack_Region) Reference() Memory_Reference {
	return Memory_Reference{-1 * int64(stack.rbp_offset), REGISTER_RBP.GetSubRegister(uint64(64)), nil, ASMREF_INDEXCOEFF_1}
}
