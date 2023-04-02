package datatype

type DataType interface {
	Name() string
	BitSize() uint64
	ByteSize() uint64
	Equals(DataType) bool
}


