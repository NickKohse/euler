package main

import (
	"fmt"
)

func main() {
	n := 1
	t := triangleNum(n)
	for {
		if numDivisors(t) > 500 {
			break
		}
		n++
		t = triangleNum(n)
		fmt.Println(t)
	}
	fmt.Println(t)
}

func numDivisors(x int) int {
	numDiv := 2

	for i := 2; i <= (x / 2); i++ {
		if x % i == 0 {
			numDiv++
		}
	}
	return numDiv
}

func triangleNum(x int) int {
	return (x * (x + 1)) / 2
}