//For in semantics:
//-------------------------------------
//The variables between the 'for' and 'in' are restricted to the loop scope and
//after every iteration they are passed back into the generator so that it can
//take into account their change if need be. Otherwise the generator can ignore
//the change and make the loop un-alterable once it starts. changing the object
//after 'in' in the loop will only change the loop if that objects for_in generator
//function takes it into account

//To allow a class to be able to be used in a for in loop, it can opt in in one of
//two ways. By default, for in will look for a public generator function on the object
//with the name 'for_in'. Alternatively, for in can be given a generator instance that it will
//call directly. ie.

class Binary_Tree

  Binary_Tree(){
    //initialization...
  }

  gen function preorder(maxdepth=-1){
    //yield values in preorder...
  }

  function inorder(maxdepth=-1){
    return *(){
      //yield values in inorder...
    }
  }

  function postorder(maxdepth=-1){
    var copy_me = @property
    var genner = *(){
      //yield values in postorder...
      //copy property instead of giving direct access to it
    }
    return genner()
  }

end

btree = new Binary_Tree()

//add a bunch of stuff...

for val in btree.preorder() do //invoking generator function to get generator instance
  //print out a preorder representation
end

for val in btree.postorder() do //invoking function to get generator instance
  //print out a postorder representation
end

for val in (btree.inorder())() do //invoking function to get generator closure then invoking
                                  //generator closure to get generator instance
  //print out a inorder representation
end

//For in syntax
//-------------------------------------

for i in @num to @str.length do

end

for i in @num..@str.length do

end

for i in 0 upto 10 by (i){ return i * 2 + 1 } do

end

for i in 0 through 10 by (i){ return i * 2 + 1 } do

end

for i in 0...10 do

end

for _ in 0..10 do

end

//Different ways to implement for in by

//1. This is equal to...
for i in 0 upto 6 by 2 do
  //your code here...
end

//2.
//in gen closure form
var range_gen = *(curr, end_val, step, incl){

  if !step then
    step = (i){ return i += 1 }
  else if step.is_a? Int or step.is_a? Float then
    step = (i){ return i += step }
  else if step.is_not_a? Function then
    throw 'Wrong step type'
  end

  if incl then end_val++ end

  while curr < end_val do
    curr = step(yield curr)
  end
}

for i in range_gen(0, 6, 2) do
  //your code here...
end

//3.
//in class form...
class Range  //New Builtin Class

  Range(start_val, end_val, step_val, inclusive){
    @_start_val = start_val
    @_end_val = end_val
    @_step = step_val
    @_incl = inclusive
  }

  //entry point for 'for in' loop...must be generator
  gen function for_in(){
        var curr = @_start_val

        if !@_step then
          @_step = (i){ return i += 1 }
        else if @_step.is_a? Int or @_step.is_a? Float then
          @_step = (i){ return i += @_step }
        else if @_step.is_not_a? Function then
          throw 'Wrong step type'
        end

        if @_incl then @_end_val++ end

        while curr < @end_val do
          curr = @_step(yield curr)
        end
  }

end

for i in new Range(0, 6, 2) do
  //your code here...
end

//For in loop syntactic sugar for the following
//-------------------------------------

var for_in_by = (start_num, end_num, step){
  var seq, done, i
  seq = start_num upto end_num by step //gives a generator
  i, done = seq()

  while !done do
    //your code here...

    i, done = seq()
  end
}

for_in_by(0, 6, 2)

//Range Types
//-------------------------------------

//exclusive Range Generator
0..6 by 2 //0,2,4
0 upto 6 by 2//0,2,4
new Range(0, 6, 2, false).for_in() //0,2,4

//Inclusive Range Generator
0...6 by 2 //0,2,4,6
0 through 6 by 2 //0,2,4,6
new Ranger(0, 6, 2, true).for_in()
