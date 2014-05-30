use std::io::{BufReader, BufferedReader, Buffer, File, EndOfFile};
use std::comm::{channel, Sender, Receiver};
use std::strbuf::StrBuf;
use std::vec::Vec;
use std::char;

use token::Token;
use token;

use native::task::spawn;

struct Scanner<B> {
    input     : B,
    line      : uint,
    col       : uint,
    peek_buff : StrBuf,
    count     : uint
}

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

impl<B: Buffer> Scanner<B> {

    pub fn new(input : B) -> Scanner<B>{
        Scanner { 
            input     : input, 
            line      : 1,
            col       : 0,
            peek_buff : StrBuf::new(),
            count     : 0
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

    fn change_pos(&mut self, c : char) {
        if c == '\n' {
            self.line += 1;
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

        if result.is_some() {
            self.change_pos(*result.as_ref().unwrap());
        }

        result
    }

    fn next_char_is(&mut self, target : char) -> bool {
        if self.peek_buff.is_empty() {
            match self.input.read_char() {
                Ok(next_char) => {
                    if next_char == target {
                        self.change_pos(target);
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
                self.change_pos(target);
                true
            } else {
                false
            }
        }
    }

    fn tok(&mut self, text : &str) -> Token {
        Token {
            text : text.to_owned(),
            typ  : token::str_to_type(text),
            line : self.line,
            col  : self.col
        }
    }

    fn int_or_float(&mut self) -> Option<Token> {
        None
    }

    fn ident_or_keyword(&mut self) -> Option<Token> {
        None
    }

    fn next_token(&mut self) -> Option<Token> {
        match self.next_char() {
            Some(c) => {
                match c {
                    _ if char::is_digit(c) => {
                        self.int_or_float()
                    },
                    _ if char::is_alphabetic(c) => {
                        self.ident_or_keyword()
                    },
                    _ => fail!("Unrecognized character at {}:{}", self.line, self.col)
                }
            },
            None => None
        }
    }
}
