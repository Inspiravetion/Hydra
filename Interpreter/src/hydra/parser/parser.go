package parser

import (
	// "hydra/scanner"
	// "hydra/ast"
	"fmt"
	"hydra/scanner/token"
	"hydra/util"
)

type Parser struct {
	tok    *token.Token
	tokens <-chan *token.Token
	// program *ast.Program
}

func New(tokens <-chan *token.Token) *Parser {
	return new(Parser).init(tokens)
}

func (this *Parser) init(tokens <-chan *token.Token) *Parser {
	this.tokens = tokens
	return this
}

func (this *Parser) Parse() /**ast.Program*/ {
	/*return*/ this.program()
	fmt.Println("Parsed correctly!")
}

func (this *Parser) next() {
	this.tok = <-this.tokens
}

func (this *Parser) program() /**ast.Program*/ {
	// prgrm := ast.New_Program()
	this.next()

	if this.tok.Class == token.FOR_KEYWORD {
		/*prgrm.Add(*/ this.for_in_loop() /*)*/
	}

	// return prgrm
}

func (this *Parser) for_in_loop() {
	//loop := ast.New_For_In_Loop(this.tok)

	if this.tok.Class != token.FOR_KEYWORD {
		util.Throw("Parsing Error")
	}

	this.next()
	this.ident_list()

	if this.tok.Class != token.IN_KEYWORD {
		util.Throw("Parsing Error")
	}

	this.next()
	this.expr()

	if this.tok.Class != token.DO_KEYWORD {
		util.Throw("Parsing Error")
	}

	this.next()
	this.stmts()

	if this.tok.Class != token.END_KEYWORD {
		util.Throw("Parsing Error")
	}

	this.next()
}

func (this *Parser) ident_list() {
	//guarantee one identifier
	this.ident()

	//consume comma delimited identifiers and then return
	for {
		if this.tok.Class != token.COMMA {
			return
		}

		this.next()
		this.ident()
	}

}

func (this *Parser) expr() {

	if this.tok.Class != token.IDENTIFIER {
		util.Throw("Parsing Error")
	}

	this.next()
}

func (this *Parser) stmts() {
	this.func_call()
}

func (this *Parser) ident() {
	if this.tok.Class != token.IDENTIFIER {
		util.Throw("Parsing Error")
	}

	this.next()
}

func (this *Parser) func_call() {
	this.dotted_expression()

	this.params()
}

func (this *Parser) dotted_expression() {
	this.expr()

	for {
		if this.tok.Class != token.PERIOD {
			return
		}

		this.next()
		this.expr()
	}
}

func (this *Parser) params() {

	if this.tok.Class != token.LPAREN {
		util.Throw("Parsing Error")
	}

	this.next()
	this.opt_exprs()

	if this.tok.Class != token.RPAREN {
		util.Throw("Parsing Error")
	}

	this.next()
}

func (this *Parser) opt_exprs() {
	if this.tok.Class != token.IDENTIFIER {
		return
	}

	this.next()

	for {

		if this.tok.Class != token.COMMA {
			return
		}

		this.next()
		this.ident()
	}
}
