package front

import (
	"strconv"
	"fmt"
	"errors"
)

// (0x04, 0xFF) = cahracter_token; 0xFF00 = keyword_token; 0xFF0000 = multicharacter_token
const (
	TOKEN_IDENTIFIER        = 0
	TOKEN_STRING_LITERAL	= 1 
	TOKEN_INT_LITERAL	  	= 2 
	TOKEN_BOOL_LITERAL	  	= 3
	TOKEN_DIRECTIVE    		= 4 		// used by pre-processor, ignored by the parser

	// characters
	TOKEN_OPENING_PARENTHESES = '(' 
	TOKEN_CLOSING_PARENTHESES = ')' 
	TOKEN_OPENING_BRACE 	  = '{' 
	TOKEN_CLOSING_BRACE       = '}' 
	TOKEN_OPENING_BRACKET 	  = '[' 
	TOKEN_CLOSING_BRACKET     = ']' 
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
	TOKEN_NOT				  = '!'
	TOKEN_BAND				  = '&'
    TOKEN_BORI				  = '|'
    TOKEN_BORE				  = '^'
    TOKEN_BNOT			      = '~'

	TOKEN_DOT				  = '.'
	
	// keywords
	TOKEN_KEYWORD_FUNCTION  = iota << 8
	TOKEN_KEYWORD_STRUCT    
	TOKEN_KEYWORD_RETURN   	
	TOKEN_KEYWORD_WHILE    	
	TOKEN_KEYWORD_FOR    	
	TOKEN_KEYWORD_IF    	
	TOKEN_KEYWORD_ELSE    	
	TOKEN_KEYWORD_SWITCH
	TOKEN_KEYWORD_CASE

	TOKEN_KEYWORD_EXTERNAL  

	TOKEN_KEYWORD_JUMP 
	
	// multi-characters
	TOKEN_GOE				  = iota << 16
	TOKEN_LOE				  

	TOKEN_EQU				  
	TOKEN_NEQ				  

	TOKEN_ESUM
    TOKEN_ESUB
    TOKEN_EMUL
    TOKEN_EDIV
    TOKEN_EMOD
    TOKEN_EBAND
    TOKEN_EBORI
    TOKEN_EBORE
               
    TOKEN_INC
    TOKEN_DEC
	
	TOKEN_AND				  
	TOKEN_OR				  

	TOKEN_SHL
	TOKEN_SHR
)

var keywordTokenMap = map[string]uint32 {
	"function": TOKEN_KEYWORD_FUNCTION,
	"struct": TOKEN_KEYWORD_STRUCT,
	"return": TOKEN_KEYWORD_RETURN,
	"while": TOKEN_KEYWORD_WHILE,
	"for": TOKEN_KEYWORD_FOR,
	"if": TOKEN_KEYWORD_IF,
	"else": TOKEN_KEYWORD_ELSE,
	"switch": TOKEN_KEYWORD_SWITCH,
	"case": TOKEN_KEYWORD_CASE,

	"external": TOKEN_KEYWORD_EXTERNAL,
	
	"jump": TOKEN_KEYWORD_JUMP,
}


var characterTokenMap = map[byte]uint32 {
	'(':		TOKEN_OPENING_PARENTHESES,
	')':		TOKEN_CLOSING_PARENTHESES,
	'{':		TOKEN_OPENING_BRACE,
	'}':		TOKEN_CLOSING_BRACE,
	'[':		TOKEN_OPENING_BRACKET,
	']':		TOKEN_CLOSING_BRACKET,
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
	
	'&':		TOKEN_BAND,
	'|':		TOKEN_BORI,
	'^':		TOKEN_BORE,
	'~':		TOKEN_BNOT,

	'.':		TOKEN_DOT,
}

var multiCharacterTokenMap = map[string]uint32 {
	">=":       TOKEN_GOE,
	"<=":       TOKEN_LOE,
	"==":       TOKEN_EQU,
	"!=":       TOKEN_NEQ,

	"+=":       TOKEN_ESUM,
	"-=":       TOKEN_ESUB,
	"*=":       TOKEN_EMUL,
	"/=":       TOKEN_EDIV,
	"%=":       TOKEN_EMOD,
	"&=":		TOKEN_EBAND,
	"|=":		TOKEN_EBORI,
	"^=":		TOKEN_EBORE,

	"++":       TOKEN_INC,
	"--":       TOKEN_DEC,

	"&&":		TOKEN_AND,
	"||":		TOKEN_OR,

	"<<":		TOKEN_SHL,
	">>":		TOKEN_SHR,
}

type Token struct {
	Type uint32

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
	if str[0] == '@' {

		if len(str) <= 1 || str[1] != '@' {
			return Token{TOKEN_DIRECTIVE, l0, c0, l1, c1, 0, str[1:]}, nil
		} else {
			return Token{TOKEN_DIRECTIVE, l0, c0, l1, c1, 0, str[2:len(str) - 2]}, nil
		}
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
