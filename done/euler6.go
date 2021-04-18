package main

import (
	"fmt"
)

func main() {
	sumSquare := 0
	squareSum := 0
	for i := 1; i <= 100; i++ {
		sumSquare += i * i
		squareSum += i
	}
	squareSum *= squareSum
	fmt.Println(squareSum - sumSquare)
}