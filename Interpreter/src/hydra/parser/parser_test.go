package parser_test

import (
	. "github.com/onsi/ginkgo"
	// . "github.com/onsi/gomega"
	// "fmt"
	"hydra/parser"
	"hydra/scanner"
)

var _ = Describe("Parser", func() {

	It("Should be able to parse a super basic for in loop", func() {

		toks := scanner.New(
			scanner.STRING,
			`for val in obj do
                print(val)
            end`,
		).Run()

		p := parser.New(toks)
		p.Parse()
	})

	It("Should be able to parse a for in loop with multiple vals", func() {

		toks := scanner.New(
			scanner.STRING,
			`for val1, val2, val3 in obj do
                fmt.print(val)
            end`,
		).Run()

		p := parser.New(toks)
		p.Parse()
	})

	It("Should be able to parse multiple top level program statements", func() {

		toks := scanner.New(
			scanner.STRING,
			`import std.sync
            
            for val1, val2, val3 in obj do
                fmt.print(val)
            end`,
		).Run()

		p := parser.New(toks)
		p.Parse()
	})

})
