use jit::codegen::CodeGenerator;

enum Node {
    //1.loop local variables
    //2.generator...make this real later
    //3.code block...just print for now
    For_In_Loop(Vec<~str>, Range)
}

enum Range {
    Inclusive(int, int),
    Exlusive(int, int)
}