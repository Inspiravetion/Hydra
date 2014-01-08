//Pretty much anything that can be evaluated
Expr        => '(' Expr ')'
            |  FuncCall
            |  Ident

// a = b or funcCallA().field = funcCallb()
Assmt       => Expr '=' Expr

//class myClass extends Array, EventEmitter
ClassDef    => 'class' Ident ('extends' IdentList)? Stmts 'end'

//(a, b, c){ return a + b * c }
AnonFuncDef => '(' OpIdentList ')' '{' Stmts '}'

//private generator function asdaf(a,b,c){ return a + b * c }
TLFuncDef   => FuncDecor 'function' Ident '(' OpIdentList ')' '{' Stmts '}'

//'private generator', 'private', or 'generator'
FuncDecor   => PrivFuncDec GenFuncDec

//private or empty
PrivFuncDec => 'private'
PrivFuncDec |  empty

//generator or empty
GenFuncDec  => 'generator'
GenFuncDec  |  empty

//afa90_afa
Ident       => [a-zA-Z]+[a-zA-Z0-9_?!]*

// empty or ava, sfssf, sgss or afa34
OpIdentList => IdentList
OpIdentList |  empty

// abd or afa, asfd, asfa
IdentList   => Ident IdentList!
IdentList!  => ',' IdentList
            |  empty

//1234 57 9 
IntLit      => [0-9]+

//9087.0 98786.886
FloatLit    => IntLit '.' IntLit

//0xDeAdB33f
HexLit      => '0' ('x' | 'X') HexDigit+
HexDigit    => [0-9a-fA-F]

StringLit   => '"' [^"]* '"' | "'" [^']* "'"  //"'

Todo: Stmts, FuncCall