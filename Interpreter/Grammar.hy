//Pretty much anything that can be evaluated
Expr        => '(' Expr ')' TailAriExpr
            |  FuncCall TailAriExpr
            |  Ident TailAriExpr
            |  HashLit 
            |  ArrayLit 
            |  StringExpr
            |  NumLit TailAriExpr
            |  ChanLit 
            |  ChanRecv TailAriExpr
            |  empty 

// 'return x' , 'a++', 'b--', 'c += 7' etc
Stmt        => SimpleStmt 
            |  ClassDef
            |  ImportStmt
            |  ReturnStmt 
            |  SpawnStmt 
            |  ChanSndStmt//...more to come

//EXPRESSIONS
//==============================================================================

// <-myChan <- C
ChanRecv    => '<-' Ident

//(a, b, c){ return a + b * c }
AnonFuncDef => '(' OpIdentList ')' '{' Stmts '}'

//afa90_afa
Ident       => [a-zA-Z]+[a-zA-Z0-9_?!]*

// 1 + 4 << funCall() - this.field ^ 18
TailAriExpr => ArithOp Expr
            |  empty

StringExpr  => StringLit StringTail
StringTail  => '+' StringLit
            | empty

***MAKE SURE ALL VERSIONS OF THIS MAKE SENSE***
//STATEMENTS
//==============================================================================

//
ImportStmt  => 'import' ImportArgs AsStmt
ImportArgs  => PkgPath | FilePath 
PkgPath     => ('std' | 'pkg') DottedList!
FilePath    => PathStrt FSlashList HyExt
PathStrt    => './' | BackPaths | '~/'
BackPaths   => '../' BackPaths!
BackPaths!  => '../' BackPaths!
            |  empty 
HyExt       => '.hy'
            |  empty
AsStmt      => 'as' Ident
            |  empty

//class myClass extends Array, EventEmitter
ClassDef    => PrivDecor 'class' Ident ExtendStmt Stmts 'end'
ExtendStmt  => 'extends' IdentList
            | empty

//private generator function asdaf(a,b,c){ return a + b * c } **** WHERE WILL THIS BE ALOUD?!?!****
TLFuncDef   => FuncDecor 'function' Ident '(' OpIdentList ')' '{' Stmts '}'

//'private generator', 'private', or 'generator'
FuncDecor   => PrivDecor GenFuncDec

//private or empty
PrivDecor   => 'priv'
            |  empty

//generator or empty
GenFuncDec  => 'gen'
GenFuncDec  |  empty

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

// 1 -> myChan
ChanSndStmt => Expr '->' Ident 

//LISTS
//==============================================================================

// empty or ava, sfssf, sgss or afa34
OpIdentList => IdentList
OpIdentList |  empty

// abd or afa, asfd, asfa
IdentList   => Ident IdentList!
IdentList!  => ',' IdentList
            |  empty

// 'a, b, c, this.get("key")'
ExprList    => Expr ExprList!
ExprList!   => ',' ExprList
            |  empty

// 'a++; b--; c ^= 2'
Stmts       => Stmt Stmts!
Stmts!      => (';' | '\n') Stmts
            |  empty

DottedList! => '.' Ident DottedList!
            |  empty

FSlashList  => Ident FSlashList!
FSlashList! => '/' FSlashList
            |  empty

//LITERALS
//==============================================================================

//<--> or <-23->
ChanLit     => '<-' Expr '->'

//{}, { a : 'a', 'b' : 2, 45 : {}}
HashLit     => '{' KeyValPrs '}'
KeyValPrs   => KeyValPair KeyValPrs!
            |  empty
KeyValPrs!  => ',' KeyValPair KeyValPrs!
            |  empty
KeyValPair  => Expr ':' Expr
            |  empty

//[], [1,2,{}], [1,2,{}, funcCall(), (x){ return x * 2 + 1 }]
ArrayLit    => '[' ExprList ']'

//123 123.34 0xDeadBe45 
NumLit      => IntLit | FloatLit | HexLit

//1234 57 9 
IntLit      => [0-9]+

//9087.0 98786.886
FloatLit    => IntLit '.' IntLit

//0xDeAdB33f
HexLit      => '0' ('x' | 'X') HexDigit+
HexDigit    => [0-9a-fA-F]

// 'tdfg' or "redtfygu"
StringLit   => '"' [^"]* '"' | "'" [^']* "'"  //"' <- for syntax highliting sanity

//OPERATORS
//==============================================================================

//'&' '|' '+' '-' '*' '/' '%' '^' '<' '>' '=' '<=' '>=' '==' '||' '&&' '..' '<<' '>>' 
InfixOps    => MulOp
            |  AddOp 
            |  '==' | '!=' | '<' | '<=' | '>' | '>='
            |  '&&'
            |  OrOp

ArithOp     => MulOp | AddOp | ShiftOp

MulOp       => '*' | '/' | '^' | '%' | '&' | '|'
            |  ShiftOp
ShiftOp     => '<<' | '>>'
AddOp       => '+' | '-' 
OrOp        => '||'

Todo: Stmts, FuncCall, 
Scanner TODO: ~ <- -> as priv gen