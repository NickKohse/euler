package main

import (
	"fmt"
)

func main() {
	runningTotal := 0
	i := 3
	for i < 1000 {
		if i % 3 == 0 || i % 5 == 0 {
			runningTotal += i
		}
		i++
	}
	fmt.Println(runningTotal)
}