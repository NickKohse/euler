package main

import (
	"errors"
	"fmt"
	"io/ioutil"
	"os"
	"strconv"
	"strings"
)

func main() {
	cipherBytes, err := ioutil.ReadFile("p059_cipher.txt")
	if err != nil {
		fmt.Println("Error reading file", err)
		os.Exit(1)
	}
	key := []byte{97, 97, 97} // All three bytes must be in range 97-122

	cText := strings.Split(string(cipherBytes), ",")
	keyPtr := 0
	var keyErr error
	valErr := false
	valid := 0
	// Create an array of bytes length of ctext to store results in. if it turns out to be all valid values, print the ascii representation of those bytes to the console, initial runs show 72/17K possible keys reult in a valid decryption, need to read each to see which makes sense

	for keyErr == nil {
		for _, val := range cText {
			intVal, _ := strconv.Atoi(val) //ignore errors, as I know whats in file.
			decrypted := byte(intVal) ^ key[keyPtr]
			if decrypted < 33 || decrypted > 126 { //it's a control character or DEL or invalid, and wouldn't be in the decoded text
				valErr = true
				break
			}
			keyPtr++
			keyPtr %= 3
		}
		keyPtr = 0
		if !valErr {
			valid++
		}
		valErr = false
		keyErr = incKey(&key)
	}

	fmt.Println(valid)

}

func incKey(x *[]byte) error {
	if (*x)[2] < 122 {
		(*x)[2]++
	} else {
		(*x)[2] = 97
		if (*x)[1] < 122 {
			(*x)[1]++
		} else {
			(*x)[1] = 97
			if (*x)[0] < 122 {
				(*x)[0]++
			} else {
				return errors.New("Key maxxed out")
			}
		}
	}
	return nil
}
