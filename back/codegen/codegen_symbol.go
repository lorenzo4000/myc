package codegen

import (
	"mycgo/back/datatype"
	"errors"
)

type Symbol_Declaration struct {
	Name string 
	Scope Symbol_Scope
}
	
type Symbol struct {
	DataType datatype.DataType
	Data Stack_Region
}

var symbol_table map [Symbol_Declaration] Symbol

func SymbolTableInit() {
	symbol_table = make(map [Symbol_Declaration] Symbol)
}

func SymbolTableGet(name string, scope Symbol_Scope) (Symbol, bool) {
	if scope < 0 {
		return Symbol{}, false
	}

	sym, found := symbol_table[Symbol_Declaration{name, scope}]
	if !found {
		return sym, false
	}
	return sym, true
}

func SymbolTableGetInCurrentScope(name string) (Symbol, bool) {
	cur := SymbolScopeStackCurrent()
	if cur < 0 {
		return Symbol{}, false
	}
	return SymbolTableGet(name, cur)
}

// returns the matching entry in the closest scope
func SymbolTableGetFromCurrentScope(name string) (Symbol, bool) {
	for cur := SymbolScopeStackCurrent(); !cur.IsLast(); cur = cur.Previous() {
		symbol, found := SymbolTableGet(name, cur)
		if found {
			return symbol, true
		}
	}
	return Symbol{}, false
}

// inserts or modifies entry
func SymbolTableInsert(name string, scope Symbol_Scope, data_type datatype.DataType, data Stack_Region) error {
	if scope < 0 {
		return errors.New("SymbolTableInsert: invalid scope")
	}

	// I'm not checking if the scope actually exists, because I don't really care at the moment.
	symbol_table[Symbol_Declaration{name, scope}] = Symbol{data_type, data}

	return nil
}

// inserts or modifies entry
func SymbolTableInsertInCurrentScope(name string, data_type datatype.DataType, data Stack_Region) error {
	cur := SymbolScopeStackCurrent()
	if cur < 0 {
		return errors.New("SymbolTableInsertInCurrentScope: there is no scope in the stack")
	}
	return SymbolTableInsert(name, cur, data_type, data)
}
