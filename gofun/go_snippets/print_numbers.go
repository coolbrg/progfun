// Program to print prime number from 1 to n
package main

import "fmt"

func isPrime(num int) bool {
  primeFlag := true

  for i := 2; i < num; i++ {
    if num % i == 0 {
      primeFlag = false
      break
    }
  }
  return primeFlag
}

func main() {
  var n int

  fmt.Print("Enter the value of n: ")
  fmt.Scanf("%d", &n)

  fmt.Printf("Prime number from 1 to %d are: ", n)

  for i := 2; i <= n; i++ {
    if isPrime(i) {
      fmt.Printf("%d ", i)
    }
  }
}