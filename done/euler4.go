package main

import (
	"fmt"
	"strconv"
)

func main() {
	maxPalProd := 0

	for i := 100; i < 1000; i++ {
		for j := 100; j < 1000; j++ {
			if isPal(i * j) && (i * j) > maxPalProd {
				maxPalProd = i * j
			}
		}
	}
	fmt.Println(maxPalProd)
}

func isPal(x int) bool {
	s := strconv.Itoa(x)
	i := 0
	j := len(s) - 1
	for j > i {
		if s[i] != s[j] {
			return false
		}
		j--
		i++
	}
	return true
}