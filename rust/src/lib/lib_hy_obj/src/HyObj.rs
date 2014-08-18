#![crate_name = "hy_obj"]
#![comment = "Hydra Objects"]
#![license = "MIT"]
#![crate_type = "dylib"]
#![crate_type = "rlib"]

use std::collections::TreeMap;
use std::c_str::CString;
use std::gc::{Gc, GC};

pub enum HyObjType {
    HyMap(TreeMap<String, Gc<HyObj>>),
    HyString(String),
    HyInt(int),
    HyFloat(f64),
    HyArray(Vec<Gc<HyObj>>),
    HyBool(bool)
    // HyRegex()
    // HyChannel
}

pub struct HyObj {
    pub typ : HyObjType
}

impl HyObj {

    ///////////////////////////////////////
    //          Obj Constructors         //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn new_hy_map() -> Gc<HyObj> {
        box(GC) HyObj {
            typ : HyMap(TreeMap::new())
        }
    }

    //Call String::to_c_str() -> CString::unwrap() to get this pointer
    #[no_mangle]
    pub fn new_hy_string(buf : *const i8) -> Gc<HyObj> {
        let mut s = String::new();
        unsafe {
            let c_str = CString::new(buf, true);
            s.push_bytes(c_str.as_bytes());
        };
        box(GC) HyObj {
            typ : HyString(s)
        }
    }

    #[no_mangle]
    pub fn new_hy_int(i : int) -> Gc<HyObj> {
        box(GC) HyObj {
            typ : HyInt(i)
        }
    }

    #[no_mangle]
    pub fn new_hy_float(f : f64) -> Gc<HyObj> {
        box(GC) HyObj {
            typ : HyFloat(f)
        }
    }

    #[no_mangle]
    pub fn new_hy_array() -> Gc<HyObj> {
        box(GC) HyObj {
            typ : HyArray(Vec::new())
        }
    }

    #[no_mangle]
    pub fn new_hy_bool(b : bool) -> Gc<HyObj> {
        box(GC) HyObj {
            typ : HyBool(b)
        }
    }

    ///////////////////////////////////////
    //            Map Functions          //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_map_insert(&mut self, key : Gc<HyObj>, val : Gc<HyObj>) -> Gc<HyObj> {
        match self.typ {
            HyMap(ref mut m) => {
                match key.typ {
                    HyString(ref s) => {
                       HyObj::new_hy_bool(m.insert(s.clone(), val))
                    },
                    _ => fail!("Maps only take string keys")
                }
            },
            _ => fail!("Called hy_map_insert on an object that is not a Map")
        }
    }

    #[no_mangle]
    pub fn hy_map_delete(&mut self, key : Gc<HyObj>) -> Gc<HyObj> {
        match self.typ {
            HyMap(ref mut m) => {
                match key.typ {
                    HyString(ref s) => {
                       HyObj::new_hy_bool(m.remove(s))
                    },
                    _ => fail!("Maps only take string keys")
                }
            },
            _ => fail!("Called hy_map_delete on an object that is not a Map")
        }
    }

    #[no_mangle]
    pub fn hy_map_contains(&mut self, key : Gc<HyObj>) -> Gc<HyObj> {
        match self.typ {
            HyMap(ref mut m) => {
                match key.typ {
                    HyString(ref s) => {
                       HyObj::new_hy_bool(m.contains_key(s))
                    },
                    _ => fail!("Maps only take string keys")
                }
            },
            _ => fail!("Called hy_map_contains on an object that is not a Map")
        }
    }
}