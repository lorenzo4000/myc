package symbol

import (
	"mycgo/back/datatype"
	"errors"
)

//
// --- SCOPE ---
//
type Symbol_Scope_Id int32

var symbol_scope_stack []Symbol_Scope_Id
var current_id Symbol_Scope_Id

func SymbolScopeStackInit() {
	symbol_scope_stack = make([]Symbol_Scope_Id, 0)
	current_id = 0
}

func SymbolScopeStackCurrent() Symbol_Scope_Id {
	l := len(symbol_scope_stack)
	if l > 0 {
		return symbol_scope_stack[l-1]
	}
	return -1
}

func SymbolScopeStackPush() {
	symbol_scope_stack = append(symbol_scope_stack, current_id)
	current_id++
}

func SymbolScopeStackPop() {
	l := len(symbol_scope_stack)
	if l > 0 {
		symbol_scope_stack = symbol_scope_stack[:l-1]
	}
}


//
// --- SYMBOL ---
//
type Symbol_Declaration struct {
	Name string 
	Scope Symbol_Scope_Id
}
	
type Symbol interface {
	Type() datatype.DataType
}

var symbol_table map [Symbol_Declaration] Symbol

func SymbolTableInit() {
	symbol_table = make(map [Symbol_Declaration] Symbol)
}

func SymbolTableGet(name string, scope Symbol_Scope_Id) (Symbol, bool) {
	if scope < 0 {
		return nil, false
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
		return nil, false
	}
	return SymbolTableGet(name, cur)
}

// returns the matching entry in the closest scope
func SymbolTableGetFromCurrentScope(name string) (Symbol, bool) {
	for cur := Symbol_Scope_Id(len(symbol_scope_stack)-1); cur >= 0; cur-- {
		symbol, found := SymbolTableGet(name, symbol_scope_stack[cur])
		if found {
			return symbol, true
		}
	}
	return nil, false
}

// inserts or modifies entry
func SymbolTableInsert(name string, scope Symbol_Scope_Id, sym Symbol) error {
	if scope < 0 {
		return errors.New("SymbolTableInsert: invalid scope")
	}

	// I'm not checking if the scope actually exists, because I don't really care at the moment.
	symbol_table[Symbol_Declaration{name, scope}] = sym

	return nil
}

// inserts or modifies entry
func SymbolTableInsertInCurrentScope(name string, sym Symbol) error {
	cur := SymbolScopeStackCurrent()
	if cur < 0 {
		return errors.New("SymbolTableInsertInCurrentScope: there is no scope in the stack")
	}
	return SymbolTableInsert(name, cur, sym)
}
