package main

import (
	"fmt"
	"os"
	"os/exec"
	"io/ioutil"
	"mycgo/front"
	"mycgo/back/codegen"
	"mycgo/back/typecheck"
	"mycgo/back/symbol"
);

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Fatal: no source file given.")
		return
	}

	src_filename := os.Args[1]
	src_byte, err := ioutil.ReadFile(src_filename)
	
	if err != nil {
		fmt.Println(err)
		return
	}

	src := string(src_byte)
	tokens := front.Lex(src)

	fmt.Println(tokens)
	
	parser := front.Parser{tokens, 0}
	ast := parser.Parse()
	
	ast.Print()
	

	symbol.SymbolTableInit()
	if typecheck.TypeCheck(ast) == nil {
		fmt.Println("Type Errors: exiting")
		return 
	}
	
	ast.Print()


	symbol.SymbolTableInit()
	code := codegen.Codegen(ast)
	code_combined := ".text\n" + code.Code.Text + "\n.data\n" + code.Code.Data

	fmt.Println(code_combined)

	out, err := os.CreateTemp("", src_filename + "*.s")
	defer os.Remove(out.Name())

	if err != nil {
		fmt.Println(err)
		return
	}

	println(out.Name())
	out.WriteString(code_combined)

	out.Chmod(0644)

	gcc_cmd := exec.Command("gcc", "-ggdb", "-no-pie", "-z", "noexecstack", out.Name())

	gcc_output, _ := gcc_cmd.CombinedOutput()
	fmt.Println(string(gcc_output))
}
