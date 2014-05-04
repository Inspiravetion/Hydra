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

func (this *Parser) program() string {

	for {
		if this.tok == token.EOF {
			break
		}

		var err string

		if this.tok.Class == token.FOR_KEYWORD {
			if err = this.for_in_loop(); err != no_err {
				return err
			}

			continue
		}

		if this.tok.Class == token.IMPORT_KEYWORD {
			if err = this.import_stmt(); err != no_err {
				return err
			}

			continue
		}

		if this.tok.Class == token.EXPORT_KEYWORD {
			if err = this.export_stmt(); err != no_err {
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

	if this.tok.Class != token.FOR_KEYWORD {
		return "for_in_loop() called when the current token is not 'for'"
	}

	this.next()

	if err = this.ident_list(); err != no_err {
		return err
	}

	if this.tok.Class != token.IN_KEYWORD {
		return "Expected 'in' in for_in loop at" + this.tokPos()
	}

	this.next()

	if err = this.expr(); err != no_err {
		return err
	}

	if this.tok.Class != token.DO_KEYWORD {
		return "Expected 'in' in for_in loop at" + this.tokPos()
	}

	this.next()

	if err = this.stmts(); err != no_err {
		return err
	}

	if this.tok.Class != token.END_KEYWORD {
		return "Expected 'end' at" + this.tokPos()
	}

	this.next()

	return no_err
}

////////////////////////////////////////////////////////////////////////////////
//                                Import Statement                            //
////////////////////////////////////////////////////////////////////////////////

func (this *Parser) import_stmt() string {

	if this.tok.Class != token.IMPORT_KEYWORD {
		return "import_stmt() called when the current token is not 'import'"
	}

	this.next()

	if this.tok.Class == token.IDENTIFIER {
		if this.tok.Text != "std" && this.tok.Text != "pkg" {
			return this.partial_import()
		}
	}

	return this.package_location(false)
}

func (this *Parser) package_location(renameable bool) string {
	var err string

	if this.tok.Class == token.IDENTIFIER &&
		(this.tok.Text == "std" || this.tok.Text == "pkg") {

		if err = this.builtin_pkg_location(); err != no_err {
			return err
		}

		if renameable {
			return this.as_rename()
		}

		return no_err
	}

	if this.tok.Class == token.BIT_NEGATE || this.tok.Class == token.PERIOD {
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
		if this.tok.Class != token.COLON {
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
		if this.tok.Class != token.DIV_OP {
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

	if this.tok.Class != token.PERIOD {
		return "import paths must end in '.hy'"
	}

	this.next()

	if this.tok.Class != token.IDENTIFIER || this.tok.Text != "hy" {
		return "import paths must end in '.hy'"
	}

	this.next()

	return no_err
}

func (this *Parser) partial_import() string {

	if this.tok.Class != token.IDENTIFIER {
		return "import statement missing identifier at" + this.tokPos()
	}

	this.next()

	if this.tok.Class == token.COMMA {
		this.next()

		return this.multi_import()
	}

	if this.tok.Class != token.FROM_KEYWORD {
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

	if this.tok.Class != token.FROM_KEYWORD {
		return "Expected 'from' at" + this.tokPos()
	}

	this.next()

	return this.package_location(false)
}

func (this *Parser) as_rename() string {
	if this.tok.Class == token.AS_KEYWORD {

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

	if this.tok.Class != token.EXPORT_KEYWORD {
		return "export_stmt() called withou the current token being 'export'"
	}

	this.next()

	if err = this.ident(); err != no_err {
		return err
	}

	if this.tok.Class == token.COMMA {
		this.next()

		return this.ident_list()
	}

	return this.as_rename()
}

func (this *Parser) ident_list() string {
	var err string

	//guarantee one identifier
	if err = this.ident(); err != no_err {
		return err
	}

	//consume comma delimited identifiers and then return
	for {
		if this.tok.Class != token.COMMA {
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

	if this.tok.Class != token.IDENTIFIER {
		return "Expected Identifier at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) stmts() string {
	if err := this.func_call(); err != no_err {
		return err
	}

	return no_err
}

func (this *Parser) ident() string {
	if this.tok.Class != token.IDENTIFIER {
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

	if err = this.params(); err != no_err {
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
		if this.tok.Class != token.PERIOD {
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

func (this *Parser) params() string {

	if this.tok.Class != token.LPAREN {
		return "Expected '(' at" + this.tokPos()
	}

	this.next()

	if err := this.opt_exprs(); err != no_err {
		return err
	}

	if this.tok.Class != token.RPAREN {
		return "Expected ')' at" + this.tokPos()
	}

	this.next()

	return no_err
}

func (this *Parser) opt_exprs() string {
	if this.tok.Class != token.IDENTIFIER {
		return no_err
	}

	this.next()

	for {

		if this.tok.Class != token.COMMA {
			return no_err
		}

		this.next()

		if err := this.ident(); err != no_err {
			return err
		}
	}
}
