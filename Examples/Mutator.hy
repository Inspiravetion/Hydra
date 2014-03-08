1.for vs for in local vs outer scope variables
  //for in to by loop gives you new variable while letting you initialize it with
  //outer variables so there is no confusion of scope
2. from to by loop can you change where you are in the loop dynamically?
  //for in to by loop lets you change the index you are being fed and the
  //end index you are checking against so you can restart or shift or elongate
  //the loop as you see fit

for i in @num to @str.length do

end

for i in @num..@str.length do

end

for i in 0 to 10 by (i){ return i * 2 + 1 }do

end

for i in 0..10 do

end

for _ in 0..10 do

end

//1. This is equal to...
for i in start_num to end_num by step do
  //your code here...
end



//2. All of this...

//mutator function...works like a generator except it
//takes in a reference to an object and notifies when it changes
//the object...the important part here is that it only returns whether
//or not it is done because the calling function has a reference to the
//object passed in so it sees the changes the mutator made to it...
//the kicker is that the calling function can change the value of the object
//and the mutator function will see the change the next time it is called but continue
//from where it left off...In the following example it lets u rewind the loop by
//changing the value of i at any time...which is what we want for the
//
// for i in start_num to end_num by step do
     //your code here...
// end
//
//loop...
var for_in = *!(end_num, i){ //possible syntax for mutator function
    i = start_num  //init variable for your needs

    if step.is_a? Number then
      step = (i){ i += step }(i)
    else if step.is_not_a? Function then
      throw 'Wrong step type'
    end

    while i < end_num do
      notify i     //new keyword to yield back to the calling func...might not need it
      i = step(i)
    end
}(end_num) //gives you a real reference to end_num so that you can
          //change either end_num or i

var i, done

done = for_in(i)  //init function with uninitialized variable

while !done do

  //your code here...

  done = for_in() //returns true when the mutator function finishes
end


//in class form

class Sequence

  Sequence(start_val, end_val, step_val){
    @_start_val = start_val
    @_end_val = end_val
    @_step = step_val
  }

  mut function for_in_to_by(i){
        i = @_start_val

        if @_step.is_a? Number then
          @_step = (i){ i += @_step }(i)
        else if @_step.is_not_a? Function then
          throw 'Wrong step type'
        end

        while i < @end_val do
          notify i
          i = @_step(i)
        end
  }

end

//So now you could simplify the mutator closure example with

var seq, done, i
seq = new Sequence(start_num, end_num, step)
done = seq.for_in_to_by(i)

while !done do
  //your code here...

  done = seq.for_in_to_by()
end
