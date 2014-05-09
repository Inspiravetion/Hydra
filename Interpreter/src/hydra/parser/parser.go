package parser

import (
	// "hydra/scanner"
	// "hydra/ast"
	"fmt"
	"hydra/scanner/token"
	"hydra/util"
)

var no_err string = ""

type Parser struct {
	tok    *token.Token
	tokens <-chan *token.Token
}

func New(tokens <-chan *token.Token) *Parser {
	return new(Parser).init(tokens)
}

func (this *Parser) init(tokens <-chan *token.Token) *Parser {
	this.tokens = tokens
	this.next()
	return this
}

func (this *Parser) Parse() {
	if err := this.program(); err != no_err {
		fmt.Println(err)
	} else {
		fmt.Println("Parsed correctly!")
	}
}

func (this *Parser) next() {
	this.tok = <-this.tokens
}

func (this *Parser) tokPos() string {
	return fmt.Sprintf(" %d:%d ", this.tok.Line, this.tok.Column)
}

func (this *Parser) at(typ token.Token_Type) bool {
	return this.tok.Class == typ
}

func (this *Parser) program() string {

	for {
		if this.tok == token.EOF {
			break
		}

		var err string

		if this.at(token.FOR_KEYWORD) {
			if err = this.for_in_loop(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.WHILE_KEYWORD) {
			if err = this.while_loop(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IF_KEYWORD) {
			if err = this.if_else_stmt(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IMPORT_KEYWORD) {
			if err = this.import_stmt(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.EXPORT_KEYWORD) {
			if err = this.export_stmt(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.CLASS_KEYWORD) {
			if err = this.class_def(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.GENERATOR_KEYWORD) || this.at(token.FUNC_KEYWORD) {
			if err = this.func_def(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.VAR_KEYWORD) {
			if err = this.var_decl(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IDENTIFIER) {
			if err = this.assign_stmt_or_func_call(); err != no_err {
				return err
			}

			continue
		}

		return "Expression starting at" + this.tokPos() + "not allowed at top level"
	}

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                For In Loop                                 //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) for_in_loop() string {
	var err string

	if !this.at(token.FOR_KEYWORD) {
		return "for_in_loop() called when the current token is not 'for'"
	}

	this.next()

	if err = this.ident_list(); err != no_err {
		return err
	}

	if !this.at(token.IN_KEYWORD) {
		return "Expected 'in' in for_in loop at" + this.tokPos()
	}

	this.next()

	if err, _ = this.expr(false); err != no_err {
		return err
	}

	if !this.at(token.DO_KEYWORD) {
		return "Expected 'in' in for_in loop at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(); err != no_err {
		return err
	}

	if !this.at(token.END_KEYWORD) {
		fmt.Printf("%+v\n", this.tok)
		return "Expected 'end' at" + this.tokPos()
	}

	this.next()

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                While Loop                                  //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) while_loop() string {
	var err string

	if !this.at(token.WHILE_KEYWORD) {
		return "while_loop() called when the current token is not 'while' at" + this.tokPos()
	}

	this.next()

	if err, _ = this.expr(false); err != no_err {
		return err
	}

	if !this.at(token.DO_KEYWORD) {
		return "Expected do at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(); err != no_err {
		return err
	}

	if !this.at(token.END_KEYWORD) {
		return "Expected 'end' to close while loop at" + this.tokPos()
	}

	this.next()

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                If Else Stmt                                //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) if_else_stmt() string {
	var err string

	if !this.at(token.IF_KEYWORD) {
		return "if_else_stmt() called when the current token is not 'if' at" + this.tokPos()
	}

	this.next()

	if err = this.exprs(false); err != no_err {
		return err
	}

	if !this.at(token.DO_KEYWORD) {
		return "Expected do at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(); err != no_err {
		return err
	}

	if this.at(token.ELSE_KEYWORD) {
		if err = this.else_branches(); err != no_err {
			return err
		}
	}

	if !this.at(token.END_KEYWORD) {
		return "Expected 'end' to close if stmt at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) else_branches() string {
	var err string
	else_used := false

	if !this.at(token.ELSE_KEYWORD) {
		return "else_branches() called when token not on 'else' at" + this.tokPos()
	}

	this.next()

	for {
		if this.at(token.IF_KEYWORD) {
			this.next()

			if err = this.exprs(false); err != no_err {
				return err
			}

		} else {
			if else_used {
				return "Cannot have two else clauses at" + this.tokPos()
			}

			else_used = true
		}

		if !this.at(token.DO_KEYWORD) {
			return "Expected do at" + this.tokPos()
		}

		this.next()

		if err = this.stmts(); err != no_err {
			return err
		}

		if !this.at(token.ELSE_KEYWORD) {
			return no_err
		}

		this.next()
	}
}

////////////////////////////////////////////////////////////////////////////////
//                                Import Statement                            //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) import_stmt() string {

	if !this.at(token.IMPORT_KEYWORD) {
		return "import_stmt() called when the current token is not 'import'"
	}

	this.next()

	if this.at(token.IDENTIFIER) {
		if this.tok.Text != "std" && this.tok.Text != "pkg" {
			return this.partial_import()
		}
	}

	return this.package_location(false)
}

func (this *Parser) package_location(renameable bool) string {
	var err string

	if this.at(token.IDENTIFIER) &&
		(this.tok.Text == "std" || this.tok.Text == "pkg") {

		if err = this.builtin_pkg_location(); err != no_err {
			return err
		}

		if renameable {
			return this.as_rename()
		}

		return no_err
	}

	if this.at(token.BIT_NEGATE) || this.at(token.PERIOD) {
		if err = this.path_pkg_location(); err != no_err {
			return err
		}

		if renameable {
			return this.as_rename()
		}

		return no_err
	}

	util.Throw("Unrecognized import location")
	return "Unrecognized import location"
}

func (this *Parser) builtin_pkg_location() string {
	this.next()

	for i := 0; i < 2; i++ {
		if !this.at(token.COLON) {
			return "Expected import deliminator at" + this.tokPos()
		}

		this.next()
	}

	return this.ident()
}

func (this *Parser) path_pkg_location() string {
	var err string
	first := true

	this.next()

	for {
		if !this.at(token.DIV_OP) {
			if first {
				return "Expected a '/' in the import stmt at" + this.tokPos()
			}

			break
		}

		this.next()

		if err = this.ident(); err != no_err {
			return err
		}

		first = false
	}

	if !this.at(token.PERIOD) {
		return "import paths must end in '.hy'"
	}

	this.next()

	if !this.at(token.IDENTIFIER) || this.tok.Text != "hy" {
		return "import paths must end in '.hy'"
	}

	this.next()

	return no_err
}

func (this *Parser) partial_import() string {

	if !this.at(token.IDENTIFIER) {
		return "import statement missing identifier at" + this.tokPos()
	}

	this.next()

	if this.at(token.COMMA) {
		this.next()

		return this.multi_import()
	}

	if !this.at(token.FROM_KEYWORD) {
		return "Expected 'from' at" + this.tokPos()
	}

	this.next()

	return this.package_location(true)
}

func (this *Parser) multi_import() string {
	var err string

	if err = this.ident_list(); err != no_err {
		return err
	}

	if !this.at(token.FROM_KEYWORD) {
		return "Expected 'from' at" + this.tokPos()
	}

	this.next()

	return this.package_location(false)
}

func (this *Parser) as_rename() string {
	if this.at(token.AS_KEYWORD) {

		this.next()

		return this.ident()
	}

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                Export Statement                            //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) export_stmt() string {
	var err string

	if !this.at(token.EXPORT_KEYWORD) {
		return "export_stmt() called withou the current token being 'export'"
	}

	this.next()

	if err = this.ident(); err != no_err {
		return err
	}

	if this.at(token.COMMA) {
		this.next()

		return this.ident_list()
	}

	return this.as_rename()
}

////////////////////////////////////////////////////////////////////////////////
//                                Class Definition                            //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) class_def() string {
	var err, class_name string

	if !this.at(token.CLASS_KEYWORD) {
		return "class_def() called withou the current token being 'class'"
	}

	this.next()

	//catch name here and make sure its the same as the constructor
	//in the STMTS
	if !this.at(token.IDENTIFIER) {
		return "Expected identifier at" + this.tokPos()
	}

	class_name = this.tok.Text

	this.next()

	if this.at(token.EXTENDS_KEYWORD) {
		this.next()

		if err = this.ident_list(); err != no_err {
			return err
		}
	}

	if err = this.class_internals(class_name); err != no_err {
		return err
	}

	if !this.at(token.END_KEYWORD) {
		return "expected 'end' to finish class definition"
	}

	this.next()

	return no_err
}

func (this *Parser) class_internals(class_name string) string {
	var err string

	for {
		if this.at(token.GENERATOR_KEYWORD) || this.at(token.FUNC_KEYWORD) {
			if err = this.func_def(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IDENTIFIER) {
			if err = this.constructor(class_name); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.SINGLELINE_COMMENT) || this.at(token.MULTILINE_COMMENT) {
			this.next()
			continue
		}

		if this.at(token.PUB_CLASS_VAR) || this.at(token.PRIV_CLASS_VAR) {
			if err = this.class_var_decl(); err != no_err {
				return err
			}

			continue
		}

		return no_err
	}

	return no_err
}

func (this *Parser) class_var_decl() string {
	var err string

	this.next()

	if err = this.ident(); err != no_err {
		return err
	}

	for {
		if !this.at(token.COMMA) {
			break
		}

		this.next()

		if !this.at(token.PUB_CLASS_VAR) && !this.at(token.PRIV_CLASS_VAR) {
			return "Expected class variable after ',' at" + this.tokPos()
		}

		this.next()

		if err = this.ident(); err != no_err {
			return err
		}
	}

	if err = this.rhs_assignment(false); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) var_decl() string {
	var err string

	if !this.at(token.VAR_KEYWORD) {
		return "var_decl called without being on 'var' token at" + this.tokPos()
	}

	this.next()

	if err = this.idents(false); err != no_err {
		return err
	}

	if err = this.rhs_assignment(true); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) func_def() string {
	var err string

	if this.at(token.GENERATOR_KEYWORD) {
		this.next()
	}

	if !this.at(token.FUNC_KEYWORD) {
		return "Expected 'func' at" + this.tokPos()
	}

	this.next()

	if err = this.ident(); err != no_err {
		return err
	}

	if err = this.def_params(); err != no_err {
		return err
	}

	if !this.at(token.LCURLY) {
		return "Expected '{' at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(); err != no_err {
		return err
	}

	if !this.at(token.RCURLY) {
		fmt.Printf("%+v\n", this.tok)
		return "Expected '}' at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) constructor(class_name string) string {
	var err string

	if !this.at(token.IDENTIFIER) {
		return "Expected identifier at" + this.tokPos()
	}

	if this.tok.Text != class_name {
		return "Constructor in class " + class_name + " must have the same name"
	}

	this.next()

	if err = this.def_params(); err != no_err {
		return err
	}

	if !this.at(token.LCURLY) {
		return "Expected '{' at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(); err != no_err {
		return err
	}

	if !this.at(token.RCURLY) {
		return "Expected '}' at" + this.tokPos()
	}

	this.next()

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                Building Blocks                             //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) ident_list() string {
	var err string

	//guarantee one identifier
	if err = this.ident(); err != no_err {
		return err
	}

	//consume comma delimited identifiers and then return
	for {
		if !this.at(token.COMMA) {
			break
		}

		this.next()

		if err = this.ident(); err != no_err {
			return err
		}
	}

	return no_err
}

// func (this *Parser) expr(optional bool) (string, bool) {

// 	if !this.at(token.IDENTIFIER) {
// 		if optional {
// 			return no_err, false
// 		}

// 		return "Expected Identifier at" + this.tokPos(), false
// 	}

// 	this.next()

// 	return no_err, true
// }

func (this *Parser) key_val_pair(optional bool) (string, bool) {

	if !this.at(token.IDENTIFIER) {
		if optional {
			return no_err, false
		}

		return "Expected Identifier at" + this.tokPos(), false
	}

	this.next()

	if !this.at(token.COLON) {
		return "Expected : in key value pair at" + this.tokPos(), false
	}

	this.next()

	if err, _ := this.expr(false); err != no_err {
		return err, false
	}

	return no_err, true
}

func (this *Parser) expr(optional bool) (string, bool) {
	var err string
	keepComposing := false
	callable := false

	//these don't compose any futher

	if this.at(token.STRING_LITERAL) {
		this.next()

		return no_err, true
	}

	if this.at(token.NUM_LITERAL) {
		if err = this.number(); err != no_err {
			return err, false
		}

		return no_err, true
	}

	if this.at(token.TRUE) || this.at(token.FALSE) {
		this.next()
		return no_err, true
	}

	if this.at(token.CHAN_RECV) {
		if err = this.chan_lit(); err != no_err {
			return err, false
		}

		return no_err, true
	}

	//these need to check that they are done consuming the current expr

	if this.at(token.LBRACKET) {
		if err = this.array_expr(); err != no_err {
			return err, false
		}
		keepComposing = true
	}

	if this.at(token.LCURLY) {
		if err = this.hash_expr(); err != no_err {
			return err, false
		}
		keepComposing = true
	}

	if this.at(token.LPAREN) {
		if err = this.paren_expr(); err != no_err {
			return err, false
		}
		keepComposing = true
		callable = true
	}

	if this.at(token.IDENTIFIER) {
		if err = this.ident(); err != no_err {
			return err, false
		}
		keepComposing = true
		callable = true
	}

	if keepComposing {
		if err = this.expr_suffix(callable); err != no_err {
			return err, false
		}

		return no_err, true
	}

	if optional {
		return no_err, false
	}

	return "Expected an expression at" + this.tokPos(), false
}

func (this *Parser) number() string {
	if !this.at(token.NUM_LITERAL) {
		return "Expected a number at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) chan_lit() string {
	if !this.at(token.CHAN_RECV) {
		return "chan_lit() called without being on a <- token at" + this.tokPos()
	}

	this.next()

	if err, _ := this.expr(true); err != no_err {
		return err
	}

	if !this.at(token.CHAN_SEND) {
		return "Expected -> at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) array_expr() string {
	if !this.at(token.LBRACKET) {
		return "array_expr() called without being on a [ token at" + this.tokPos()
	}

	this.next()

	if err := this.exprs(true); err != no_err {
		return err
	}

	if !this.at(token.RBRACKET) {
		return "Expected ] at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) hash_expr() string {
	if !this.at(token.LCURLY) {
		return "hash_expr() called without being on a { token at" + this.tokPos()
	}

	this.next()

	if err := this.key_val_pairs(true); err != no_err {
		return err
	}

	if !this.at(token.RCURLY) {
		return "Expected ] at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) paren_expr() string {
	if !this.at(token.LPAREN) {
		return "paren_expr() called without being on a ( token at" + this.tokPos()
	}

	this.next()

	if err, _ := this.expr(false); err != no_err {
		return err
	}

	if !this.at(token.RPAREN) {
		return "Expected ) to close paren expr at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) expr_suffix(callable bool) string {
	var err string

	if this.at(token.LBRACKET) {
		this.next()

		if err, _ = this.expr(false); err != no_err {
			return err
		}

		if !this.at(token.RBRACKET) {
			return "Expected ] at the end of expression at" + this.tokPos()
		}

		this.next()

		return this.expr_suffix(callable)
	}

	if this.at(token.PERIOD) {
		this.next()

		if !this.at(token.IDENTIFIER) {
			return "Trailing . on expression at" + this.tokPos()
		}

		this.next()

		return this.expr_suffix(callable)
	}

	if callable {
		if this.at(token.LPAREN) {
			this.next()

			if err = this.exprs(true); err != no_err {
				return err
			}

			if !this.at(token.RPAREN) {
				return "Expected closing ) for expression at" + this.tokPos()
			}

			this.next()

			return this.expr_suffix(false)
		}
	}

	return no_err
}

func (this *Parser) stmts() string {
	var err string

	//stmts are optional
	for {
		if this.at(token.IDENTIFIER) {
			if err = this.assign_stmt_or_func_call(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.SINGLELINE_COMMENT) || this.at(token.MULTILINE_COMMENT) {
			this.next()
			continue
		}

		if this.at(token.FOR_KEYWORD) {
			if err = this.for_in_loop(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.WHILE_KEYWORD) {
			if err = this.while_loop(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IF_KEYWORD) {
			if err = this.if_else_stmt(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.VAR_KEYWORD) {
			if err = this.var_decl(); err != no_err {
				return err
			}

			continue
		}

		break
	}

	return no_err
}

func (this *Parser) ident() string {
	if !this.at(token.IDENTIFIER) {
		return "Expected identifier at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) assign_stmt_or_func_call() string {
	var err string

	if err = this.uncallable_compound_expr(); err != no_err { // need this for assignment statement
		return err
	}

	if this.at(token.ASSIGN) {
		return this.rhs_assignment(false)
	}

	if this.at(token.LPAREN) {
		return this.call_params()
	}

	return no_err
}

func (this *Parser) uncallable_compound_expr() string {
	var err string

	if this.at(token.LBRACKET) {
		if err = this.array_expr(); err != no_err {
			return err
		}
		return this.expr_suffix(false)
	}

	if this.at(token.LCURLY) {
		if err = this.hash_expr(); err != no_err {
			return err
		}
		return this.expr_suffix(false)
	}

	if this.at(token.LPAREN) {
		if err = this.paren_expr(); err != no_err {
			return err
		}
		return this.expr_suffix(false)
	}

	if this.at(token.IDENTIFIER) {
		if err = this.ident(); err != no_err {
			return err
		}
		return this.expr_suffix(false)
	}

	return "expeced [ { ( or identifier at" + this.tokPos()
}

func (this *Parser) call_params() string {

	if !this.at(token.LPAREN) {
		fmt.Printf("%+v", this.tok)
		return "Expected '(' at" + this.tokPos()
	}

	this.next()

	if err := this.exprs(true); err != no_err {
		return err
	}

	if !this.at(token.RPAREN) {
		return "Expected ')' at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) def_params() string {
	if !this.at(token.LPAREN) {
		return "Expected '(' at" + this.tokPos()
	}

	this.next()

	if err := this.idents(true); err != no_err {
		return err
	}

	if !this.at(token.RPAREN) {
		return "Expected ')' at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) rhs_assignment(optional bool) string {
	if !this.at(token.ASSIGN) {
		if optional {
			return no_err
		}

		return "Expected assigment ( x = y ) at" + this.tokPos()
	}

	this.next()

	if err := this.exprs(false); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) idents(optional bool) string {
	if !this.at(token.IDENTIFIER) {
		if optional {
			return no_err
		}

		return "Expected identifier at" + this.tokPos()
	}

	this.next()

	for {

		if !this.at(token.COMMA) {
			return no_err
		}

		this.next()

		if err := this.ident(); err != no_err {
			return err
		}
	}
}

func (this *Parser) exprs(optional bool) string {
	var err string
	var exist bool

	if err, exist = this.expr(optional); err != no_err {
		return err
	}

	if !exist {
		return no_err
	}

	for {

		if !this.at(token.COMMA) {
			return no_err
		}

		this.next()

		if err, _ := this.expr(false); err != no_err {
			return err
		}
	}

}

func (this *Parser) key_val_pairs(optional bool) string {
	var err string
	var exist bool

	if err, exist = this.key_val_pair(optional); err != no_err {
		return err
	}

	if !exist {
		return no_err
	}

	for {

		if !this.at(token.COMMA) {
			return no_err
		}

		this.next()

		if err, _ := this.key_val_pair(false); err != no_err {
			return err
		}
	}
}
