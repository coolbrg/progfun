// Chemical names
package main

import "fmt"

func main() {
  chemicals := map[string]string {
    "h": "Hydrogen",
    "he": "Helium",
    "li": "Lithium",
    "be": "Beryllium",
    "b": "Boron",
    "c": "Carbon",
    "n": "Nitrogen",
    "o": "Oxygen",
    "f": "Fluorine",
    "ne": "Neon",
  }

  for key, value := range chemicals {
    fmt.Printf("%s => %s\n", key, value)
  }
}