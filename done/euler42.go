package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
)

func main() {
	// Read in file
	file, err := ioutil.ReadFile("p042_words.txt")
	if err != nil {
		fmt.Println("Error reading file", err)
		os.Exit(1)
	}

	// Build array of first t_size triangle numbers
	t_size := 25
	triangle := make([]int, t_size)
	for i := 0; i < t_size; i++ {
		triangle[i] = ((i + 1) * (i + 2)) / 2
	}

	words := strings.Split(string(file), ",")
	t_words := 0

	for _, word := range words {
		sum := 0
		for _, c := range word {
			if c == 34 {
				continue // Ignore " character
			}
			sum += (int(c) - 64) // We want A=1 not A=65 like in ascii
		}
		if includes(&triangle, sum, t_size) {
			t_words++
		}
	}

	fmt.Printf("There are %d triangle words in the file\n", t_words)
}

func includes(arr *[]int, val int, arr_size int) bool {
	for i := 0; i < arr_size; i++ {
		if (*arr)[i] == val {
			return true
		}
	}
	return false
}
