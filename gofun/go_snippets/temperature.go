package main

import "fmt"

// From Fahrenheit to Celsius
func FahrenToCel(fahren float64) float64 {
  return (fahren - 32) * 5/9
}

func main() {
  fmt.Print("Enter the temperature (in Fahrenheit) : ")
  var fahren float64
  fmt.Scanf("%f", &fahren)

  fmt.Printf("Temperature in Celsius : %f\n", FahrenToCel(fahren))
}