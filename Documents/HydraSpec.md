#Hydra

##Packages:

###Importing From Packages:
Packages are imported using the ```import``` keyword. Each package can be imported seperately or a list of packages can be imported at once

There are three places a package can be imported from. The first is from the ```std``` namespace. This houses all of the packages in the standard library. As such, you don’t need to worry about where those files are on your system. The second is from the ```pkg``` namespace. These files must be in a specific configurable folder and directory structure which is setup automatically if the built in package manager is used via ```$ hydra install <pkg name>```. The third option is a full path to a .hy file or a relative path from the current file to the package file being imported.

```hydra
import std.json, std.http, std.crypto //multiple imports
```

```hydra
import std.math           //math pkg imported from stdlib
import pkg.socketio       //socketio pkg imported from configured 
                          //packages folder
import ./util/utils.hy    //utils pkg imported directly from path
```

###Using Imports:
Packages may be imported directly or their exported classes and functions may be specifically imported. 
```hydra
import std.json           //json package imported from stdlib
import std.math.sqrt      //sqrt() function imported from std.math
import std.sync.WaitGroup //WaitGroup class imported from std.sync
```

If a whole package is imported, its functions and classes are accessed through the package name. If the package is imported from a relative or full path, the package will be able to be accessed through the name of the .hy file with the extension 
```hydra
import std.math
import std.sync
import ./util/utils.hy

var s = math.sqrt(4)
var wg = new sync.WaitGroup(3)
var stage_name = utils.Generate_Stage_Name()
```

Otherwise they can be used directly.
```hydra
import std.sync.WaitGroup
import std.math.sqrt

var wg = new WaitGroup(3)
var s = sqrt(4)
```

Imports may also be renamed with the ```as``` keyword.
```hydra
import std.sync.WaitGroup as WG

var wg = new WG(3)
```

###Creating A Package:
Any and all top level functions and classes that are not marked with the ```priv``` keyword are automatically exported
```hydra
function Func(a, b){ //exported
    return _Func(b, a)
}

priv function _Func(a, b){ //not exported
    return a + b, b - a
}

class A extends B  //exported
    function new(){
        super('A')
    }
end

priv class B  //not exported
    function new(name){
        this.name = name
    }
end
```