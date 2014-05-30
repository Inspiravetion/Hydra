all: compile-llvm
	./factorial

compile-llvm: run-codegen
	llvm-as-mp-3.4 factorial.ll
	llc-mp-3.4 factorial.bc
	clang -o factorial factorial.s

run-codegen: compile-rust
	./llvm_factorial

compile-rust:
	rustc llvm_factorial.rs 