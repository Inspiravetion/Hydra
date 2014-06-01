trait CodeGenerator {
    fn gen_code(&self, &Builder);
}

struct Builder {
    //build up llvm module
    d : Vec<int>
}