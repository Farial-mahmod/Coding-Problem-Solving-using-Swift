/* Problem Statement: A challenge of taking two String values of equal length as input and returning true if there are less than three different letters and characters between the two words - else, to return false if more than three characters or letters are different.
Solution in: Swift (version 5.8.1)
Tested on: Linux
 */

import Foundation

// checkDifference function takes two String inputs and results in Boolean
func checkDifference(_ firstWord : String, _ secondWord : String) -> Bool {

// the number of characters of both the words need to be equal to proceed
guard firstWord.count == secondWord.count else {return false}

var difference = 0

// converting the String to Array
let firstArray = Array(firstWord)
let secondArray = Array(secondWord)

// looping through the arrays
for (index,value) in firstArray.enumerated(){
if(secondArray[index] != value){
difference += 1
}
}

/* returning false when the difference is greater than 3, else returning true */
if(difference>2){
return false
}
return true
}

// executing the function to calculate the difference
print(checkDifference("Trump","Tbuee"))
