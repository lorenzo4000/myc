package front

import (
	"fmt"
	"strconv"
	"errors"
	
	"mycgo/back/datatype"
)

const (
	AST_IDENTIFIER = iota
	AST_HEAD = iota
	
	AST_DATATYPE = iota

	AST_FUNCTION_DEFINITION = iota
	AST_FUNCTION_DEFINITION_NAME = iota
	AST_FUNCTION_DEFINITION_ARGS = iota
	AST_FUNCTION_DEFINITION_BODY = iota
	AST_VARIABLE_DEFINITION = iota
	AST_VARIABLE_DEFINITION_NAME = iota

	AST_VARIABLE_NAME = iota

	AST_FUNCTION_CALL = iota
	AST_FUNCTION_CALL_NAME = iota
	AST_FUNCTION_CALL_ARGS = iota
	AST_FUNCTION_CALL_ARGU = iota

	AST_EXPRESSION = iota
	AST_LITERAL = iota

	AST_OP_SUM = iota
	AST_OP_SUB = iota
	AST_OP_MUL = iota
	AST_OP_DIV = iota

	N_AST = iota
);

var ast_type_str = [N_AST]string {
	"AST_IDENTIFIER",
	"AST_HEAD",

	"AST_DATATYPE",

	"AST_FUNCTION_DEFINITION",
	"AST_FUNCTION_DEFINITION_NAME",
	"AST_FUNCTION_DEFINITION_ARGS",
	"AST_FUNCTION_DEFINITION_BODY",
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
}

type Ast_Node struct {
	Type byte;
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

func (ast *Ast_Node) NewChild(typ byte) (error){
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
	ast_str += " : "
	for i, token := range ast.Data {
		ast_str += "[ int_value = " + strconv.Itoa(int(token.Int_value)) + ", string_value = " + token.String_value + " ]"
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
