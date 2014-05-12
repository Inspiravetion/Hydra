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

		if this.at(token.NEW_KEYWORD) {
			if err = this.new_stmt(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.FOR_KEYWORD) {
			if err = this.for_in_loop(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.WHILE_KEYWORD) {
			if err = this.while_loop(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IF_KEYWORD) {
			if err = this.if_else_stmt(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.GIVEN_KEYWORD) {
			if err = this.given_is_stmt(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.WAIT_FOR_KEYWORD) {
			if err = this.wait_for(false); err != no_err {
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
			if err = this.var_decl(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IDENTIFIER) {
			if err = this.assign_stmt_or_func_call(false); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.SINGLELINE_COMMENT) || this.at(token.MULTILINE_COMMENT) {
			this.next()
			continue
		}

		return "Expression starting at" + this.tokPos() + "not allowed at top level"
	}

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                For In Loop                                 //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) for_in_loop(gen bool) string {
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

	if err, _ = this.expr(false, gen); err != no_err {
		return err
	}

	if !this.at(token.DO_KEYWORD) {
		return "Expected 'in' in for_in loop at" + this.tokPos()
	}

	this.next()

	if err = this.loop_stmts(gen); err != no_err {
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

func (this *Parser) while_loop(gen bool) string {
	var err string

	if !this.at(token.WHILE_KEYWORD) {
		return "while_loop() called when the current token is not 'while' at" + this.tokPos()
	}

	this.next()

	if err, _ = this.expr(false, gen); err != no_err {
		return err
	}

	if !this.at(token.DO_KEYWORD) {
		return "Expected do at" + this.tokPos()
	}

	this.next()

	if err = this.loop_stmts(gen); err != no_err {
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

func (this *Parser) if_else_stmt(gen bool) string {
	var err string

	if !this.at(token.IF_KEYWORD) {
		return "if_else_stmt() called when the current token is not 'if' at" + this.tokPos()
	}

	this.next()

	if err = this.exprs(false, gen); err != no_err {
		return err
	}

	if !this.at(token.THEN_KEYWORD) {
		return "Expected 'then' at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(gen); err != no_err {
		return err
	}

	if this.at(token.ELSE_KEYWORD) {
		if err = this.else_if_branches(gen); err != no_err {
			return err
		}
	}

	if !this.at(token.END_KEYWORD) {
		return "Expected 'end' to close if stmt at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) else_if_branches(gen bool) string {
	var err string
	else_used := false

	if !this.at(token.ELSE_KEYWORD) {
		return "else_branch() called when token not on 'else' at" + this.tokPos()
	}

	this.next()

	for {
		if this.at(token.IF_KEYWORD) {
			this.next()

			if err = this.exprs(false, gen); err != no_err {
				return err
			}

		} else {
			if else_used {
				return "Cannot have two else clauses at" + this.tokPos()
			}

			else_used = true
		}

		if !else_used {
			if !this.at(token.THEN_KEYWORD) {
				return "Expected 'then' at" + this.tokPos()
			}

			this.next()
		}

		if err = this.stmts(gen); err != no_err {
			return err
		}

		if !this.at(token.ELSE_KEYWORD) {
			return no_err
		}

		if else_used {
			return "Can'e have two else statements at" + this.tokPos()
		}

		this.next()
	}
}

////////////////////////////////////////////////////////////////////////////////
//                                Given Is Statement                          //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) given_is_stmt(gen bool) string {
	var err string

	if !this.at(token.GIVEN_KEYWORD) {
		return "given_is_stmt() called when the current token is not 'given' at" + this.tokPos()
	}

	this.next()

	if err, _ = this.expr(false, gen); err != no_err {
		return err
	}

	if !this.at(token.IS_KEYWORD) {
		return "Expected 'is' in given is statement at" + this.tokPos()
	}

	if err = this.is_branches(gen); err != no_err {
		return err
	}

	if !this.at(token.END_KEYWORD) {
		return "Expected 'end' to close given is statement at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) is_branches(gen bool) string {
	var err string

	if !this.at(token.IS_KEYWORD) {
		return "is_branches() called when current token is not 'is' at" + this.tokPos()
	}

	this.next()

	if err = this.exprs(false, gen); err != no_err {
		return err
	}

	if !this.at(token.DO_KEYWORD) {
		return "Expected 'do' at" + this.tokPos()
	}

	this.next()

	if err = this.loop_stmts(gen); err != no_err {
		return err
	}

	if this.at(token.IS_KEYWORD) {
		if err = this.is_branches(gen); err != no_err {
			return err
		}
	}

	if this.at(token.ELSE_KEYWORD) {
		if err = this.else_branch(gen); err != no_err {
			return err
		}
	}

	return no_err
}

func (this *Parser) else_branch(gen bool) string {
	if !this.at(token.ELSE_KEYWORD) {
		return "else_branch() called when the current token is not 'else' at" + this.tokPos()
	}

	this.next()

	if !this.at(token.DO_KEYWORD) {
		return "Expected 'do' at" + this.tokPos()
	}

	this.next()

	if err := this.loop_stmts(gen); err != no_err {
		return err
	}

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                Wait For Statement                          //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) wait_for(gen bool) string {
	var err string

	if !this.at(token.WAIT_FOR_KEYWORD) {
		return "wait_for() called "
	}

	this.next()

	if err = this.either_branch(gen); err != no_err {
		return err
	}

	if !this.at(token.END_KEYWORD) {
		return "Expected 'end' to finish wait_for stmt at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) either_branch(gen bool) string {
	var err string

	if !this.at(token.EITHER_KEYWORD) {
		return "Expected 'either' at" + this.tokPos()
	}

	this.next()

	if err = this.chan_send_recv(gen); err != no_err {
		return err
	}

	if !this.at(token.THEN_KEYWORD) {
		return "Expected 'then' in wait_for stmt at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(gen); err != no_err {
		return err
	}

	if !this.at(token.OR_KEYWORD) {
		return "Expected 'or' in wair_for stmt at" + this.tokPos()
	}

	if err = this.or_branch(gen); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) or_branch(gen bool) string {
	var err string
	deflt := false

	if !this.at(token.OR_KEYWORD) {
		return "or_branch called when the current token is not 'or'" + this.tokPos()
	}

	this.next()

	if this.at(token.DO_KEYWORD) {
		deflt = true
		this.next()
	}

	if !deflt {
		if err = this.chan_send_recv(gen); err != no_err {
			return err
		}

		if !this.at(token.THEN_KEYWORD) {
			return "Expected 'then' in wait_for stmt at" + this.tokPos()
		}

		this.next()
	}

	if err = this.stmts(gen); err != no_err {
		return err
	}

	if !deflt {
		if this.at(token.OR_KEYWORD) {
			if err = this.or_branch(gen); err != no_err {
				return err
			}

			return no_err
		}
	}

	if !this.at(token.END_KEYWORD) {
		return "Expected 'end' to finish or branch of wait_for statement at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) chan_send_recv(gen bool) string {
	var err string
	var exists bool

	if err, exists = this.expr(true, gen); err != no_err {
		return err
	}

	if exists {
		if !this.at(token.CHAN_SEND) && !this.at(token.CHAN_RECV) {
			return "Expected '<-' or '->' in wait_for stmt at" + this.tokPos()
		}

		this.next()
	} else {
		if !this.at(token.CHAN_RECV) {
			return "Expected '<-' at" + this.tokPos()
		}

		this.next()
	}

	if err, _ = this.expr(false, gen); err != no_err {
		return err
	}

	return no_err
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

	if err = this.rhs_assignment(false, false); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) var_decl(gen bool) string {
	var err string

	if !this.at(token.VAR_KEYWORD) {
		return "var_decl called without being on 'var' token at" + this.tokPos()
	}

	this.next()

	if err = this.idents(false); err != no_err {
		return err
	}

	if err = this.rhs_assignment(true, gen); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) func_def() string {
	var err string
	gen := false

	if this.at(token.GENERATOR_KEYWORD) {
		gen = true
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

	if err = this.stmts(gen); err != no_err {
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

	if err = this.stmts(false); err != no_err {
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

func (this *Parser) key_val_pair(optional bool, gen bool) (string, bool) {

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

	if err, _ := this.expr(false, gen); err != no_err {
		return err, false
	}

	return no_err, true
}

func (this *Parser) expr(optional bool, gen bool) (string, bool) {
	var err string
	keepComposing := false
	callable := false

	//these don't compose any futher
	switch {
	case this.at(token.STRING_LITERAL):

		this.next()

		return no_err, true
	case this.at(token.NUM_LITERAL):

		if err = this.number(); err != no_err {
			return err, false
		}

		return no_err, true
	case this.at(token.TRUE) || this.at(token.FALSE):

		this.next()

		return no_err, true
	case this.at(token.CHAN_RECV):

		if err = this.chan_lit(gen); err != no_err {
			return err, false
		}

		return no_err, true
	//these need to check that they are done consuming the current expr
	case this.at(token.LBRACKET):

		if err = this.array_expr(gen); err != no_err {
			return err, false
		}

		keepComposing = true
		break
	case this.at(token.LCURLY):

		if err = this.hash_expr(gen); err != no_err {
			return err, false
		}

		keepComposing = true
		break
	case this.at(token.LPAREN):

		if err = this.paren_expr(gen); err != no_err {
			return err, false
		}

		keepComposing = true
		callable = true
		break
	case this.at(token.IDENTIFIER):

		if err = this.ident(); err != no_err {
			return err, false
		}

		keepComposing = true
		callable = true
		break
	case this.at(token.NEW_KEYWORD):

		if err = this.new_stmt(gen); err != no_err {
			return err, false
		}

		return no_err, true
	case this.at(token.YIELD_KEYWORD):

		if !gen {
			return "Yield statement at" + this.tokPos() + "only aloud in generator function", false
		}

		this.next()
		if err = this.exprs(true, gen); err != no_err {
			return err, false
		}

		return no_err, true
	}

	if keepComposing {
		if err = this.expr_suffix(callable, gen); err != no_err {
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

func (this *Parser) chan_lit(gen bool) string {
	if !this.at(token.CHAN_RECV) {
		return "chan_lit() called without being on a <- token at" + this.tokPos()
	}

	this.next()

	if err, _ := this.expr(true, gen); err != no_err {
		return err
	}

	if !this.at(token.CHAN_SEND) {
		return "Expected -> at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) array_expr(gen bool) string {
	if !this.at(token.LBRACKET) {
		return "array_expr() called without being on a [ token at" + this.tokPos()
	}

	this.next()

	if err := this.exprs(true, gen); err != no_err {
		return err
	}

	if !this.at(token.RBRACKET) {
		return "Expected ] at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) hash_expr(gen bool) string {
	if !this.at(token.LCURLY) {
		return "hash_expr() called without being on a { token at" + this.tokPos()
	}

	this.next()

	if err := this.key_val_pairs(true, gen); err != no_err {
		return err
	}

	if !this.at(token.RCURLY) {
		return "Expected ] at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) paren_expr(gen bool) string {
	if !this.at(token.LPAREN) {
		return "paren_expr() called without being on a ( token at" + this.tokPos()
	}

	this.next()

	if err, _ := this.expr(false, gen); err != no_err {
		return err
	}

	if !this.at(token.RPAREN) {
		return "Expected ) to close paren expr at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) expr_suffix(callable bool, gen bool) string {
	var err string

	if this.at(token.LBRACKET) {
		this.next()

		if err, _ = this.expr(false, gen); err != no_err {
			return err
		}

		if !this.at(token.RBRACKET) {
			return "Expected ] at the end of expression at" + this.tokPos()
		}

		this.next()

		return this.expr_suffix(callable, gen)
	}

	if this.at(token.PERIOD) {
		this.next()

		if !this.at(token.IDENTIFIER) {
			return "Trailing . on expression at" + this.tokPos()
		}

		this.next()

		return this.expr_suffix(true, gen)
	}

	if callable {
		if this.at(token.LPAREN) {
			this.next()

			if err = this.exprs(true, gen); err != no_err {
				return err
			}

			if !this.at(token.RPAREN) {
				return "Expected closing ) for expression at" + this.tokPos()
			}

			this.next()

			return this.expr_suffix(false, gen)
		}
	}

	return no_err
}

func (this *Parser) return_stmt() string {
	if !this.at(token.RETURN_KEYWORD) {
		return "called return_stmt() without the current token being 'return' at" + this.tokPos()
	}

	this.next()

	return this.exprs(true, false)
}

func (this *Parser) new_stmt(gen bool) string {
	var err string

	if !this.at(token.NEW_KEYWORD) {
		return "called new_stmt when current token is not 'new' at" + this.tokPos()
	}

	this.next()

	if err = this.ident(); err != no_err {
		return err
	}

	if err = this.call_params(gen); err != no_err {
		return err
	}

	return this.expr_suffix(false, gen)
}

func (this *Parser) loop_stmts(gen bool) string {
	return this.base_stmts(true, gen)
}

func (this *Parser) stmts(gen bool) string {
	return this.base_stmts(false, gen)
}

func (this *Parser) base_stmts(loop bool, gen bool) string {
	var err string

	//stmts are optional
	for {

		if this.at(token.IDENTIFIER) {
			if err = this.assign_stmt_or_func_call(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.SINGLELINE_COMMENT) || this.at(token.MULTILINE_COMMENT) {
			this.next()
			continue
		}

		if this.at(token.RETURN_KEYWORD) {
			if err = this.return_stmt(); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.NEW_KEYWORD) {
			if err = this.new_stmt(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.FOR_KEYWORD) {
			if err = this.for_in_loop(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.WHILE_KEYWORD) {
			if err = this.while_loop(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.IF_KEYWORD) {
			if err = this.if_else_stmt(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.GIVEN_KEYWORD) {
			if err = this.given_is_stmt(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.WAIT_FOR_KEYWORD) {
			if err = this.wait_for(gen); err != no_err {
				return err
			}

			continue
		}

		if this.at(token.VAR_KEYWORD) {
			if err = this.var_decl(gen); err != no_err {
				return err
			}

			continue
		}

		if loop {
			if this.at(token.BREAK_KEYWORD) {
				this.next()
				continue
			}

			if this.at(token.CONTINUE_KEYWORD) {
				this.next()
				continue
			}
		}

		if gen {
			if this.at(token.YIELD_KEYWORD) {
				this.next()
				if err = this.exprs(true, gen); err != no_err {
					return err
				}

				continue
			}
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

func (this *Parser) assign_stmt_or_func_call(gen bool) string {
	var err string

	if err = this.uncallable_compound_expr(gen); err != no_err { // need this for assignment statement
		return err
	}

	if this.at(token.LPAREN) {
		return this.call_params(gen)
	}

	for {
		if !this.at(token.COMMA) {
			break
		}

		this.next()

		if err = this.uncallable_compound_expr(gen); err != no_err {
			return err
		}
	}

	if this.at(token.ASSIGN) {
		return this.rhs_assignment(false, gen)
	}

	return no_err
}

func (this *Parser) func_call(gen bool) string {

	if err := this.uncallable_compound_expr(gen); err != no_err { // need this for assignment statement
		return err
	}

	return this.call_params(gen)
}

func (this *Parser) uncallable_compound_expr(gen bool) string {
	var err string

	if this.at(token.LBRACKET) {
		if err = this.array_expr(gen); err != no_err {
			return err
		}
		return this.expr_suffix(false, gen)
	}

	if this.at(token.LCURLY) {
		if err = this.hash_expr(gen); err != no_err {
			return err
		}
		return this.expr_suffix(false, gen)
	}

	if this.at(token.LPAREN) {
		if err = this.paren_expr(gen); err != no_err {
			return err
		}
		return this.expr_suffix(false, gen)
	}

	if this.at(token.IDENTIFIER) {
		if err = this.ident(); err != no_err {
			return err
		}
		return this.expr_suffix(false, gen)
	}

	return "expeced [ { ( or identifier at" + this.tokPos()
}

func (this *Parser) call_params(gen bool) string {

	if !this.at(token.LPAREN) {
		fmt.Printf("%+v", this.tok)
		return "Expected '(' at" + this.tokPos()
	}

	this.next()

	if err := this.exprs(true, gen); err != no_err {
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

func (this *Parser) rhs_assignment(optional bool, gen bool) string {
	if !this.at(token.ASSIGN) {
		if optional {
			return no_err
		}

		return "Expected assigment ( x = y ) at" + this.tokPos()
	}

	this.next()

	if err := this.exprs(false, gen); err != no_err {
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

func (this *Parser) exprs(optional bool, gen bool) string {
	var err string
	var exist bool

	if err, exist = this.expr(optional, gen); err != no_err {
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

		if err, _ := this.expr(false, gen); err != no_err {
			return err
		}
	}

}

func (this *Parser) key_val_pairs(optional bool, gen bool) string {
	var err string
	var exist bool

	if err, exist = this.key_val_pair(optional, gen); err != no_err {
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

		if err, _ := this.key_val_pair(false, gen); err != no_err {
			return err
		}
	}
}
