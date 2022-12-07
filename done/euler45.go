package main

import (
	"fmt"
)

func main() {
	// Build array of first t_size triangle numbers
	a_size := 100000
	triangle := make([]int, a_size)
	pentagon := make([]int, a_size)
	hexagon := make([]int, a_size)
	for i := 0; i < a_size; i++ {
		triangle[i] = ((i + 1) * (i + 2)) / 2
		pentagon[i] = ((i + 1) * ((3 * (i + 1)) - 1)) / 2
		hexagon[i] = (i + 1) * ((2 * (i + 1)) - 1)
	}

	i := 285 // first triangle number that fits criteria is 285 (which is indexed at 284 in my array)
	for i < a_size {
		if includes(&pentagon, triangle[i], a_size) && includes(&hexagon, triangle[i], a_size) {
			break
		}
		i++
	}

	fmt.Printf("%d is the next triangle number to also be pentagonal and hexogonal\n", triangle[i])
}

func includes(arr *[]int, val int, arr_size int) bool {
	for i := 0; i < arr_size; i++ {
		if (*arr)[i] == val {
			return true
		}
	}
	return false
}
