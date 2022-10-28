package codegen

type Allocation interface {
	Allocate()
	Free()
	Text() string
}
