package token

import (
	"fmt"
)

type Token struct {
	line   int
	column int
	text   string
	class  Token_Class
}

type Token_Class int

const (
	IDENTIFIER         Token_Class = iota // 'my_var'
	PERIOD                                // '.'
	QUESTION                              // '?'
	COMMA                                 // ','
	COLON                                 // ':'
	SEMICOLON                             // ';'
	BIT_AND                               // '&'
	BIT_OR                                // '|'
	ADD_OP                                // '+'
	MIN_OP                                // '-'
	MULT_OP                               // '*'
	DIV_OP                                // '/'
	MOD_OP                                // '%'
	INCREMENT                             // '++'
	DECREMENT                             // '--'
	POWER_OP                              // '**'
	LESS_THAN                             // '<'
	GREATER_THAN                          // '>'
	ASSIGN                                // '='
	LESS_THAN_EQ                          // '<='
	GREATER_THAN_EQ                       // '>='
	EQUAL                                 // '=='
	PLUS_EQ                               // '+='
	MIN_EQ                                // '-='
	TIMES_EQ                              // '*='
	DIV_EQ                                // '/='
	MOD_EQ                                // '%='
	OR                                    // '||'
	AND                                   // '&&'
	RANGE                                 // '..'
	OR_EQUAL                              // '|='
	LSHOVEL                               // '<<'
	RSHOVEL                               // '>>'
	LCURLY                                // '{'
	RCURLY                                // '}'
	LPAREN                                // '('
	RPAREN                                // ')'
	LBRACKET                              // '['
	RBRACKET                              // ']'
	STRING_LITERAL                        // "mystring" or 'mystring'
	NUM_LITERAL                           // '0435.345'
	MULTILINE_COMMENT                     // '/* some comment */'
	SINGLELINE_COMMENT                    // '// some comment '
	FUNC_KEYWORD                          // 'function'
	SPAWN_KEYWORD                         // 'spawn'
	KEYWORD                               // 'do end for function...etc'
)

var KeywordMap = map[string]Token_Class{
	"function": FUNC_KEYWORD,
	"spawn":    SPAWN_KEYWORD,
}

func New(val string, class Token_Class, line int, col int) *Token {
	return &Token{line, col - len(val), val, class}
}

func (this *Token) String() string {
	return fmt.Sprintf("{ line: %d, column: %d, val: %s, class: %s }", this.line, this.column, this.text, this.classString())
}

func (this *Token) classString() string {
	switch this.class {
	case IDENTIFIER:
		return "IDENTIFIER"
	case PERIOD:
		return "PERIOD"
	case QUESTION:
		return "QUESTION"
	case COMMA:
		return "COMMA"
	case COLON:
		return "COLON"
	case SEMICOLON:
		return "SEMICOLON"
	case BIT_AND:
		return "BIT_AND"
	case BIT_OR:
		return "BIT_OR"
	case ADD_OP:
		return "ADD_OP"
	case MIN_OP:
		return "MIN_OP"
	case MULT_OP:
		return "MULT_OP"
	case DIV_OP:
		return "DIV_OP"
	case MOD_OP:
		return "MOD_OP"
	case INCREMENT:
		return "INCREMENT"
	case DECREMENT:
		return "DECREMENT"
	case POWER_OP:
		return "POWER_OP"
	case LESS_THAN:
		return "LESS_THAN"
	case GREATER_THAN:
		return "GREATER_THAN"
	case ASSIGN:
		return "ASSIGN"
	case LESS_THAN_EQ:
		return "LESS_THAN_EQ"
	case GREATER_THAN_EQ:
		return "GREATER_THAN_EQ"
	case EQUAL:
		return "EQUAL"
	case PLUS_EQ:
		return "PLUS_EQ"
	case MIN_EQ:
		return "MIN_EQ"
	case TIMES_EQ:
		return "TIMES_EQ"
	case DIV_EQ:
		return "DIV_EQ"
	case MOD_EQ:
		return "MOD_EQ"
	case OR:
		return "OR"
	case AND:
		return "AND"
	case OR_EQUAL:
		return "OR_EQUAL"
	case LSHOVEL:
		return "LSHOVEL"
	case RSHOVEL:
		return "RSHOVEL"
	case LCURLY:
		return "LCURLY"
	case RCURLY:
		return "RCURLY"
	case LPAREN:
		return "LPAREN"
	case RPAREN:
		return "RPAREN"
	case LBRACKET:
		return "LBRACKET"
	case RBRACKET:
		return "RBRACKET"
	case STRING_LITERAL:
		return "STRING_LITERAL"
	case NUM_LITERAL:
		return "NUM_LITERAL"
	case KEYWORD:
		return "KEYWORD"
	case MULTILINE_COMMENT:
		return "MULTILINE_COMMENT"
	case SINGLELINE_COMMENT:
		return "SINGLELINE_COMMENT"
	case RANGE:
		return "RANGE"
	}
	return ""
}
