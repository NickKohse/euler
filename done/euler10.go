package main

import (
	"fmt"
)

func main() {
	n := 2
	sum := 2
	p := 1
	for n < 2000000 {
		n++
		if isPrime(n) {
			p++
			sum += n
		}	
	}
	fmt.Println(sum)
}

func isPrime(x int) bool {
	for i := 2; (i * i) <= x; i++ {
		if x % i == 0 {
			return false
		}
	}
	return true
}