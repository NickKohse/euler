package main

import (
	"fmt"
	"bufio"
	"log"
	"os"
)

func main() {
	var num []byte
	file, err := os.Open("euler8data")
    if err != nil {
        log.Fatal(err)
    }
    defer file.Close()

    scanner := bufio.NewScanner(file)
    for scanner.Scan() {
		s := scanner.Text()
		num = append(num, []byte(s)...)
	}

	maxProd := 0

	for i := 0; i < len(num) - 13; i++ {
		//var subSlice []int // get 13 things from it starting at i
		sub := num[i: i + 13]
		prod := doProd(sub)
		if prod > maxProd {
			maxProd = prod
		}		
	}
	fmt.Println(maxProd)
}

func doProd(x []byte) int {
	prod := 1
	for i := 0; i < len(x); i++ {
		prod *= (int(x[i]) - 48)
	}
	return prod
}