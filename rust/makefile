RUSTC ?= rustc
RUSTDOC ?= rustdoc

all: doc

lib_hy_syntax:
	mkdir -p build
	cd build && $(RUSTC) ../src/lib_hy_syntax/lib.rs -L .

libs: lib_hy_syntax

build: libs
	$(RUSTC) src/hydra/hydra.rs -L ./build

doc: build
	$(RUSTDOC) src/lib_hy_syntax/lib.rs -o doc -L ./build

test: libs
	mkdir -p test
	rustc src/lib_hy_syntax/lib.rs --test -o test/syntax-test
	test/syntax-test

clean:
	rm -rf build/*