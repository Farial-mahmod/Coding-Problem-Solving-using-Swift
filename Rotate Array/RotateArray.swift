/*
Problem Statement: Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
Leetcode Link: https://leetcode.com/problems/rotate-array/
*/
import Foundation

class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
      // storing the constant value 'k' in a variable 'j' to ease the modification in Swift
        var j = k
        for _ in 0..<j {
          // shifting the last values to the front as long as the loop is allowed to run depending on the value of 'k'
            nums.insert(nums.removeLast(), at: 0)
            // decrementing 'j' as the loop nears exit
            j = j - 1
        }
        print(nums)
    }
}

// generating an object to run the method rotate()
var obj = RotateArray()
// array value may be modified to test further, this is a random array
var arrayy = [6,0,3,8]
// calling the method
obj.rotate(&arrayy, 1)
