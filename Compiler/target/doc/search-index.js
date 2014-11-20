var searchIndex = {};
searchIndex['hydra'] = {"items":[],"paths":[]};
searchIndex['hy_ll'] = {"items":[[0,"","hy_ll",""],[0,"lltype","",""],[4,"Package","hy_ll::lltype",""],[4,"Context","",""],[4,"Value","",""],[4,"Type","",""],[4,"LLVMBuilder","",""],[4,"Block","",""],[0,"generator","hy_ll",""],[1,"Generator","hy_ll::generator","All the info needed to create and use a Generator in llvm.\nllvm generator types are structured like this"],[11,"typ","","",0],[11,"gen","","",0],[11,"init_args","","",0],[11,"init_func","","",0],[11,"next_func","","",0],[11,"var_count","","",0],[11,"ret_count","","",0],[5,"RANGE_GEN_ID","",""],[5,"RANGE_GEN_INIT","",""],[5,"RANGE_GEN_NEXT","",""],[0,"builder","hy_ll",""],[1,"Builder","hy_ll::builder",""],[11,"curr_func","","",1],[1,"GenBuilder","",""],[11,"state_indxs","","",2],[11,"num_ret","","",2],[1,"GenGenState","","Struct to hold state for generator generation"],[11,"context","","",3],[11,"save_blk","","",3],[11,"restore_blk","","",3],[11,"stmts_blk","","",3],[11,"labels","","",3],[11,"state_idxs","","",3],[11,"stmt_idx","","",3],[10,"new","","",1],[10,"open_loop_scope","","",1],[10,"close_loop_scope","","",1],[10,"get_continue_block","","",1],[10,"get_break_block","","",1],[10,"with_fresh_scope","","",1],[10,"open_scope","","",1],[10,"close_scope","","",1],[10,"get_var","","",1],[10,"get_gen_var","","",1],[10,"set_var","","",1],[10,"set_gen_var","","",1],[10,"assign_var","","",1],[10,"assign_gen_var","","",1],[10,"new_default_var","","",1],[10,"new_var","","",1],[10,"default_value","","",1],[10,"define_range_gen_builtin_type","","",1],[10,"dump","","",1],[10,"print_module","","",1],[10,"create_package","","",1],[10,"declare_function","","",1],[10,"declare_variadic_function","","",1],[10,"create_function","","",1],[10,"create_variadic_function","","",1],[10,"call","","",1],[10,"get_function","","",1],[10,"get_param","","",1],[10,"ret","","",1],[10,"ret_void","","",1],[10,"cmp_eq","","",1],[10,"cmp_not_eq","","",1],[10,"cmp_less_than","","",1],[10,"cmp_less_than_eq","","",1],[10,"cmp_greater_than","","",1],[10,"cmp_greater_than_eq","","",1],[10,"add_op","","",1],[10,"sub_op","","",1],[10,"mul_op","","",1],[10,"div_op","","",1],[10,"mod_op","","",1],[10,"and_op","","",1],[10,"or_op","","",1],[10,"lshift_op","","",1],[10,"rshift_op","","",1],[10,"store","","",1],[10,"load","","",1],[10,"phi_node","","",1],[10,"add_incoming","","",1],[10,"array_malloc","","",1],[10,"new_block","","",1],[10,"goto_block","","",1],[10,"goto_first_block","","",1],[10,"conditional_break","","",1],[10,"break_to","","",1],[10,"block_address","","",1],[10,"value_to_block","","",1],[10,"block_to_value","","",1],[10,"indirect_break","","",1],[10,"get_entry_block","","",1],[10,"get_first_block","","",1],[10,"get_last_block","","",1],[10,"goto_last_instr","","",1],[10,"create_type","","",1],[10,"alloca","","",1],[10,"get_obj_property","","",1],[10,"get_type","","",1],[10,"get_range_gen_type","","",1],[10,"range_gen","","",1],[10,"func_type","","",1],[10,"char_type","","",1],[10,"int1_type","","",1],[10,"int32_type","","",1],[10,"string_type","","",1],[10,"void_type","","",1],[10,"label_type","","",1],[10,"to_ptr_type","","",1],[10,"type_of","","",1],[10,"type_to_str","","",1],[10,"int","","",1],[10,"string","","",1],[10,"bitcast","","",1],[10,"zext","","",1],[10,"new","","",2],[10,"register_n_variables","","",2],[10,"create_next_function","","",2],[10,"create_init_function","","",2],[10,"set_stmts_blk","","",3],[10,"state_index","","",3],[10,"next_stmt","","",3],[0,"intrinsics","hy_ll",""],[3,"gen_intrinsics","hy_ll::intrinsics",""],[0,"codegen","hy_ll",""],[3,"gen_code_from_file_sync","hy_ll::codegen",""],[3,"gen_code_from_str_sync","",""],[3,"gen_code_from_file_async","",""],[3,"gen_code_from_str_async","",""],[6,"StmtGenerator","",""],[9,"gen_code","","",4],[9,"register_state_vars","","Add declared variable types to vec so that a generator state object can\nbe created...push the number of vars u need in so that you know where to start from on your save restore",4],[9,"gen_gen_code","","Generate your regular code but also break to the end of the save and restore\nblocks provided to save and restore state variables so this can be done in \none pass",4],[6,"ExprGenerator","",""],[9,"to_generator","","Return a Generator struct with the params for its llvm init function already\ncreated",5],[9,"to_value","","",5],[9,"to_gen_value","","",5],[10,"to_generator","hy_syntax::ast","",6],[10,"to_value","","",6],[10,"to_gen_value","","",6],[10,"gen_code","","",7],[10,"register_state_vars","","Add declared variable types to vec so that a generator state object can\nbe created...push the number of vars u need in so that you know where to start from on your save restore",7],[10,"gen_gen_code","","Generate your regular code but also break to the end of the save and restore\nblocks provided to save and restore state variables so this can be done in \none pass",7]],"paths":[[1,"Generator"],[1,"Builder"],[1,"GenBuilder"],[1,"GenGenState"],[6,"StmtGenerator"],[6,"ExprGenerator"],[1,"Expr"],[1,"Stmt"]]};

searchIndex['hy_syntax'] = {"items":[[0,"","hy_syntax",""],[0,"token","",""],[1,"Token","hy_syntax::token",""],[11,"text","","",0],[11,"typ","","",0],[11,"line","","",0],[11,"col","","",0],[11,"buf_offset","","",0],[2,"TokenType","",""],[12,"Identifier","","",1],[12,"Period","","",1],[12,"Bang","","",1],[12,"Question","","",1],[12,"Comma","","",1],[12,"Colon","","",1],[12,"Semicolon","","",1],[12,"Bit_And","","",1],[12,"Bit_Or","","",1],[12,"Bit_Negate","","",1],[12,"Add_Op","","",1],[12,"Min_Op","","",1],[12,"Mult_Op","","",1],[12,"Div_Op","","",1],[12,"Mod_Op","","",1],[12,"Power_Op","","",1],[12,"Increment","","",1],[12,"Decrement","","",1],[12,"Less_Than","","",1],[12,"Greater_Than","","",1],[12,"Assign","","",1],[12,"Less_Than_Eq","","",1],[12,"Greater_Than_Eq","","",1],[12,"Equal","","",1],[12,"Bang_Eq","","",1],[12,"Plus_Eq","","",1],[12,"Min_Eq","","",1],[12,"Times_Eq","","",1],[12,"Div_Eq","","",1],[12,"Mod_Eq","","",1],[12,"Power_Eq","","",1],[12,"Bit_Or_Eq","","",1],[12,"Logical_Or_Eq","","",1],[12,"Bit_And_Eq","","",1],[12,"Logical_Or","","",1],[12,"Logical_And","","",1],[12,"Excl_Range","","",1],[12,"Incl_Range","","",1],[12,"Lshovel","","",1],[12,"Rshovel","","",1],[12,"Lcurly","","",1],[12,"Rcurly","","",1],[12,"Lparen","","",1],[12,"Rparen","","",1],[12,"Lbracket","","",1],[12,"Rbracket","","",1],[12,"Chan_Recv","","",1],[12,"Chan_Send","","",1],[12,"Pub_Class_Var","","",1],[12,"Priv_Class_Var","","",1],[12,"Pub_Inst_Var","","",1],[12,"Priv_Inst_Var","","",1],[12,"Function","","",1],[12,"Spawn","","",1],[12,"If","","",1],[12,"Else","","",1],[12,"Then","","",1],[12,"For","","",1],[12,"In","","",1],[12,"While","","",1],[12,"Do","","",1],[12,"Not","","",1],[12,"And","","",1],[12,"Or","","",1],[12,"From","","",1],[12,"To","","",1],[12,"By","","",1],[12,"End","","",1],[12,"Class","","",1],[12,"Import","","",1],[12,"As","","",1],[12,"Export","","",1],[12,"Super","","",1],[12,"Supers","","",1],[12,"This","","",1],[12,"Return","","",1],[12,"Operator","","",1],[12,"Extends","","",1],[12,"Generator","","",1],[12,"Either","","",1],[12,"Wait_For","","",1],[12,"Break","","",1],[12,"Continue","","",1],[12,"Yield","","",1],[12,"Given","","",1],[12,"Is","","",1],[12,"Var","","",1],[12,"True","","",1],[12,"False","","",1],[12,"New","","",1],[12,"Upto","","",1],[12,"Through","","",1],[12,"String_Literal","","",1],[12,"Binary_Literal","","",1],[12,"Hex_Literal","","",1],[12,"Int_Literal","","",1],[12,"Float_Literal","","",1],[12,"Multiline_Comment","","",1],[12,"Singleline_Comment","","",1],[12,"NewLine","","",1],[3,"str_to_type","",""],[10,"fmt","","",1],[10,"eq","","",1],[10,"ne","","",1],[10,"clone","","",1],[10,"eq","","",0],[10,"ne","","",0],[10,"clone","","",0],[10,"start","","",0],[10,"end","","",0],[10,"fmt","","",0],[0,"scanner","hy_syntax",""],[3,"tokenize_str","hy_syntax::scanner",""],[3,"tokenize_file","",""],[3,"stream_from_str","",""],[3,"stream_from_file","",""],[0,"ast","hy_syntax",""],[1,"Expr","hy_syntax::ast",""],[11,"node","","",2],[1,"Stmt","",""],[11,"node","","",3],[1,"IfElseBranch","",""],[11,"cond","","",4],[11,"stmts","","",4],[2,"Expr_","",""],[12,"FuncCall","","",5],[12,"InclusiveRange","","",5],[12,"ExclusiveRange","","",5],[12,"Int","","",5],[12,"IdentExpr","","",5],[12,"BinaryExpr","","",5],[12,"PrefixUnaryExpr","","",5],[2,"Stmt_","",""],[12,"ExprStmt","","",6],[12,"VarDecl","","",6],[12,"VarAssign","","",6],[12,"AssignStmt","","",6],[12,"LoopControlStmt","","",6],[12,"IfElseStmt","","",6],[12,"ForInLoop","","",6],[12,"WhileLoop","","",6],[12,"FunctionDef","","",6],[12,"ReturnStmt","","",6],[12,"GeneratorDef","","",6],[12,"YieldStmt","","",6],[0,"FuncCall","",""],[3,"new","hy_syntax::ast::FuncCall",""],[0,"InclusiveRange","hy_syntax::ast",""],[3,"new","hy_syntax::ast::InclusiveRange",""],[0,"ExclusiveRange","hy_syntax::ast",""],[3,"new","hy_syntax::ast::ExclusiveRange",""],[0,"Int","hy_syntax::ast",""],[3,"new","hy_syntax::ast::Int",""],[0,"IdentExpr","hy_syntax::ast",""],[3,"new","hy_syntax::ast::IdentExpr",""],[0,"BinaryExpr","hy_syntax::ast",""],[3,"new","hy_syntax::ast::BinaryExpr",""],[0,"PrefixUnaryExpr","hy_syntax::ast",""],[3,"new","hy_syntax::ast::PrefixUnaryExpr",""],[0,"ExprStmt","hy_syntax::ast",""],[3,"new","hy_syntax::ast::ExprStmt",""],[0,"VarDecl","hy_syntax::ast",""],[3,"new","hy_syntax::ast::VarDecl",""],[0,"VarAssign","hy_syntax::ast",""],[3,"new","hy_syntax::ast::VarAssign",""],[0,"AssignStmt","hy_syntax::ast",""],[3,"new","hy_syntax::ast::AssignStmt",""],[0,"LoopControlStmt","hy_syntax::ast",""],[3,"new","hy_syntax::ast::LoopControlStmt",""],[0,"IfElseStmt","hy_syntax::ast",""],[3,"new","hy_syntax::ast::IfElseStmt",""],[0,"ForInLoop","hy_syntax::ast",""],[3,"new","hy_syntax::ast::ForInLoop",""],[0,"WhileLoop","hy_syntax::ast",""],[3,"new","hy_syntax::ast::WhileLoop",""],[0,"FunctionDef","hy_syntax::ast",""],[3,"new","hy_syntax::ast::FunctionDef",""],[0,"ReturnStmt","hy_syntax::ast",""],[3,"new","hy_syntax::ast::ReturnStmt",""],[0,"GeneratorDef","hy_syntax::ast",""],[3,"new","hy_syntax::ast::GeneratorDef",""],[0,"YieldStmt","hy_syntax::ast",""],[3,"new","hy_syntax::ast::YieldStmt",""],[4,"Ident","hy_syntax::ast",""],[10,"eq","","",2],[10,"ne","","",2],[10,"fmt","","",2],[10,"eq","","",3],[10,"ne","","",3],[10,"fmt","","",3],[10,"eq","","",5],[10,"ne","","",5],[10,"fmt","","",5],[10,"eq","","",6],[10,"ne","","",6],[10,"fmt","","",6],[10,"eq","","",4],[10,"ne","","",4],[10,"new","","",4],[10,"fmt","","",4],[0,"parser","hy_syntax",""],[1,"AsyncParser","hy_syntax::parser",""],[1,"SyncParser","",""],[3,"parse_file_async","","Scan and Parse a file in parallel producing an AST"],[3,"parse_file_sync","","Scan and then Parse a file producing an AST"],[3,"parse_str_async","","Scan and Parse a string in parallel producing an AST"],[3,"parse_str_sync","","Scan and then Parse a string producing an AST"],[3,"parse_and_stream_file_async","","Scan and Parse a file in parallel producing a stream of top level AST nodes"],[3,"parse_and_stream_file_sync","","Scan and then Parse a file producing a stream of top level AST nodes"],[3,"parse_and_stream_str_async","","Scan and Parse a string in parallel producing a stream of top level AST nodes"],[3,"parse_and_stream_str_sync","","Scan and then Parse a string producing a stream of top level AST nodes"],[6,"HydraParser","",""],[10,"parse_sync","","",7],[10,"parse_async","","",7],[6,"HydraBaseParser","",""],[9,"tok","","Returns the current token",8],[9,"peek","","Returns the next token or None if at EOF",8],[9,"next_opt","","Consumes the next token and returns true if\npossible, otherwise returns false if at EOF",8],[9,"get_presidence","","Returns a tokens presidence",8],[9,"set_presidence","","Sets the presidence for a token",8],[9,"parsing_generator","","Returns whether or not parser is currently parsing a generator\ndefinition",8],[9,"start_gen_parsing","","Let Parser know it is parsing a generator definition",8],[9,"end_gen_parsing","","Let Parser know it is no longer parsing a generator definition",8],[10,"next","","Advance to next token or fail! if at EOF",8],[10,"next_is","","If the next token is the passed token type, then consume it and return\ntrue, otherwise false",8],[10,"expect","","Consume the next token if it is of the expected token type, otherwise fail!",8],[10,"for_each_stmt","","",8],[10,"program_stmt","","",8],[10,"function_def","","",8],[10,"operator_def","","",8],[10,"var_decl","","",8],[10,"while_loop","","",8],[10,"for_in_loop","","",8],[10,"if_else_stmt","","",8],[10,"ident_prefix","","",8],[10,"stmt_ident_prefixs","","",8],[10,"expr_ident_prefixs","","",8],[10,"func_call","","",8],[10,"func_call_stmt","","",8],[10,"assignment_stmt","","",8],[10,"func_call_or_assignment_stmt","","",8],[10,"stmt_opt","","",8],[10,"stmt","","",8],[10,"incl_range","","",8],[10,"excl_range","","",8],[10,"is_binary_op","","",8],[10,"resolve_bin_expr","","",8],[10,"basic_expr_opt","","",8],[10,"ident_or_func_call","","",8],[10,"expr_opt","","",8],[10,"expr","","",8],[10,"ident_opt","","",8],[10,"ident","","",8],[10,"stmts","","",8],[10,"exprs","","",8],[10,"idents","","",8],[10,"block","","",8],[10,"do_block","","",8],[10,"new","","",9],[10,"next_opt","","",9],[10,"peek","","",9],[10,"tok","","",9],[10,"get_presidence","","",9],[10,"set_presidence","","",9],[10,"parsing_generator","","",9],[10,"start_gen_parsing","","",9],[10,"end_gen_parsing","","",9],[10,"new","","",10],[10,"next_opt","","",10],[10,"peek","","",10],[10,"tok","","",10],[10,"get_presidence","","",10],[10,"set_presidence","","",10],[10,"parsing_generator","","",10],[10,"start_gen_parsing","","",10],[10,"end_gen_parsing","","",10]],"paths":[[1,"Token"],[2,"TokenType"],[1,"Expr"],[1,"Stmt"],[1,"IfElseBranch"],[2,"Expr_"],[2,"Stmt_"],[6,"HydraParser"],[6,"HydraBaseParser"],[1,"AsyncParser"],[1,"SyncParser"]]};

initSearch(searchIndex);