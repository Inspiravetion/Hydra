LIBS = lib_hy_syntax lib_hy_ll

$(LIBS):
	cargo test --manifest-path ./src/lib/$@/Cargo.toml

test: $(LIBS)

hy_obj:
	rustc ./src/lib/lib_hy_obj/src/HyObj.rs

hydra:
	cargo build
	./target/hydra

run: hy_obj hydra
	./test