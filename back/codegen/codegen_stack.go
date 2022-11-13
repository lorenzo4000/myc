package codegen

type Stack_Region struct {
	rbp_offset uint32
	size uint32
}

var CurrentStackSize uint32 = 0
var CurrentAllocatedStack uint32 = 0
func StackAllocate(size uint32) Stack_Region {
	for CurrentAllocatedStack + size > CurrentStackSize  {
		CurrentStackSize += 0x10 // C ABI stuff
	}
	CurrentAllocatedStack += size
	return Stack_Region{CurrentAllocatedStack, size}
}

func (stack Stack_Region) Reference() Memory_Reference {
	return Memory_Reference{-1 * int64(stack.rbp_offset), REGISTER_RBP, nil, ASMREF_INDEXCOEFF_1}
}
