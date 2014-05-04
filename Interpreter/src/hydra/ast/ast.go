package ast

import (
	"hydra/scanner/token"
)

type Span struct {
	StartLine int
	StartCol  int
	EndLine   int
	EndCol    int
	Text      string
}

///////////////////////////////////////////////////////////////////////////////
//                              Node Interfaces                              //
///////////////////////////////////////////////////////////////////////////////

type Node interface {
	// Span() *Span //what should this return?
}

/*
PrgrmStmt   => VarDecl
            |  AssignStmt
            |  SpawnStmt
            |  ControlStructure
            |  LanguageConstruct
            |  FuncCall
            |  NewStmt
            |  IncDecStmt
*/

type ProgramStmt interface {
	Node
	ProgramStmtNode()
}

func (this *VarDecl) ProgramStmtNode()       {}
func (this *AssignStmt) ProgramStmtNode()    {}
func (this *ForInLoop) ProgramStmtNode()     {}
func (this *WhileLoop) ProgramStmtNode()     {}
func (this *IfElse) ProgramStmtNode()        {}
func (this *GivenIs) ProgramStmtNode()       {}
func (this *WaitFor) ProgramStmtNode()       {}
func (this *ClassDef) ProgramStmtNode()      {}
func (this *SpawnStmt) ProgramStmtNode()     {}
func (this *FuncCall) ProgramStmtNode()      {}
func (this *NewStmt) ProgramStmtNode()       {}
func (this *FullImport) ProgramStmtNode()    {}
func (this *PartialImport) ProgramStmtNode() {}
func (this *MultiImport) ProgramStmtNode()   {}
func (this *SingleExport) ProgramStmtNode()  {}
func (this *MultiExport) ProgramStmtNode()   {}
func (this *Comment) ProgramStmtNode()       {}
func (this *FuncDef) ProgramStmtNode()       {}
func (this *IncDecStmt) ProgramStmtNode()    {}

/*
Expr    => NewStmt
        |  InstanceVar
        |  ClassVar
        |  YieldExpr
        |  BuiltinLit
        |  SquareBracInd
        |  FuncCall
        |  IncDecStmt
        |  Ident
        |  '(' Expr ')'
*/

type Expr interface {
	Node
	ExprNode()
}

func (this *NewStmt) ExprNode()       {}
func (this *InstanceVar) ExprNode()   {}
func (this *ClassVar) ExprNode()      {}
func (this *YieldExpr) ExprNode()     {}
func (this *IntLit) ExprNode()        {}
func (this *FloatLit) ExprNode()      {}
func (this *StringLit) ExprNode()     {}
func (this *RegexLit) ExprNode()      {}
func (this *ArrayLit) ExprNode()      {}
func (this *HashLit) ExprNode()       {}
func (this *ChanLit) ExprNode()       {}
func (this *ClosureLit) ExprNode()    {}
func (this *SquareBracInd) ExprNode() {}
func (this *FuncCall) ExprNode()      {}
func (this *IncDecStmt) ExprNode()    {}
func (this *Ident) ExprNode()         {}
func (this *ParenExpr) ExprNode()     {}
func (this *BinaryExpr) ExprNode()    {}

/*
Stmt    => VarDecl
        |  ReturnStmt
        |  SpawnStmt
        |  AssignStmt
        |  ControlStructure
        |  Yield Expr
        |  FuncCall
        |  NewStmt
        |  IncDecStmt
*/

type Stmt interface {
	Node
	StmtNode()
}

func (this *VarDecl) StmtNode()    {}
func (this *ReturnStmt) StmtNode() {}
func (this *AssignStmt) StmtNode() {}
func (this *SpawnStmt) StmtNode()  {}
func (this *ForInLoop) StmtNode()  {}
func (this *WhileLoop) StmtNode()  {}
func (this *IfElse) StmtNode()     {}
func (this *GivenIs) StmtNode()    {}
func (this *WaitFor) StmtNode()    {}
func (this *FuncCall) StmtNode()   {}
func (this *IncDecStmt) StmtNode() {}
func (this *YieldExpr) StmtNode()  {}
func (this *NewStmt) StmtNode()    {}
func (this *Comment) StmtNode()    {}

/*
LanguageConstruct => ClassDef
				  |  ImportStmt
				  |  ExportStmt
				  |  FuncDef
*/

type LanguageConstruct interface {
	ProgramStmt
	LangConstrNode()
}

func (this *ClassDef) LangConstrNode()      {}
func (this *FullImport) LangConstrNode()    {}
func (this *PartialImport) LangConstrNode() {}
func (this *MultiImport) LangConstrNode()   {}
func (this *SingleExport) LangConstrNode()  {}
func (this *MultiExport) LangConstrNode()   {}
func (this *FuncDef) LangConstrNode()       {}

/*
ClassInternals => Constructor
			   |  ClassVarDecl
			   |  FuncDef
			   |  Comment
*/

type ClassInternal interface {
	Node
	ClassInternalNode()
}

func (this *Constructor) ClassInternalNode()  {}
func (this *ClassVarDecl) ClassInternalNode() {}
func (this *FuncDef) ClassInternalNode()      {}
func (this *Comment) ClassInternalNode()      {}

/*
Spawnable functions:
	spawn someVar.someFuncCall('hydra')
	spawn (){
		print('hydra')
	}
*/

type SpawnFunc interface {
	Node
	SpawnFuncNode()
}

func (this *ClosureDef) SpawnFuncNode() {}
func (this *FuncCall) SpawnFuncNode()   {}

/*
ControlStructure => ForInLoop
                 |  WhileLoop
                 |  IfElse
                 |  GivenIs
                 |  WaitFor
*/

type ControlStructure interface {
	Stmt
	ProgramStmt
	ControlStructureNode()
}

func (this *ForInLoop) ControlStructureNode() {}
func (this *WhileLoop) ControlStructureNode() {}
func (this *IfElse) ControlStructureNode()    {}
func (this *GivenIs) ControlStructureNode()   {}
func (this *WaitFor) ControlStructureNode()   {}

/*
BuiltinLit => IntLit
           |  FloatLit
           |  StringLit
           |  RegexLit
           |  ArrayLit
           |  HashLit
           |  ChanLit
           |  ClosureLit
*/

type BuiltinLit interface {
	Expr
	BuiltinLitNode()
}

func (this *IntLit) BuiltinLitNode()     {}
func (this *FloatLit) BuiltinLitNode()   {}
func (this *StringLit) BuiltinLitNode()  {}
func (this *RegexLit) BuiltinLitNode()   {}
func (this *ArrayLit) BuiltinLitNode()   {}
func (this *HashLit) BuiltinLitNode()    {}
func (this *ChanLit) BuiltinLitNode()    {}
func (this *ClosureLit) BuiltinLitNode() {}

///////////////////////////////////////////////////////////////////////////////
//                         Concrete Node Types                               //
///////////////////////////////////////////////////////////////////////////////

// func New_Program() *Program {
// 	arr := New_ProgramStmts(10)
// 	return &Program{Stmts: arr}
// }

// type Program struct {
// 	Stmts *ProgramStmts
// }

// func (this *Program) Add(stmt *ProgramStmt) {
// 	this.Stmts = append(this.Stmts, stmt)
// }

type VarDecl struct {
	Names    *Idents
	Values   *Exprs
	startTok *token.Token
}

type AssignStmt struct {
	Names  *Idents
	Values *Exprs
}

type ReturnStmt struct {
	ReturnValues *Exprs
	startTok     *token.Token
}

type ClassDef struct {
	Name         *Ident
	SuperClasses *Idents
	Internals    *ClassInternals
	startTok     *token.Token
	endTok       *token.Token
}

type Constructor struct {
	Name   *Ident
	Params *Idents
	Stmts  *Stmts
}

type ClassVarDecl struct {
	Private  bool
	Name     *Ident
	Value    *Expr
	startTok *token.Token
}

type FuncDef struct {
	Gen      bool
	Name     *Ident
	Params   *Idents
	Stmts    *Stmts
	startTok *token.Token
}

type Comment struct {
	Token token.Token
}

type SpawnStmt struct {
	Callable *SpawnFunc
	startTok *token.Token
}

type ClosureDef struct {
	Params      *Idents
	Stmts       *Stmts
	BoundParams *Exprs
	startTok    *token.Token
}

type FuncCall struct {
	ScopedName *Exprs
	Params     *Exprs
}

type FullImport struct {
	Location *Tokens
	Rename   *Ident
	startTok *token.Token
}

type PartialImport struct {
	SubImport *Ident
	Location  *Tokens
	Rename    *Ident
	startTok  *token.Token
}

type MultiImport struct {
	SubImports *Idents
	Location   *Tokens
	startTok   *token.Token
}

type SingleExport struct {
	ExportItem *Ident
	Rename     *Ident
	startTok   *token.Token
}

type MultiExport struct {
	ExportItems *Idents
	startTok    *token.Token
}

type ForInLoop struct {
	Variables *Idents
	Container *Expr
	Stmts     *Stmts
	startTok  *token.Token
	endTok    *token.Token
}

func New_For_In_Loop(start *token.Token) *ForInLoop {
	loop := new(ForInLoop)

	loop.Variables = New_Idents(3)
	loop.Stmts = New_Stmts(5)
	loop.startTok = start

	return loop
}

type WhileLoop struct {
	Condition *Expr
	Stmts     *Stmts
	startTok  *token.Token
	endTok    *token.Token
}

type IfElse struct {
	Branches *IfElseBranchs
	startTok *token.Token
	endTok   *token.Token
}

type IfElseBranch struct {
	If        bool
	Else      bool
	Condition *Stmts
	Stmts     *Stmts
}

type GivenIs struct {
	Branches  *IsElseBranchs
	GivenExpr *Expr
	startTok  *token.Token
	endTok    *token.Token
}

type IsElseBranch struct {
	Is        bool
	Condition *Expr
	Stmts     *Stmts
}

type WaitFor struct {
	Branches *EitherOrBranchs
	startTok *token.Token
	endTok   *token.Token
}

type EitherOrBranch struct {
	Default  bool
	ChanComm *ChanSendRecv
	Stmts    *Stmts
}

type ChanSendRecv struct {
	Send     bool
	Value    *Expr
	Variable *Ident
	Chan     *Expr
	startTok *token.Token
	endTok   *token.Token
}

type NewStmt struct {
	ClassExpr *FuncCall
	startTok  *token.Token
}

type InstanceVar struct {
	Private  bool
	Name     *Ident
	startTok *token.Token
}

type ClassVar struct {
	private  bool
	Name     *Ident
	startTok *token.Token
}

type YieldExpr struct {
	OptExpr  *Expr
	startTok *token.Token
}

type IntLit struct {
	Base   int8
	Tokens *Tokens
}

type FloatLit struct {
	Integers *Tokens
	Dot      *token.Token
	Decimals *Tokens
}

type StringLit struct {
	SingleQuote bool
	Value       *token.Token
}

type RegexLit struct {
	Pattern  *Tokens
	startTok *token.Token
	endTok   *token.Token
}

type ArrayLit struct {
	Value    *Exprs
	startTok *token.Token
	endTok   *token.Token
}

type HashLit struct {
	Keys     *Exprs
	Values   *Exprs
	startTok *token.Token
	endTok   *token.Token
}

type ChanLit struct {
	Buffer   *Expr
	startTok *token.Token
	endTok   *token.Token
}

type ClosureLit struct {
	Def      *ClosureDef
	startTok *token.Token //tells if it is a gen or not
}

type SquareBracInd struct {
	Container *Ident
	Index     *Expr
	endTok    *token.Token
}

type IncDecStmt struct {
	Identifier *Ident
	Op         *token.Token
}

type Ident token.Token

type ParenExpr struct {
	startTok  *token.Token
	InnerExpr *Expr
	endTok    *token.Token
}

type BinaryExpr struct {
	LeftExpr  *Expr
	Op        *token.Token
	RightExpr *Expr
}

///////////////////////////////////////////////////////////////////////////////
//                              Helper Types                                 //
///////////////////////////////////////////////////////////////////////////////

type Idents []*Ident

func New_Idents(sz int) *Idents {
	arr := make(Idents, 0, sz)
	return &arr
}

func (this *Idents) Push(item *Ident) {
	(*this) = append(*this, item)
}

type Exprs []*Expr

func New_Exprs(sz int) *Exprs {
	arr := make(Exprs, 0, sz)
	return &arr
}

func (this *Exprs) Push(item *Expr) {
	(*this) = append(*this, item)
}

type Stmts []*Stmt

func New_Stmts(sz int) *Stmts {
	arr := make(Stmts, 0, sz)
	return &arr
}

func (this *Stmts) Push(item *Stmt) {
	(*this) = append(*this, item)
}

type ProgramStmts []*ProgramStmt

func New_ProgramStmts(sz int) *ProgramStmts {
	arr := make(ProgramStmts, 0, sz)
	return &arr
}

func (this *ProgramStmts) Push(item *ProgramStmt) {
	(*this) = append(*this, item)
}

type Tokens []*token.Token

func New_Tokens(sz int) *Tokens {
	arr := make(Tokens, 0, sz)
	return &arr
}

func (this *Tokens) Push(item *token.Token) {
	(*this) = append(*this, item)
}

type ClassInternals []*ClassInternal

func New_ClassInternals(sz int) *ClassInternals {
	arr := make(ClassInternals, 0, sz)
	return &arr
}

func (this *ClassInternals) Push(item *ClassInternal) {
	(*this) = append(*this, item)
}

type IfElseBranchs []*IfElseBranch

func New_IfElseBranchs(sz int) *IfElseBranchs {
	arr := make(IfElseBranchs, 0, sz)
	return &arr
}

func (this *IfElseBranchs) Push(item *IfElseBranch) {
	(*this) = append(*this, item)
}

type IsElseBranchs []*IsElseBranch

func New_IsElseBranchs(sz int) *IsElseBranchs {
	arr := make(IsElseBranchs, 0, sz)
	return &arr
}

func (this *IsElseBranchs) Push(item *IsElseBranch) {
	(*this) = append(*this, item)
}

type EitherOrBranchs []*EitherOrBranch

func New_EitherOrBranchs(sz int) *EitherOrBranchs {
	arr := make(EitherOrBranchs, 0, sz)
	return &arr
}

func (this *EitherOrBranchs) Push(item *EitherOrBranch) {
	(*this) = append(*this, item)
}
