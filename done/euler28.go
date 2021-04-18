package main

import (
	"fmt"
)
//
// Right top 'arm' is odd squares, other arms are right top minus increaing even numbers as you go from centre
// the sum of any ring is them x^2 (where square root of right top = x) + x^2 -(x-1) + x^2-2(x-1) + x^2-3(x-1)
// Simplifies to 4x^2 - 6(x-1) 
// set of x's will be odd 3..n for n by n spiral
func main() {
	n := 1001
	x := 3
	sum := 1
	for x <= n{
		sum += 4 * (x * x) - (6 * (x - 1))
		x += 2
	}
	fmt.Println(sum)
}