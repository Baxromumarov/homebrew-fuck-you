package main

import (
	"flag"
	"fmt"
)

func main() {
	var name string
	for {

		fmt.Println("What is your name?")
		fmt.Scanf("%s", &name)
		// Parse the command-line flags
		flag.Parse()

		// Print a greeting
		fmt.Printf("Fuck you, %s!\n", name)
		fmt.Println()
	}
}
