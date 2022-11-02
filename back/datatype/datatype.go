package datatype

type DataType interface {
	Name() string
	BitSize() byte
	ByteSize() byte
}
