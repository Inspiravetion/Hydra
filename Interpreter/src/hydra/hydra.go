package main

import (
	"fmt"
	"os"
	"scanner"
)

func main() {
	scanr := scanner.New(os.Args[1])

	fmt.Printf("os.Args[0]: %s\n", os.Args[1])

	for tok := scanr.Get_Next_Token(); tok != nil; tok = scanr.Get_Next_Token() {
		fmt.Printf("%+v\n", tok)
	}

}
