package parser_test

import (
	. "github.com/onsi/ginkgo"
	// . "github.com/onsi/gomega"
	// "fmt"
	"hydra/parser"
	"hydra/scanner"
)

var _ = Describe("Parser", func() {

	program := "for val in obj do\n\tprint(val)\nend"
	toks := scanner.New(scanner.STRING, program).Run()

	p := parser.New(toks)
	p.Parse()

	program2 := "for val1, val2, val3 in obj do\n\tfmt.print(val)\nend"
	toks2 := scanner.New(scanner.STRING, program2).Run()

	p2 := parser.New(toks2)
	p2.Parse()

})
