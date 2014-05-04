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

	string_tokens := scanner.New(scanner.STRING,
		"for val in obj do\n\tprint(val)\nend").Run()

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
