// sum.go file
package main

import "C"

//export mysum
func mysum(a C.int, b C.int) C.int {
  return a + b
}

//export enforce_binding
func enforce_binding() {}

func main() {}
