package front

import (
	"fmt"
	"io/ioutil"
)

/*
	this is the compiler pre-processor.
	directives are delimited by: 
		- `@`  at start of directive 	      : single line, 
		- `@@` at start and end of directive  : multi-line.

	for every directive it does something; it CAN edit the tokenized source.
	it's defined by the compiler NOT BY THE LANGUAGE.
*/

const (
	directive_IMPORT = (iota + 1) << 24
	directive_DEFINE 
)

func directive_op(src string)  (uint32, string) {
	index := 0

	// read until delimiter
	next_token_str := ""
	for index < len(src) && src[index] != ' ' && src[index] != '\t' && src[index] != '\n' {
		next_token_str += string(src[index])
		index++
	}

	if len(next_token_str) > 0 {
		switch next_token_str {
			case "import": 
				 return directive_IMPORT, next_token_str
			case "define":
				 return directive_DEFINE, next_token_str
		}
	}

	return 0, next_token_str
}

func PrePar(src []Token) ([]Token) {
	prepared := []Token{}

	macros := make(map[string][]Token)

	for	i := 0; i < len(src); i++ {
		if src[i].Type == TOKEN_DIRECTIVE {
			directive := src[i].String_value
			op, op_str := directive_op(directive)
			if op == 0 {
				fmt.Printf("pre-processor error: undefined directive `%s`\n", op_str)
				return nil
			}

			if op == directive_IMPORT {
				directive_tokens := Lex(directive[len(op_str):])

				if directive_tokens == nil || len(directive_tokens) <= 0 || directive_tokens[0].Type != TOKEN_STRING_LITERAL {
					fmt.Println("pre-processor error: expected filename after `import`")
					return nil 
				}

				
				file_to_import := directive_tokens[0].String_value
				src_to_import, read_err := ioutil.ReadFile(file_to_import)
				if read_err != nil {
					fmt.Println("pre-processor error: couldn't read file in `import` directive: `", file_to_import, "`")
					return nil 
				}
				
				tokens_to_import := Lex(string(src_to_import))
				if tokens_to_import == nil {
					fmt.Println("Lexical Errors: aborting...")
					return nil
				}
				tokens_to_import = PrePar(tokens_to_import)
				if tokens_to_import == nil {
					return nil
				}

				prepared = append(prepared, tokens_to_import...)
			} else
			if op == directive_DEFINE {
				directive_tokens := Lex(directive[len(op_str):])
				
				if directive_tokens == nil || len(directive_tokens) <= 0 || directive_tokens[0].Type != TOKEN_IDENTIFIER {
					fmt.Println("pre-processor error: expected identifier after `define`")
					return nil 
				}
				name := directive_tokens[0].String_value
				
				if len(directive_tokens) <= 1 {
					fmt.Println("pre-processor error: expected value after identifier in macro definition")
					return nil 
				}
				value := directive_tokens[1:]
				
				// append to macro map
				macros[name] = value
			}
		} else {
			// check if macro
			name := src[i].String_value
			macro := macros[name]
			if macro != nil {
				prepared = append(prepared, macro...)
			} else {
				prepared = append(prepared, src[i])
			}
		}
	}

	return prepared
}
