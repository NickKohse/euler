package main

import (
	"fmt"
)

func main() {
	n := 20
	for true {
		if isDivisibleUpToTwenty(n) {
			break
		}
		n++
	}
	fmt.Println(n)
}

func isDivisibleUpToTwenty(x int) bool {
	for d := 11; d <= 20; d++ {
		if x % d != 0 {
			return false
		}
	}
	return true
}