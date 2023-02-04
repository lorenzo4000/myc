package front

import (
	"strconv"
	"fmt"
	"errors"
)

const (
	TOKEN_IDENTIFIER           = iota
	TOKEN_STRING_LITERAL	  = iota
	TOKEN_INT_LITERAL	  	  = iota
	TOKEN_BOOL_LITERAL	  	  = iota
	
	// keywords
	TOKEN_KEYWORD_FUNCTION    = iota
	TOKEN_KEYWORD_RETURN    = iota
	TOKEN_KEYWORD_WHILE    = iota
	TOKEN_KEYWORD_FOR    = iota
	TOKEN_KEYWORD_IF    = iota
	TOKEN_KEYWORD_ELSE    = iota

	// characters
	TOKEN_OPENING_PARENTHESES = '(' 
	TOKEN_CLOSING_PARENTHESES = ')' 
	TOKEN_OPENING_BRACKET 	  = '{' 
	TOKEN_CLOSING_BRACKET     = '}' 
	TOKEN_COMMA				  = ',' 
	TOKEN_SEMICOLON			  = ';' 
	TOKEN_COLON		  		  = ':' 
	
	TOKEN_ASN		  		  = '=' 
	TOKEN_SUM		  		  = '+' 
	TOKEN_SUB		  		  = '-' 
	TOKEN_MUL		  		  = '*' 
	TOKEN_DIV		  		  = '/' 
	TOKEN_MOD		  		  = '%' 

	TOKEN_GRT 				  = '>'
	TOKEN_LES				  = '<'
	TOKEN_GOE				  = iota
	TOKEN_LOE				  = iota

	TOKEN_EQU				  = iota
	TOKEN_NEQ				  = iota
	
	TOKEN_NOT				  = '!'
	TOKEN_AND				  = iota
	TOKEN_OR				  = iota

	N_TOKENS 				  = iota 
)

var keywordTokenMap = map[string]byte {
	"function": TOKEN_KEYWORD_FUNCTION,
	"return": TOKEN_KEYWORD_RETURN,
	"while": TOKEN_KEYWORD_WHILE,
	"for": TOKEN_KEYWORD_FOR,
	"if": TOKEN_KEYWORD_IF,
	"else": TOKEN_KEYWORD_ELSE,
}

var characterTokenMap = map[byte]byte {
	'(':		TOKEN_OPENING_PARENTHESES,
	')':		TOKEN_CLOSING_PARENTHESES,
	'{':		TOKEN_OPENING_BRACKET,
	'}':		TOKEN_CLOSING_BRACKET,
	',':		TOKEN_COMMA,
	';':		TOKEN_SEMICOLON,
	':':		TOKEN_COLON,
	'=':		TOKEN_ASN,
	'+':		TOKEN_SUM,
	'-':		TOKEN_SUB,
	'*':		TOKEN_MUL,
	'/':		TOKEN_DIV,
	'%':		TOKEN_MOD,
	'>': 		TOKEN_GRT,
	'<': 		TOKEN_LES,
	'!':		TOKEN_NOT,
}

var multiCharacterTokenMap = map[string]byte {
	">=":       TOKEN_GOE,
	"<=":       TOKEN_LOE,
	"==":       TOKEN_EQU,
	"!=":       TOKEN_NEQ,
	"&&":		TOKEN_AND,
	"||":		TOKEN_OR,
}

type Token struct {
	Type byte

	L0 int32
	C0 int32
	L1 int32
	C1 int32

	Int_value int64
	String_value string
}

func IsCharacterToken(c byte) (bool) {
	_, is_character_token := characterTokenMap[c]
	return is_character_token
}

func GetToken(str string, l0 int32, l1 int32, c0 int32, c1 int32) (Token, error) {
	if len(str) == 1 {
		character_token, is_character_token := characterTokenMap[str[0]]
		if is_character_token {
			return Token{character_token, l0, c0, l1, c1, 0, ""}, nil
		}
	}

	multiCharacter_token, is_multiCharacter_token := multiCharacterTokenMap[str]
	if is_multiCharacter_token  {
		return Token{multiCharacter_token, l0, c0, l1, c1, 0, ""}, nil
	}

	keyword_token, is_keyword_token := keywordTokenMap[str]
	if is_keyword_token  {
		return Token{keyword_token, l0, c0, l1, c1, 0, ""}, nil
	}

	if str[0] == '"' {
		return Token{TOKEN_STRING_LITERAL, l0, c0, l1, c1, 0, str[1:len(str) - 1]}, nil
	}
	if str[0] >= 48 && str[0] <= 57 {
		i, err := strconv.ParseInt(str, 0, 64)
		if err != nil {
			if err == strconv.ErrSyntax || i == 0 {
				fmt.Printf("%d:%d: lexical error: int literal is empty or contains invalid digits\n", l0, c0)
			} 
			if err == strconv.ErrRange || i > 0 {
				fmt.Printf("%d:%d: lexical error: int literal is too big\n", l0, c0)
			}
			return Token{}, errors.New("int literal parse error")
		}
		return Token{TOKEN_INT_LITERAL, l0, c0, l1, c1, i, ""}, nil
	}
	if str == "true" {
		return Token{TOKEN_BOOL_LITERAL, l0, c0, l1, c1, 1, str}, nil
	}
	if str == "false" {
		return Token{TOKEN_BOOL_LITERAL, l0, c0, l1, c1, 0, str}, nil
	}



	return Token{TOKEN_IDENTIFIER, l0, c0, l1, c1, 0, str}, nil
}
