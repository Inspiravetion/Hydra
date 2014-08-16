use collections::hashmap::HashMap;
use builder::Builder;

type TypeId  = uint;

struct TypeMap {
    types    : HashMap<String, TypeId>,
    id_count : uint
}

impl TypeMap {
    pub fn new() -> TypeMap {
        TypeMap {
            types    : HashMap::new(),
            id_count : 0u
        }
    }

    pub fn add_type(type_name : &str) {
        let type_id = self.id_count;
        self.types.insert(type_name.to_string(), type_id);

        self.id_count += 1;
    }


    //add built in type ids to the map
    pub fn add_builtin_types(&mut self){

    }

    //use a builder to build the intrinsic function 'typeof'
    //should be used like
    //
    //    print(typeof true) //'Bool'
    //    print(typeof 1)    //'Int'
    //    print(typeof 2.4)  //'Float'
    //    ...
    //    
    //    less ideal...but take an object...switch over its typeid and
    //    return a string obj with the buffer containing the type name
    //    
    pub fn create_type_of_intrinsic(&mut self, builder : &mut Builder){

    }

    //use a builder to build the intrinsic function 'is_a'
    //should be used like
    //
    //    print(true.is_a(Bool)) //true
    //    print(1.is_a(Float))   //false
    //    print(2.4.is_a(Float)) //true
    //    ...
    //    
    //    make a different function for each type used
    //    and check that the object calling it's typeid matches the 
    //    statically produced intended type id
    //    
    //    define i32 hydra::is_a_Bool()
    //    define i32 hydra::is_a_Float()
    //    define i32 hydra::is_a_Int()
    //    
    pub fn create_is_a_intrinsic(&mut self, builder : &mut Builder){

    }
}