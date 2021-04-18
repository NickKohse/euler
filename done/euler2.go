package main

import (
	"fmt"
)

func main() {
	runningTotal := 2
	a := 1
	b := 2
	for b < 4000000 {
		tmp := b
		b = a + b
		a = tmp
		if b % 2 == 0 {
			runningTotal += b
		}
	}
	fmt.Println(runningTotal)
}