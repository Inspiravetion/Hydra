module my_module

import abc
import def

export myClass

/**
 * Official Documentation...
 * So docs can be automatically generated
 */
class myClass extends base, myOtherClass and myOtherOtherClass

    operator "[" index "]" = get(index) end

    function new(val1, val2){
        super();

        this.arr = []; 
        this.randVal = val1 + "asdf";
        this.randVal2 = 123.456

        0..4 do (i){
            print("hi")
        }
    }

    function funcA(){
        from 0 to 10 by 2 run (i){
            print('A: number' + i);
        }
    }

    function overwrittenFunc(superParam, myParam=default){
        super(superParam);

        this.arr.map((val){
            return val + myParam;
        });

        while arr.length do
            if arr.length == 3 then
                arr.pop;
                arr.pop;
            else
                arr.pop;
            end
        end
    }

    function get(index){ 
        return this.arr[index];
    }

    function run(){
        var c = <<>>; /** channel literal syntax...<<>>...buffered <<10>> */
        spawn (num){
            while num > 0 do
                print('From Head: ' + num);
                num--;
                c << num; /**this will be synchronized...if it was buffered this wouldnt block until it was full*/
            end
        }(8); /** the last function return of a group of spawned heads with a channel should close the channel so any recievers
                * know to terminate their for in loops
                **/

        for val in c do  // need to add this in so that it blocks and reads from a channel until it is closed*/
            print('From Main: ' + val);
        end
    }

end