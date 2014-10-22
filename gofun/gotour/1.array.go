/*
Array:
- Arrays are values. Assigning one array to another copies all the elements.
- In particular, if you pass an array to a function, it will receive a copy of the array,
  not a pointer to it.
- The size of an array is part of its type. The types [10]int and [20]int are distinct.
- To avoid the copy you could pass a pointer to the array, but then that's a pointer
  to an array, not an array.
*/
package main

import "fmt"
import "reflect"

func PrintArray(x []int) {
  fmt.Printf("len=%d cap=%d %v\n", len(x), cap(x), x)
}

func printArrayAddr(a *[]int) {
  fmt.Printf("len=%d cap=%d %v\n", len(*a), cap(*a), *a)
}

func main() {
  b := [2]int{1, 10}
  fmt.Println(b)

  // will not work since PrintArray will take int array without any size
  // but array b is having fixed size 2
  // PrintArray(b)

  // Compiler count the array elements
  c := [...]int{20, 30}
  fmt.Println(c)
  fmt.Println(reflect.TypeOf(c))

  // PrintArray(c)
  // will not work since PrintArray will take int array without any size
  // but array b is having fixed size 2
  // PrintArray(b)

  d := []int {10, 20, 30, 40}
  PrintArray(d)
  printArrayAddr(&d)
}

