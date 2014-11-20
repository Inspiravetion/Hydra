#![feature(phase)]
#![feature(slicing_syntax)]

#[phase(plugin)]
extern crate phf_mac;
extern crate phf;

use phf::Map;
use std::mem;
use std::rand;

struct HyObj {
    class  : &'static Class,
    data   : *mut u8,
    supers : Vec<Box<HyObj>>
}

struct Class {
    name      : &'static str,
    methods   : Map<&'static str, fn(*mut u8, HyObjSlice) -> Box<HyObj>>,
    get_field : fn(*mut u8, &str) -> Option<Box<HyObj>>
}

type HyObjSlice = Vec<Box<HyObj>>;

impl HyObj {
    pub fn get_field_opt(&self, field : &'static str) -> Option<Box<HyObj>> {
        let mut mayb_field = (self.class.get_field)(self.data, field);

        if mayb_field.is_some() {
            return mayb_field;
        }

        for _super in self.supers.iter() {
            mayb_field = _super.get_field_opt(field);
            if mayb_field.is_some() {
                return mayb_field;
            }
        } 

        None
    }

    pub fn get_field(&self, field : &'static str) -> Box<HyObj> {
        match self.get_field_opt(field) {
            Some(obj) => obj,
            None      => panic!("Runtime Error: Object of type {} does not have a field called {}", self.class.name, field)
        }
    }

    pub fn dispatch_method(&self, method : &'static str, args : HyObjSlice) -> Box<HyObj> {
        let mut func_field = (self.class.get_field)(self.data, method);

        match func_field {
            Some(f) => return f.dispatch_method("call", args),
            None    => {}
        };

        match self.class.methods.get(&method) {
            Some(f) => return (*f)(self.data, args),
            None    => {}
        }

        for _super in self.supers.iter() {
            func_field = (_super.class.get_field)(_super.data, method);

            match func_field {
                Some(f) => return f.dispatch_method("call", args),
                None    => {}
            };

            match _super.class.methods.get(&method) {
                Some(f) => return (*f)(_super.data, args),
                None    => {}
            }
        }

        panic!("Runtime Error: Object of type {} does not have a method called {}", self.class.name, method);
    }
}

//Generated class #1 (std::Array)

static STD_ARRAY_CLASS : Class = Class {
     methods : phf_map! { 
         "push" => std_array_push
     },

     name : "Array",

     get_field : STD_ARRAY_GET_FIELD
};

fn STD_ARRAY_NEW(args : HyObjSlice) -> Box<HyObj> {
    box HyObj {
        class  : &STD_ARRAY_CLASS,
        data   : unsafe { mem::transmute::<Box<Vec<Box<HyObj>>>, *mut u8>(box vec![]) }, //should be setting finalizer here...to call drop on the Vec
        supers : vec![]
    }
}

fn STD_ARRAY_GET_FIELD(obj : *mut u8, field_name : &str) -> Option<Box<HyObj>> {
    let obj : &Vec<Box<HyObj>> = unsafe { mem::transmute(obj) };
    match field_name {
        "len" => Some(DummyObj()), //can we automate the wrapping?
        "cap" => Some(DummyObj()),
         _ => None
    }
}

fn std_array_push(_self : *mut u8, _objs : HyObjSlice) -> Box<HyObj> {
    let _self : &mut Vec<Box<HyObj>> = unsafe { mem::transmute(_self) };
    for obj in _objs.into_iter() {
        _self.push(obj);
    }   

    DummyObj()
}

//Generated class #2 (std::rand::Int)

static RAND_RANDOM_INT_CLASS : Class = Class {
     methods : phf_map! {},
     name : "RandomInt",
     get_field : RAND_RANDOM_INT_GET_FIELD
};

fn RAND_RANDOM_INT_NEW(args : HyObjSlice) -> Box<HyObj> {
    box HyObj {
        class  : &RAND_RANDOM_INT_CLASS,
        data   : unsafe { mem::transmute::<Box<int>, *mut u8>(box rand::random()) }, //should be setting finalizer here...to call drop on the Vec
        supers : vec![]
    }
}

fn RAND_RANDOM_INT_GET_FIELD(obj : *mut u8, field_name : &str) -> Option<Box<HyObj>> {
    None
}

fn DummyObj() -> Box<HyObj> {
    unsafe {
        box  HyObj {
            class  : mem::transmute(0i),
            data   : mem::transmute(0i),
            supers : vec![]
        }
    }
}

//
//HyClass!(
//  Array = Vec<Box<HyObj>>
//  
//  
//)
//
//
macro_rules! HyClass(
    ($name:ident = $typ:ty   ,  -> [ $($tok_typ:ident),+ ]) => (
        {
            let mut i = 0;
            let tokens = tokenize_str($code);
            $(
                let t = tokens.get(i);
                match t.typ {
                    token::$tok_typ => {}, 
                    _ => fail!("Expected token at {} to be {} but it was {}", i + 1, token::$tok_typ, t.typ)
                }
                i += 1;
            )+
        }
    );
)

fn main() {
    let hy_vec  = STD_ARRAY_NEW(vec![]);
    let hy_int1 = RAND_RANDOM_INT_NEW(vec![]);
    let hy_int2 = RAND_RANDOM_INT_NEW(vec![]);
    hy_vec.dispatch_method("push", vec![hy_int1, hy_int2]);
    let vec : &Vec<Box<HyObj>> = unsafe { mem::transmute(hy_vec.data) };
    assert!(vec.len() == 2);
    println!("{}", if vec.len() == 2 { "Fuck yeah" } else { "Aww shit" });
    println!("{}", unsafe { mem::transmute::<*mut u8, &int>(vec[0].data) });
    println!("{}", unsafe { mem::transmute::<*mut u8, &int>(vec[1].data) });
}