#![crate_name = "hy_obj"]
#![comment = "Hydra Objects"]
#![license = "MIT"]
#![crate_type = "staticlib"]

use std::collections::TreeMap;
use std::c_str::CString;

#[no_mangle]
use std::gc::{Gc, GC};

pub enum HyObjType {
    HyMap(TreeMap<String, HyObj>),
    HyString(String),
    HyInt(int),
    HyFloat(f64),
    HyArray(Vec<HyObj>),
    HyBool(bool)
    // HyRegex()
    // HyChannel
}

pub struct HyObj {
    pub typ : HyObjType
}

// pub type HyObj = HyObj;

impl HyObj {

    #[no_mangle]
    pub fn hy_obj_print(&self) {
        match self.typ {
            HyArray(ref vec) => {
                print!("[");
                for obj in vec.iter() {
                    obj.hy_obj_print();
                }
                print!("]");
            },
            _ => fail!("Called print on an object that is not an Array")
        };
    }

    #[no_mangle]
    pub fn hy_obj_to_str(&self) -> *const i8 {
        match self.typ {
            HyArray(ref vec) => {
                // print!("[");
                // for obj in vec.iter() {
                //     obj.hy_obj_print();
                // }
                // print!("]");
                unsafe{ "Array : []".to_string().to_c_str().unwrap() }
            },
            HyMap(ref map) => {
                unsafe{ "Map : {}".to_string().to_c_str().unwrap() }  
            },
            HyBool(ref b) => {
                if *b {
                    unsafe{ "bool : true".to_string().to_c_str().unwrap() }  
                } else {
                    unsafe{ "bool : false".to_string().to_c_str().unwrap() }  
                }
            }
            _ => unsafe{ "Called print on an object that is not an Array".to_string().to_c_str().unwrap() }
        }
    }

    ///////////////////////////////////////
    //          Obj Constructors         //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_new_map() -> HyObj {
        HyObj {
            typ : HyMap(TreeMap::new())
        }
    }

    //Call String::to_c_str() -> CString::unwrap() to get this pointer
    #[no_mangle]
    pub fn hy_new_string(buf : *const i8) -> HyObj {
        let mut s = String::new();
        unsafe {
            let c_str = CString::new(buf, true);
            s.push_bytes(c_str.as_bytes());
        };
        HyObj {
            typ : HyString(s)
        }
    }

    #[no_mangle]
    pub fn hy_new_int(i : int) -> HyObj {
        HyObj {
            typ : HyInt(i)
        }
    }

    #[no_mangle]
    pub fn hy_new_float(f : f64) -> HyObj {
        HyObj {
            typ : HyFloat(f)
        }
    }

    #[no_mangle]
    pub fn hy_new_array() -> HyObj {
        HyObj {
            typ : HyArray(Vec::new())
        }
    }

    #[no_mangle]
    pub fn hy_new_bool(b : bool) -> HyObj {
        HyObj {
            typ : HyBool(b)
        }
    }

    ///////////////////////////////////////
    //            Map Functions          //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_map_insert(&mut self, key : HyObj, val : HyObj) -> HyObj {
        match self.typ {
            HyMap(ref mut m) => {
                match key.typ {
                    HyString(ref s) => {
                       HyObj::hy_new_bool(m.insert(s.clone(), val))
                    },
                    _ => fail!("Maps only take string keys")
                }
            },
            _ => fail!("Called hy_map_insert on an object that is not a Map")
        }
    }

    #[no_mangle]
    pub fn hy_map_delete(&mut self, key : HyObj) -> HyObj {
        match self.typ {
            HyMap(ref mut m) => {
                match key.typ {
                    HyString(ref s) => {
                       HyObj::hy_new_bool(m.remove(s))
                    },
                    _ => fail!("Maps only take string keys")
                }
            },
            _ => fail!("Called hy_map_delete on an object that is not a Map")
        }
    }

    #[no_mangle]
    pub fn hy_map_contains(&mut self, key : HyObj) -> HyObj {
        match self.typ {
            HyMap(ref mut m) => {
                match key.typ {
                    HyString(ref s) => {
                       HyObj::hy_new_bool(m.contains_key(s))
                    },
                    _ => HyObj::hy_new_bool(false)
                }
            },
            _ => fail!("Called hy_map_contains on an object that is not a Map")
        }
    }
}