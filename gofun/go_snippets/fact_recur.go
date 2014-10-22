// Factorial using recursion

package main

import "fmt"

func factRecur(num int) int {
  if num == 0 {
    return 1
  }
  return num * factRecur(num - 1)
}

func main() {
  var n int

  fmt.Print("Enter value of number : ")
  fmt.Scanf("%d", &n)
  fmt.Printf("Factorial of %d is : %d\n", n, factRecur(n))
}