package main

import (
	_ "github.com/anchore/grype"
	_ "github.com/anchore/syft"
)

func main() {
	fmt.Println("This program only exists to declare dependencies for go mod.")
}
