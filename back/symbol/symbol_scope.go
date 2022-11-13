package symbol

type Symbol_Scope int32

func (ss Symbol_Scope) Previous() Symbol_Scope {
	return ss - 1
}

func (ss Symbol_Scope) IsLast() bool {
	return ss == 0
}

var symbol_scope_stack []Symbol_Scope

func SymbolScopeStackCurrent() Symbol_Scope {
	l := len(symbol_scope_stack)
	if l > 0 {
		return symbol_scope_stack[l-1]
	}
	return -1
}

func SymbolScopeStackPush() {
	cur := SymbolScopeStackCurrent()
	symbol_scope_stack = append(symbol_scope_stack, cur+1)
}

func SymbolScopeStackPop() {
	l := len(symbol_scope_stack)
	if l > 0 {
		symbol_scope_stack = symbol_scope_stack[:l-1]
	}
}
