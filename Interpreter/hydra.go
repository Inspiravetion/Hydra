package main

import (
	// "fmt"
	"hydra/parser"
	"hydra/scanner"
	// "hydra/util"
	// "os"
	"runtime"
)

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())

	// file_tokens := scanner.New(scanner.FILE, os.Args[1]).Run()

	string_tokens := scanner.New(
		scanner.STRING,
		`
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
		a = 1
		b = "2"
		c = 1.5

		while a.lt(b) do
			fmt.print(a)
		end

		if a do
			something()
		else if b do
			something.elsfe()
		else if c do
			something.elsef()
		else do
			something.omething.elsee()
		end

		gen function genner(other){
			var n 
			var n1, n2, n3
			n1 = [1, 2, 4]
			for a, b, c in other do
				//identifiers are the only expressions that work right now
				var z = doSomething
				var a = 1234
				var b = (a.b(1, 2, 3)["key"]).funcCall()
				if a do
					fmt.print('abc')
				end
			end

			while true do 
				var a = 10
				a.raise([2, 3])
			end
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

			/* this is a multi line comment
		     * about the following constructor
		     */
		    A(param1, params2){

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

		export MutexEmitter 
		export MutexEmitter as Memitter
		export a, b, a
		`,
	).Run()

	parser := parser.New(string_tokens)
	parser.Parse()

	// fmt.Printf("\n\n\n")

	// for tok := range string_tokens {
	// 	fmt.Printf("%+v\n", tok)
	// }
	// //
	// util.Log("Hello from the logger")
	// util.Debug("Debugging string")
	// util.Error("AWWWW SHIZNIT")

	// util.Logf("%s : %d", "asdfasdf", 546)
	// util.Debugf("%s : %d", "asdfasdf", 546)
	// util.Errorf("%s : %d", "asdfasdf", 546)

	// util.For_Each("dfg", func(data interface{}) {
	// 	str, ok := data.(string)

	// 	if !ok {
	// 		util.Error("not a string!")
	// 	}

	// 	util.Log(str)
	// })
}
