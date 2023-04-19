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

const help_message string = 
` usage: 
 	myc [options] file [...]
 
 options:
 	--help: this help message
 	--l <object>: link to object

	--tokens: print lexer tokens
	--prepared_tokens: print PrePar tokens
 	--ast:  print abstract syntax tree for debugging purposes
 	--typed_ast: same as --ast, but show types
 	--asm: print the generated assembly
`

// options
var filename string

var link_objects []string

var print_tokens bool
var print_prepared_tokens bool
var print_ast bool
var print_typed_ast bool
var print_asm bool

func main() {
	// start from 1 to skip self
	for i := 1; i < len(os.Args); i++ {
		arg := os.Args[i]

		if arg[0] == '-' {
			if arg == "--help" {
				fmt.Print(help_message)
				return
			} else
			if arg == "--l" {
				i++
				if i >= len(os.Args) {
					fmt.Println("error: expected object after --l")
					return
				}

				object := os.Args[i]
				link_objects = append(link_objects, object)
			} else
			if arg == "--ast" {
				print_ast = true
			} else
			if arg == "--typed_ast" {
				print_typed_ast = true
			} else 
			if arg == "--asm" {
				print_asm = true
			} else
			if arg == "--tokens" {
				print_tokens = true
			} else 
			if arg == "--prepared_tokens" {
				print_prepared_tokens = true
			} else {
				fmt.Println("Fatal: unrecognixed option `", arg, "`")
				return
			}
		} else {
			if len(filename) > 0 {
				fmt.Println("Fatal: too many source files were given")
				return 
			}
			filename = arg
		}
	}

	if len(filename) <= 0 {
		fmt.Println("Fatal: no source file given.")
		return
	}

	src_byte, err := ioutil.ReadFile(filename)
	
	if err != nil {
		fmt.Println(err)
		return
	}

	src := string(src_byte)
	tokens := front.Lex(src)
	if tokens == nil {
		fmt.Println("Lexical Errors: aborting...")
		return 
	}
	if print_tokens {
		fmt.Println(tokens)
	}

	tokens = front.PrePar(tokens)
	if tokens == nil {
		fmt.Println("Preprocessing Errors: aborting...")
		return 
	}
	if print_prepared_tokens {
		fmt.Println(tokens)
	}
	
	parser := front.Parser{tokens, 0}
	ast := parser.Parse()
	if ast == nil {
		fmt.Println("Parse Errors: aborting...")
		return 
	}
	
	if print_ast {
		ast.Print()
	}
	

	symbol.SymbolScopeStackInit()
	symbol.SymbolTableInit()
	if typecheck.TypeCheck(ast) == nil {
		fmt.Println("TypeCheck Errors: aborting...")
		return 
	}
	if typecheck.TypeInfere(ast) == nil {
		fmt.Println("TypeInfere Errors: aborting...")
		return 
	}
	
	if print_typed_ast {
		ast.Print()
	}


	symbol.SymbolScopeStackInit()
	symbol.SymbolTableInit()
	code := codegen.Codegen(ast)
	code_combined := ".text\n" + code.Code.Text + "\n.data\n" + code.Code.Data

	if print_asm {
		fmt.Println(code_combined)
	}

	asm_out_name := ""
	for i := 0; i < len(filename); i++ { 
		if os.IsPathSeparator(filename[i]) {
			asm_out_name += "_"
		} else {
			asm_out_name += string(filename[i])
		}
	}
	asm_out_name += "*.s"

	out, err := os.CreateTemp("", asm_out_name)
	if err != nil {
		fmt.Println(err)
		return
	}

	defer os.Remove(out.Name())


	out.WriteString(code_combined)

	out.Chmod(0644)

	gcc_options := []string{
		"-ggdb",
		"-no-pie",
		"-z", 
		"noexecstack", 
		out.Name(),
	}

	for _, l := range(link_objects) {
		gcc_options = append(gcc_options, "-l" + l)
	}

	gcc_cmd := exec.Command("gcc", gcc_options...)
	
	gcc_output, _ := gcc_cmd.CombinedOutput()
	fmt.Print(string(gcc_output))
}
