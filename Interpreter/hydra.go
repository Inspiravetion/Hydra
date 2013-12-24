package main

import (
	"fmt"
	"hydra/scanner"
	"os"
	"runtime"
)

func main() {
	runtime.GOMAXPROCS(runtime.NumCPU())

	file_tokens := scanner.New(scanner.FILE, os.Args[1]).Run()

	string_tokens := scanner.New(scanner.STRING,
		"for val in obj do\n\tprint(val)\nend").Run()

	for tok := range file_tokens {
		fmt.Printf("%+v\n", tok)
	}

	fmt.Printf("\n\n\n")

	for tok := range string_tokens {
		fmt.Printf("%+v\n", tok)
	}
}
