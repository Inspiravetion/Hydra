//Pretty much anything that can be evaluated
Expr        => '(' Expr ')'
            |  FuncCall
            |  Ident
            | //literals TODO
            |  empty

// 'a, b, c, this.get("key")'
ExprList    => Expr ExprList!
ExprList!   => ',' ExprList
            |  empty
// 'return x' , 'a++', 'b--', 'c += 7' etc
Stmt        => SimpleStmt | ReturnStmt | SpawnStmt //...more to come

// 'a++; b--; c ^= 2'
Stmts       => Stmt Stmts!
Stmts!      => (';' | '\n') Stmts
            |  empty

ReturnStmt  => 'return' Expr

SpawnStmt   => 'spawn' //figure out exact spawnable function syntax TODO

// '++' '--' '+=' '-=' '*=' '/=' '%=' '^=' '|=' '||=' '&=' '<<=' '>>='
SimpleStmt  => IncDecStmt | AssignStmt

// 'a++'
IncDecStmt  => Expr ( '++' | '--' )

// 'a, b, c = d, e, funccall()' or funcCallA().field = funcCallb()
AssignStmt  => ExprList AssignOp ExprList

// '+=' , '<<=', '||='
AssignOp    => [ AddOp | MulOp | OrOp ] '='

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

StringLit   => '"' [^"]* '"' | "'" [^']* "'"  //"' <- for syntax highliting sanity

//Operators
//'&' '|' '+' '-' '*' '/' '%' '^' '<' '>' '=' '<=' '>=' '==' '||' '&&' '..' '<<' '>>' 
InfixOps    => MulOp
            |  AddOp 
            |  '==' | '!=' | '<' | '<=' | '>' | '>='
            |  '&&'
            |  OrOp

MulOp       => '*' | '/' | '^' | '%' | '<<' | '>>' | '&' | '|'
AddOp       => '+' | '-' 
OrOp        => '||'

Todo: Stmts, FuncCall