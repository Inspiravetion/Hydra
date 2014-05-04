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

})
