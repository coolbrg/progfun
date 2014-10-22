// Demo for variable number of arguments in Go

package main

import "fmt"

func addUp(args ...int) int {
  total := 0
  for _, v := range args {
    total += v
  }
  return total
}

func main() {
  fmt.Printf("Total : %d\n", addUp(1, 2, 3, 4, 5))

  arr := []int{10, 20, 30, 40, 50}

  fmt.Printf("Another Total : %d\n", addUp(arr...))
}