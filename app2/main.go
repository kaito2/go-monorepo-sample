package main

import (
	"fmt"

	"github.com/kaito2/go-version-check/pkg"
	"github.com/kaito2/go-workspace-sample/lib"
)

func main() {
	fmt.Println("common lib: ", lib.Name)
	fmt.Println("Third party lib: ", version.Version)
}
