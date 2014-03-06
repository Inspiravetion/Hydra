module control_structures

class Control

  /**
   *  'do' always ends with 'end'
   *  'run' always ends with '(p1, p2, p3){ //some func };'
   */

  function new(){
    this.num  = 0;
    this.map  = {};
    this.arr  = [];
    this.chan = <<>>;
    this.bool = true;
    this.str1 = 'str1';
    this.str2 = "str2";
    this.regx = /\w*/;
    this.file = open('myFile.txt');
    this.func = (param){
      return param < 1;
    };
  }

  function map_for_in(){
    for key, val in this.map do
      print('key: ' + key + ' val: ' + val);
    end
  }

  function arr_for_in(){
    for i, val in this.arr do
      print('index: ' + i + ' val: ' + val);
    end
  }

  function chan_for_in(){
    for val in this.chan do
      print('recieved ' + val + ' from channel');
    end
    print('channel closed');
  }

  function str_for_in(){
    for i, char in this.str1 do
      print('index: ' + i + ' char: ' + char);
    end
  }

  function io_for_in(){
    var total_words_in_file = 0;

    //default for in for files splits them as lines
    for line_num, line in this.file do
      print('line: ' + line_num);
      for word_num, word in line.split(/\s/) do //create an array of strings then loop through it
        print('word: ' + word_num + ' of line ' + line_num + ' => ' + word);
        total_words_in_file++;
      end
    end

    print('total word count: ' + total_words_in_file);
  }

  generator function for_in(){ //for array
    for i = 0; i < this.arr.length; i++ do
      yield i , this.arr[i];
    end

    // if you use a for in loop on this class it will act like its local arr
  }

  function simple_for_loop(){
    //control structures get their own scope...no need for var here
    for i = 0; i < this.arr.length; i++ do
      print('i: ' + i);
    end
  }

  function tricky_for_loop(){
    var i = 10;

    this.arr.push(0);

    //i is i local to for loop
    for var i = 0; i < this.arr.length; i++ do
      print('i: ' + i); //0
    end

    print(i); //'10'

    //i is global i
    for i = 0; i < this.arr.length; i++ do
      print('i: ' + i); //0
    end

    print(i); //1
  }

  function while_loop(){
    while this.bool do
      this.bool = some_func_call();
    end
  }

  function from_to_by_loop(){
    //go from start to end giving the number
    from this.num to this.str1.length run (i){
      print('i: ' + i); // 0 1 2 3 4
    }

    //go from 0 to 15 by steps of 5
    from 0 to 15 by 5 run (i){
      print('i: ' + i); //0 5 10 15
    }

    //go from 0 to 14 by steps of 5
    //*** can't violate bounds so 14 isn't given ***
    from 0 to 14 by 5 run (i){
      print('i: ' + i); //0 5 10
    }

    //dynamic step value
    //evaluate step function everytime
    from 0 to 100 by (i){ return i * 2 + 1 } run (i){
      print('i: ' + i); //0 1 3 7 15 31 63
    }
  }

  function literal_from_to_by_loop(){
    //go from start to end giving the number
    this.num..this.str1.length run (i){
      print('i: ' + i); // 0 1 2 3 4
    }

    //go from 0 to 15 by steps of 5
    0..15 by 5 run (i){
      print('i: ' + i); //0 5 10 15
    }

    //go from 0 to 14 by steps of 5
    //*** can't violate bounds so 14 isn't given ***
    0..14 by 5 run (i){
      print('i: ' + i); //0 5 10
    }

    //dynamic step value
    //evaluate step function everytime
    0..100 by (i){ return i * 2 + 1 } run (i){
      print('i: ' + i); //0 1 3 7 15 31 63
    }
  }

  function range_as_value(){
    //make this a list comprehension
    //ie [0..9]
    var range;

    range = from 0 to 10;
    print(range); //[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    range = from 0 to 10 by 2;
    print(range); //[0, 2, 4, 6, 8, 10]

    range = from 0 to 10 by 3;
    print(range); //[0, 3, 6, 9]

    range = from 0 to 10 by (i){ return i * 2 + 1 };
    print(range); //[0, 1, 3, 7]

    range = from 0 to 10 except 3;
    print(range); // [0, 1, 2, 4, 5, 6, 7, 8, 9, 10]

    range = from 0 to 10 except 3..6;
    print(range); // [0, 1, 2, 7, 8, 9, 10]

    range = from 0 to 10 except 3, 7, 9;
    print(range); // [0, 1, 2, 4, 5, 6, 8, 10]

    range = from 0 to 10 except (i){ return i % 3 == 0 };
    print(range); // [1, 2, 4, 5, 7, 8, 10]

    range = from 0 to 10 by 2 except (i){ return i % 3 == 0 };
    print(range); // //[2, 4, 8, 10]

    range = 0..10;
    print(range); //[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    range = 0..10 by 2;
    print(range); //[0, 2, 4, 6, 8, 10]

    range = 0..10 by 3;
    print(range); //[0, 3, 6, 9]

    range = 0..10 by (i){ return i * 2 + 1 };
    print(range); //[0, 1, 3, 7]

    range = 0..10 except 3;
    print(range); // [0, 1, 2, 4, 5, 6, 7, 8, 9, 10]

    range = 0..10 except 3..6;
    print(range); // [0, 1, 2, 7, 8, 9, 10]

    range = 0..10 except 3, 7, 9;
    print(range); // [0, 1, 2, 4, 5, 6, 8, 10]

    range = 0..10 except (i){ return i % 3 == 0 };
    print(range); // [1, 2, 4, 5, 7, 8, 10]

    range = 0..10 by 2 except (i){ return i % 3 == 0 };
    print(range); // //[2, 4, 8, 10]
  }

  function given_is(){
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

  function wait_for_either_or(in_chan1, in_chan2, out_chan){
    var recvd, clsd;

    while true do
      wait_for
        either recvd, clsd << in_chan1 then do
          if clsd then
            do_something();
          else
            out_chan << do_something(recvd);
          end
        or recvd, clsd << in_chan2 then do
          if clsd then
            break;
          else
            out_chan << do_something2(recvd);
          end
        or do
          default();
          break; //break is for while true
        end
      end
    end
  }

  function channel_semantics(in_chan){
    var a, b, closed;

    b << in_chan;
    print('got b from chan: hope its valid');

    a , closed << in_chan; //can check for closed

    if !closed do
      print('channel not closed....gave me: ' + a);
    else do
      print('channel closed :(...cant use value');
    end
  }

  function closure_semantics(){
    var arr = [];

    0..10 do (i){
      if i == 1 do
        arr.push((){
          print(i);
        });

        arr.push((val){
          print(val);
        }(i)); //i does not get garbage collected until closure is exposed of
      end
    }

    arr[0](); // 1...takes the value of the variable
    arr[1](); // 10...takes the reference of the variable
    /**
     * if used in an assignment statement or passed to a head, closures
     * that want to pass in references to objects can do so by ending it with
     * '(param1, param2)'...have to put into a variable and call it to run the function
     */
  }

  function macros(){

    //with blocks----------------------
    macro describe(_, specs) do
      quote do
        unquote_blk(specs)
      end
    end

    macro it(name, spec) do
      quote do
        def unquote(binary_to_atom("#{name} spec"))() do // Note: this is generating a function on the module
          unquote_blk(spec)
        end
      end
    end

    macro should_eq(value1, value2) do
      quote do
        if unquote(value1) != unquote(value2) then raise "some hell" end
      end
    end

    //lets you right
    describe "some test" do
      it 'compares two ints' do
        should_eq 30, 30
      end
    end

    //with closures--------------------

    //from to run
    macro from(start) to(finish) run(func) do //multi part macros
      quote do
        unquote(start)..unquote(finish) run unquote_func(func);
      end
    end

    //transforms
    from 0 to 10 run (i){
      print(i);
    }

    //into
    0..10 run (i){
      print(i);
    }

    macro for(item) in(container, blk) do
      while unquote(item), done = unquote(container).for_in(); !done do
        unquote_blk(blk)();
      do
    end

  }

  function code_gen(){

    for op in [#+, #*, #&, #|] do //not sure if this is needed...def not for first release
      eval(#(op (a, b, c) = op (op (a, b), c))
    end

  }

end
