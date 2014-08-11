use std::fmt::{Show, Formatter, Result};
use std::char;

#[deriving(Clone, Eq, Show)]
pub enum TokenType {
    Identifier,
    Period,
    Bang,
    Question,
    Comma,
    Colon,
    Semicolon,
    Bit_And,
    Bit_Or,
    Bit_Negate,
    Add_Op,
    Min_Op,
    Mult_Op,    
    Div_Op,
    Mod_Op,
    Power_Op,
    Increment,
    Decrement,
    Less_Than,
    Greater_Than,
    Assign,
    Less_Than_Eq,
    Greater_Than_Eq,
    Equal,
    Bang_Eq,
    Plus_Eq,
    Min_Eq,
    Times_Eq,
    Div_Eq,
    Mod_Eq,
    Power_Eq,
    Bit_Or_Eq,
    Logical_Or_Eq,
    Bit_And_Eq,
    Logical_Or,
    Logical_And,
    Excl_Range,
    Incl_Range,
    Lshovel,
    Rshovel,
    Lcurly,
    Rcurly,
    Lparen,
    Rparen,
    Lbracket,
    Rbracket,
    Chan_Recv,
    Chan_Send,
    Pub_Class_Var,
    Priv_Class_Var,
    Pub_Inst_Var,
    Priv_Inst_Var,
    Function,
    Spawn,
    If,
    Else,
    Then,
    For,
    In,
    While,
    Do,
    Not,
    And,
    Or,
    From,
    To,
    By,
    End,
    Class,
    Import,
    As,
    Export,
    Super,
    Supers,
    This,
    Return,
    Operator,
    Extends,
    Generator,
    Either,
    Wait_For,
    Break,
    Continue,
    Yield,
    Given,
    Is,
    Var,
    True,
    False,
    New,
    Upto,
    Through,
    String_Literal,
    Binary_Literal,
    Hex_Literal,
    Int_Literal,
    Float_Literal,
    Multiline_Comment,
    Singleline_Comment,
    NewLine
}

#[deriving(Clone, Eq)]
pub struct Token {
    pub text       : ~str,
    pub typ        : TokenType,
    pub line       : uint,
    pub col        : uint,
    pub buf_offset : uint
}

impl Token {
    pub fn start(self) -> uint {
        self.buf_offset
    }

    pub fn end(self) -> uint {
        self.buf_offset + self.text.as_bytes().len()
    }
}

impl Show for Token {
    fn fmt(&self, f: &mut Formatter) -> Result {
        let info = format!("{:?} at {}:{}", self.typ, self.line, self.col);
        write!(f, "\\{\n  {}\n  text: '{}'\n\\}", info, self.text)
    }
}

pub fn str_to_type(tok_str : &str) -> TokenType {
    match tok_str {
        "." => Period,
        "!" => Bang,
        "?" => Question,
        "," => Comma,
        ":" => Colon,
        ";" => Semicolon,
        "&" => Bit_And,
        "|" => Bit_Or,
        "~" => Bit_Negate,
        "+" => Add_Op,
        "-" => Min_Op,
        "*" => Mult_Op,
        "/" => Div_Op,
        "%" => Mod_Op,
        "^" => Power_Op,
        "++" => Increment,
        "--" => Decrement,
        "<" => Less_Than,
        ">" => Greater_Than,
        "=" => Assign,
        "<=" => Less_Than_Eq,
        ">=" => Greater_Than_Eq,
        "==" => Equal,
        "!=" => Bang_Eq,
        "+=" => Plus_Eq,
        "-=" => Min_Eq,
        "*=" => Times_Eq,
        "/=" => Div_Eq,
        "%=" => Mod_Eq,
        "^=" => Power_Eq,
        "|=" => Bit_Or_Eq,
        "||=" => Logical_Or_Eq,
        "&=" => Bit_And_Eq,
        "||" => Logical_Or,
        "&&" => Logical_And,
        ".." => Excl_Range,
        "..." => Incl_Range,
        "<<" => Lshovel,
        ">>" => Rshovel,
        "{" => Lcurly,
        "}" => Rcurly,
        "(" => Lparen,
        ")" => Rparen,
        "[" => Lbracket,
        "]" => Rbracket,
        "<-" => Chan_Recv,
        "->" => Chan_Send,
        "#" => Pub_Class_Var,
        "#_" => Priv_Class_Var,
        "@" => Pub_Inst_Var,
        "@_" => Priv_Inst_Var,                 
        "function" => Function,
        "spawn" => Spawn,
        "if" => If,
        "else" => Else,
        "then" => Then,
        "for" => For,
        "in" => In,
        "while" => While,
        "do" => Do,
        "not" => Not,
        "and" => And,
        "or" => Or,
        "from" => From,
        "to" => To,
        "by" => By,
        "end" => End,
        "class" => Class,
        "import" => Import,
        "as" => As,
        "export" => Export,
        "super" => Super,
        "supers" => Supers,
        "this" => This,
        "return" => Return,
        "operator" => Operator,
        "extends" => Extends,
        "gen" => Generator,
        "either" => Either,
        "wait_for" => Wait_For,
        "break" => Break,
        "continue" => Continue,
        "yield" => Yield,
        "given" => Given,
        "is" => Is,
        "var" => Var,
        "true" => True,
        "false" => False,
        "new" => New,
        "upto" => Upto,
        "through" => Through,
        "\n" => NewLine,
        _ if tok_str.starts_with("'") => String_Literal,
        _ if tok_str.starts_with("\"") => String_Literal,
        _ if tok_str.starts_with("0b") => Binary_Literal,
        _ if tok_str.starts_with("0B") => Binary_Literal,
        _ if tok_str.starts_with("0x") => Hex_Literal,
        _ if tok_str.starts_with("0X") => Hex_Literal,
        _ if tok_str.starts_with("/*") => Multiline_Comment,
        _ if tok_str.starts_with("//") => Singleline_Comment,  
        _ if char::is_digit(tok_str.char_at(0)) => {
            if tok_str.contains_char('.') {
                Float_Literal
            } else {
                Int_Literal
            }
        },                                
        _ => Identifier               
    }     
}