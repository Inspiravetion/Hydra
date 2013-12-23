package token

import (
	"fmt"
)

type Token struct {
	line   int
	column int
	text   string
	class  Token_Type
}

type Token_Type int

const (
	IDENTIFIER         Token_Type = iota // 'my_var'
	PERIOD                               // '.'
	QUESTION                             // '?'
	COMMA                                // ','
	COLON                                // ':'
	SEMICOLON                            // ';'
	BIT_AND                              // '&'
	BIT_OR                               // '|'
	ADD_OP                               // '+'
	MIN_OP                               // '-'
	MULT_OP                              // '*'
	DIV_OP                               // '/'
	MOD_OP                               // '%'
	INCREMENT                            // '++'
	DECREMENT                            // '--'
	POWER_OP                             // '**'
	LESS_THAN                            // '<'
	GREATER_THAN                         // '>'
	ASSIGN                               // '='
	LESS_THAN_EQ                         // '<='
	GREATER_THAN_EQ                      // '>='
	EQUAL                                // '=='
	PLUS_EQ                              // '+='
	MIN_EQ                               // '-='
	TIMES_EQ                             // '*='
	DIV_EQ                               // '/='
	MOD_EQ                               // '%='
	OR                                   // '||'
	AND                                  // '&&'
	RANGE                                // '..'
	OR_EQUAL                             // '|='
	LSHOVEL                              // '<<'
	RSHOVEL                              // '>>'
	LCURLY                               // '{'
	RCURLY                               // '}'
	LPAREN                               // '('
	RPAREN                               // ')'
	LBRACKET                             // '['
	RBRACKET                             // ']'
	STRING_LITERAL                       // "mystring" or 'mystring'
	NUM_LITERAL                          // '123' or '0435.345'
	MULTILINE_COMMENT                    // '/* some comment */'
	SINGLELINE_COMMENT                   // '// some comment '
	FUNC_KEYWORD                         // 'function'
	SPAWN_KEYWORD                        // 'spawn'
	IF_KEYWORD                           // 'if'
	ELSE_KEYWORD                         // 'else'
	THEN_KEYWORD                         // 'then'
	FOR_KEYWORD                          // 'for'
	IN_KEYWORD                           // 'in'
	WHILE_KEYWORD                        // 'while'
	DO_KEYWORD                           // 'do'
	NOT_KEYWORD                          // 'not'
	AND_KEYWORD                          // 'and'
	OR_KEYWORD                           // 'or'
	FROM_KEYWORD                         // 'from'
	TO_KEYWORD                           // 'to'
	BY_KEYWORD                           // 'by'
	END_KEYWORD                          // 'end'
	MODULE_KEYWORD                       // 'module'
	CLASS_KEYWORD                        // 'class'
	IMPORT_KEYWORD                       // 'import'
	EXPORT_KEYWORD                       // 'export'
	SUPER_KEYWORD                        // 'super'
	THIS_KEYWORD                         // 'this'
	RETURN_KEYWORD                       // 'return'
	OPERATOR_KEYWORD                     // 'operator'
	EXTENDS_KEYWORD                      // 'extends'
	PRIVATE_KEYWORD                      // 'private'
	EITHER_KEYWORD                       // 'either'
	WAIT_FOR_KEYWORD                     // 'wait_for'
	BREAK_KEYWORD                        // 'break'
	GIVEN_KEYWORD                        // 'given'
	IS_KEYWORD                           // 'is'
	EXCEPT_KEYWORD                       // 'except'
)

var KeywordMap = map[string]Token_Type{
	FUNC_KEYWORD_LIT:     FUNC_KEYWORD,
	SPAWN_KEYWORD_LIT:    SPAWN_KEYWORD,
	IF_KEYWORD_LIT:       IF_KEYWORD,
	ELSE_KEYWORD_LIT:     ELSE_KEYWORD,
	THEN_KEYWORD_LIT:     THEN_KEYWORD,
	FOR_KEYWORD_LIT:      FOR_KEYWORD,
	IN_KEYWORD_LIT:       IN_KEYWORD,
	WHILE_KEYWORD_LIT:    WHILE_KEYWORD,
	DO_KEYWORD_LIT:       DO_KEYWORD,
	NOT_KEYWORD_LIT:      NOT_KEYWORD,
	AND_KEYWORD_LIT:      AND_KEYWORD,
	OR_KEYWORD_LIT:       OR_KEYWORD,
	FROM_KEYWORD_LIT:     FROM_KEYWORD,
	TO_KEYWORD_LIT:       TO_KEYWORD,
	BY_KEYWORD_LIT:       BY_KEYWORD,
	END_KEYWORD_LIT:      END_KEYWORD,
	MODULE_KEYWORD_LIT:   MODULE_KEYWORD,
	CLASS_KEYWORD_LIT:    CLASS_KEYWORD,
	IMPORT_KEYWORD_LIT:   IMPORT_KEYWORD,
	EXPORT_KEYWORD_LIT:   EXPORT_KEYWORD,
	SUPER_KEYWORD_LIT:    SUPER_KEYWORD,
	THIS_KEYWORD_LIT:     THIS_KEYWORD,
	RETURN_KEYWORD_LIT:   RETURN_KEYWORD,
	OPERATOR_KEYWORD_LIT: OPERATOR_KEYWORD,
	EXTENDS_KEYWORD_LIT:  EXTENDS_KEYWORD,
	PRIVATE_KEYWORD_LIT:  PRIVATE_KEYWORD,
	EITHER_KEYWORD_LIT:   EITHER_KEYWORD,
	WAIT_FOR_KEYWORD_LIT: WAIT_FOR_KEYWORD,
	BREAK_KEYWORD_LIT:    BREAK_KEYWORD,
	GIVEN_KEYWORD_LIT:    GIVEN_KEYWORD,
	IS_KEYWORD_LIT:       IS_KEYWORD,
	EXCEPT_KEYWORD_LIT:   EXCEPT_KEYWORD,
}

func New(val string, class Token_Type, line int, col int) *Token {
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
	case MULTILINE_COMMENT:
		return "MULTILINE_COMMENT"
	case SINGLELINE_COMMENT:
		return "SINGLELINE_COMMENT"
	case RANGE:
		return "RANGE"
	case FUNC_KEYWORD:
		return "FUNC_KEYWORD"
	case SPAWN_KEYWORD:
		return "SPAWN_KEYWORD"
	case IF_KEYWORD:
		return "IF_KEYWORD"
	case ELSE_KEYWORD:
		return "ELSE_KEYWORD"
	case THEN_KEYWORD:
		return "THEN_KEYWORD"
	case FOR_KEYWORD:
		return "FOR_KEYWORD"
	case IN_KEYWORD:
		return "IN_KEYWORD"
	case WHILE_KEYWORD:
		return "WHILE_KEYWORD"
	case DO_KEYWORD:
		return "DO_KEYWORD"
	case NOT_KEYWORD:
		return "NOT_KEYWORD"
	case AND_KEYWORD:
		return "AND_KEYWORD"
	case OR_KEYWORD:
		return "OR_KEYWORD"
	case FROM_KEYWORD:
		return "FROM_KEYWORD"
	case TO_KEYWORD:
		return "TO_KEYWORD"
	case BY_KEYWORD:
		return "BY_KEYWORD"
	case END_KEYWORD:
		return "END_KEYWORD"
	case MODULE_KEYWORD:
		return "MODULE_KEYWORD"
	case CLASS_KEYWORD:
		return "CLASS_KEYWORD"
	case IMPORT_KEYWORD:
		return "IMPORT_KEYWORD"
	case EXPORT_KEYWORD:
		return "EXPORT_KEYWORD"
	case SUPER_KEYWORD:
		return "SUPER_KEYWORD"
	case THIS_KEYWORD:
		return "THIS_KEYWORD"
	case RETURN_KEYWORD:
		return "RETURN_KEYWORD"
	case OPERATOR_KEYWORD:
		return "OPERATOR_KEYWORD"
	case EXTENDS_KEYWORD:
		return "EXTENDS_KEYWORD"
	case PRIVATE_KEYWORD:
		return "PRIVATE_KEYWORD"
	case EITHER_KEYWORD:
		return "EITHER_KEYWORD"
	case WAIT_FOR_KEYWORD:
		return "WAIT_FOR_KEYWORD"
	case BREAK_KEYWORD:
		return "BREAK_KEYWORD"
	case GIVEN_KEYWORD:
		return "GIVEN_KEYWORD"
	case IS_KEYWORD:
		return "IS_KEYWORD"
	case EXCEPT_KEYWORD:
		return "EXCEPT_KEYWORD"
	}
	return ""
}
