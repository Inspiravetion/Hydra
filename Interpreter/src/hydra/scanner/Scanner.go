package scanner

import (
	"bytes"
	"hydra/err"
	"hydra/scanner/token"
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

var default_buff_len = 1024

//Helpers
//==============================================================================

func isAlnum(r rune) bool {
	return unicode.IsLetter(r) || unicode.IsDigit(r) || r == '_'
}

func to_rune(str string) rune {
	r, _ := utf8.DecodeRuneInString(str)
	return r
}

//Scanner
//==============================================================================

func (this *Scanner) init(in_file string) *Scanner {

	input, err := os.Open(in_file)
	if err != nil {
		panic(err)
	}

	this.line_num = 1
	this.col_num = 1
	this.last_line_length = 1
	this.input = input
	this.buff_len = default_buff_len
	this.buff_pos = this.buff_len
	this.peek_buff = make([]byte, 2) //max consecutive rewinds
	this.buff = make([]byte, this.buff_len)

	return this
}

func (this *Scanner) get_next_char() (string, error) {
	if this.buff_pos == this.buff_len {
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
	}

	var char string

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

func (this *Scanner) less_than_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.LESS_THAN_EQ_LIT, token.LESS_THAN_EQ, this.line_num, this.col_num)
		}

		if char == token.LESS_THAN_LIT {
			return token.New(token.LSHOVEL_LIT, token.LSHOVEL, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.LESS_THAN_LIT, token.LESS_THAN, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) greater_than_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.GREATER_THAN_EQ_LIT, token.GREATER_THAN_EQ, this.line_num, this.col_num)
		}

		if char == token.GREATER_THAN_LIT {
			return token.New(token.RSHOVEL_LIT, token.RSHOVEL, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.GREATER_THAN_LIT, token.GREATER_THAN, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) ampersand_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.BIT_AND_LIT {
			return token.New(token.AND_LIT, token.AND, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.BIT_AND_LIT, token.BIT_AND, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) pipe_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.BIT_OR_LIT {
			return token.New(token.OR_LIT, token.OR, this.line_num, this.col_num)
		}

		if char == token.ASSIGN_LIT {
			return token.New(token.OR_EQUAL_LIT, token.OR_EQUAL, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.BIT_OR_LIT, token.BIT_OR, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) equal_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.EQUAL_LIT, token.EQUAL, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.ASSIGN_LIT, token.ASSIGN, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) plus_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.PLUS_EQ_LIT, token.PLUS_EQ, this.line_num, this.col_num)
		}

		if char == token.ADD_OP_LIT {
			return token.New(token.INCREMENT_LIT, token.INCREMENT, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.ADD_OP_LIT, token.ADD_OP, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) minus_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.MIN_EQ_LIT, token.MIN_EQ, this.line_num, this.col_num)
		}

		if char == token.MIN_OP_LIT {
			return token.New(token.DECREMENT_LIT, token.DECREMENT, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.MIN_OP_LIT, token.MIN_OP, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) mult_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.TIMES_EQ_LIT, token.TIMES_EQ, this.line_num, this.col_num)
		}

		if char == token.MULT_OP_LIT {
			return token.New(token.POWER_OP_LIT, token.POWER_OP, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.MULT_OP_LIT, token.MULT_OP, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) div_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.DIV_EQ_LIT, token.DIV_EQ, this.line_num, this.col_num)
		}

		if char == token.DIV_OP_LIT {
			//messes up line number and sturf
			return this.single_line_comment()
		}

		if char == token.MULT_OP_LIT {
			//messes up line number and sturf
			return this.multi_line_comment()
		}

		this.rewind()
		return token.New(token.DIV_OP_LIT, token.DIV_OP, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) mod_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.ASSIGN_LIT {
			return token.New(token.MOD_EQ_LIT, token.MOD_EQ, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.MOD_OP_LIT, token.MOD_OP, this.line_num, this.col_num)
	}

	return nil
}

func (this *Scanner) string_literal_token(quote_char string) *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(quote_char)

	for {
		if char, err := this.get_next_char(); err == nil {
			buffer.WriteString(char)
			if char == quote_char {
				return token.New(buffer.String(), token.STRING_LITERAL, this.line_num, this.col_num)
			}
		} else {
			return nil
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
					return token.New(buffer.String(), token.NUM_LITERAL, this.line_num, this.col_num)
				} else {
					this.rewind()
					this.rewind()
					return token.New(buffer.String(), token.NUM_LITERAL, this.line_num, this.col_num)
				}
			} else {
				return nil
			}
		} else {
			this.rewind()
			return token.New(buffer.String(), token.NUM_LITERAL, this.line_num, this.col_num)
		}
	} else {
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
		return token.New(tok_str, tok_type, this.line_num, this.col_num)
	}

	return token.New(tok_str, token.IDENTIFIER, this.line_num, this.col_num)
}

func (this *Scanner) astrick_in_comment(buffer *bytes.Buffer) *token.Token {
	for {
		if char, err := this.get_next_char(); err == nil {
			buffer.WriteString(char)

			if char == token.DIV_OP_LIT {
				return token.New(buffer.String(), token.MULTILINE_COMMENT, this.line_num, this.col_num)
			}

			if char == token.MULT_OP_LIT {
				return this.astrick_in_comment(buffer)
			}
		} else {
			return nil
		}
	}
}

func (this *Scanner) multi_line_comment() *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(token.MULTILINE_COMMENT_START_LIT)

	for {
		if char, err := this.get_next_char(); err == nil {
			buffer.WriteString(char)
			if char == token.MULT_OP_LIT {
				return this.astrick_in_comment(&buffer)
			}
		} else {
			return nil
		}
	}
}

func (this *Scanner) single_line_comment() *token.Token {
	var buffer bytes.Buffer

	buffer.WriteString(token.SINGLELINE_COMMENT_LIT)

	for {
		if char, err := this.get_next_char(); err == nil {
			if char == token.NEWLINE_LIT {
				return token.New(buffer.String(), token.SINGLELINE_COMMENT, this.line_num, this.col_num)
			} else {
				buffer.WriteString(char)
			}
		} else {
			return nil
		}
	}
}

func (this *Scanner) period_token() *token.Token {

	if char, err := this.get_next_char(); err == nil {
		if char == token.PERIOD_LIT {
			return token.New(token.RANGE_LIT, token.RANGE, this.line_num, this.col_num)
		}

		this.rewind()
		return token.New(token.PERIOD_LIT, token.PERIOD, this.line_num, this.col_num)
	}

	return nil
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
	this.input.Close()
}

func (this *Scanner) get_next_token() *token.Token {

	this.consume_whitespace()

	if curr_char, char_err := this.get_next_char(); char_err == nil {

		if curr_char == token.COMMA_LIT {
			return token.New(token.COMMA_LIT, token.COMMA, this.line_num, this.col_num)
		}

		if curr_char == token.QUESTION_LIT {
			return token.New(token.QUESTION_LIT, token.QUESTION, this.line_num, this.col_num)
		}

		if curr_char == token.COLON_LIT {
			return token.New(token.COLON_LIT, token.COLON, this.line_num, this.col_num)
		}

		if curr_char == token.SEMICOLON_LIT {
			return token.New(token.SEMICOLON_LIT, token.SEMICOLON, this.line_num, this.col_num)
		}

		if curr_char == token.LCURLY_LIT {
			return token.New(token.LCURLY_LIT, token.LCURLY, this.line_num, this.col_num)
		}

		if curr_char == token.RCURLY_LIT {
			return token.New(token.RCURLY_LIT, token.RCURLY, this.line_num, this.col_num)
		}

		if curr_char == token.LPAREN_LIT {
			return token.New(token.LPAREN_LIT, token.LPAREN, this.line_num, this.col_num)
		}

		if curr_char == token.RPAREN_LIT {
			return token.New(token.RPAREN_LIT, token.RPAREN, this.line_num, this.col_num)
		}

		if curr_char == token.LBRACKET_LIT {
			return token.New(token.LBRACKET_LIT, token.LBRACKET, this.line_num, this.col_num)
		}

		if curr_char == token.RBRACKET_LIT {
			return token.New(token.RBRACKET_LIT, token.RBRACKET, this.line_num, this.col_num)
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

		err.Throw(err.UNKNOWN_CHARACTER, curr_char)
	}

	return nil //EOF
}

//Public Function
//==============================================================================

func New(in_file string) *Scanner {
	return new(Scanner).init(in_file)
}

func (this *Scanner) Run() <-chan *token.Token {
	c := make(chan *token.Token, 50)
	go this.stream_tokens(c)
	return c
}
