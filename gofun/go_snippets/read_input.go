package main

import "fmt"

func main() {
  fmt.Print("Enter your name: ")
  var name string
  fmt.Scanf("%s", &name)
  fmt.Print("Enter your age: ")
  var age int32
  fmt.Scanf("%d", &age)
  fmt.Printf("Name: %s and Age: %d\n", name, age)
}