import Foundation

var reverse = 0

// original is the variable to be tested whether it is Palindrome or not, you may change it to reproduce
var original = 1111
var num = original


// function to reverse the original number and store into the 'reverse' variable
func reverseNumber() {
    while(num>0){
    reverse = reverse * 10 + original % 10
    num = num / 10
    }

// comparing the reversed number to the original one
  if(original==reverse){
      print("\(original) is a Palindrome number.")
  }
  else{
  print("\(original) is not a Palindrome number.")
  }

}

// calling the function finally - one may put the reverseNumber() inside print() to execute
reverseNumber()
