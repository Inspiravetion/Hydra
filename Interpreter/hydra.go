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
		
		for val in obj do
			fmt.print(val)
		end

		class A 
			//this is a single line comment

			/* this is a multi line comment
		     * about the following constructor
		     */
		    A(param1, params2){

		    }

		    gen function dumb_genny(num){
		    	fmt.print(num)
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
