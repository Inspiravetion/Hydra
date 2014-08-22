LIBS = lib_hy_syntax lib_hy_ll

$(LIBS):
	cargo test --manifest-path ./src/lib/$@/Cargo.toml

test: $(LIBS)

hy_obj:
	rustc --emit ir,bc ./src/lib/lib_hy_obj_types/lib/lib_hy_obj/src/HyObj.rs
	rustc ./src/lib/lib_hy_obj_types/lib/lib_hy_obj/src/HyObj.rs

hy_obj_types: hy_obj
	rustc --emit ir,bc ./src/lib/lib_hy_obj_types/src/HyObjTypes.rs -L .

hydra:
	cargo build
	./target/hydra

run: hy_obj_types hydra
	llvm-as hydra.ll
	llc hydra.bc
	clang -o hydra-llvm hydra.s libhy_obj.a -lSystem -lpthread -lc -lm
	./hydra-llvm	