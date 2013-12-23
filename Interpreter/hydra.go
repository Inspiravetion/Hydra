package main

import (
	"fmt"
	"hydra/scanner"
	"os"
	"runtime"
)

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())
	tokens := scanner.New(os.Args[1]).Run()

	for tok := range tokens {
		fmt.Printf("%+v\n", tok)
	}

}
