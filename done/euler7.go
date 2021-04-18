package main

import (
	"fmt"
)

func main() {
	n := 2
	p := 1
	for p < 1000001 {
		n++
		if isPrime(n) {
			p++
		}	
	}
	fmt.Println(n)
}

func isPrime(x int) bool {
	for i := 2; (i * i) <= x; i++ {
		if x % i == 0 {
			return false
		}
	}
	return true
}