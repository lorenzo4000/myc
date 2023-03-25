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
	directive_IMPORT = N_TOKENS
)

// TRIGGER WARNING: this function is ENTIRELY COPY-PASTED!
func lex_directive(src string) ([]Token) {
	res := []Token{}

	index := 0
	l1 := int32(1)
	c1 := int32(1)
	for index < len(src) {
		next_token_str := ""
		l0 := l1
		c0 := c1
		for index < len(src) && src[index] != ' ' && src[index] != '\t' && src[index] != '"' {
			if src[index] == '\n' {
				l1 += 1
				c1  = 1
				break
			}
			next_token_str += string(src[index])

			c1++
			index++
		}

		// string literal
		if index < len(src) && src[index] == '"' {
			next_token_str += "\"" // start literal
			c1++
			index++

			for index < len(src) && (src[index] != '"' || src[index-1] == '\\') {
				if src[index] == '\n' {
					l1 += 1
					c1  = 1
					fmt.Printf("%d:%d: lexical error: newline in string literal\n", l1, c1)	
				}

				next_token_str += string(src[index])
				c1++
				index++
			}

			if index >= len(src) {
				fmt.Printf("%d:%d: lexical error: Expected `\"` before end of input\n", l1, c1)	
			} else {
				next_token_str += "\""	// close literal	
			}
		}

		if len(next_token_str) > 0 {
			var next_token Token
			if next_token_str[0] == '"' {
				 next_token = Token{TOKEN_STRING_LITERAL, l0, c0, l1, c1, 0, next_token_str[1:len(next_token_str) - 1]}
			} else {
				switch next_token_str {
					case "import": 
						 next_token = Token{directive_IMPORT, l0, c0, l1, c1, 0, next_token_str}
				}
			}

			res = append(res, next_token)
		}
		c1++
		index++
	}


	return res
}

func PrePar(src []Token) ([]Token) {
	prepared := []Token{}
	for	i := 0; i < len(src); i++ {
		if src[i].Type == TOKEN_DIRECTIVE {
			directive := src[i].String_value
			directive_tokens := lex_directive(directive)
			
			switch directive_tokens[0].Type {
				case directive_IMPORT:
					if len(directive_tokens) <= 1 {
						fmt.Println("pre-processor error: expected filename after `import`")
						return nil 
					}

					file_to_import := directive_tokens[1].String_value
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
			}
		} else {
			prepared = append(prepared, src[i])
		}
	}
	return prepared
}
