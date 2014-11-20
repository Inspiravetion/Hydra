

struct<'a> Import<'a> {
    path : &'a str,
    items : Vec<&'a str>
}

impl<'a> Import<'a> {
    pub fn new(path : &'a str, items : Vec<&'a str>) -> Import<'a>{
        Importer {
            path : path          
            items : items
        }
    }      
}

pub fn resolve_imports<'a>(imports : Vec<Import<'a>>, builder : Arc<Mutex<Builder>>) {
    for import in imports.iter() {
        spawn(proc(){
            //get package name
            let pkg = import.path.split(".").next().map(|p| p.split("/").last().unwrap()).unwrap();
            
            //make new builder with 
            let mut temp_builder = Builder::new_from_bitcode(pkg, import.path);

            //pull out required items
            for item in import.items.iter() {
                let item_name = format!("{}_PUB_{}", pkg.to_ascii_upper(), item);
                {
                    let target_builder = builder.lock();

                }
                //put them into the given builder
            }
        });
    }
}
