//For in semantics:
//-------------------------------------
//the variables between the 'for' and 'in' are restricted to the loop scope and
//after every iteration they are passed back into the generator so that it can
//take into account their change if need be...otherwise the generator can ignore
//the change and make the loop un-alterable once it starts changing the object
//after 'in' in the loop will only change the loop if that objects for_in generator
//function takes it into account

//For in syntax
//-------------------------------------

for i in @num to @str.length do

end

for i in @num..@str.length do

end

for i in 0 upto 10 by (i){ return i * 2 + 1 } do

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

  curr = yield curr

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
        var i = @_start_val

        if !@_step then
          @_step = (i){ return i += 1 }
        else if @_step.is_a? Int or @_step.is_a? Float then
          @_step = (i){ return i += @_step }
        else if @_step.is_not_a? Function then
          throw 'Wrong step type'
        end

        if @_incl then @_end_val++ end

        i = yield i

        while i < @end_val do
          i = @_step(yield i)
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
  seq = start_num upto end_num by step
  i, done = seq.for_in_to_by()

  while !done do
    //your code here...

    i, done = seq.for_in_to_by(i)
  end
}

for_in_by(0, 6, 2)

//Range Types
//-------------------------------------

//exclusive Range
0..6 by 2 //0,2,4
0 upto 6 //0,2,4
new Range(0, 6, 2, false) //0,2,4

//Inclusive Range
0...6 by 2 //0,2,4,6
0 through 6 //0,2,4,6
new Ranger(0, 6, 2, true)
