/*
Write a program that finds the smallest number
in this list:
x := []int{
  48,96,86,68,
  57,82,63,70,
  37,34,83,27,
  19,97, 9,17,
}
*/
package main

import "fmt"

func findSmallest(x []int) int {
  smallest_no := x[0]

  for _, value := range x {
    if smallest_no > value {
      smallest_no = value
    }
  }
  return smallest_no
}

func main() {
  var smallest_no int
  x := []int {
    48,96,86,68,
    57,82,63,70,
    37,34,83,27,
    19,97,9,17,
  }

  smallest_no = findSmallest(x)
  fmt.Printf("The smallest is : %d\n", smallest_no)
}