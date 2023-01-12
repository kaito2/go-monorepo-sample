package main

import (
	"fmt"

	"github.com/kaito2/go-version-check/pkg"
	"github.com/kaito2/go-workspace-sample/app2/pkg"
	"github.com/kaito2/go-workspace-sample/lib"
)

func main() {
	fmt.Println("common lib: ", lib.Name)
	fmt.Println("app2: ", pkg.Message)
	fmt.Println("Third party lib: ", version.Version)
}
