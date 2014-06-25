RUSTC ?= rustc
RUSTDOC ?= rustdoc

LIB_DIRS = lib_hy_codegen lib_hy_syntax

all: build

build: libs
	$(RUSTC) src/hydra/hydra.rs -L ./build

libs: $(LIB_DIRS)

$(LIB_DIRS):
	mkdir -p build
	cd build && $(RUSTC) ../src/lib/$@/lib.rs -L .
	$(RUSTDOC) src/lib/$@/lib.rs -o doc -L ./build

test: libs
	mkdir -p test
	rustc src/lib/lib_hy_syntax/lib.rs --test -o test/syntax-test -L ./build
	test/syntax-test

clean:
	rm -rf build/*

llvm: build
	./hydra
	llvm-as-mp-3.4 hydra.ll
	llc-mp-3.4 hydra.bc
	clang -o hydra-llvm hydra.s

run:
	./hydra
	llvm-as-mp-3.4 hydra.ll
	llc-mp-3.4 hydra.bc
	clang -o hydra-llvm hydra.s
	./hydra-llvm	