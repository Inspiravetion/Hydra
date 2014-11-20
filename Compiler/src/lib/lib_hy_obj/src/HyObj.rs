#![crate_name = "hy_obj"]
#![comment = "Hydra Objects"]
#![license = "MIT"]
#![crate_type = "staticlib"]

extern crate regex;
extern crate alloc;
extern crate core;

use alloc::heap;

use std::comm::{sync_channel, SyncSender, Sender, Receiver};
use std::collections::TreeMap;
use std::c_str::CString;
use std::mem;
use std::ptr;
use std::sync;

use regex::Regex;

// static UNDEFINED : HyObj = unsafe{ HyObj { typ : HyUndefined } };
// static NULL      : HyObj = HyObj { typ : HyNull };
// static TRUE      : HyObj = HyObj { typ : HyBool(true) };
// static FALSE     : HyObj = HyObj { typ : HyBool(false) };

pub enum HyObjType {
    HyGenerator(proc(HyObjSlice, *const HyGenCtxt) : Send -> bool, *const HyGenCtxt),
    HyFunction(proc(HyObjSlice) : Send -> Box<HyObj>, *const i8),
    HySyncChannel(SyncSender<Box<HyObj>>, Receiver<Box<HyObj>>, int),
    HyAsyncChannel(Sender<Box<HyObj>>, Receiver<Box<HyObj>>),
    HyMap(TreeMap<String, Box<HyObj>>),
    HyArray(Vec<Box<HyObj>>),
    HyTuple(Vec<Box<HyObj>>),
    HyString(String),
    HyRegex(Regex),
    HyFloat(f64),
    HyBool(bool),
    HyInt(int),
    HyUndefined,
    HyNull
}

pub struct HyObj {
    pub typ : HyObjType
}

// impl Sync for HyObj {}

pub struct HyObjSlice {
    pub objs : *mut *mut HyObj,
    pub len  : uint,
    pub cap  : uint
}

#[no_mangle]
pub fn hy_obj_slice_init(this : *mut HyObjSlice, cap : int) {
    let mem_sz = mem::size_of::<*mut HyObj>();
    let alignment = mem::min_align_of::<*mut HyObj>();
    
    unsafe { 
        let ptr = heap::allocate(mem_sz * (cap as uint), alignment) as *mut *mut HyObj;

        (*this).objs = ptr;
        (*this).cap  = cap as uint;
        (*this).len  = 0;
    };
}

#[no_mangle]
pub fn hy_obj_slice_reinit(this : *mut HyObjSlice, cap : int) {
    // let mem_sz = mem::size_of::<*mut HyObj>();
    // let alignment = mem::min_align_of::<*mut HyObj>();
    
    unsafe { 
        // let ptr = heap::allocate(mem_sz * (cap as uint), alignment) as *mut *mut HyObj;

        // (*this).objs = ptr;
        // (*this).cap  = cap as uint;
        (*this).len  = 0;
    };
}

#[no_mangle]
pub fn hy_obj_slice_clear(this : *mut HyObjSlice) {
    unsafe { 
        let mem_sz = mem::size_of::<*mut HyObj>() * (*this).cap;
        let alignment = mem::min_align_of::<*mut HyObj>();

        //set counts to 0 and free hyobj array
        (*this).len = 0;
        (*this).cap = 0;

        let ptr = (*this).objs;
        heap::deallocate(ptr as *mut u8, mem_sz, alignment);
    }
}

//fail if full because this should never get called when its full
#[no_mangle]
pub fn hy_obj_slice_push(this : *mut HyObjSlice, obj : *mut HyObj) {
    let ptr = unsafe { 
        let len = (*this).len;
        let cap = (*this).cap;

        if cap == len {
            fail!("Tried to push too many HyObjs into the HyObjSlice");
        }

        (*this).len = len + 1;
        (*this).objs.offset(len as int)
    };

    unsafe{ ptr::write(mem::transmute(ptr), obj) };
}

#[no_mangle]
pub fn hy_obj_slice_get(this : *mut HyObjSlice, index : uint) -> *mut HyObj {
    unsafe { 
        let len = (*this).len;

        if index >= len {
            return mem::transmute(HyObj::hy_new_undefined()) 
        }

        let ptr = (*this).objs.offset(index as int);
        *ptr
    }
}

pub struct HyGenCtxt {
    pub block  : *const i8,
    pub params : HyObjSlice,
    pub state  : HyObjSlice,
    pub yields : HyObjSlice
}

impl HyGenCtxt {
    pub fn new(block : *const i8, params : HyObjSlice, num_state : int, num_yields : int) -> *const HyGenCtxt {
        let mem_sz = mem::size_of::<HyGenCtxt>();
        let alignment = mem::min_align_of::<HyGenCtxt>();
        
        unsafe {
            let ctxt = heap::allocate(mem_sz, alignment) as *mut HyGenCtxt;

            (*ctxt).block  = block;
            (*ctxt).params = params;
            hy_obj_slice_init(&mut(*ctxt).state, num_state);
            hy_obj_slice_init(&mut(*ctxt).yields, num_yields);    
        
            ctxt as *const HyGenCtxt
        }
    }
}

impl HyObj {

    #[no_mangle]
    pub fn hy_obj_print(&self) {
        match self.typ {
            HyUndefined => {
                print!("{}", "undefined");
            },
            HyNull => {
                print!("{}", "null");
            },
            HyInt(i) => {
                print!("{}", (format!("{}", i)));
            },
            HyFloat(f) => {
                print!("{}", (format!("{}", f)));
            },
            HyString(ref s) => {
                print!("{}", s);
            },
            HyRegex(ref r) => {
                print!("/{}/", (format!("{}", r)));
            },
            HyArray(ref vec) => {
                print!("[");

                let mut vals = vec.iter();

                match vals.next() {
                    Some(val) => val.hy_obj_print(),
                    None => {}
                }

                for val in vals {
                    print!(", ");
                    val.hy_obj_print();
                }
                print!("]");
            },
            HyTuple(ref vec) => {
                print!("(");

                let mut vals = vec.iter();

                match vals.next() {
                    Some(val) => val.hy_obj_print(),
                    None => {}
                }

                for val in vals {
                    print!(", ");
                    val.hy_obj_print();
                }
                print!(")");
            },
            HyMap(ref map) => {
                //to deal with escaping -_-...i know theres a better way but now i cnt remember it
                print!("{}", "{");

                let mut key_val_pairs = map.iter();

                match key_val_pairs.next() {
                    Some((key, val)) => {
                        print!("{} : ", key);
                        val.hy_obj_print();
                    },
                    None => {}
                }

                for (key, val) in key_val_pairs {
                    print!(", {} : ", key);
                    val.hy_obj_print();
                }
                print!("{}", "}");
            },
            HyBool(b) => {
                if b {
                    print!("true");
                } else {
                    print!("false");
                }
            },
            HyFunction(ref f, ptr) => {
                let mut s = String::new();
                unsafe {
                    let c_str = CString::new(ptr, false);
                    s.as_mut_vec().push_all(c_str.as_bytes());
                };

                print!("{} [function]", s);
            },
            HySyncChannel(ref sendr, ref recvr, buffer_sz) => {
                match buffer_sz {
                    0 => {
                        print!("<-->");
                    },
                    _ => {
                        print!("<-{}->", buffer_sz);
                    }
                };
            },
            HyAsyncChannel(ref sendr, ref recvr) => {
                print!("<--->");
            },
            _ => print!("Called print on an object that is not an Array, Map, or bool")
        };
    }

    #[no_mangle]
    pub fn hy_obj_println(&self) {
        self.hy_obj_print();
        print!("\n");
    }

    #[no_mangle]
    pub fn hy_obj_to_truthy_val(obj : &HyObj) -> i32 {
        match obj.typ {
            HyBool(b) => b as i32,
            _ => 0        
        }
    }

    #[no_mangle]
    pub fn hy_obj_to_str(&self) -> *const i8 {
        match self.typ {
            HyUndefined => {
                unsafe { "undefined".to_string().to_c_str().unwrap() }
            },
            HyNull => {
                unsafe { "null".to_string().to_c_str().unwrap() }
            },
            HyInt(i) => {
                unsafe { (format!("{}", i)).to_c_str().unwrap() }
            },
            HyFloat(f) => {
                unsafe { (format!("{}", f)).to_c_str().unwrap() }
            },
            HyString(ref s) => {
                let ret = unsafe { s.to_c_str_unchecked().unwrap() };
                ret
            },
            HyRegex(ref r) => {
                unsafe { (format!("/{}/", r)).to_c_str().unwrap() }
            },
            HyArray(ref vec) => {
                let mut arr_str = "[".to_string();
                HyObj::append_hy_obj_str_from_vec(&mut arr_str, vec);
                arr_str.push_str("]");
                unsafe{ arr_str.to_c_str_unchecked().unwrap() }
            },
            HyTuple(ref vec) => {
                let mut tuple_str = "(".to_string();
                HyObj::append_hy_obj_str_from_vec(&mut tuple_str, vec);
                tuple_str.push_str(")");
                unsafe{ tuple_str.to_c_str_unchecked().unwrap() }
            },
            HyMap(ref map) => {
                let mut map_str = "{".to_string();
                HyObj::append_hy_obj_str_from_map(&mut map_str, map);
                map_str.push_str("}");
                unsafe{ map_str.to_c_str_unchecked().unwrap() }
            },
            HyBool(b) => {
                if b {
                    unsafe{ "true".to_string().to_c_str().unwrap() }  
                } else {
                    unsafe{ "false".to_string().to_c_str().unwrap() }  
                }
            },
            _ => unsafe{ "Called print on an object that is not an Array, Map, or bool".to_string().to_c_str().unwrap() }
        }
    }

    fn append_hy_obj_str_from_vec(s : &mut String, vec : &Vec<Box<HyObj>>) {
        let mut objs = vec.iter();

        match objs.next() {
            Some(obj) => {
                let obj_str = obj.hy_obj_to_str();
            
                unsafe {
                    let c_str = CString::new(obj_str, false);
                    s.push_str(c_str.as_str().unwrap());
                }
            },
            None =>{}
        };

        for obj in objs {
            s.push_str(", ");

            let obj_str = obj.hy_obj_to_str();
            
            unsafe {
                let c_str = CString::new(obj_str, false);
                s.push_str(c_str.as_str().unwrap());
            }
        }
    }

    fn append_hy_obj_str_from_map(s : &mut String, map : &TreeMap<String, Box<HyObj>>) {
        let mut objs = map.iter();

        match objs.next() {
            Some((key, val)) => {
                s.push_str(key.as_slice());
                s.push_str(" : ");

                let val_str = val.hy_obj_to_str();
                unsafe {
                    let c_str = CString::new(val_str, false);
                    s.push_str(c_str.as_str().unwrap());
                }
            },
            None =>{}
        };

        for (key, val) in objs {
            s.push_str(", ");

            s.push_str(key.as_slice());
            s.push_str(" : ");

            let val_str = val.hy_obj_to_str();
            unsafe {
                let c_str = CString::new(val_str, false);
                s.push_str(c_str.as_str().unwrap());
            }
        }
    }

    ///////////////////////////////////////
    //          Obj Constructors         //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_new_map() -> Box<HyObj> {
        box HyObj {
            typ : HyMap(TreeMap::new())
        }
    }

    //Call String::to_c_str() -> CString::unwrap() to get this pointer
    #[no_mangle]
    pub fn hy_new_string(buf : *const i8) -> Box<HyObj> {
        let mut s = String::new();
        unsafe {
            let c_str = CString::new(buf, false);
            s.as_mut_vec().push_all(c_str.as_bytes());
        };
        box HyObj {
            typ : HyString(s)
        }
    }

    #[no_mangle]
    pub fn hy_new_int(i : int) -> Box<HyObj> {
        box HyObj {
            typ : HyInt(i)
        }
    }

    #[no_mangle]
    pub fn hy_new_float(f : f64) -> Box<HyObj> {
        box HyObj {
            typ : HyFloat(f)
        }
    }

    #[no_mangle]
    pub fn hy_new_array() -> Box<HyObj> {
        box HyObj {
            typ : HyArray(Vec::new())
        }
    }

    #[no_mangle]
    pub fn hy_new_tuple(size : int) -> Box<HyObj> {
        box HyObj {
            typ : HyTuple(Vec::with_capacity(size as uint))
        }
    }

    #[no_mangle]
    pub fn hy_new_bool(b : bool) -> Box<HyObj> {
        unsafe { 
            if b {
                // mem::transmute(&TRUE)
                box HyObj {
                    typ : HyBool(true)
                }
            } else {
                // mem::transmute(&FALSE)
                box HyObj {
                    typ : HyBool(false)
                }
            }
        }
    }

    #[no_mangle]
    pub fn hy_new_regex(pattern : HyObj) -> Box<HyObj> {
        let regex = match pattern.typ {
            HyString(pattern) => { 
                match Regex::new(pattern.as_slice()) {
                    Ok(r) => r,
                    Err(e) => fail!(e)
                }
            },
            _ => fail!("Regular expression constructors take a string pattern")
        };

        box HyObj {
            typ : HyRegex(regex)
        }
    }

    #[no_mangle]
    pub fn hy_new_sync_chan(buffer_sz : int) -> Box<HyObj> {
        let (sendr, recvr) = sync_channel(buffer_sz as uint);

        box HyObj {
            typ : HySyncChannel(sendr, recvr, buffer_sz)
        }
    }

    #[no_mangle]
    pub fn hy_new_async_chan() -> Box<HyObj> {
        let (sendr, recvr) = channel();

        box HyObj {
            typ : HyAsyncChannel(sendr, recvr)
        }
    }      

    #[no_mangle]
    pub fn hy_new_func(func : proc(HyObjSlice) : Send -> Box<HyObj>, name : *const i8) -> Box<HyObj> {
        box HyObj {
            typ : HyFunction(func, name)
        }
    }   

    //clone init params using 'hy_obj_clone' (to take care of semantics) into
    //the contexts param array...this should actually be done by the caller
    //...instead of iterating to put them in the array and then again to clone them,
    //clone them the first time

    #[no_mangle]
    pub fn hy_new_gen(
        start_block : *const i8,
        init_params : HyObjSlice,
        next        : proc(HyObjSlice, *const HyGenCtxt) : Send -> bool,
        num_state   : int, 
        num_yields  : int) -> Box<HyObj> {

        //create new context with the start block, params, and space for everything else        
        let ctxt = HyGenCtxt::new(start_block, init_params, num_state, num_yields);

        box HyObj {
            typ : HyGenerator(next, ctxt)
        }
    }       

    #[no_mangle]
    pub fn hy_new_undefined() -> Box<HyObj> {
        // unsafe{ mem::transmute(&UNDEFINED) }
        box HyObj {
            typ : HyUndefined
        }
    }

    #[no_mangle]
    pub fn hy_new_null() -> Box<HyObj> {
        // unsafe{ mem::transmute(&NULL) }
        box HyObj {
            typ : HyNull
        }
    }

    ///////////////////////////////////////
    //          Operator Functions       //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_add_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_int(i + j)
                    }
                    _ => {
                        fail!("+ only defined for ints atm")
                    }
                }
            },
            _ => {
                fail!("+ only defined for ints atm")
            }
        }
    }

    #[no_mangle]
    pub fn hy_sub_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_int(i - j)
                    }
                    _ => fail!("- only defined for ints atm")
                }
            },
            _ => fail!("- only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_mul_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_int(i * j)
                    }
                    _ => fail!("* only defined for ints atm")
                }
            },
            _ => fail!("* only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_div_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_int(i / j)
                    }
                    _ => fail!("/ only defined for ints atm")
                }
            },
            _ => fail!("/ only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_mod_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_int(i % j)
                    }
                    _ => fail!("% only defined for ints atm")
                }
            },
            _ => fail!("% only defined for ints atm")
        }
    }

    #[no_mangle]
    pub fn hy_lt_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_bool(i < j)
                    }
                    _ => fail!("< only defined for ints atm")
                }
            },
            _ => fail!("< only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_gt_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_bool(i > j)
                    }
                    _ => fail!("> only defined for ints atm")
                }
            },
            _ => fail!("> only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_lt_eq_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_bool(i <= j)
                    }
                    _ => fail!("<= only defined for ints atm")
                }
            },
            _ => fail!("<= only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_gt_eq_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_bool(i >= j)
                    }
                    _ => fail!(">= only defined for ints atm")
                }
            },
            _ => fail!(">= only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_eq_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_bool(i == j)
                    }
                    _ => fail!("== only defined for ints atm")
                }
            },
            _ => fail!("== only defined for ints atm")
        }
    }
    
    #[no_mangle]
    pub fn hy_neq_op(&mut self, other : &HyObj) -> Box<HyObj> {
        match self.typ {
            HyInt(i) => {
                match other.typ {
                    HyInt(j) => {
                        HyObj::hy_new_bool(i != j)
                    }
                    _ => fail!("!= only defined for ints atm")
                }
            },
            _ => fail!("!= only defined for ints atm")
        }
    }

    ///////////////////////////////////////
    //            Clone Function         //
    //  This handles reference vs value  //
    //  semantics                        //
    ///////////////////////////////////////

    //By Value types can be optimised so that calling some_func(1, 1.3, "str") 
    //frees the untouchable literals when it returns
    #[no_mangle]
    pub fn hy_obj_clone(this : *const HyObj) -> Box<HyObj> {
        unsafe {
            match (*this).typ {
                HyInt(i) => HyObj::hy_new_int(i),
                HyFloat(f) => HyObj::hy_new_float(f),
                HyString(ref s) => HyObj::hy_new_string(String::from_str(s.as_slice()).to_c_str_unchecked().unwrap()),
                HyBool(b) => HyObj::hy_new_bool(b),
                _ => mem::transmute(this)
            }
        }
    }

    ///////////////////////////////////////
    //            Map Functions          //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_map_insert(&mut self, key : Box<HyObj>, val : Box<HyObj>) -> Box<HyObj> {
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
    pub fn hy_map_delete(&mut self, key : Box<HyObj>) -> Box<HyObj> {
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
    pub fn hy_map_contains(&mut self, key : Box<HyObj>) -> Box<HyObj> {
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

    ///////////////////////////////////////
    //          Tuple Functions          //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_tuple_insert(&mut self, val : Box<HyObj>) {
        match self.typ {
            HyTuple(ref mut vec) => {
                if vec.capacity() == vec.len() {
                    fail!("Tried to add too many objects to a tuple");
                }

                vec.push(val);
            },
            _ => fail!("Called hy_tuple_insert on an object that is not a Tuple")
        };
    }

    ///////////////////////////////////////
    //          Array Functions          //
    ///////////////////////////////////////

    #[no_mangle]
    pub fn hy_array_push(&mut self, val : Box<HyObj>) {
        match self.typ {
            HyArray(ref mut vec) => {
                vec.push(val);
            },
            _ => fail!("Called hy_array_push on an object that is not an Array")
        };
    }
}