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
func (this *NewStmt) ProgramStmtNode()       {}
func (this *FullImport) ProgramStmtNode()    {}
func (this *PartialImport) ProgramStmtNode() {}
func (this *MultiImport) ProgramStmtNode()   {}
func (this *SingleExport) ProgramStmtNode()  {}
func (this *MultiExport) ProgramStmtNode()   {}
func (this *Expr) ProgramStmtNode()          {}

type Stmt interface {
	Node
	StmtNode()
}

func (this *VarDecl) StmtNode()    {}
func (this *ReturnStmt) StmtNode() {}
func (this *AssignStmt) StmtNode() {}
func (this *Expr) StmtNode()       {}
func (this *ForInLoop) StmtNode()  {}
func (this *WhileLoop) StmtNode()  {}
func (this *IfElse) StmtNode()     {}
func (this *GivenIs) StmtNode()    {}
func (this *WaitFor) StmtNode()    {}

type LanguageConstruct interface {
	ProgramStmt
	LangConstrNode()
}

func (this *ClassDef) LangConstrNode()      {}
func (this *SpawnStmt) LangConstrNode()     {}
func (this *NewStmt) LangConstrNode()       {}
func (this *FullImport) LangConstrNode()    {}
func (this *PartialImport) LangConstrNode() {}
func (this *MultiImport) LangConstrNode()   {}
func (this *SingleExport) LangConstrNode()  {}
func (this *MultiExport) LangConstrNode()   {}

type ClassInternal interface {
	Node
	ClassInternalNode()
}

func (this *Constructor) ClassInternalNode()  {}
func (this *ClassVarDecl) ClassInternalNode() {}
func (this *FuncDef) ClassInternalNode()      {}
func (this *Comment) ClassInternalNode()      {}

type SpawnFunc interface {
	Node
	SpawnFuncNode()
}

func (this *ClosureDef) SpawnFuncNode() {}
func (this *FuncCall) SpawnFuncNode()   {}

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

///////////////////////////////////////////////////////////////////////////////
//                              Concrete Types                               //
///////////////////////////////////////////////////////////////////////////////

type Program struct {
	stmts []*ProgramStmt
}

type VarDecl struct {
	Names    []*Ident
	Values   []*Expr
	startTok *token.Token
}

type AssignStmt struct {
	Names  []*Ident
	Values []*Expr
}

type Expr struct {
}

type ReturnStmt struct {
	ReturnValues []*Expr
	startTok     *token.Token
}

type ClassDef struct {
	Name         *Ident
	SuperClasses []*Ident
	Internals    []*ClassInternal
	startTok     *token.Token
	endTok       *token.Token
}

type Constructor struct {
	Name   *Ident
	Params []*Ident
	Stmts  []*Stmt
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
	Params   []*Ident
	Stmts    []*Stmt
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
	Params      []*Ident
	Stmts       []*Stmt
	BoundParams []*Expr
	startTok    *token.Token
}

type FuncCall struct {
	ScopedName []*Expr
	Params     []*Expr
}

type NewStmt struct {
	ClassExpr *FuncCall
	startTok  *token.Token
}

type FullImport struct {
	Location []*token.Token
	Rename   *Ident
	startTok *token.Token
}

type PartialImport struct {
	SubImport *Ident
	Location  []*token.Token
	Rename    *Ident
	startTok  *token.Token
}

type MultiImport struct {
	SubImports []*Ident
	Location   []*token.Token
	startTok   *token.Token
}

type SingleExport struct {
	ExportItem *Ident
	Rename     *Ident
	startTok   *token.Token
}

type MultiExport struct {
	ExportItems []*Ident
	startTok    *token.Token
}

type ForInLoop struct {
	Variables []*Ident
	Container *Expr
	Stmts     []*Stmt
	startTok  *token.Token
	endTok    *token.Token
}

type WhileLoop struct {
	Condition *Expr
	Stmts     []*Stmt
	startTok  *token.Token
	endTok    *token.Token
}

type IfElse struct {
	Branches []*IfElseBranch
	startTok *token.Token
	endTok   *token.Token
}

type IfElseBranch struct {
	If        bool
	Else      bool
	Condition []*Stmt
	Stmts     []*Stmt
}

type GivenIs struct {
	Branches  []*IsElseBranch
	GivenExpr *Expr
	startTok  *token.Token
	endTok    *token.Token
}

type IsElseBranch struct {
	Is        bool
	Condition *Expr
	Stmts     []*Stmt
}

type WaitFor struct {
	Branches []*EitherOrBranch
	startTok *token.Token
	endTok   *token.Token
}

type EitherOrBranch struct {
	Default  bool
	ChanComm *ChanSendRecv
	Stmts    []*Stmt
}

type ChanSendRecv struct {
}

type Ident token.Token
