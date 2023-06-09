package front

import (
	"fmt"
	"os"
	"path/filepath"
	"strings"
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

func directive_op(src string)  (uint32, int) {
	index := 0

	// skip white
	for index < len(src) && (src[index] == ' ' || src[index] == '\t' || src[index] == '\n') {
		index++
	}

	// read until delimiter
	next_token_str := ""
	for index < len(src) && src[index] != ' ' && src[index] != '\t' && src[index] != '\n' {
		next_token_str += string(src[index])
		index++
	}

	if len(next_token_str) > 0 {
		switch next_token_str {
			case "import": 
				 return directive_IMPORT, index
			case "define":
				 return directive_DEFINE, index
		}
	}

	return 0, index
}

var macros = map[string][]Token {}

func PrePar(src []Token, import_paths []string) ([]Token) {
	prepared := []Token{}

	for	i := 0; i < len(src); i++ {
		if src[i].Type == TOKEN_DIRECTIVE {
			directive := src[i].String_value
			op, opl := directive_op(directive)
			if op == 0 {
				ops := strings.TrimSpace(directive[:opl])
				fmt.Printf("pre-processor error: undefined directive `%s`\n", ops)
				return nil
			}

			if op == directive_IMPORT {
				directive_tokens := Lex(directive[opl:])
				if directive_tokens == nil || len(directive_tokens) <= 0 || directive_tokens[0].Type != TOKEN_STRING_LITERAL {
					fmt.Println("pre-processor error: expected filename after `import`")
					return nil 
				}

				// try every search path
				file_to_import := directive_tokens[0].String_value
				var src_to_import []byte
				var read_err 	  error
				for _, path := range import_paths {
					_file_to_import := filepath.Join(path, file_to_import)
					src_to_import, read_err = os.ReadFile(_file_to_import)
					if read_err == nil {
						goto found_file
					}
				}
				fmt.Println("pre-processor error: couldn't read file in `import` directive: `", file_to_import, "`")
				return nil 

				found_file:
				
				tokens_to_import := Lex(string(src_to_import))
				if tokens_to_import == nil {
					fmt.Println("Lexical Errors: aborting...")
					return nil
				}
				tokens_to_import = PrePar(tokens_to_import, import_paths)
				if tokens_to_import == nil {
					return nil
				}

				prepared = append(prepared, tokens_to_import...)
			} else
			if op == directive_DEFINE {
				directive_tokens := Lex(directive[opl:])
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

				value = PrePar(value, import_paths)
				if value == nil || len(value) <= 0 {
					return nil 
				}
				
				// append to macro map
				macros[name] = value
			}
		} else {
			if src[i].Type == TOKEN_IDENTIFIER {
				// check if macro
				name := src[i].String_value
				macro := macros[name]
				if macro != nil {
					prepared = append(prepared, macro...)
					continue
				} 
			}

			prepared = append(prepared, src[i])
		}
	}

	return prepared
}
