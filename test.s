AST_HEAD : 
	AST_FUNCTION_DEFINITION() : 
		AST_FUNCTION_DEFINITION_NAME() : [ int_value = 0, string_value = main, float_value = 0E+00 ]
		AST_FUNCTION_DEFINITION_ARGS() : 
		AST_DATATYPE() : 
		AST_BODY() | ASTO_BODY_FUNCTION : 
			AST_VARIABLE_DEFINITION(f32) : 
				AST_VARIABLE_DEFINITION_NAME() : [ int_value = 0, string_value = f, float_value = 0E+00 ]
				AST_DATATYPE(f32) : [ int_value = 0, string_value = f32, float_value = 0E+00 ]
				AST_OP_MUL(f32) : 
					AST_LITERAL(f32) : [ int_value = 0, string_value = , float_value = 5.56E+00 ]
					AST_LITERAL(f32) : [ int_value = 0, string_value = , float_value = 3.34E+00 ]
			AST_OP_EMUL(f32) : 
				AST_VARIABLE_NAME(f32) : [ int_value = 0, string_value = f, float_value = 0E+00 ]
				AST_LITERAL(f32) : [ int_value = 0, string_value = , float_value = 2.02E+00 ]
			AST_OP_ESUM(f32) : 
				AST_VARIABLE_NAME(f32) : [ int_value = 0, string_value = f, float_value = 0E+00 ]
				AST_LITERAL(f32) : [ int_value = 0, string_value = , float_value = 4.23E+00 ]
panic: runtime error: invalid memory address or nil pointer dereference
[signal SIGSEGV: segmentation violation code=0x1 addr=0x30 pc=0x4f4550]

goroutine 1 [running]:
mycgo/back/codegen.GEN_binop(0x19, {0x0, 0x0}, {0x0?, 0x0?})
	/home/lorenzo/Projects/mycgo/back/codegen/codegen_amd64.go:2384 +0xb0
mycgo/back/codegen.Codegen(0xc000066460)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:605 +0x8715
mycgo/back/codegen.Codegen(0xc0000662d0)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:146 +0x1ba
mycgo/back/codegen.Codegen(0xc000066280)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:146 +0x1ba
mycgo/back/codegen.Codegen(0xc0000660f0)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:146 +0x1ba
mycgo/back/codegen.Codegen(0xc0000660a0)
	/home/lorenzo/Projects/mycgo/back/codegen/codegen.go:146 +0x1ba
main.main()
	/home/lorenzo/Projects/mycgo/main/main.go:148 +0x8d8
