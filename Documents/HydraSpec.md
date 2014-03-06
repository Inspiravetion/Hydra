#Hydra

##Intro:

```hydra
function main() {
    var nums, noms, odds, greetings, wg

    greetings = <-->
    nums = [1, 2]
    noms = ["Tim", "Eston", "Aaron", "Ben"]

    odds = nums.map((x){ x * 2 - 1 })
    wg   = new WaitGroup(odds.length)

    for num in odds do
        spawn (){
            var msg  = "${noms[num]} says hello from a spawned head!"
            msg -> greetings
            wg.done()
        }
    end

    spawn (){
        wg.wait()
        close(greetings)
    }

    for greeting in greetings do
        println(greeting)
    end
}
```

##Packages:

###Importing From Packages:
Packages are imported using the ```import``` keyword. Each package can be imported seperately or a list of packages can be imported at once

There are three places a package can be imported from. The first is from the ```std``` namespace. This houses all of the packages in the standard library. As such, you don’t need to worry about where those files are on your system. The second is from the ```pkg``` namespace. These files must be in a specific configurable folder and directory structure which is setup automatically if the built in package manager is used via ```$ hydra install <pkg name>```. The third option is a full path to a .hy file or a relative path from the current file to the package file being imported.

```hydra
import std::json, std::http, std::crypto //multiple imports
```

```hydra
import std::math           //math pkg imported from stdlib
import pkg::socketio       //socketio pkg imported from configured
                          //packages folder
import ./util/utils.hy    //utils pkg imported directly from path
```

###Using Imports:
Packages may be imported in their entirety or their exported classes, functions, and variables may be specifically imported.
```hydra
import std::json           //json package imported from stdlib
import std::math.sqrt      //sqrt() function imported from the math package
import std::sync.WaitGroup //WaitGroup class imported from the sync package
import std::os.NUM_CORES   //NUM_CORES variable imported from the os package
import pkg::socketio.Socket //Socket class imported from socketio package
import ./util/utils.hy::Logger //Logger class imported from utils package
```

Multiple classes, functions, and variables may be imported from a package with the ```from``` keyword.
```hydra
import json, os, sync from std
import sqrt, ceil from std::math
import Socket, Client from pkg::socketio
import Logger from ./util/utils.hy
```

If a whole package is imported, its functions, classes, and variables are accessed through the package name. If the package is imported from a relative or full path, the package will be able to be accessed through the name of the .hy file without the extension
```hydra
import std::math
import std::sync
import ./util/utils.hy

var s = math.sqrt(4)
var wg = new sync.WaitGroup(3)
var inf = math.INFINITY
var stage_name = utils.Generate_Stage_Name()
```

Otherwise they can be used directly.
```hydra
import std::sync.WaitGroup
import std::math.sqrt
import std::math.INFINITY
import Logger from ./util/utils.hy

var wg = new WaitGroup(3)
var s = sqrt(4)
var inf = INFINITY
var logger = new Logger()
```

Imports may also be renamed with the ```as``` keyword.
```hydra
import std::sync.WaitGroup as WG

var wg = new WG(3)
```

###Creating A Package:
To export a top level class, top level function , or top level variable, use the ```export``` keyword. There are two syntaxes for this. The first lets you export at the definition of the exported item. For variables, the ```export``` keyword implicitly acts as a ```var``` keyword as well. The second, and preferred method is explicitly clumping all of your exports together at the beginning/end of the file.

#####First Way

```hydra

var variable = 123.456 //not exported

export VARIABLE = '123.456' //exported

function _Func(a, b){ //not exported
    return 15 + a + b, b - a - 11
}

export function Func(a, b){ //exported
    return _Func(b, a)
}

class ClassB  //not exported
    ClassB(name){
        @name = name

        while true do
            //something...
        end
    }
end

export class ClassA extends ClassB  //exported
    ClassA(){
        super('ClassA')
    }
end
```

#####Preferred Way
```hydra

var variable = 123.456 //not exported

var VARIABLE = '123.456' //exported

function _Func(a, b){ //not exported
    return 15 + a + b, b - a - 11
}

function Func(a, b){ //exported
    return _Func(b, a)
}

class ClassB  //not exported
    ClassB(name){
        @name = name

        while true do
            //something...
        end
    }
end

class ClassA extends ClassB  //exported
    ClassA(){
        super('ClassA')
    }
end

//exports
export VARIABLE
export Func
export ClassA
```

##Built In Types:

###Function:
There are two types of functions. The first is a named, top level, function and the second is an anonymous closure. Both of these may also have their semantics changed based on whether or not they are generators. A generator function can ```yield``` a value which will suspend its execution, giving the value and control back to its caller. The next time it is called it will resume execution from where it is left off.

Top level functions are functions that are at the top level of their class or package scope. Package functions may be passed around as values via their name.
```hydra
function _foo(){ //non exported package top level function
    return bar
}

export class Foo
    function foo(){ //class top level function
        return _foo //returns another top level function...circumventing _foo not being exported
    }
end
```

Closures are anonymous functions that enclose over the values in their current scope. Syntactically, they differ from top level functions in that they do not need the ```function``` or ```gen``` keywords. To make a closure into a generator, a ```*``` is needed before the first parenthesis. As far as semantics go, enclosed values are implicitly copied to discourage variable inconsistency in concurrent processing. However, values may be passed by reference by passing them in as parameters. This has implications on how to invoke a closure but we will get to that in a second.
```hydra
var name = 'Charlie'
var whats_my_name = (){
    print(name)
}

whats_my_name() //Charlie
name = 'Chuckles'
whats_my_name() //Charlie

var name2 = 'Charlie'
var whats_my_name2 = (n){
    print(n)
}(name2) //n now bound to name...this does NOT invoke the closure

whats_my_name2() //Charlie
name2 = 'Chuckles'
whats_my_name2() //Chuckles

function get_big_string(){
    return "omg it's a generator function!!!"
}

var word_generator = *(){
    var words = get_big_string().split()
    for word in words do
        yield word
    end
}

word_generator() //'omg'
word_generator() //"it's"
word_generator() //'a'
```

As you may have noticed, the trailing parenthesis on the closure definition do not invoke it. Instead they serve as a short syntax to bind values to the parameters of a closure. This has two implications. The first, and more prevalent one is that if you have a closure that has bound parameters and takes in new parameters on each call, you will have to place all of the bound parameters at the front of the parameter list. The second, is that if you want to immediately invoke a closure then it will have to be wrapped in parenthesis so that it can be evaluated and then invoked.
```hydra
var name = 'Charlie'
var whats_my_name = (n, suffix){
    print(n + suffix)
}(name) //n now bound to name, suffix is not bound to anything

whats_my_name(' the king') //Charlie the king
name = 'Chuckles'
whats_my_name(' the chump') //Chuckles the chump

var num = ((){
    return 14
})() //closure invoked
```

The ```@``` operator lets functions access variables in their calling context. For a class level function, ```@``` refers to the instance of the class that invokes it. In a closure, ```@``` refers to the context in which the closure was defined. If this is within a class, ```@``` will refer to the instance of the class the closure was defined in. If the closure is created within a package, ```@``` refers to the package scope.

```hydra
class Foo

    function new(b){
        @bar = b
    }

    function baz(){
        @bar += 2 //class variable accessed through '@'
        return bar //ERROR: 'bar' not in reachable context
    }

    function inc(amount){
        return (){
            return @bar += amount
        }
    }

end

var f = new Foo(1)
var plus2 = f.inc(2)

plus2() //3
plus2() //5

f.bar //5
```

###Array:
Arrays grow dynamically and can hold any other type of object. This allows for nesting of hashes and other arrays as well. They can also be initialized in place.

```hydra
var arr = []
arr.push(1) // arr now [1]
arr.push([]) // arr now [1, []]
arr.pop() // returns []...arr now [1]
arr[0] // 1

//array literal with initial values
arr = [1, [], {'key' : 'val'}, 'string', true, (a, b){ return a * b }]
```

###Hash:
Hashes map one object, the key, to another, the value. While they are usually used to map strings to objects, any object can be used as a key. If the key is a string, its value can be obtained by accessing a property of the hash with the same name as the string. Hashes have a ```get``` function that takes any key and returns the value. Syntax sugar for the ```get``` method is similar to getting a value at an array index, ie. ```<hash>[<key>]```. The ```put``` method and ```<hash>[<key>] = <val>``` can be used to put things in the hash. If you attempt to acces a key that is not in the hash it will throw an error. The ```has_key``` method returns true if the hash has the specified key. String and Number keys are evaluated by their value so that calling ```get``` on two different String/Number objects with the same value will return the same value from the hash.

```hydra
var hash = {}

hash.a = 'a'
hash['b'] = 'b'

if hash.has_key('c') then
    print(hash.c) //not executed
else
    print("hash.c doesn't exist") //executed
end

print(hash) //{ a : 'a', b : 'b'}
hash.remove('a')
print(hash) //{ b : 'b'}

hash.mult = (x, y){
    return x * y
}
hash.mult(2, 5) //10

hash.arr = [0, 1, 2, 3, 4, 5]
hash.arr[3] //3

var arr1 = []
var arr2 = []

hash[arr1] = 1
hash[arr2] = 2

hash[arr1] //1
hash[arr2] //2
```

###String:
Strings can use single or double quotes and can be formatted via interpolation or concatenation.

```hydra
var str1 = 'abc'
var str2 = "123"

var interpolated = 'str1: ${str1}' //'str1: abc'
var concatenated = 'str2: ' + str2 //'str2: 123'
```

###Int:
Integers can be in base 10 or hex form.

```hydra
var i = 123
var h = 0xBEEF1234
```
###Float:
Floats can only be expressed in base 10 and must have at least one number after the decimal place. Otherwise they will be treated as an Int.

```hydra
var f = 123.0
```

###Channel:
Channels act as queues that are shared between different concurrent heads. Channels can be instantiated by their unbuffered literal ```<-->``` or their buffered literal ```<-int_value->```. Unbuffered channels block their current head until another one receives from the channel. Likewise, receives on an unbuffered channel block the current head until there is something in the channel to receive from. While channels have ```send``` and ```recv``` functions, the ```->``` and ```<-``` operator can be used to send to or receive from a channel respectively.

```hydra
var val

var c = <-2->
0 -> c //channel sent 0
val = <- c //channel received 0
val //0

c.send(1) //channel sent 1
val = c.recv() //channel received 1
val //1
```

Unbuffered channel semantics
```hydra
//HEAD1
var unbuffered = <-->   //unbuffered channel literal

spawn(){
    //HEAD2
    //this head blocked until  HEAD1 puts a value in the channel
    <-unbuffered //HEAD1 unblocked
}

1 -> unbuffered //HEAD1 now blocked
```

Buffered channel semantics
```hydra
//HEAD1
var buffered   = <-10-> //burffered channel literal

from 0 to 9 do
    1 -> buffered //10 non blocking sends...channel full
end

spawn(){ //HEAD2 (assume this doesn't start until after the next instruction)
    <-buffered //HEAD1 now unblocked
}

1 -> buffered //buffered channel is full...HEAD1 now blocked

```

###Exception:
Throwing an exception is as easy as using the ```throw``` keyword and giving it a string. Alternatively, the Exception class can be extended so that extra information can be given to it. When ```throw``` is given an Exception or subclass of an Exception, it calls ```to_string``` on the object for the error message.

```hydra
throw 'an exception just cuz' //'ERROR: an exception just cuz'

throw new Exception('the verbose way') //'ERROR: the verbose way'

class CustomException extends Exception
    CustomException(message){
        this.message = message
    }

    function to_string(){
        return 'Custom Error: ${this.message}'
    }
end

throw new CustomException('My custom message!!!!') //'Custom Error: My custom message!!!!'
```

##Classes
Classes have public, private, class and instance variables. Functions on the other hand are just for an instance. Instance variables are referenced with the ```@``` operator while class variables are referenced with the ```#``` operator. Private variables and functions have names that start with ```_```. As class variables can be accessed from any instance of the class, they are implicitly protected on reads/writes by a mutex so that they are head-safe.

```hydra
export DEFAULT_SIZE = 10 //exported package field

class Foo

    //private class variables

    #_class_val = 7

    //public class variables

    #pub_class_val = 10

    //private methods

    function _bar(){
        return @a + @b + @DEFAULT_SIZE + #_class_val
    }

    //constructor

    Foo(a, b){
        @_a = a //priv field
        @b = b      //public field
        @size = DEFAULT_SIZE
    }

    //public methods

    function bar(chan){
        spawn (){
            @_bar() -> chan
        }  
    }

    function change_class_val(val){
        #_class_val = val //implictely protected by mutex on reads/writes
    }

end

var foo = new Foo(1,2)
foo._a    //ERROR: foo, of type Foo, does not have a public field '_a'
foo.b    //2
foo.size //10

var c = <-->
foo.bar(c)
<-c //20

var foo2 = new Foo(1,2)
foo2.change_class_val(17)
foo2.bar(c)
<-c //30

foo.bar(c)
<-c //30

foo.pub_class_val //10
foo.pub_class_val = 25
foo.pub_class_val //25
```

###extends:
Classes can extend multiple classes. The order in which they extend those classes is important. When a subclass tries to access a superclass's property via ```@<property>```, Hydra checks the first Class after the ```extends``` keyword and then the second and then the third until it either finds the correct property or throws an error.

###super(s):
The ```super``` keyword can be used to access the methods and variables of a class's superclasses. A superclasses constructor can be called one of three ways. The first is to use ```super``` similar to a namespace ie. ```super.<name of class>(/* params... */)```. The second is to use the ```supers()``` function. This is for when a class inherits from more than one superclass. It takes a variable number of arrays, each containing the parameters to pass to its respective superclass constructor. Note that when using this method order matters. The last way is a simplified syntax for when you either only extend one superclass or you only want to call the constructor of the first superclass after the ```extends``` keyword. In this case the parameters are passed to ```super``` as a function call. If a superclass's constructor is not called, all of the variables that the constructor would have initialized are set to ```null```.

```hydra

class A

    A(init_num){
        @num = init_num
    }

end

class B

    B(init_string){
        @string = 'In B ' + init_string
    }

end

class C extends A

    C(){
        super(10)
    }

end

class D extends A, B

    D(){
        //First way to call the constructor of multiple superclasses
        super.A(15)
        super.B('From D')
    }

end

class E extends A, B

    E(){
        //Second way...order matters here
        supers(
            [20],
            ['From E']
        )
    }

end

class F extends A, B

    F(){
        //Wrong order
        supers(
            ['From F'],
            [25]
        )
    }

end

class G extends A, B

    G(){
        super(30)
    }

end

var c = new C()
c.num //10

var d = new D()
d.num //15
d.string //'In B From D'

var e = new E()
e.num //20
e.string //'In B From E'

var f = new F()
f.num //'From F'
f.string //'In B 25'

var g = new G()
g.num //30
g.string //null
```

The ```super``` keyword can also be used to call a superclass's method directly. Again, ```super``` may be used similar to a namespace.

```hydra
class Dummy
    Dummy(){}

    function error(msg){
        print('lols im not what you meant to call')
    }
end

class Base
    Base(){}

    function error(msg){
        print('Error: ${msg}')
    }
end

class Foo extends Dummy, Base
    Foo(){}

    function bar(zero){
        if zero < 0 then do
            super.Base.error("wompppp...too small")
        else if zero == 0 then do
            print('shwweeeeet')
        else do
            @error('wompppp...too big')
        end
    }
end

var f = new Foo()
f.bar(-1) // 'Error: wompppp...too small'
f.bar(0)  // 'shwweeeeet'
f.bar(1)  // 'lols im not what you meant to call'
```

##Control Structures

###For Loop
```hydra
function simple_for_loop(arr){
  //control structures get their own scope...no need for var here
  for i = 0; i < arr.length; i++ do
    print('i: ' + i);
  end
}

function tricky_for_loop(){
  var i, arr;
  i = 10;
  arr = []

  arr.push(0);

  //i is i local to for loop
  for var i = 0; i < arr.length; i++ do
    print('i: ' + i); //0: 0
  end

  print(i); //'10'

  //i is outter i
  for i = 0; i < arr.length; i++ do
    print('i: ' + i); //0: 0
  end

  print(i); //1
}
```

###For In Loop(mention for_in generator function api)
```hydra
  function map_for_in(){
    var map = { one: 1, two: 2 };

    for key, val in map do
      print('key: ' + key + ' val: ' + val);
    end
  }

  function arr_for_in(){
    var arr = ['1', '2', '3'];

    for i, val in arr do
      print('index: ' + i + ' val: ' + val);
    end
  }

  function str_for_in(){
    var str = 'abc123';

    for i, char in str do
      print('index: ' + i + ' char: ' + char);
    end
  }

  function chan_for_in(chan){
    for val in chan do
      print('recieved ' + val + ' from channel');
    end

    print('channel closed');
  }
```

###While Loop
```hydra
  function while_loop(){
    var bool = true

    while bool do
      bool = some_func_call();
    end
  }
```
###From To By Loop
```hydra
  function from_to_by_loop(){
    //go from start to end giving the number
    from @num to @str1.length do (i){
      print('i: ' + i); // 0 1 2 3 4
    }

    //go from 0 to 15 by steps of 5
    from 0 to 15 by 5 do (i){
      print('i: ' + i); //0 5 10 15
    }

    //go from 0 to 14 by steps of 5
    //*** can't violate bounds so 14 isn't given ***
    from 0 to 14 by 5 do (i){
      print('i: ' + i); //0 5 10
    }

    //dynamic step value
    //evaluate step function everytime
    from 0 to 100 by (i){ return i * 2 + 1 } do (i){
      print('i: ' + i); //0 1 3 7 15 31 63
    }
  }

  function literal_from_to_by_loop(){
    //go from start to end giving the number
    @num..@str1.length do (i){
      print('i: ' + i); // 0 1 2 3 4
    }

    //go from 0 to 15 by steps of 5
    0..15 by 5 do (i){
      print('i: ' + i); //0 5 10 15
    }

    //go from 0 to 14 by steps of 5
    //*** can't violate bounds so 14 isn't given ***
    0..14 by 5 do (i){
      print('i: ' + i); //0 5 10
    }

    //dynamic step value
    //evaluate step function everytime
    0..100 by (i){ return i * 2 + 1 } do (i){
      print('i: ' + i); //0 1 3 7 15 31 63
    }
  }

  function from_to_by_loop_without_index(){
    //runs 15 times
    from 0 to 14 do
      do_something()
    end

    //runs 15 times
    0..14 do
      do_something()
    end

    //runs 8 times
    from 0 to 14 by 2 do
      do_something()
    end

    //runs 8 times
    0..14 by 2 do
      do_something()
    end
  }
```
###Given Is Statement
```hydra
  function given_is(obj){
    given obj
      is String do
        string_stuff(obj);
        break;
      is Array do
        array_stuff(obj);
        break;
      is 0 or 2 do //allow to check for multiple cases
        number_stuff(obj);
        break;
      else do
        default();
    end
  }
```

###Wait For Either Or Statement
```hydra
  function wait_for_either_or(in_chan1, in_chan2, out_chan){
    var recvd, clsd;

    while true do
      wait_for
        either recvd, clsd <- in_chan1 then do
          if clsd then
            stop();
          else
            out_chan <- do_something(recvd);
          end
        or recvd, clsd <- in_chan2 then do
          if clsd then
            break;
          else
            out_chan <- do_something2(recvd);
          end
        or do
          default();
        end
      end
    end
  }
```
