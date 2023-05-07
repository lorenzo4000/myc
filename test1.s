.text
	.global main
	main:
		pushq %rbp
		movq %rsp, %rbp
			
		movq $printf_fmt, %rdi
		movq (L0), %rsi
		movq (L1), %rdx
		call printf
		
		call exit

	L0:
		.quad 0xCAFEBABECAFEBABE
	L1:
		.quad 0x6969696969696969

.data
	printf_fmt: .string "a: %llx, b: %llx\n"
