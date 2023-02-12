package front

import (
	"fmt"
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
		for index < len(src) && src[index] != ' ' && src[index] != '\t' && src[index] != '"'  {
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

		// comments
		if src[index] == '/' {
			if src[index+1] == '/' {
				for src[index] != '\n' {
					index++
				}
				continue
			} 
			if src[index+1] == '*' {
				for src[index] != '*' || src[index+1] != '/' {
					index++
				}
				continue
			}
		}

		if index < len(src) && (src[index] == '<' || src[index] == '>' || src[index] == '+' || src[index] == '-' || src[index] == '*' || src[index] == '/' || src[index] == '=' || src[index] == '!'){
			if index+1 < len(src) && src[index+1] == '=' {
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
