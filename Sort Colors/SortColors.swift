/*
Link: https://leetcode.com/problems/sort-colors/description/
Description: Given an array nums with n objects colored red, white, or blue, sort them in-place so that objects of the same color are adjacent, with the colors in the order red, white, and blue.
We will use the integers 0, 1, and 2 to represent the color red, white, and blue, respectively. You must solve this problem without using the library's sort function.
*/

// using Bubble sort
class Solution {
    func sortColors(_ nums: inout [Int]) {
// calculating the size of the input array
let arraySize = nums.count

// this variable will temporarily store a value to be exchanged/swapped
var tempStorage = 0
  
// looping through the array with two index variables, namely 'i' & 'j'
  for i in 0..<arraySize {
    for j in 0..<arraySize-i-1 {
    // if an earlier index's value > its adjacent later one, exchanging the two
      if(nums[j]>nums[j+1]){
        tempStorage = nums[j]
        nums[j] = nums[j+1]
        nums[j+1] = tempStorage
      }
    }
  }
}
}

// on an object of Solution class, call the sortColors() method with arrays to test
