// find the average of array elements
package main

import "fmt"

func avg(arr []float64) float64 {
  total := float64(0)
  for _, value := range arr {
    total += value
  }
  return (total / float64(len(arr)))
}

func main() {
  var n int

  fmt.Print("How many numbers? ")
  fmt.Scanf("%d", &n)
  nums := make([]float64, n)

  fmt.Println("Enter the numbers for array element : ")
  for i := 0; i < n; i++ {
    fmt.Scanf("%f", &nums[i])
  }

  fmt.Printf("Array is %v\n", nums)
  fmt.Printf("Average is : %f\n", avg(nums))
}