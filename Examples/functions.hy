//Numbers, Bools, Strings => passed by value
//Hashes, Arrays, Chans, Generators, Objects => passed by reference
//-------------------------------------

function negate(b){
  b = !b
}

var bool = true
negate(bool)
print(bool) //true


function inc(a){
  a += a
}

var num = 1;
inc(num)
print(num) //1

var string = "a"
inc(string)
print(string) //"a"

var arr = [1]
inc(arr)
print(arr) //[1, 1]

function change(h){
  h.1 = 2
}

var hash = {'1': 1}
change(hash)
print(hash) //{ '1' : 2 }

function sender(c){
  1 -> c
}

var chan = <-->
spawn sender(chan)
print(<-chan) //1

function caller(genrtr){
  print(genrtr())
}

var g = *(){
  for i in 0 upto 3 do
    yield i
  end
}

var genrtr = g()

print(genrtr()) //0
caller(genrtr)  //1
print(genrtr()) //2

//Same semantics for assignment
//-------------------------------------

class Builtins
  Builtins(){
    @str  = "a"
    @num  = 1
    @bool = true

    @hash = { '1' : 1 }
    @arr  = [1]
    @chan = <-2->
  }

  function changer(){
    return (){
      @str  = "b"
      @num  = 2
      @bool = false
      @hash = { '2' : 2 }
      @arr  = [2]
      1 -> @chan
    }
  }

end

var builtin = new Builtins()

var s, n, b, h, a, c

s = builtin.str
print(s) // "a"
s.upcase() // "A"
print(builtin.str) //"a"

b = builtin.bool
print(b) // true
b.negate() // false
print(builtin.bool) //true

h = builtin.hash
print(h) // { '1' : 1 }
h.2 = 2
print(builtin.hash) //{ '1' : 1, '2' : 2 }

a = builtin.arr
print(a) // [1]
a.push(2)
print(builtin.arr) // [1, 2]

c = builtin.chan
1 -> c
print(<-builtin.chan) //1


//-------------------------------------
//Closure closing over values, copying some and taking references of others

var num, str, bool, hash, arr, chan

num = 1
bool = true
str  = 'a'
hash = { '1' : 1 }
arr  = [1]
chan = <-2->

var clos = (){
  num  = 2
  bool = false
  str  = 'b'
  hash = { '2' : 2 }
  arr  = [2]
  1 -> chan
}

clos()

print(num) // 1
print(bool)// true
print(str) // 'a'
print(hash)// { '1' : 1 }
print(arr) // [1]
print(<-chan)// 1

//-------------------------------------
//Closure closing around, and thus copying implicitly an object

var builtins = new Builtins()

var clos2 = (){
  builtins.num  = 2
  builtins.bool = false
  builtins.str  = 'b'
  builtins.hash = { '2' : 2 }
  builtins.arr  = [2]
  1 -> builtins.chan
}

clos2()

print(builtins.num) // 1
print(builtins.bool)// true
print(builtins.str) // 'a'
print(builtins.hash)// { '1' : 1 }
print(builtins.arr) // [1]
print(<-builtins.chan)// 1

//-------------------------------------
//Closure being passed a reference

var clos3 = (b){
  b.num  = 2
  b.bool = false
  b.str  = 'b'
  b.hash = { '2' : 2 }
  b.arr  = [2]
  1 -> b.chan
}

builtins = new Builtins()

clos3(builtins)

print(builtins.num) // 2
print(builtins.bool)// false
print(builtins.str) // 'b'
print(builtins.hash)// { '2' : 2 }
print(builtins.arr) // [2]
print(<-builtins.chan)// 1

//-------------------------------------
//Closure with bound parameter

builtins = new Builtins()

var clos4 = (b){
  b.num  = 3
  b.bool = true
  b.str  = 'c'
  b.hash = { '3' : 3 }
  b.arr  = [3]
  2 -> b.chan
}(builtins)

clos4()

print(builtins.num) // 3
print(builtins.bool)// true
print(builtins.str) // 'c'
print(builtins.hash)// { '3' : 3 }
print(builtins.arr) // [3]
print(<-builtins.chan)// 2

//-------------------------------------
//Closure capturing @<property>

builtins = new Builtins()
var change = builtins.changer()

print(builtins.num) // 1
print(builtins.bool)// true
print(builtins.str) // 'a'
print(builtins.hash)// { '1' : 1 }
print(builtins.arr) // [1]

change()

print(builtins.num) // 2
print(builtins.bool)// false
print(builtins.str) // 'b'
print(builtins.hash)// { '2' : 2 }
print(builtins.arr) // [2]
print(<-builtins.chan)// 1
