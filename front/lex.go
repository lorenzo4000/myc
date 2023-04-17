package front

import (
	"fmt"
	"strconv"
)

func Lex(src string) ([]Token) {
	res := []Token{}

	index := 0
	l1 := int32(1)
	c1 := int32(1)
	for index < len(src) {
		next_token_str := ""
		l0 := l1
		c0 := c1
		for index < len(src) && src[index] != ' ' && src[index] != '\t' && src[index] != '"' && src[index] != '\'' && src[index] != '@' {
			if src[index] == '\n' {
				l1 += 1
				c1  = 1
				break
			}
			next_token_str += string(src[index])
			if IsCharacterToken(src[index]) {
				break
			}
			if index+1 < len(src) {
				if IsCharacterToken(src[index+1]) {
					break
				}
			}

			c1++
			index++
		}
		// char literal
		if index < len(src) && src[index] == '\'' {
			c1++
			index++
			if index >= len(src) {
				fmt.Printf("%d:%d: lexical error: Expected character before end of input\n", l1, c1)	
				break
			}

			char := src[index]
			if char == '\\' {
				escape_char := ""

				for true {
					if index+1 >= len(src) {
						break
					}
					escape_char += string(src[index])

					if src[index+1] == '\'' {
						break
					}
					c1++
					index++
				}

				v, mb, _, err := strconv.UnquoteChar(escape_char, '\'')
				if err != nil {
					fmt.Printf("%d:%d: lexical error: %s\n", l1, c1, err)	
					break
				}

				if mb {
					fmt.Printf("%d:%d: lexical error: unsupported wide character in character literal\n", l1, c1)	
					break
				}
				char = byte(v)
			}
			next_token := Token{TOKEN_INT_LITERAL, l0, c0, l1, c1, int64(char), ""}
			res = append(res, next_token)

			c1++
			index++
			if index >= len(src) {
				fmt.Printf("%d:%d: lexical error: Expected `'` before end of input\n", l1, c1)	
				break
			}
			if src[index] != '\'' {
				fmt.Printf("%d:%d: lexical error: Expected `'` \n", l1, c1)	
				break
			}
			c1++
			index++
			continue
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
				
				// format
				var err error
				next_token_str, err = strconv.Unquote(next_token_str)
				if err != nil {
					fmt.Printf("%d:%d: lexical error: %s\n", l1, c1, err)	
				}
			}
			next_token := Token{TOKEN_STRING_LITERAL, l0, c0, l1, c1, 0, next_token_str}
			res = append(res, next_token)

			c1++
			index++
			continue
		}

		// directives
		if index < len(src) && src[index] == '@' {
			if index+1 >= len(src) {
				fmt.Printf("%d:%d: lexical error: Unexpected end of input\n", l1, c1)	
			} else
			if src[index+1] == '@' {
				next_token_str += "@@" // start directive

				c1 += 2
				index += 2
				if index+1 >= len(src) {
					fmt.Printf("%d:%d: lexical error: Expected `@@` before end of input\n", l1, c1)	
					break;
				}
				for src[index] != '@' || src[index+1] != '@' {
					if src[index] == '\n' {
						l1++
						c1 = 1
					}

					if index+1 >= len(src) {
						fmt.Printf("%d:%d: lexical error: Expected `@@` before end of input\n", l1, c1)	
						break;
					}
				
					next_token_str += string(src[index])
					c1++
					index++
				}

				next_token_str += "@@" // end directive
				
				c1 += 2
				index += 2
			} else {
				next_token_str += "@" // start directive

				c1++
				index++
				for index < len(src) {
					if src[index] == '\n' {
						l1++
						c1 = 1
						break
					}
					next_token_str += string(src[index])
					c1++
					index++
				}
			}
		}

		// comments
		if index < len(src) && src[index] == '/' {
			if index+1 >= len(src) {
				fmt.Printf("%d:%d: lexical error: Unexpected end of input\n", l1, c1)	
			} else
			if src[index+1] == '/' {
				for index < len(src) && src[index] != '\n' {
					index++
				}
				continue
			} 
			if src[index+1] == '*' {
				for src[index] != '*' || src[index+1] != '/' {
					if index+1 >= len(src) {
						fmt.Printf("%d:%d: lexical error: Expected `*/` before end of input\n", l1, c1)	
						break;
					}
					index++
				}
				index += len("*/")
				continue
			}
		}

		if index < len(src) && (src[index] == '<' || src[index] == '>' || src[index] == '+' || src[index] == '-' || src[index] == '*' || src[index] == '/' || src[index] == '=' || src[index] == '!' || src[index] == '|' || src[index] == '&'){
			if index+1 < len(src) && src[index+1] == '=' {
				next_token_str += string(src[index+1])
				c1++
				index++
			} else
			if (src[index] == '|' || src[index] == '&')  &&  (index+1 < len(src) && src[index+1] == src[index]) {
				next_token_str += string(src[index+1])
				c1++
				index++
			}
		}

		if len(next_token_str) > 0 {
			next_token, err := GetToken(next_token_str, l0, l1, c0, c1)
			if err != nil {
				fmt.Printf("%d:%d: lexical error: %s\n", l1, c1, err)	
				return nil
			}
			res = append(res, next_token)
		}
		c1++
		index++
	}


	return res
}
