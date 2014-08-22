#![crate_name = "hy_obj_types"]
#![comment = "A Dummy Crate Whose ByteCode can be parsed easily to get access to the HyObj type...hacky I know"]
#![license = "MIT"]
#![crate_type = "dylib"]

extern crate hy_obj;

use hy_obj::HyObj;

struct Dummy {
    obj : HyObj
}

impl Dummy {
    pub fn dummy(self){
        
    }
}