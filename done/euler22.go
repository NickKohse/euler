package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"strings"
	"sort"
)

func main() {
	namesBytes, err := ioutil.ReadFile("names.txt")
	if err != nil {
		fmt.Println("Error reading file", err)
		os.Exit(1)
	}

	names := strings.Split(string(namesBytes), ",")
	sort.Strings(names)
	runningTotal := 0
	const ASCII_ALPHA_OFFSET = 64

	for i, name := range names {
		nameSum := 0
		bytes := []byte(name)
		j := 1
		for j < len(bytes) - 1 {
			nameSum += (int(bytes[j]) - ASCII_ALPHA_OFFSET)
			j++
		}
		runningTotal += (nameSum * (i + 1))	
	}
	fmt.Println(runningTotal)
}