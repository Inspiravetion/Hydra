LIBS = lib_hy_syntax lib_hy_ll

$(LIBS):
	cargo test --manifest-path ./src/lib/$@/Cargo.toml

test: $(LIBS)

run:
	./target/hydra
	llvm-as-mp-3.4 hydra.ll
	llc-mp-3.4 hydra.bc
	clang -o hydra-llvm hydra.s
	./hydra-llvm	