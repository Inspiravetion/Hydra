import std::sync
import ~/root/dir/test.hy
import TestClass from ~/root/dir/test.hy
import TestClass from ~/root/dir/test.hy as T
import Mutex from std::sync
import Mutex from std::sync as M
import sqrt, ceil from std::math
import func1, func2 from ~/root/dir/test.hy

var test = passed, hopefully
var test, number2 = i_really, hope, it_passed

var arr, hash, chan = [1, "2", three()], {charlie:"lipford", a:1}, <-2->

var a, b, c
a = 1 + 2 - a ^ abc()
b = "2"
c = 1.5 * (num() || 4)
a.b.c = 1
a = a.b.c ... 100
a = new SomeClass()
a, b['key'], c = 1 upto 6, 2, 3 through 5

while a.lt(b) do
    fmt.print(a)
end

spawn (a, b, c){
    fmt.print(a, b, c)
}(1, 2, 3)

spawn (){
    just.dew.something(chan)
}

spawn some.long.calculation()

for i in 0..10 do
    if i % 2 != 0 then continue end
    if i == 8 then break end
    print(i) //0, 2, 4, 6
end

given a
    is 1 do
        a.incr(1)
    is 3 do
        a.minus(1)
    else do
        a.set(2)
end

given a
    is b do
        c()
end

wait_for
    either a <- producer then
        do_something_with(a)
    or do
        nothing_with_(a)
    end
end

if a then
    something()
else if b then
    something.elsfe()
else if c.g() then
    something.elsef()
else
    something.omething.elsee()
end

new Charlie(1, 2, 3).start()

gen function genner(other){
    var n
    var n1, n2, n3
    n1 = [1, 2, 4]
    for a, b, c in other do
        //identifiers are the only expressions that work right now
        var z = doSomething
        var a = 1234
        var b = (a.b(1, 2, 3)["key"]).funcCall()
        if a then
            fmt.print('abc')
            yield a
        end

        spawn (index){
            fmt.print(arr[index])
        }(yield + 4 | 2)

        a = yield a, b, 3

        b = [yield, (yield 1) , yield]
    end

    yield

    var sc = new SomeClass('a').val.init()

    while true do
        var a = 10
        a.raise([2, 3])
    end

    while !abc do print(a) end 

    given a()
        is b['key'] do
            c.func()
        is d.key do
            e = 4
        else do
            fmt.print('aww screw it')
            return 0, 1, 2, 3
    end

    return a
}

function normal(a, b, c){
    genner[0].a()
}

for val in obj do
    fmt.print(val)
end

class A
    //this is a single line comment
    #pub_var = some_other_var

    //another comment
    #_priv_var = abc

    #a, #_b = a, b

    /** this is a multi line comment
     * about the following constructor
     */
    A(param1, params2){
        @abc = 2
        var a = @_field.funcCall()
    }

    gen function dumb_genny(num){
        var a = num.raise(2)
        fmt.print(a)
        num.inc()
    }

    function dumb_func(){

    }
end

class B extends A, B, C

end

function main() {
    var nums, noms, odds, greetings, wg

    greetings = <-->
    nums = [1, 2]
    noms = ["Tim", "Eston", "Aaron", "Ben"]

    odds = nums.map((x){ return x * 2 - 1 })
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

var a = *(b){
    return b + c
}

export MutexEmitter
export MutexEmitter as Memitter
export a, b, a
