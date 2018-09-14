package main

import (
	"fmt"
	"io/ioutil"
	"strings"
	"testing"
)

func ReadFile() string {
	bytes, errors := ioutil.ReadFile("full_song.txt") // just pass the file name
	if errors != nil {
		fmt.Print(errors)
	}

	str := string(bytes) // convert content to a 'string'

	return str
}

func TestReadile(test *testing.T) {
	subStr := "99 bottles of beer on the wall, 99 bottles of beer.\r\n"
	song := ReadFile()
	if !strings.Contains(song, subStr) {
		test.Error("Expected to include", subStr, "but it doesn't")
	}
}

func TestSong(test *testing.T) {
	song := ReadFile()
	singedSong := Sing()

	if singedSong != song {
		test.Error("The singed song is not the expected one")
	}
}
