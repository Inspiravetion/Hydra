package main

import (
	"fmt"
	"os"
	"scanner"
)

func main() {
	tokens := scanner.New(os.Args[1]).Run()

	fmt.Printf("os.Args[0]: %s\n", os.Args[1])

	for tok := range tokens {
		fmt.Printf("%+v\n", tok)
	}

}
