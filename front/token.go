package front

import (
	"strconv"
)

const (
	TOKEN_IDENTIFIER           = iota
	TOKEN_STRING_LITERAL	  = iota
	TOKEN_INT_LITERAL	  	  = iota
	
	// keywords
	TOKEN_KEYWORD_FUNCTION    = iota

	// characters
	TOKEN_OPENING_PARENTHESES = '(' 
	TOKEN_CLOSING_PARENTHESES = ')' 
	TOKEN_OPENING_BRACKET 	  = '{' 
	TOKEN_CLOSING_BRACKET     = '}' 
	TOKEN_COMMA				  = ',' 
	TOKEN_SEMICOLON			  = ';' 
	TOKEN_COLON		  		  = ':' 
	TOKEN_EQUAL		  		  = '=' 
	
	N_TOKENS 				  = iota 
)

var keywordTokenMap = map[string]byte {
	"function": TOKEN_KEYWORD_FUNCTION,
}

var characterTokenMap = map[byte]byte {
	'(':		TOKEN_OPENING_PARENTHESES,
	')':		TOKEN_CLOSING_PARENTHESES,
	'{':		TOKEN_OPENING_BRACKET,
	'}':		TOKEN_CLOSING_BRACKET,
	',':		TOKEN_COMMA,
	';':		TOKEN_SEMICOLON,
	':':		TOKEN_COLON,
	'=':		TOKEN_EQUAL,
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



	return Token{TOKEN_IDENTIFIER, 0, 0, 0, 0, 0, str}
}
