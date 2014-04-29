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
			&ForInLoop{},
			&WhileLoop{},
			&IfElse{},
			&GivenIs{},
			&WaitFor{},
			&ClassDef{},
			&SpawnStmt{},
			&NewStmt{},
			&FullImport{},
			&PartialImport{},
			&MultiImport{},
			&SingleExport{},
			&MultiExport{},
			&Expr{},
		}

		Expect(len(arr)).To(Equal(16))
	})

	Describe("Nodes implement Stmt", func() {
		arr := []Stmt{
			&VarDecl{},
			&ReturnStmt{},
			&AssignStmt{},
			&Expr{},
			&ForInLoop{},
			&WhileLoop{},
			&IfElse{},
			&GivenIs{},
			&WaitFor{},
		}

		Expect(len(arr)).To(Equal(9))
	})

	Describe("Nodes implement LanguageConstruct", func() {
		arr := []LanguageConstruct{
			&ClassDef{},
			&SpawnStmt{},
			&NewStmt{},
			&FullImport{},
			&PartialImport{},
			&MultiImport{},
			&SingleExport{},
			&MultiExport{},
		}

		Expect(len(arr)).To(Equal(8))
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

})
