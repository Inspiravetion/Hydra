var searchIndex = {};
searchIndex['hydra_syntax'] = {"items":[[0,"","hydra_syntax",""],[0,"token","",""],[1,"Token","hydra_syntax::token",""],[11,"text","","",0],[11,"typ","","",0],[11,"line","","",0],[11,"col","","",0],[11,"buf_offset","","",0],[2,"TokenType","",""],[12,"Identifier","","",1],[12,"Period","","",1],[12,"Bang","","",1],[12,"Question","","",1],[12,"Comma","","",1],[12,"Colon","","",1],[12,"Semicolon","","",1],[12,"Bit_And","","",1],[12,"Bit_Or","","",1],[12,"Bit_Negate","","",1],[12,"Add_Op","","",1],[12,"Min_Op","","",1],[12,"Mult_Op","","",1],[12,"Div_Op","","",1],[12,"Mod_Op","","",1],[12,"Power_Op","","",1],[12,"Increment","","",1],[12,"Decrement","","",1],[12,"Less_Than","","",1],[12,"Greater_Than","","",1],[12,"Assign","","",1],[12,"Less_Than_Eq","","",1],[12,"Greater_Than_Eq","","",1],[12,"Equal","","",1],[12,"Bang_Eq","","",1],[12,"Plus_Eq","","",1],[12,"Min_Eq","","",1],[12,"Times_Eq","","",1],[12,"Div_Eq","","",1],[12,"Mod_Eq","","",1],[12,"Power_Eq","","",1],[12,"Bit_Or_Eq","","",1],[12,"Logical_Or_Eq","","",1],[12,"Bit_And_Eq","","",1],[12,"Logical_Or","","",1],[12,"Logical_And","","",1],[12,"Excl_Range","","",1],[12,"Incl_Range","","",1],[12,"Lshovel","","",1],[12,"Rshovel","","",1],[12,"Lcurly","","",1],[12,"Rcurly","","",1],[12,"Lparen","","",1],[12,"Rparen","","",1],[12,"Lbracket","","",1],[12,"Rbracket","","",1],[12,"Chan_Recv","","",1],[12,"Chan_Send","","",1],[12,"Pub_Class_Var","","",1],[12,"Priv_Class_Var","","",1],[12,"Pub_Inst_Var","","",1],[12,"Priv_Inst_Var","","",1],[12,"Function","","",1],[12,"Spawn","","",1],[12,"If","","",1],[12,"Else","","",1],[12,"Then","","",1],[12,"For","","",1],[12,"In","","",1],[12,"While","","",1],[12,"Do","","",1],[12,"Not","","",1],[12,"And","","",1],[12,"Or","","",1],[12,"From","","",1],[12,"To","","",1],[12,"By","","",1],[12,"End","","",1],[12,"Class","","",1],[12,"Import","","",1],[12,"As","","",1],[12,"Export","","",1],[12,"Super","","",1],[12,"Supers","","",1],[12,"This","","",1],[12,"Return","","",1],[12,"Operator","","",1],[12,"Extends","","",1],[12,"Generator","","",1],[12,"Either","","",1],[12,"Wait_For","","",1],[12,"Break","","",1],[12,"Continue","","",1],[12,"Yield","","",1],[12,"Given","","",1],[12,"Is","","",1],[12,"Var","","",1],[12,"True","","",1],[12,"False","","",1],[12,"New","","",1],[12,"Upto","","",1],[12,"Through","","",1],[12,"String_Literal","","",1],[12,"Binary_Literal","","",1],[12,"Hex_Literal","","",1],[12,"Int_Literal","","",1],[12,"Float_Literal","","",1],[12,"Multiline_Comment","","",1],[12,"Singleline_Comment","","",1],[3,"str_to_type","",""],[10,"eq","","",1],[10,"ne","","",1],[10,"clone","","",1],[10,"clone","","",0],[10,"start","","",0],[10,"end","","",0],[10,"fmt","","",0],[0,"scanner","hydra_syntax",""],[3,"tokenize_str","hydra_syntax::scanner",""],[3,"tokenize_file","",""],[3,"stream_from_str","",""],[3,"stream_from_file","",""],[0,"ast","hydra_syntax",""],[1,"FuncCall","hydra_syntax::ast","A call to a function including its qualifying path and passed parameters"],[11,"prop_path","","",2],[11,"params","","",2],[1,"InclusiveRange","","An inclusive range 0...10 or 0 through 10"],[11,"start","","",3],[11,"end","","",3],[1,"ExclusiveRange","","An exclusive range 0..10 or 0 upto 10"],[11,"start","","",4],[11,"end","","",4],[1,"Int","","An integer expression"],[11,"value","","",5],[1,"IdentExpr","","An identifier"],[11,"value","","",6],[1,"BinaryExpr","","A binary expression"],[11,"lhs","","",7],[11,"op","","",7],[11,"rhs","","",7],[1,"ExprStmt","","A stmt that is also an expression, function calls and var++/-- etc."],[11,"expr","","",8],[1,"VarDecl","","variables to create in the current scope"],[11,"vars","","",9],[1,"VarAssign","","variables to create in the current scope"],[11,"vars","","",10],[11,"vals","","",10],[1,"AssignStmt","","variables to create in the current scope"],[11,"lhs","","",11],[11,"rhs","","",11],[1,"ForInLoop","","For in loop bound variables, generator expression, and block of stmts"],[11,"vars","","",12],[11,"gen","","",12],[11,"stmts","","",12],[1,"WhileLoop","","While loop condition expression and block of stmts"],[11,"cond","","",13],[11,"stmts","","",13],[4,"Ident","","Identifier expressions, variable names etc."],[6,"Node","",""],[6,"Expr","",""],[10,"to_generator","","Return a Generator struct with the params for its llvm init function already\ncreated",14],[10,"to_value","","",14],[6,"Stmt","",""],[10,"gen_code","","",2],[10,"new","","",2],[10,"gen_code","","",3],[10,"to_generator","","",3],[10,"new","","",3],[10,"gen_code","","",4],[10,"to_generator","","",4],[10,"new","","",4],[10,"gen_code","","",5],[10,"to_value","","",5],[10,"new","","",5],[10,"gen_code","","",6],[10,"to_value","","",6],[10,"new","","",6],[10,"gen_code","","",7],[10,"to_value","","",7],[10,"new","","",7],[10,"gen_code","","",8],[10,"new","","",8],[10,"gen_code","","",9],[10,"new","","",9],[10,"gen_code","","",10],[10,"new","","",10],[10,"gen_code","","",11],[10,"new","","",11],[10,"gen_code","","",12],[10,"new","","",12],[10,"gen_code","","",13],[10,"new","","",13],[0,"parser","hydra_syntax",""],[1,"AsyncParser","hydra_syntax::parser",""],[11,"tokens","","",15],[11,"peek_tok","","",15],[11,"tok","","",15],[1,"SyncParser","",""],[11,"tokens","","",16],[11,"tok_idx","","",16],[3,"parse_file_async","","Scan and Parse a file in parallel"],[3,"parse_file_sync","","Scan and then Parse a file"],[3,"parse_str_async","","Scan and Parse a string in parallel"],[3,"parse_str_sync","","Scan and then Parse a string"],[6,"HydraParser","",""],[10,"parse","","",17],[6,"HydraBaseParser","",""],[9,"tok","","Returns the current token",18],[9,"peek","","Returns the next token or None if at EOF",18],[9,"next_opt","","Consumes the next token and returns true if\npossible, otherwise returns false if at EOF",18],[10,"next","","Advance to next token or fail! if at EOF",18],[10,"next_is","","If the next token is the passed token type, then consume it and return\ntrue, otherwise false",18],[10,"expect","","Consume the next token if it is of the expected token type, otherwise fail!",18],[10,"program_stmts","","",18],[10,"var_decl","","",18],[10,"while_loop","","",18],[10,"for_in_loop","","",18],[10,"property_path","","",18],[10,"property_paths","","",18],[10,"func_call","","",18],[10,"func_call_stmt","","",18],[10,"assignment_stmt","","",18],[10,"func_call_or_assignment","","",18],[10,"stmt_opt","","",18],[10,"stmt","","",18],[10,"incl_range","","",18],[10,"excl_range","","",18],[10,"is_binary_op","","",18],[10,"resolve_bin_expr","","",18],[10,"basic_expr_opt","","",18],[10,"expr_opt","","",18],[10,"expr","","",18],[10,"ident_opt","","",18],[10,"ident","","",18],[10,"stmts","","",18],[10,"exprs","","",18],[10,"idents","","",18],[10,"block","","",18],[10,"do_block","","",18],[10,"new","","",15],[10,"next_opt","","",15],[10,"peek","","",15],[10,"tok","","",15],[10,"new","","",16],[10,"next_opt","","",16],[10,"peek","","",16],[10,"tok","","",16]],"paths":[[1,"Token"],[2,"TokenType"],[1,"FuncCall"],[1,"InclusiveRange"],[1,"ExclusiveRange"],[1,"Int"],[1,"IdentExpr"],[1,"BinaryExpr"],[1,"ExprStmt"],[1,"VarDecl"],[1,"VarAssign"],[1,"AssignStmt"],[1,"ForInLoop"],[1,"WhileLoop"],[6,"Expr"],[1,"AsyncParser"],[1,"SyncParser"],[6,"HydraParser"],[6,"HydraBaseParser"]]};
searchIndex['hydra_codegen'] = {"items":[[0,"","hydra_codegen",""],[0,"lltype","",""],[4,"Package","hydra_codegen::lltype",""],[4,"Context","",""],[4,"Value","",""],[4,"Type","",""],[4,"LLVMBuilder","",""],[4,"Block","",""],[0,"generator","hydra_codegen",""],[1,"Generator","hydra_codegen::generator","All the info needed to create and use a Generator in llvm.\nllvm generator types are structured like this"],[11,"typ","","",0],[11,"gen","","",0],[11,"init_args","","",0],[11,"init_func","","",0],[11,"next_func","","",0],[11,"var_count","","",0],[11,"ret_count","","",0],[5,"RANGE_GEN_ID","",""],[5,"RANGE_GEN_INIT","",""],[5,"RANGE_GEN_NEXT","",""],[0,"builder","hydra_codegen",""],[1,"Builder","hydra_codegen::builder",""],[11,"builder","","",1],[11,"ctx","","",1],[11,"types","","",1],[11,"pkgs","","",1],[11,"curr_pkg","","",1],[11,"curr_func","","",1],[11,"curr_scope","","",1],[10,"new","","",1],[10,"open_scope","","",1],[10,"close_scope","","",1],[10,"get_var","","",1],[10,"set_var","","",1],[10,"assign_var","","",1],[10,"new_default_var","","",1],[10,"new_var","","",1],[10,"default_value","","",1],[10,"define_range_gen_builtin_type","","",1],[10,"dump","","",1],[10,"print_module","","",1],[10,"create_package","","",1],[10,"declare_function","","",1],[10,"declare_variadic_function","","",1],[10,"create_function","","",1],[10,"create_variadic_function","","",1],[10,"call","","",1],[10,"get_function","","",1],[10,"get_param","","",1],[10,"ret","","",1],[10,"ret_void","","",1],[10,"cmp_eq","","",1],[10,"cmp_not_eq","","",1],[10,"cmp_less_than","","",1],[10,"cmp_less_than_eq","","",1],[10,"cmp_greater_than","","",1],[10,"cmp_greater_than_eq","","",1],[10,"add_op","","",1],[10,"sub_op","","",1],[10,"mul_op","","",1],[10,"div_op","","",1],[10,"mod_op","","",1],[10,"and_op","","",1],[10,"or_op","","",1],[10,"lshift_op","","",1],[10,"rshift_op","","",1],[10,"store","","",1],[10,"load","","",1],[10,"phi_node","","",1],[10,"add_incoming","","",1],[10,"array_malloc","","",1],[10,"new_block","","",1],[10,"goto_block","","",1],[10,"goto_first_block","","",1],[10,"conditional_break","","",1],[10,"break_to","","",1],[10,"block_address","","",1],[10,"indirect_break","","",1],[10,"get_entry_block","","",1],[10,"get_first_block","","",1],[10,"create_type","","",1],[10,"alloca","","",1],[10,"get_obj_property","","",1],[10,"get_type","","",1],[10,"get_range_gen_type","","",1],[10,"range_gen","","",1],[10,"func_type","","",1],[10,"char_type","","",1],[10,"int1_type","","",1],[10,"int32_type","","",1],[10,"string_type","","",1],[10,"void_type","","",1],[10,"label_type","","",1],[10,"to_ptr_type","","",1],[10,"int","","",1],[10,"string","","",1],[10,"bitcast","","",1],[10,"zext","","",1],[6,"CodeGenerator","hydra_codegen",""],[9,"gen_code","","",2]],"paths":[[1,"Generator"],[1,"Builder"],[6,"CodeGenerator"]]};

searchIndex['hydra_jit'] = {"items":[[0,"","hydra_jit",""],[0,"codegen","",""],[1,"Builder","hydra_jit::codegen",""],[11,"builder","","",0],[11,"ctx","","",0],[11,"types","","",0],[11,"pkgs","","",0],[11,"curr_pkg","","",0],[11,"curr_func","","",0],[1,"Generator","","All the info needed to create and use a Generator in llvm.\nllvm generator types are structured like this"],[11,"typ","","",1],[11,"gen","","",1],[11,"init_args","","",1],[11,"init_func","","",1],[11,"next_func","","",1],[11,"var_count","","",1],[11,"ret_count","","",1],[4,"Package","",""],[4,"Context","",""],[4,"Scope","",""],[4,"Value","",""],[4,"Type","",""],[4,"LLVMBuilder","",""],[4,"Block","",""],[6,"CodeGenerator","",""],[9,"gen_code","","",2],[10,"new","","",0],[10,"dump","","",0],[10,"print_module","","",0],[10,"create_package","","",0],[10,"declare_function","","",0],[10,"declare_variadic_function","","",0],[10,"create_function","","",0],[10,"create_variadic_function","","",0],[10,"call","","",0],[10,"get_function","","",0],[10,"get_param","","",0],[10,"ret","","",0],[10,"ret_void","","",0],[10,"cmp_eq","","",0],[10,"cmp_not_eq","","",0],[10,"cmp_less_than","","",0],[10,"cmp_less_than_eq","","",0],[10,"cmp_greater_than","","",0],[10,"cmp_greater_than_eq","","",0],[10,"add_op","","",0],[10,"sub_op","","",0],[10,"mul_op","","",0],[10,"div_op","","",0],[10,"mod_op","","",0],[10,"and_op","","",0],[10,"or_op","","",0],[10,"lshift_op","","",0],[10,"rshift_op","","",0],[10,"store","","",0],[10,"load","","",0],[10,"phi_node","","",0],[10,"add_incoming","","",0],[10,"array_malloc","","",0],[10,"new_block","","",0],[10,"goto_block","","",0],[10,"goto_first_block","","",0],[10,"conditional_break","","",0],[10,"break_to","","",0],[10,"block_address","","",0],[10,"indirect_break","","",0],[10,"get_entry_block","","",0],[10,"get_first_block","","",0],[10,"create_type","","",0],[10,"alloca","","",0],[10,"get_obj_property","","",0],[10,"get_type","","",0],[10,"get_range_gen_type","","",0],[10,"range_gen","","",0],[10,"func_type","","",0],[10,"char_type","","",0],[10,"int32_type","","",0],[10,"string_type","","",0],[10,"void_type","","",0],[10,"label_type","","",0],[10,"to_ptr_type","","",0],[10,"int","","",0],[10,"string","","",0]],"paths":[[1,"Builder"],[1,"Generator"],[6,"CodeGenerator"]]};

initSearch(searchIndex);
