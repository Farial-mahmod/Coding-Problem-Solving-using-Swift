/*
Challenge: To count the number of digits in a given integer number.
*/

// Solution in Swift 5.9

import Foundation

func countDigits(num: Int) -> Int {

   // Storing the total count    
   var count = 0

   var num = num

  // checking the number remains greater than 0, else returning 1
   if (num == 0){
      return 1
   }
 
   // as long as the number remains greater than 0
   while (num > 0){

      num = num / 10
      // incrementing the counter by 1
      count += 1
   }
   // returning the final count 
   return count
}

// testing the function by executing below
let input = 8776
print("Total digits present in \(val) are: ", countDigits(num: input))
