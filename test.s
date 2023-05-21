AST_HEAD : 
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main, float_value = 0E+00 ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_LITERAL(null) : [ int_value = 0, string_value = , float_value = 0E+00 ]
			AST_VARIABLE_DEFINITION(*uint64) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = ptr, float_value = 0E+00 ]
				AST_DATATYPE(*uint64) : [ int_value = 0, string_value = *uint64, float_value = 0E+00 ]
				AST_LITERAL(*uint64) : [ int_value = 0, string_value = , float_value = 0E+00 ]
			AST_VARIABLE_DEFINITION([]uint8) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = arr, float_value = 0E+00 ]
				AST_DATATYPE([]uint8) : [ int_value = 0, string_value = []uint8, float_value = 0E+00 ]
				AST_LITERAL([]uint8) : [ int_value = 0, string_value = , float_value = 0E+00 ]
			AST_VARIABLE_DEFINITION(string) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = str, float_value = 0E+00 ]
				AST_DATATYPE(string) : [ int_value = 0, string_value = string, float_value = 0E+00 ]
				AST_LITERAL(string) : [ int_value = 0, string_value = , float_value = 0E+00 ]
panic: runtime error: invalid memory address or nil pointer dereference
[signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x4e91d7]

goroutine 1 [running]:
mycgo/back/codegen.GEN_store({0x0?, 0x0}, {{0x59eda0, 0xc0000263e0}, 0xfffffffffffffff8, {0x59ed30, 0xc000010030}, {0x0, 0x0}, 0x1})
	/home/lorenzo/Projects/mycgo/back/codegen/codegen_amd64.go:1392 +0x3d7
mycgo/back/codegen.GEN_move({0x0?, 0x0?}, {0x59ecf8?, 0xc000116338?})
	/home/lorenzo/Projects/mycgo/back/codegen/codegen_amd64.go:1424 +0x1b0
mycgo/back/codegen.Codegen(0xc0000663c0)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:429 +0xead
mycgo/back/codegen.Codegen(0xc000066280)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:147 +0x1ba
mycgo/back/codegen.Codegen(0xc0000660f0)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:147 +0x1ba
mycgo/back/codegen.Codegen(0xc0000660a0)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:147 +0x1ba
main.main()
	/home/lorenzo/Projects/mycgo/main/main.go:159 +0x9d8
