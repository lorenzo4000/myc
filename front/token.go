package front

import (
	"strconv"
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
	
	TOKEN_EQU		  		  = '=' 
	TOKEN_SUM		  		  = '+' 
	TOKEN_SUB		  		  = '-' 
	TOKEN_MUL		  		  = '*' 
	TOKEN_DIV		  		  = '/' 

	TOKEN_GRT 				  = '>'
	TOKEN_LES				  = '<'
	TOKEN_GOE				  = iota
	TOKEN_LOE				  = iota

	N_TOKENS 				  = iota 
)

var keywordTokenMap = map[string]byte {
	"function": TOKEN_KEYWORD_FUNCTION,
	"return": TOKEN_KEYWORD_RETURN,
	"while": TOKEN_KEYWORD_WHILE,
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
	'=':		TOKEN_EQU,
	'+':		TOKEN_SUM,
	'-':		TOKEN_SUB,
	'*':		TOKEN_MUL,
	'/':		TOKEN_DIV,
	'>': 		TOKEN_GRT,
	'<': 		TOKEN_LES,
}

var multiCharacterTokenMap = map[string]byte {
	">=":       TOKEN_GOE,
	"<=":       TOKEN_LOE,
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

func GetToken(str string) (Token) {
	if len(str) == 1 {
		character_token, is_character_token := characterTokenMap[str[0]]
		if is_character_token {
			return Token{character_token, 0, 0, 0, 0, 0, ""}
		}
	}

	multiCharacter_token, is_multiCharacter_token := multiCharacterTokenMap[str]
	if is_multiCharacter_token  {
		return Token{multiCharacter_token, 0, 0, 0, 0, 0, ""}
	}

	keyword_token, is_keyword_token := keywordTokenMap[str]
	if is_keyword_token  {
		return Token{keyword_token, 0, 0, 0, 0, 0, ""}
	}

	if str[0] == '"' {
		return Token{TOKEN_STRING_LITERAL, 0, 0, 0, 0, 0, str[1:len(str) - 1]}
	}
	if str[0] >= 48 && str[0] <= 57 {
		i, err := strconv.ParseInt(str, 10, 64)
		if err != nil {
			// TODO: error: invalid integer literal
			return Token{}
		}
		return Token{TOKEN_INT_LITERAL, 0, 0, 0, 0, i, ""}
	}
	if str == "true" {
		return Token{TOKEN_BOOL_LITERAL, 0, 0, 0, 0, 1, str}
	}
	if str == "false" {
		return Token{TOKEN_BOOL_LITERAL, 0, 0, 0, 0, 0, str}
	}



	return Token{TOKEN_IDENTIFIER, 0, 0, 0, 0, 0, str}
}
