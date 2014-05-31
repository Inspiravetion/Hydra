use std::io::{BufReader, BufferedReader, Buffer, File, EndOfFile};
use std::comm::{channel, Sender, Receiver};
use std::strbuf::StrBuf;
use std::vec::Vec;
use std::char;

use token::Token;
use token;

use native::task::spawn;

pub fn tokenize_str(code : &str) -> Vec<Token> {
    let reader = BufReader::new(code.as_bytes());
    let buf_reader = BufferedReader::new(reader);

    let mut scanner = Scanner::new(buf_reader);

    scanner.collect()
}

pub fn tokenize_file(path_str : &str) -> Vec<Token> {
    let path = &Path::new(path_str);

    let mut file = match File::open(path) {
        Ok(f) => f,
        Err(msg) => fail!(msg) 
    };

    let contents = file.read_to_end().unwrap();
    let reader = BufReader::new(contents.as_slice());
    let buf_reader = BufferedReader::new(reader);

    let mut scanner = Scanner::new(buf_reader);

    scanner.collect()
}

pub fn stream_from_str(code : &str) -> Receiver<Token> {
    let (sendr, recvr) = channel();
    let code = code.to_owned();

    spawn(proc(){
        let reader = BufReader::new(code.as_bytes());
        let buf_reader = BufferedReader::new(reader);

        let mut scanner = Scanner::new(buf_reader);

        scanner.stream(sendr);
    });

    recvr
}

pub fn stream_from_file(path_str : &str) -> Receiver<Token> {
    let (sendr, recvr) = channel();
    let path_str = path_str.to_owned();

    spawn(proc(){
        let path = &Path::new(path_str);

        let mut file = match File::open(path) {
            Ok(f) => f,
            Err(msg) => fail!(msg) 
        };

        let contents = file.read_to_end().unwrap();
        let reader = BufReader::new(contents.as_slice());
        let buf_reader = BufferedReader::new(reader);

        let mut scanner = Scanner::new(buf_reader);

        scanner.stream(sendr);
    });

    recvr
}

struct Scanner<B> {
    input     : B,
    peek_buff : StrBuf,
    text_buff : StrBuf,
    line      : uint,
    col       : uint
}

impl<B: Buffer> Scanner<B> {

    pub fn new(input : B) -> Scanner<B>{
        Scanner { 
            input     : input, 
            line      : 1,
            col       : 1,
            peek_buff : StrBuf::new(),
            text_buff : StrBuf::new()
        }
    }

    fn reset_text_buf(&mut self) {
        
    }

    fn tok(&mut self) -> Token {
        //TODO: probably a better way of doing this
        //cnt find docs for StrBuf though...
        let clone_buf = self.text_buff.clone();
        let text_buff = clone_buf.as_slice();
        let text = text_buff.to_owned();
        let l = self.col - text.len();

        self.text_buff.clear();

        Token {
            text : text,
            typ  : token::str_to_type(text_buff),
            line : self.line,
            col  : l 
        }
    }

    fn for_each_token(&mut self, cb : |Token|) {
        loop {
            match self.next_token() {
                Some(tok) => cb(tok),
                None => break
            }
        }
    }

    fn stream(&mut self, sendr : Sender<Token>) {
        self.for_each_token(|tok : Token|{
            sendr.send(tok);
        });
    }

    fn collect(&mut self) -> Vec<Token> {
        let mut tokens = Vec::new();

        self.for_each_token(|tok : Token|{
            tokens.push(tok);
        });

        tokens
    }

    fn consume(&mut self, c : char) {
        self.change_pos(c);
        self.text_buff.push_char(c);
    }

    fn consume_while(&mut self, condition : |char| -> bool) {
        loop {
            match self.next_char() {
                Some(c) => {
                    if condition(c) {
                        self.consume(c);
                    } else {
                        self.peek_buff.push_char(c);
                        break;
                    }
                }
                None => break                 
            };
        }
    }

    fn change_pos(&mut self, c : char) {
        if c == '\n' {
            self.line += 1;
            self.col = 0;
        } else {
            self.col += 1;
        };
    }

    fn next_char(&mut self) -> Option<char> {
        let result : Option<char>;

        if self.peek_buff.is_empty() {
            result = match self.input.read_char() {
                Ok(c) => Some(c),
                Err(e) => {
                    if e.kind != EndOfFile {
                        fail!(e);
                    }
                    None
                }
            }
        } else {
            result = Some(self.peek_buff.pop_char().unwrap());
        }

        result
    }

    fn consume_next_if(&mut self, c : char) {
        self.next_char_is(c);
    }

    fn next_char_is(&mut self, target : char) -> bool {
        if self.peek_buff.is_empty() {
            match self.input.read_char() {
                Ok(next_char) => {
                    if next_char == target {
                        self.consume(target);
                        true
                    } else {
                        self.peek_buff.push_char(next_char);
                        false
                    }
                }, 
                _ => false
            }
        } else {
            let l = self.peek_buff.len() - 1;
            let next_char = self.peek_buff.as_slice().char_at(l);

            if next_char == target {
                self.peek_buff.pop_char();
                self.consume(target);
                true
            } else {
                false
            }
        }
    }

    fn int_or_float_token(&mut self, start : char) -> Option<Token> {
        self.consume(start);
        
        self.consume_while(|c : char| -> bool {
            char::is_digit(c)
        });

        if self.next_char_is('.') {
            self.consume_while(|c : char| -> bool {
                char::is_digit(c)
            });
        }

        Some(self.tok())
    }

    fn ident_or_keyword_token(&mut self, start : char) -> Option<Token> {
        self.consume(start);

        self.consume_while(|c : char|{
            (char::is_alphanumeric(c) || c == '?' || c == '!' || c == '_')
        });

        Some(self.tok())
    }

    fn binary_token(&mut self) -> Option<Token> {
        self.consume_while(|c : char| -> bool {
            char::is_digit_radix(c, 2)
        });

        if self.text_buff.len() < 3 {
            fail!("Binary prefix not followed by any binary digits.");
        }

        Some(self.tok())
    }

    fn hex_token(&mut self) -> Option<Token> {
        self.consume_while(|c : char| -> bool {
            char::is_digit_radix(c, 16)
        });

        if self.text_buff.len() < 3 {
            fail!("Hex prefix not followed by any hex digits.");
        }

        Some(self.tok())
    }

    fn period_token(&mut self, c : char) -> Option<Token> {
        self.consume(c);

        if self.next_char_is(c) {
            self.consume_next_if(c);
        } 

        Some(self.tok())
    }

    fn equal_token(&mut self, c : char) -> Option<Token> {
        self.consume(c);

        self.consume_next_if('=');

        Some(self.tok())
    }

    fn pipe_token(&mut self, c : char) -> Option<Token> {
        self.consume(c);

        self.consume_next_if('|');
        self.consume_next_if('=');

        Some(self.tok())
    }

    fn double_or_equal_token(&mut self, c : char) -> Option<Token> {
        self.consume(c);

        if !self.next_char_is(c) {
            self.consume_next_if('=')
        }

        Some(self.tok())
    }

    fn next_token(&mut self) -> Option<Token> {
        match self.next_char() {
            Some(c) => {
                match c {
                    '?' | ',' | ';' | ':' | '~' | '{' | '}' | '[' | ']' | '(' | ')' => {
                        self.consume(c);
                        Some(self.tok())
                    },
                    '.' => {
                        //., .., ...
                        self.period_token(c)
                    },
                    '*' | '%' | '^' | '!' | '=' => {
                        //*, *=, %, %=, /, /=, !, != ...etc
                        self.equal_token(c)
                    },
                    '|' => {
                        //|, ||, |=, ||=
                        self.pipe_token(c)
                    },
                    '+' | '&' | '>' => {
                        //++, +=, +, &&, &=, &
                        self.double_or_equal_token(c)
                    },
                    '-' => {
                        //-, -=, ->, --
                        None
                    },
                    '<' => {
                        //<, <<, <=, <-
                        None
                    },
                    '@' | '#' => {
                        //@, @_, #, #_
                        None
                    },
                    '\'' | '"' => {
                        //'myString', "myString"
                        None
                    },
                    '/' => {
                        // /, /=, //, /*
                        None
                    },
                    '0' => {
                        //0b10110, 0B101001, 0xdeadBeef, 0XDeadBEEf
                        self.consume(c);
                        if self.next_char_is('b') || self.next_char_is('B') {
                            self.binary_token()
                        } else if self.next_char_is('x') || self.next_char_is('X') {
                            self.hex_token()
                        } else {
                            Some(self.tok())
                        }
                    },
                    '_' => {
                        self.ident_or_keyword_token(c)
                    },
                    _ if char::is_digit(c) => {
                        self.int_or_float_token(c)
                    },
                    _ if char::is_alphabetic(c) => {
                        self.ident_or_keyword_token(c)
                    },
                    _ if char::is_whitespace(c) => {
                        //may not want to skip...
                        self.change_pos(c);
                        self.next_token()
                    },
                    _ => fail!("Unrecognized character at {}:{}", self.line, self.col)
                }
            },
            None => None
        }
    }
}

////////////////////////////////////////////////////////////////////////////////
/////                                 Tests                                   //
////////////////////////////////////////////////////////////////////////////////

macro_rules! test_types(
    ($code:expr -> [ $($tok_typ:ident),+ ]) => (
        {
            let mut i = 0;
            let tokens = tokenize_str($code);
            $(
                match tokens.get(i).typ {
                    token::$tok_typ => {}, 
                    _ => fail!("Expected token at {} to be {:?}", i + 1, token::$tok_typ)
                }
                i += 1;
            )+
        }
    );
)

#[test]
fn single_char_tokens(){
    test_types!("?,~;:{}()[]" -> [
        Question, Comma, Bit_Negate, Semicolon, Colon,
        Lcurly, Rcurly, Lparen, Rparen, Lbracket, Rbracket
    ]);
}

#[test]
fn num_tokens(){
    test_types!("0 123 1.2 2334.2313 0XDeadBEEf 0x123abc 0x5 0b0100 0B1010 0b1" -> [
        Int_Literal, Int_Literal, Float_Literal, Float_Literal, Hex_Literal, 
        Hex_Literal, Hex_Literal, Binary_Literal, Binary_Literal, Binary_Literal
    ]);
}

#[test]
#[should_fail]
fn hex_token_fail() {
    tokenize_str("0x");
}

#[test]
#[should_fail]
fn binary_token_fail() {
    tokenize_str("0b");
}

#[test]
fn period_tokens() {
    test_types!(". .. ..." -> [Period, Excl_Range, Incl_Range]);
}

#[test]
fn pipe_tokens(){
    test_types!("| || |= ||=" -> [
        Bit_Or, Logical_Or, Bit_Or_Eq, Logical_Or_Eq
    ])
}

#[test]
fn equal_tokens(){
    test_types!("* *= % %= ^ ^= ! != = ==" -> [
        Mult_Op, Times_Eq, Mod_Op, Mod_Eq, Power_Op, Power_Eq, Bang, 
        Bang_Eq, Assign, Equal
    ]);    
}

#[test]
fn double_or_equal_tokens(){
    test_types!("+ ++ += & && &= > >> >=" -> [
        Add_Op, Increment, Plus_Eq, Bit_And, Logical_And, Bit_And_Eq, 
        Greater_Than, Rshovel, Greater_Than_Eq
    ]);
}

#[test]
fn keyword_tokens() {
    test_types!("function spawn if else then for in while do not and or from to by 
        end class import as export super supers this return operator extends 
        gen either wait_for break continue yield given is var true false new 
        upto through" -> [
        Function, Spawn, If, Else, Then, For, In, While, Do, Not, And, Or, From, To, By, 
        End, Class, Import, As, Export, Super, Supers, This, Return, Operator, Extends, 
        Generator, Either, Wait_For, Break, Continue, Yield, Given, Is, Var, True, 
        False, New, Upto, Through
    ]);
}

#[test]
fn ident_tokens(){
    test_types!("abc _cat cat_in_a_hat? cat_in_2_hats!" -> [
        Identifier, Identifier, Identifier, Identifier
    ]);
}