package main

import (
	"fmt"
	"sort"
)

func main() {
	num := 600851475143
	p := 2
	factors := []int{}

	for num >= (p*p) {
		if num % p == 0 {
			factors = append(factors, p)
			num /= p
		} else {
			p++
		}
	}
	factors = append(factors, num)
	sort.Ints(factors)

	fmt.Println(factors)
}