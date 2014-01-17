package scanner

import (
	"bytes"
	"fmt"
	"hydra/scanner/token"
	"hydra/util"
	"io"
	"os"
	"unicode"
	"unicode/utf8"
)

type Scanner struct {
	buff_pos         int
	buff_len         int
	line_num         int
	col_num          int
	last_line_length int
	input            *os.File
	peek_buff        []byte
	buff             []byte
}

type Input_Type int

const (
	FILE Input_Type = iota
	STRING
)

var default_buff_len = 1024

//Helpers
//==============================================================================

func isAlnum(r rune) bool {
	return unicode.IsLetter(r) || unicode.IsDigit(r) || r == '_'
}

func to_rune(str string) rune {
	r, _ := utf8.DecodeRuneInString(str)

	if r == utf8.RuneError {
		util.Throw(Rune_Conv_Err(str))
	}

	return r
}

func (this *Scanner) tok(tok_lit string, tok_type token.Token_Type, pos ...int) *token.Token {
	if len(pos) == 2 {
		return token.New(tok_lit, tok_type, pos[0], pos[1])
	}

	return token.New(tok_lit, tok_type, this.line_num, this.col_num-len(tok_lit))
}

//Errors
//==============================================================================

func Unknown_Char_Err(char string) string {
	return fmt.Sprintf("Scanner encounted unknown character '%s'", char)
}

func Rune_Conv_Err(r string) string {
	return fmt.Sprintf("Scanner could not convert '%s' to a rune", r)
}

func Unterminated_Comment_Err(line, col int) string {
	return fmt.Sprintf("Comment starting at line: %d and column: %d is never terminated", line, col)
}

func Unterminated_String_Err(line, col int) string {
	return fmt.Sprintf("String starting at line: %d and column: %d is never terminated", line, col)
}

//Scanner
//==============================================================================

func (this *Scanner) init(in_type Input_Type, input string) *Scanner {

	if in_type == FILE {
		input, err := os.Open(input)
		if err != nil {
			panic(err)
		}
		this.input = input
		this.buff_len = default_buff_len
		this.buff_pos = this.buff_len
		this.peek_buff = make([]byte, 2) //max consecutive rewinds
		this.buff = make([]byte, this.buff_len)
	}

	if in_type == STRING {
		this.input = nil
		this.buff = []byte(input)
		this.buff_len = len(this.buff)
	}

	this.line_num = 1
	this.col_num = 1
	this.last_line_length = 1

	return this
}

func (this *Scanner) get_next_char() (string, error) {

	var char string

	if this.buff_pos == this.buff_len {
		if this.input != nil {
			copy(this.peek_buff, this.buff[this.buff_len-len(this.peek_buff):])

			num_read, err := this.input.Read(this.buff)

			if err == io.EOF {
				return "", err
			}

			if err != nil {
				panic(err)
			}

			this.buff_len = num_read
			this.buff_pos = 0
		} else {
			return "", io.EOF
		}
	}

	if this.buff_pos < 0 {
		char = string(this.peek_buff[len(this.peek_buff)-this.buff_pos])
	} else {
		char = string(this.buff[this.buff_pos])
	}

	if char == token.NEWLINE_LIT {
		this.last_line_length = this.col_num
		this.col_num = 1
		this.line_num++
	} else {
		this.col_num++
	}

	this.buff_pos++

	return char, nil
}

func (this *Scanner) rewind() {
	if this.col_num == 1 {
		this.line_num--
		this.col_num = this.last_line_length
	} else {
		this.col_num--
	}

	this.buff_pos--
}

func (this *Scanner) three_tier_token(def_lit string, def_type token.Token_Type,
	ass_lit string, ass_type token.Token_Type,
	double_lit string, double_type token.Token_Type) *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return this.tok(ass_lit, ass_type)
		}

		if char == def_lit {
			return this.tok(double_lit, double_type)
		}

		this.rewind()
		return this.tok(def_lit, def_type)
	} else {

		if err == io.EOF {
			return this.tok(def_lit, def_type)
		}

		return nil
	}
}

func (this *Scanner) default_or_assign_token(def_lit string, def_type token.Token_Type,
	ass_lit string, ass_type token.Token_Type) *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return this.tok(ass_lit, ass_type)
		}

		this.rewind()
		return this.tok(def_lit, def_type)
	} else {

		if err == io.EOF {
			return this.tok(def_lit, def_type)
		}

		return nil
	}
}

func (this *Scanner) plus_token() *token.Token {
	return this.three_tier_token(
		token.ADD_OP_LIT, token.ADD_OP,
		token.PLUS_EQ_LIT, token.PLUS_EQ,
		token.INCREMENT_LIT, token.INCREMENT,
	)
}

func (this *Scanner) greater_than_token() *token.Token {
	return this.three_tier_token(
		token.GREATER_THAN_LIT, token.GREATER_THAN,
		token.GREATER_THAN_EQ_LIT, token.GREATER_THAN_EQ,
		token.RSHOVEL_LIT, token.RSHOVEL,
	)
}

func (this *Scanner) ampersand_token() *token.Token {
	return this.three_tier_token(
		token.BIT_AND_LIT, token.BIT_AND,
		token.BIT_AND_EQ_LIT, token.BIT_AND_EQ,
		token.AND_LIT, token.AND,
	)
}

func (this *Scanner) minus_token() *token.Token {
	tok := this.three_tier_token(
		token.MIN_OP_LIT, token.MIN_OP,
		token.MIN_EQ_LIT, token.MIN_EQ,
		token.DECREMENT_LIT, token.DECREMENT,
	)

	if tok.Class == token.MIN_OP {
		if curr_char, char_err := this.get_next_char(); char_err == nil {
			if curr_char == token.GREATER_THAN_LIT {
				tok.Text = token.CHAN_SEND_LIT
				tok.Class = token.CHAN_SEND
				return tok
			}
		}
		this.rewind()
	}

	return tok
}

func (this *Scanner) less_than_token() *token.Token {
	tok := this.three_tier_token(
		token.LESS_THAN_LIT, token.LESS_THAN,
		token.LESS_THAN_EQ_LIT, token.LESS_THAN_EQ,
		token.LSHOVEL_LIT, token.LSHOVEL,
	)

	if tok.Class == token.LESS_THAN {
		if curr_char, char_err := this.get_next_char(); char_err == nil {
			if curr_char == token.MIN_OP_LIT {
				tok.Text = token.CHAN_RECV_LIT
				tok.Class = token.CHAN_RECV
				return tok
			}
		}
		this.rewind()
	}

	return tok
}

func (this *Scanner) or_token() *token.Token {
	return this.default_or_assign_token(
		token.OR_LIT, token.OR, token.OR_EQ_LIT, token.OR_EQ,
	)
}

func (this *Scanner) mult_token() *token.Token {
	return this.default_or_assign_token(
		token.MULT_OP_LIT, token.MULT_OP, token.TIMES_EQ_LIT, token.TIMES_EQ,
	)
}

func (this *Scanner) mod_token() *token.Token {
	return this.default_or_assign_token(
		token.MOD_OP_LIT, token.MOD_OP, token.MOD_EQ_LIT, token.MOD_EQ,
	)
}

func (this *Scanner) power_token() *token.Token {
	return this.default_or_assign_token(
		token.POWER_OP_LIT, token.POWER_OP, token.POWER_EQ_LIT, token.POWER_EQ,
	)
}

func (this *Scanner) equal_token() *token.Token {
	return this.default_or_assign_token(
		token.ASSIGN_LIT, token.ASSIGN, token.EQUAL_LIT, token.EQUAL,
	)
}

func (this *Scanner) pipe_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.BIT_OR_LIT {
			return this.or_token()
		}

		if char == token.ASSIGN_LIT {
			return this.tok(token.BIT_OR_EQ_LIT, token.BIT_OR_EQ)
		}

		this.rewind()
		return this.tok(token.BIT_OR_LIT, token.BIT_OR)
	} else {

		if err == io.EOF {
			return this.tok(token.BIT_OR_LIT, token.BIT_OR)
		}

		return nil
	}
}

func (this *Scanner) div_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {

		line, col := this.line_num, this.col_num

		if char == token.ASSIGN_LIT {
			return this.tok(token.DIV_EQ_LIT, token.DIV_EQ)
		}

		if char == token.DIV_OP_LIT {
			//messes up line number and sturf
			return this.single_line_comment(line, col-len(token.SINGLELINE_COMMENT_LIT))
		}

		if char == token.MULT_OP_LIT {
			//messes up line number and sturf
			return this.multi_line_comment(line, col-len(token.MULTILINE_COMMENT_START_LIT))
		}

		this.rewind()
		return this.tok(token.DIV_OP_LIT, token.DIV_OP)
	} else {

		if err == io.EOF {
			return this.tok(token.DIV_OP_LIT, token.DIV_OP)
		}

		return nil
	}
}

func (this *Scanner) string_literal_token(quote_char string) *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(quote_char)

	line, col := this.line_num, this.col_num-len(quote_char)

	for {
		if char, err := this.get_next_char(); err == nil {
			buffer.WriteString(char)
			if char == quote_char {
				return this.tok(buffer.String(), token.STRING_LITERAL)
			}
		} else {
			util.Throw(Unterminated_String_Err(line, col))
		}
	}
}

func (this *Scanner) int_literal(buffer *bytes.Buffer) {
	for {
		if char, err := this.get_next_char(); err == nil {
			if r := to_rune(char); unicode.IsDigit(r) {
				buffer.WriteString(string(r))
			} else {
				this.rewind()
				return
			}
		} else {
			return
		}
	}
}

func (this *Scanner) num_literal_token(start rune) *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(string(start))
	this.int_literal(&buffer)

	if char, err := this.get_next_char(); err == nil {
		if char == token.PERIOD_LIT {
			if digit_char, err := this.get_next_char(); err == nil {
				if r := to_rune(digit_char); unicode.IsDigit(r) {
					buffer.WriteString(char)
					buffer.WriteString(string(r))
					this.int_literal(&buffer)
					return this.tok(buffer.String(), token.NUM_LITERAL)
				} else {
					this.rewind()
					this.rewind()
					return this.tok(buffer.String(), token.NUM_LITERAL)
				}
			} else {
				return nil
			}
		} else {
			this.rewind()
			return this.tok(buffer.String(), token.NUM_LITERAL)
		}
	} else {

		if err == io.EOF {
			return this.tok(buffer.String(), token.NUM_LITERAL)
		}

		return nil
	}
}

func (this *Scanner) identifier_or_keyword(start rune) *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(string(start))

	for {
		if char, err := this.get_next_char(); err == nil {
			if r := to_rune(char); isAlnum(r) {
				buffer.WriteString(string(r))
			} else {
				this.rewind()
				break
			}
		} else {
			break
		}
	}

	tok_str := buffer.String()

	if tok_type, found := token.KeywordMap[tok_str]; found {
		return this.tok(tok_str, tok_type)
	}

	return this.tok(tok_str, token.IDENTIFIER)
}

func (this *Scanner) astrick_in_comment(buffer *bytes.Buffer, line, col int) *token.Token {
	for {
		if char, err := this.get_next_char(); err == nil {
			buffer.WriteString(char)

			if char == token.DIV_OP_LIT {
				return this.tok(buffer.String(), token.MULTILINE_COMMENT, line, col)
			}

			if char == token.MULT_OP_LIT {
				return this.astrick_in_comment(buffer, line, col)
			}
		} else {
			util.Throw(Unterminated_Comment_Err(line, col))
		}
	}
}

func (this *Scanner) multi_line_comment(line, col int) *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(token.MULTILINE_COMMENT_START_LIT)

	for {
		if char, err := this.get_next_char(); err == nil {
			buffer.WriteString(char)
			if char == token.MULT_OP_LIT {
				return this.astrick_in_comment(&buffer, line, col)
			}
		} else {
			util.Throw(Unterminated_Comment_Err(line, col))
		}
	}
}

func (this *Scanner) single_line_comment(line, col int) *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(token.SINGLELINE_COMMENT_LIT)

	for {
		if char, err := this.get_next_char(); err == nil {
			if char == token.NEWLINE_LIT {
				return this.tok(buffer.String(), token.SINGLELINE_COMMENT, line, col)
			} else {
				buffer.WriteString(char)
			}
		} else {
			if err == io.EOF {
				return this.tok(buffer.String(), token.SINGLELINE_COMMENT)
			}

			return nil
		}
	}
}

func (this *Scanner) period_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.PERIOD_LIT {
			return this.tok(token.RANGE_LIT, token.RANGE)
		}

		this.rewind()
		return this.tok(token.PERIOD_LIT, token.PERIOD)
	} else {

		if err == io.EOF {
			return this.tok(token.PERIOD_LIT, token.PERIOD)
		}

		return nil
	}
}

func (this *Scanner) consume_whitespace() {
	for {
		if char, err := this.get_next_char(); err == nil {
			if r := to_rune(char); !unicode.IsSpace(r) {
				this.rewind()
				return
			}
		} else {
			return
		}
	}
}

func (this *Scanner) stream_tokens(out_chan chan *token.Token) {
	for tok := this.get_next_token(); tok != nil; tok = this.get_next_token() {
		out_chan <- tok
	}
	close(out_chan)

	if this.input != nil {
		this.input.Close()
	}
}

func (this *Scanner) get_next_token() *token.Token {

	this.consume_whitespace()

	if curr_char, char_err := this.get_next_char(); char_err == nil {

		if curr_char == token.COMMA_LIT {
			return this.tok(token.COMMA_LIT, token.COMMA)
		}

		if curr_char == token.QUESTION_LIT {
			return this.tok(token.QUESTION_LIT, token.QUESTION)
		}

		if curr_char == token.COLON_LIT {
			return this.tok(token.COLON_LIT, token.COLON)
		}

		if curr_char == token.SEMICOLON_LIT {
			return this.tok(token.SEMICOLON_LIT, token.SEMICOLON)
		}

		if curr_char == token.LCURLY_LIT {
			return this.tok(token.LCURLY_LIT, token.LCURLY)
		}

		if curr_char == token.RCURLY_LIT {
			return this.tok(token.RCURLY_LIT, token.RCURLY)
		}

		if curr_char == token.LPAREN_LIT {
			return this.tok(token.LPAREN_LIT, token.LPAREN)
		}

		if curr_char == token.RPAREN_LIT {
			return this.tok(token.RPAREN_LIT, token.RPAREN)
		}

		if curr_char == token.LBRACKET_LIT {
			return this.tok(token.LBRACKET_LIT, token.LBRACKET)
		}

		if curr_char == token.RBRACKET_LIT {
			return this.tok(token.RBRACKET_LIT, token.RBRACKET)
		}

		if curr_char == token.BIT_NEGATE_LIT {
			return this.tok(token.BIT_NEGATE_LIT, token.BIT_NEGATE)
		}

		if curr_char == token.PERIOD_LIT {
			return this.period_token()
		}

		if curr_char == token.BIT_AND_LIT {
			return this.ampersand_token()
		}

		if curr_char == token.BIT_OR_LIT {
			return this.pipe_token()
		}

		if curr_char == token.LESS_THAN_LIT {
			return this.less_than_token()
		}

		if curr_char == token.GREATER_THAN_LIT {
			return this.greater_than_token()
		}

		if curr_char == token.ADD_OP_LIT {
			return this.plus_token()
		}

		if curr_char == token.MIN_OP_LIT {
			return this.minus_token()
		}

		if curr_char == token.MULT_OP_LIT {
			return this.mult_token()
		}

		if curr_char == token.DIV_OP_LIT {
			return this.div_token()
		}

		if curr_char == token.MOD_OP_LIT {
			return this.mod_token()
		}

		if curr_char == token.POWER_OP_LIT {
			return this.power_token()
		}

		if curr_char == token.ASSIGN_LIT {
			return this.equal_token()
		}

		if curr_char == token.DOUBLE_QUOTE_LIT {
			return this.string_literal_token(token.DOUBLE_QUOTE_LIT)
		}

		if curr_char == token.SINGLE_QUOTE_LIT {
			return this.string_literal_token(token.SINGLE_QUOTE_LIT)
		}

		if r := to_rune(curr_char); unicode.IsDigit(r) {
			return this.num_literal_token(r)
		}

		if r := to_rune(curr_char); unicode.IsLetter(r) {
			return this.identifier_or_keyword(r)
		}

		util.Throw(Unknown_Char_Err(curr_char))
	}

	return nil //EOF
}

//Public Function
//==============================================================================

func New(in_type Input_Type, input string) *Scanner {
	return new(Scanner).init(in_type, input)
}

func (this *Scanner) Run() <-chan *token.Token {
	c := make(chan *token.Token, 50)
	go this.stream_tokens(c)
	return c
}
