package front

import (
	"fmt"
	"strconv"
	"errors"
	
	"mycgo/back/datatype"
)

//
//			     ---=== NOTE ===---
//  This is crap, and it doesn't make any sense.
//  I should have made Ast_* types implementions of 
//  an interface Ast. OOP for the win.
//

type Ast_Type byte

const (
	AST_IDENTIFIER = Ast_Type(iota)
	AST_HEAD = Ast_Type(iota)
	
	AST_DATATYPE = Ast_Type(iota)

	AST_FUNCTION_DEFINITION = Ast_Type(iota)
	AST_FUNCTION_DEFINITION_NAME = Ast_Type(iota)
	AST_FUNCTION_DEFINITION_ARGS = Ast_Type(iota)
	
	AST_STRUCT_DEFINITION = Ast_Type(iota)
	AST_STRUCT_DEFINITION_NAME = Ast_Type(iota)
	AST_STRUCT_DEFINITION_BODY = Ast_Type(iota)
	AST_COMPOSITE_LITERAL = Ast_Type(iota)
	AST_COMPOSITE_LITERAL_FIELDS = Ast_Type(iota)
	
	AST_RETURN = Ast_Type(iota)

	AST_BODY = Ast_Type(iota)
	AST_BODY_RESULT = Ast_Type(iota)

	AST_VARIABLE_DEFINITION = Ast_Type(iota)
	AST_VARIABLE_DEFINITION_NAME = Ast_Type(iota)

	AST_VARIABLE_NAME = Ast_Type(iota)

	AST_FUNCTION_CALL = Ast_Type(iota)
	AST_FUNCTION_CALL_NAME = Ast_Type(iota)
	AST_FUNCTION_CALL_ARGS = Ast_Type(iota)
	AST_FUNCTION_CALL_ARGU = Ast_Type(iota)

	AST_EXPRESSION = Ast_Type(iota)
	AST_LITERAL = Ast_Type(iota)

	AST_OP_SUM = Ast_Type(iota)
	AST_OP_SUB = Ast_Type(iota)
	AST_OP_MUL = Ast_Type(iota)
	AST_OP_DIV = Ast_Type(iota)
	AST_OP_MOD = Ast_Type(iota)
	AST_OP_ASN = Ast_Type(iota) // assign

	AST_OP_NEG = Ast_Type(iota) // two's complement negation

	AST_OP_GRT = Ast_Type(iota)
	AST_OP_LES = Ast_Type(iota)
	AST_OP_GOE = Ast_Type(iota)
	AST_OP_LOE = Ast_Type(iota)

	AST_OP_EQU = Ast_Type(iota)
    AST_OP_NEQ = Ast_Type(iota)

    AST_OP_NOT = Ast_Type(iota)
    AST_OP_AND = Ast_Type(iota)
    AST_OP_OR  = Ast_Type(iota)

    AST_OP_BAND = Ast_Type(iota)
    AST_OP_BORI = Ast_Type(iota)
    AST_OP_BORE = Ast_Type(iota)
    AST_OP_BNOT = Ast_Type(iota)

    AST_OP_SHL = Ast_Type(iota)
    AST_OP_SHR = Ast_Type(iota)
	
	AST_OP_ESUM = Ast_Type(iota)  // "+="
	AST_OP_ESUB = Ast_Type(iota)  // "-="
	AST_OP_EMUL = Ast_Type(iota)  // "*="
	AST_OP_EDIV = Ast_Type(iota)  // "/="
	AST_OP_EMOD = Ast_Type(iota)  // "%="
	AST_OP_EBAND = Ast_Type(iota) // "&="
	AST_OP_EBORI = Ast_Type(iota) // "|="
	AST_OP_EBORE = Ast_Type(iota) // "^="
	AST_OP_ESHL  = Ast_Type(iota)
	AST_OP_ESHR  = Ast_Type(iota)
    
	AST_OP_INC = Ast_Type(iota)   // "++"
	AST_OP_DEC = Ast_Type(iota)   // "--"

	AST_OP_DOT = Ast_Type(iota)
	
	AST_OP_INDEX = Ast_Type(iota)

	AST_OP_REFERENCE = Ast_Type(iota)
	AST_OP_DEREFERENCE = Ast_Type(iota)

	AST_WHILE = Ast_Type(iota)
	AST_FOR = Ast_Type(iota)
	AST_FOR_INIT = Ast_Type(iota)
	AST_FOR_UPDATE = Ast_Type(iota)
	AST_IF = Ast_Type(iota)
	AST_SWITCH = Ast_Type(iota)
	AST_CASE = Ast_Type(iota)
	AST_DEFAULT = Ast_Type(iota)


	AST_JUMP = Ast_Type(iota)
	AST_LABEL = Ast_Type(iota)

	AST_CASTING = Ast_Type(iota)


	N_AST = Ast_Type(iota)
);

var ast_type_str = [N_AST]string {
	"AST_IDENTIFIER",
	"AST_HEAD",

	"AST_DATATYPE",

	"AST_FUNCTION_DEFINITION",
	"AST_FUNCTION_DEFINITION_NAME",
	"AST_FUNCTION_DEFINITION_ARGS",
	
	"AST_STRUCT_DEFINITION",
	"AST_STRUCT_DEFINITION_NAME",
	"AST_STRUCT_DEFINITION_BODY",
	"AST_COMPOSITE_LITERAL",
	"AST_COMPOSITE_LITERAL_FIELDS",

	"AST_RETURN",

	"AST_BODY",
	"AST_BODY_RESULT",

	"AST_VARIABLE_DEFINITION",
	"AST_VARIABLE_DEFINITION_NAME",

	"AST_VARIABLE_NAME",

	"AST_FUNCTION_CALL",
	"AST_FUNCTION_CALL_NAME",
	"AST_FUNCTION_CALL_ARGS",
	"AST_FUNCTION_CALL_ARGU",

	"AST_EXPRESSION",
	"AST_LITERAL",
	
	"AST_OP_SUM",
	"AST_OP_SUB",
	"AST_OP_MUL",
	"AST_OP_DIV",
	"AST_OP_MOD",
	"AST_OP_ASN", // assign

	"AST_OP_NEG", // two's complement negation

	"AST_OP_GRT",
	"AST_OP_LES",
	"AST_OP_GOE",
	"AST_OP_LOE",
	
	"AST_OP_EQU",
    "AST_OP_NEQ",
              
    "AST_OP_NOT",
    "AST_OP_AND",
    "AST_OP_OR",

	"AST_OP_BAND",
    "AST_OP_BORI",
    "AST_OP_BORE",
    "AST_OP_BNOT",

	"AST_OP_SHL",
	"AST_OP_SHR",

	"AST_OP_ESUM",
	"AST_OP_ESUB",
	"AST_OP_EMUL",
	"AST_OP_EDIV",
	"AST_OP_EMOD",
	"AST_OP_EBAND",
	"AST_OP_EBORI",
	"AST_OP_EBORE",
	"AST_OP_ESHL",
	"AST_OP_ESHR",

	"AST_OP_INC",
	"AST_OP_DEC",

	"AST_OP_DOT",
	
	"AST_OP_INDEX",

	"AST_OP_REFERENCE",
	"AST_OP_DEREFERENCE",

	"AST_WHILE",
	"AST_FOR",
	"AST_FOR_INIT",
	"AST_FOR_UPDATE",
	"AST_IF",
	"AST_SWITCH",
	"AST_CASE",
	"AST_DEFAULT",
	
	"AST_JUMP",
	"AST_LABEL",

	"AST_CASTING",
}

type Ast_Node_Flags uint64
const (
	ASTO_BODY_FUNCTION = Ast_Node_Flags(1 << iota)
	ASTO_BODY_IF = Ast_Node_Flags(1 << iota)
	ASTO_BODY_ELSE = Ast_Node_Flags(1 << iota)
	ASTO_BODY_WHILE = Ast_Node_Flags(1 << iota) 
	ASTO_BODY_FOR = Ast_Node_Flags(1 << iota) 
	ASTO_BODY_CASE = Ast_Node_Flags(1 << iota) 
	ASTO_BODY_DEFAULT = Ast_Node_Flags(1 << iota) 

	ASTO_FUNCTION_EXTERNAL = Ast_Node_Flags(1 << iota) 

	ASTO_ALWAYS_RETURNS = Ast_Node_Flags(1 << iota)
)

var ast_node_flags_str = [64]string {
	"ASTO_BODY_FUNCTION",
	"ASTO_BODY_IF",
	"ASTO_BODY_ELSE",
	"ASTO_BODY_WHILE",
	"ASTO_BODY_FOR",
	"ASTO_BODY_CASE",
	"ASTO_BODY_DEFAULT",
	"ASTO_FUNCTION_EXTERNAL",
	"ASTO_ALWAYS_RETURNS",
}

func (flags Ast_Node_Flags) ToString() string {
	s := ""
	for i := 0; i < 64; i++ {
		if flags & (1 << i) != 0 {
			s += " | " + ast_node_flags_str[i]
		}
	}
	return s
}

type Ast_Node struct {
	Type Ast_Type;
	Flags Ast_Node_Flags;
	Data []Token;
	Children []*Ast_Node;

	DataType datatype.DataType; // The typechecker basically just sets this.
}

func (ast *Ast_Node) AddChild(child *Ast_Node) (error){
	if child == nil {
		return errors.New("AST: add_child error (child must be non-nil)")
	}

	ast.Children = append(ast.Children, child)

	return nil
}

func (ast *Ast_Node) NewChild(typ Ast_Type) (error){
	child := new(Ast_Node)
	child.Type = typ
	
	err := ast.AddChild(child)

	return err
}

func (ast Ast_Node) ToString() (string) {
	ast_str := ast_type_str[ast.Type]
	if ast.DataType != nil {
		 ast_str += "(" + ast.DataType.Name() + ")"
	}
	
	ast_str += ast.Flags.ToString()

	ast_str += " : "
	for i, token := range ast.Data {
		ast_str += "[ int_value = " + strconv.Itoa(int(token.Int_value)) + ", string_value = " + token.String_value + ", float_value = " + strconv.FormatFloat(token.Float_value, 'E', -1, 64) + " ]"
		if i + 1 < len(ast.Data) {
			ast_str += ", "
		}
	}
	return ast_str
}


func (ast Ast_Node) _print(lvl int) {
	for i := 0; i < lvl; i++ {
		fmt.Printf("\t")	
	}
	
	fmt.Println(ast.ToString())

	for _, c := range(ast.Children) {
		c._print(lvl + 1)
	}
}

func (ast Ast_Node) Print() {
	ast._print(0)
}

func (ast *Ast_Node) Find(_type Ast_Type) *Ast_Node {
	if ast.Type == _type {
		return ast
	}

	for _, child := range(ast.Children) {
		f := child.Find(_type)
		if f != nil {
			return f
		}
	}

	return nil
}

func (ast Ast_Node) FindFirstToken() (*Token) {
	if len(ast.Data) > 0 {
		return &ast.Data[0]
	}
	if len(ast.Children) <= 0 {
		return nil
	}
	return ast.Children[0].FindFirstToken()
}

func (ast Ast_Node) Equals(_ast Ast_Node) bool {
	if len(ast.Data) != len(_ast.Data) {
		return false
	}
	for i, tok := range ast.Data {
		if tok.Type 		!= _ast.Data[i].Type         ||
		   tok.Int_value    != _ast.Data[i].Int_value    ||
		   tok.String_value != _ast.Data[i].String_value {
			return false
		}
	}


	return ast.Type     == _ast.Type  && 
		   ast.Flags    == _ast.Flags &&
		   //ast.Data     == _ast.Data  &&
		   //ast.Children []*Ast_Node;
		   ast.DataType.Equals(_ast.DataType)
}
