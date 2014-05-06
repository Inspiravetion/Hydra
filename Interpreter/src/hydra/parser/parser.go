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

	if err = this.expr(); err != no_err {
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
		return "Expected 'end' at" + this.tokPos()
	}

	this.next()

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

		//check for class var declarations ie. #var = 2
		return no_err
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

func (this *Parser) expr() string {

	if !this.at(token.IDENTIFIER) {
		return "Expected Identifier at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) stmts() string {

	//stmts are optional
	for {
		if this.at(token.IDENTIFIER) {
			if err := this.func_call(); err != no_err {
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

func (this *Parser) func_call() string {
	var err string

	if err = this.dotted_expression(); err != no_err {
		return err
	}

	if err = this.call_params(); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) dotted_expression() string {
	var err string

	if err = this.expr(); err != no_err {
		return err
	}

	for {
		if !this.at(token.PERIOD) {
			return no_err
		}

		this.next()

		/*TODO this chould cause infinite loop if dotted_expression is called
		  anywhere indirectly by expr()
		*/
		if err = this.expr(); err != no_err {
			return "Expecting expression after comma at" + this.tokPos()
		}
	}
}

func (this *Parser) call_params() string {

	if !this.at(token.LPAREN) {
		return "Expected '(' at" + this.tokPos()
	}

	this.next()

	if err := this.opt_exprs(); err != no_err {
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

	if err := this.opt_idents(); err != no_err {
		return err
	}

	if !this.at(token.RPAREN) {
		return "Expected ')' at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) opt_idents() string {
	if !this.at(token.IDENTIFIER) {
		return no_err
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

//TODO: this is going to have to change to accept all expressions
func (this *Parser) opt_exprs() string {
	if !this.at(token.IDENTIFIER) {
		return no_err
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
