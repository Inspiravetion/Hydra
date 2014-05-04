package ast_test

import (
	. "github.com/onsi/ginkgo"
	. "github.com/onsi/gomega"
	. "hydra/ast"
)

var _ = Describe("Ast", func() {

	Describe("Nodes implement ProgramStmt", func() {
		arr := []ProgramStmt{
			&VarDecl{},
			&AssignStmt{},
			&SpawnStmt{},
			&ForInLoop{},
			&WhileLoop{},
			&IfElse{},
			&GivenIs{},
			&WaitFor{},
			&ClassDef{},
			&FullImport{},
			&PartialImport{},
			&MultiImport{},
			&SingleExport{},
			&MultiExport{},
			&FuncDef{},
			&FuncCall{},
			&NewStmt{},
			&IncDecStmt{},
		}

		Expect(len(arr)).To(Equal(18))
	})

	Describe("Nodes implement Stmt", func() {
		arr := []Stmt{
			&VarDecl{},
			&ReturnStmt{},
			&SpawnStmt{},
			&AssignStmt{},
			&ForInLoop{},
			&WhileLoop{},
			&IfElse{},
			&GivenIs{},
			&WaitFor{},
			&YieldExpr{},
			&FuncCall{},
			&NewStmt{},
			&IncDecStmt{},
		}

		Expect(len(arr)).To(Equal(13))
	})

	Describe("Nodes implement LanguageConstruct", func() {
		arr := []LanguageConstruct{
			&ClassDef{},
			&FullImport{},
			&PartialImport{},
			&MultiImport{},
			&SingleExport{},
			&MultiExport{},
			&FuncDef{},
		}

		Expect(len(arr)).To(Equal(7))
	})

	Describe("Nodes implement ClassInternal", func() {
		arr := []ClassInternal{
			&Constructor{},
			&ClassVarDecl{},
			&FuncDef{},
			&Comment{},
		}

		Expect(len(arr)).To(Equal(4))
	})

	Describe("Nodes implement SpawnFunc", func() {
		arr := []SpawnFunc{
			&ClosureDef{},
			&FuncCall{},
		}

		Expect(len(arr)).To(Equal(2))
	})

	Describe("Nodes implement ControlStructure", func() {
		arr := []ControlStructure{
			&ForInLoop{},
			&WhileLoop{},
			&IfElse{},
			&GivenIs{},
			&WaitFor{},
		}

		Expect(len(arr)).To(Equal(5))
	})

	Describe("Nodes implement BuiltinLit", func() {
		arr := []BuiltinLit{
			&IntLit{},
			&FloatLit{},
			&StringLit{},
			&RegexLit{},
			&ArrayLit{},
			&HashLit{},
			&ChanLit{},
			&ClosureLit{},
		}

		Expect(len(arr)).To(Equal(8))
	})

})
