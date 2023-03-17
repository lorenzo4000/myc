package datatype

type DataType interface {
	Name() string
	BitSize() uint32
	ByteSize() uint32
	Equals(DataType) bool
}
