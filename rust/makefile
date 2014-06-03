RUSTC ?= rustc
RUSTDOC ?= rustdoc

LIB_DIRS = lib_hy_jit lib_hy_syntax

all: build

build: libs
	$(RUSTC) src/hydra/hydra.rs -L ./build

libs: $(LIB_DIRS)

$(LIB_DIRS):
	mkdir -p build
	cd build && $(RUSTC) ../src/$@/lib.rs -L .
	$(RUSTDOC) src/$@/lib.rs -o doc -L ./build

test: libs
	mkdir -p test
	rustc src/lib_hy_syntax/lib.rs --test -o test/syntax-test -L ./build
	test/syntax-test

clean:
	rm -rf build/*

