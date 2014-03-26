//Generators 101

////////////////////////////////////////////////////////////////////////////////
//                                Single Use                                  //
////////////////////////////////////////////////////////////////////////////////

//Top Level Generators
//-------------------------------------

gen function nums(max){
  for i in 0 upto max do
    yield i
  end
}

gen function double(generator){
  for i in generator do
    yield i * 2
  end
}

//1. inline use
for i in double(nums(10)) do
  print(i) //0,2,4,6,8,10,12,14,16,18
end

//2. use with variables
var list, doubles
list = nums(10)
doubles = double(list)

for i in doubles do
  print(i) //0,2,4,6,8,10,12,14,16,18
end

//Closure Generators
//-------------------------------------

var nums = *(max){
  for i in 0 upto max do
    yield i
  end
}

var double = *(generator){
  for i in generator do
    yield i * 2
  end
}

//1. inline use
for i in double(nums(10)) do
  print(i) //0,2,4,6,8,10,12,14,16,18
end

//2. use with variables
var list, doubles
list = nums(10)
doubles = double(list)

for i in doubles do
  print(i) //0,2,4,6,8,10,12,14,16,18
end

//Class Generators
//-------------------------------------
class My_Array extends Array

  My_Array(){
    super(arguments)
  }

  gen function rev(){
    var i = @length

    while i > 0 do
      yield @[i]
      i--
    end
  }

end

var marr = new My_Array(1, 2, 3, 4, 5, 6)
for i in marr.rev() do
  print(i) //6,5,4,3,2,1
end

////////////////////////////////////////////////////////////////////////////////
//                                Multiple Use                                //
////////////////////////////////////////////////////////////////////////////////

//Top Level Generators
//-------------------------------------
gen function chars(str){
  for i in 0 upto str.length do
    yield str[i]
  end
}

var chars1, chars2

chars1 = chars("abc")
chars2 = chars("abc")

chars1() //a, false
chars1() //b, false

chars2() //a, false

chars1() //c, false
chars1() //null, true ***generator is done***

chars2() //b, false

//Closure Generators
//-------------------------------------

var chars = *(str){
  for i in 0 upto str.length do
    yield str[i]
  end
}

var chars1, chars2

chars1 = chars("abc")
chars2 = chars("abc")

chars1() //a, false
chars1() //b, false

chars2() //a, false

chars1() //c, false
chars1() //null, true ***generator is done***

chars2() //b, false

//Class Generators
//-------------------------------------
class My_Array extends Array

  My_Array(){
    super(arguments)
  }

  gen function rev(){
    var i = @length

    while i > 0 do
      yield @[i]
      i--
    end
  }

end

var marr, rev1, rev2
marr = new My_Array(1, 2, 3, 4, 5, 6)

rev1 = marr.rev()
rev2 = marr.rev()

rev1() //6, false
rev1() //5, false

rev2() //6, false

////////////////////////////////////////////////////////////////////////////////
//                                Concurrent Use                              //
////////////////////////////////////////////////////////////////////////////////

//Class Generators
//-------------------------------------
class My_Array extends Array

  My_Array(){
    super(arguments)
  }

  gen function rev(){
    var i = @length

    while i > 0 do
      yield @[i]
      i--
    end
  }

end

var marr = new My_Array(1, 2, 3, 4, 5, 6)

//Multiple Generator Instances
//-------------------------------------

//Both get their own generator instance when they call rev() BUT both could be messed up
//as length isnt protected
spawn (ma){
  for i in ma.rev() do
    print(i) //6,5,4,3,2,1
  end
}(marr)

spawn (ma){
  for i in ma.rev() do
    print(i) //6,5,4,3,2,1
  end
}(marr)

marr.pop() //this could cause a data race as the generators get the real reference to
//the marr.length property

//Single Generator Instances
//-------------------------------------

var rev_elems = marr.rev() //generators should get captured by reference in closures

spawn (){
  for i in rev_elems do
    print(i) //6,5,2 ***actual order depends on scheduling***
  end
}

spawn (){
  for i in rev_elems do
    print(i) //4,3,1 ***actual order depends on scheduling***
  end
}
