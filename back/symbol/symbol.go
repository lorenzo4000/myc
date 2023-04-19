package symbol

import (
	"mycgo/back/datatype"
	"errors"
)

//
// --- SCOPE ---
//
type Symbol_Scope_Id int32

var Symbol_Scope_Stack []Symbol_Scope_Id
var Current_Id Symbol_Scope_Id

func SymbolScopeStackInit() {
	Symbol_Scope_Stack = make([]Symbol_Scope_Id, 0)
	Current_Id = 0
}

func SymbolScopeStackCurrent() Symbol_Scope_Id {
	l := len(Symbol_Scope_Stack)
	if l > 0 {
		return Symbol_Scope_Stack[l-1]
	}
	return -1
}

func SymbolScopeStackPush() {
	Symbol_Scope_Stack = append(Symbol_Scope_Stack, Current_Id)
	Current_Id++
}

func SymbolScopeStackPop() {
	l := len(Symbol_Scope_Stack)
	if l > 0 {
		Symbol_Scope_Stack = Symbol_Scope_Stack[:l-1]
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
	for cur := Symbol_Scope_Id(len(Symbol_Scope_Stack)-1); cur >= 0; cur-- {
		symbol, found := SymbolTableGet(name, Symbol_Scope_Stack[cur])
		if found {
			return symbol, true
		}
	}
	return nil, false
}

// returns the matching entry in the closest scope to 
// the deepest one (which is not always the current one)
// NOTE: The returned Symbol may exist inside a scope 
// which may no longer exist in the scope stack!
func SymbolTableGetFromDeepest(name string) (Symbol, bool) {
	for cur := Current_Id; cur >= 0; cur-- {
		symbol, found := SymbolTableGet(name, cur)
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
