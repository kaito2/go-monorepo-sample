package main

import (
	"fmt"

	"github.com/kaito2/go-workspace-sample/lib"
	"github.com/logrusorgru/aurora/v4"
)

func main() {
	fmt.Println(aurora.Magenta(lib.Name))
}
