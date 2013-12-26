package scanner_test

import (
	"fmt"
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
	. "hydra/scanner"
	"hydra/scanner/token"
)

//Helper functions
//==============================================================================

func bound_token_pair_range(col []token_pair, iter func(data token_pair)) {
	for _, val := range col {
		iter(val)
	}
}

func bound_mock_input_range(col []mock_input, iter func(data mock_input)) {
	for _, val := range col {
		iter(val)
	}
}

// Individual Token Test Setup
//==============================================================================

type token_pair struct {
	literal string
	class   token.Token_Type
}

var indiv_test_data_pairs = []token_pair{
	{"end", token.END_KEYWORD},
	{"function", token.FUNC_KEYWORD},
	{"spawn", token.SPAWN_KEYWORD},
	{"if", token.IF_KEYWORD},
	{"else", token.ELSE_KEYWORD},
	{"then", token.THEN_KEYWORD},
	{"for", token.FOR_KEYWORD},
	{"in", token.IN_KEYWORD},
	{"while", token.WHILE_KEYWORD},
	{"do", token.DO_KEYWORD},
	{"not", token.NOT_KEYWORD},
	{"and", token.AND_KEYWORD},
	{"or", token.OR_KEYWORD},
	{"from", token.FROM_KEYWORD},
	{"to", token.TO_KEYWORD},
	{"by", token.BY_KEYWORD},
	{"module", token.MODULE_KEYWORD},
	{"class", token.CLASS_KEYWORD},
	{"import", token.IMPORT_KEYWORD},
	{"export", token.EXPORT_KEYWORD},
	{"super", token.SUPER_KEYWORD},
	{"this", token.THIS_KEYWORD},
	{"return", token.RETURN_KEYWORD},
	{"operator", token.OPERATOR_KEYWORD},
	{"extends", token.EXTENDS_KEYWORD},
	{"private", token.PRIVATE_KEYWORD},
	{"either", token.EITHER_KEYWORD},
	{"wait_for", token.WAIT_FOR_KEYWORD},
	{"break", token.BREAK_KEYWORD},
	{"given", token.GIVEN_KEYWORD},
	{"is", token.IS_KEYWORD},
	{"except", token.EXCEPT_KEYWORD},
	{"'mystring'", token.STRING_LITERAL},
	{"\"mystring\"", token.STRING_LITERAL},
	{"123", token.NUM_LITERAL},
	{"0435.345", token.NUM_LITERAL},
	{"/* some comment */", token.MULTILINE_COMMENT},
	{"// some comment\n", token.SINGLELINE_COMMENT},
	{".", token.PERIOD},
	{"?", token.QUESTION},
	{",", token.COMMA},
	{":", token.COLON},
	{";", token.SEMICOLON},
	{"&", token.BIT_AND},
	{"|", token.BIT_OR},
	{"+", token.ADD_OP},
	{"-", token.MIN_OP},
	{"*", token.MULT_OP},
	{"/", token.DIV_OP},
	{"%", token.MOD_OP},
	{"++", token.INCREMENT},
	{"--", token.DECREMENT},
	{"**", token.POWER_OP},
	{"<", token.LESS_THAN},
	{">", token.GREATER_THAN},
	{"=", token.ASSIGN},
	{"<=", token.LESS_THAN_EQ},
	{">=", token.GREATER_THAN_EQ},
	{"==", token.EQUAL},
	{"+=", token.PLUS_EQ},
	{"-=", token.MIN_EQ},
	{"*=", token.TIMES_EQ},
	{"/=", token.DIV_EQ},
	{"%=", token.MOD_EQ},
	{"||", token.OR},
	{"&&", token.AND},
	{"..", token.RANGE},
	{"|=", token.OR_EQUAL},
	{"<<", token.LSHOVEL},
	{">>", token.RSHOVEL},
	{"{", token.LCURLY},
	{"}", token.RCURLY},
	{"(", token.LPAREN},
	{")", token.RPAREN},
	{"[", token.LBRACKET},
	{"]", token.RBRACKET},
}

// Real World Token Test Setup
//==============================================================================

type mock_input struct {
	expr           string
	correct_tokens []token.Token_Type
}

var mocks = []mock_input{
	{
		`0..10 by 2.5 do (i){
       print(i)
     }`,
		[]token.Token_Type{
			token.NUM_LITERAL,
			token.RANGE,
			token.NUM_LITERAL,
			token.BY_KEYWORD,
			token.NUM_LITERAL,
			token.DO_KEYWORD,
			token.LPAREN,
			token.IDENTIFIER,
			token.RPAREN,
			token.LCURLY,
			token.IDENTIFIER,
			token.LPAREN,
			token.IDENTIFIER,
			token.RPAREN,
			token.RCURLY,
		},
	},
	{
		`this.func_call() /* comment /****/`,
		[]token.Token_Type{
			token.IDENTIFIER,
			token.PERIOD,
			token.IDENTIFIER,
			token.LPAREN,
			token.RPAREN,
			token.MULTILINE_COMMENT,
		},
	},
}

// Test Suite
//==============================================================================

var _ = Describe("Scanner", func() {

	Describe("Basic Test", func() {
		var last_tok *token.Token
		var first_tok *token.Token

		input_str := `for obj in objects do
                         print(obj)
                      end`

		count := 0

		tokens := New(STRING, input_str).Run()

		first_tok = <-tokens
		count++

		for tok := range tokens {
			last_tok = tok
			count++
		}

		It("should produce 10 tokens", func() {
			Expect(count).To(Equal(10))
		})

		It("should have a 'for' token as the first token", func() {
			Expect(first_tok.Class).To(Equal(token.FOR_KEYWORD))
		})

		It("should have an 'end' token as the last token", func() {
			Expect(last_tok.Class).To(Equal(token.END_KEYWORD))
		})
	})

	Describe("Individual Token Tests", func() {

		bound_token_pair_range(indiv_test_data_pairs, func(test_data token_pair) {

			It("should produce a/an '"+test_data.literal+"' token", func() {
				scanner := New(STRING, test_data.literal)
				fmt.Printf("%s", test_data.literal)
				Expect((<-(scanner.Run())).Class).To(Equal(test_data.class))
			})

		})

	})

	Describe("Real World Token Tests", func() {

		bound_mock_input_range(mocks, func(mock mock_input) {

			It("should produce all of the correct tokens for the string "+mock.expr, func() {
				scanner := New(STRING, mock.expr)
				tokens := scanner.Run()

				i := 0

				for tok := range tokens {
					Expect(tok.Class).To(Equal(mock.correct_tokens[i]))
					i++
					fmt.Printf("tok passed : %s\n", tok.Class)
				}

				Expect(i).To(Equal(len(mock.correct_tokens)))

			})

		})

	})

})