package main

import (
	"bytes"
	"fmt"
	"hydra/scanner"
	"hydra/scanner/token"
	"strconv"
)

type expr struct{}

type range_exp struct {
	start    int
	end      int
	callable *anon_func
}

type anon_func struct {
	param string
	block *function_call
}

type function_call struct {
	func_name string
	param     string
}

//error================
type ast_err struct {
	err string
}

func (this ast_err) Error() string {
	return "ast error"
}

var ae = new(ast_err)

//=====================
/*
   want to parse...

   4..12 do (i){
     print(i)
   }

*/

type Parser struct {
	tokens <-chan *token.Token
	tok    *token.Token
}

func New(input string) *Parser {
	p := new(Parser)

	p.tokens = scanner.New(scanner.STRING, input).Run()
	p.tok = nil

	return p
}

//expr -> range_exp
//range_exp -> number_exp '..' number_exp 'do' anon_function
//number_exp -> [0-9]+
//anon_function -> '(' identifier '){' function_call  '}'
//function_call -> identifier '(' identifier ')'
//identifier -> [a-z]+

func (this *range_exp) run() {
	for i := this.start; i < this.end; i++ {
		switch this.callable.block.func_name {
		case "print":
			fmt.Printf("%d\n", i)
		case "inc_and_print":
			fmt.Printf("%d\n", i+1)
		}
	}
}

func (this *Parser) to_ast() *range_exp {
	return this.range_exp()
}

func (this *Parser) range_exp() *range_exp {
	re := new(range_exp)

	//number
	re.start = this.num_exp()

	//range
	if tok := <-this.tokens; tok.Class != token.RANGE {
		panic(ae)
	}

	//number
	re.end = this.num_exp()

	//do
	if tok := <-this.tokens; tok.Class != token.DO_KEYWORD {
		panic(ae)
	}

	//anon_func
	re.callable = this.anon_func()

	return re
}

func (this *range_exp) String() string {
	var buff bytes.Buffer

	buff.WriteString("range_exp\n")
	buff.WriteString(fmt.Sprintf("\t-> start: %d\n", this.start))
	buff.WriteString(fmt.Sprintf("\t-> end: %d\n", this.end))
	buff.WriteString(fmt.Sprintf("\t-> callable: \n%s", this.callable))

	return buff.String()
}

func (this *anon_func) String() string {
	var buff bytes.Buffer

	buff.WriteString(fmt.Sprintf("\t\t-> param: %s\n", this.param))
	buff.WriteString(fmt.Sprintf("\t\t-> block: \n%s", this.block))

	return buff.String()
}

func (this *function_call) String() string {
	var buff bytes.Buffer

	buff.WriteString(fmt.Sprintf("\t\t\t-> func_name: %s\n", this.func_name))
	buff.WriteString(fmt.Sprintf("\t\t\t-> param: %s\n", this.param))

	return buff.String()
}

func (this *Parser) num_exp() int {
	tok := <-this.tokens

	if tok.Class == token.NUM_LITERAL {
		if num, err := strconv.Atoi(tok.Text); err == nil {
			return num
		}

		panic(ae)
	}

	panic(ae)
}

func (this *Parser) anon_func() *anon_func {
	af := new(anon_func)

	//(
	if tok := <-this.tokens; tok.Class != token.LPAREN {
		panic(ae)
	}

	af.param = this.identifier()

	//)
	if tok := <-this.tokens; tok.Class != token.RPAREN {
		panic(ae)
	}

	//{
	if tok := <-this.tokens; tok.Class != token.LCURLY {
		panic(ae)
	}

	af.block = this.function_call()

	//}
	if tok := <-this.tokens; tok.Class != token.RCURLY {
		panic(ae)
	}

	return af
}

func (this *Parser) function_call() *function_call {
	fc := new(function_call)

	fc.func_name = this.identifier()

	//(
	if tok := <-this.tokens; tok.Class != token.LPAREN {
		panic(ae)
	}

	fc.param = this.identifier()

	//)
	if tok := <-this.tokens; tok.Class != token.RPAREN {
		panic(ae)
	}

	return fc
}

func (this *Parser) identifier() string {

	if tok := <-this.tokens; tok.Class == token.IDENTIFIER {
		return tok.Text
	}

	panic(ae)
}

func main() {
	input := `4..12 do (i){
                inc_and_print(i)
              }`
	p := New(input)

	re := p.to_ast()

	fmt.Printf("%s\n", re)

	re.run()
}
