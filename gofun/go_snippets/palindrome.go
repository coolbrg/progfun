// program to check whether a string is palindrome or not
package main

import (
  "fmt"
)

func isPalindrome(str string) bool {
  var palindromeFlag bool = true

  for i := 0; i <= (len(str)/2); i++ {
    if str[i] != str[len(str) - (i + 1)] {
      palindromeFlag = false
      break
    }
  }
  return palindromeFlag
}

func main() {
  fmt.Print("Enter the string: ")
  var name string
  fmt.Scanf("%s", &name)

  if isPalindrome(name) {
    fmt.Printf("%s is Palindrome.\n", name)
  } else {
    fmt.Printf("%s is not Palindrome.\n", name)
  }
}