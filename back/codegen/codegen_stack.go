package codegen

import (
	"fmt"
)

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
	return Stack_Region{CurrentStackSize, size}
}

func (stack Stack_Region) Allocate() {
	
}
func (stack Stack_Region) Free() {

}
func (stack Stack_Region) Text() string {
	return fmt.Sprintf("-%d(%%rbp)", stack.rbp_offset)
}
func (stack Stack_Region) Dereference() Operand {
	return stack
}
func (stack Stack_Region) LiteralValue() Operand {
	return stack
}
