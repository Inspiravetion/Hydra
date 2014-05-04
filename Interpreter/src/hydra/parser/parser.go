package parser

import (
	// "hydra/scanner"
	// "hydra/ast"
	"fmt"
	"hydra/scanner/token"
	// "hydra/util"
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
	//does scanner send EOF?
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

		return "Expression starting at" + this.tokPos() + "not allowed at top level"
	}

	return no_err
}

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
