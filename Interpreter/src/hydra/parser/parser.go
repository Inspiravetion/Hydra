package parser

import (
	"hydra/scanner"
	"hydra/scanner/token"
	// "hydra/util"
	"hydra/ast"
)

type Parser struct {
	tokens  <-chan *token.Token
	program *ast.Program
}

func New_Parser(tokens <-chan *token.Token) {
	return new(Parser).init(tokens)
}

func (this *Parser) init(tokens <-chan *token.Token) {
	this.tokens = tokens
}

func (this *Parser) Parse() *ast.Program {
	return this.program()
}

func (this *Parser) next() *token.Token {
	return <-this.token
}

func (this *Parser) program() *ast.Program {

}
