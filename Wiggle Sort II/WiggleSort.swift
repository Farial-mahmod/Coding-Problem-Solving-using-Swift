/*
Description: Given an integer array nums, reorder it such that nums[0] < nums[1] > nums[2] < nums[3].... . You may assume the input array always has a valid answer.

Example:

Input: nums = [1,5,1,1,6,4]
Output: [1,6,1,5,1,4]
Explanation: [1,4,1,5,1,6] is also accepted.

Link: https://leetcode.com/problems/wiggle-sort-ii/description/
*/

class Solution {
    func wiggleSort(_ nums: inout [Int]) {
      // array is the sorted version of the given nums array
        var array = nums.sorted()
        let arraySize = array.count
      // looping through the array by a gap of 2 in between
        for i in stride(from: 1, to: arraySize, by: 2){
          // placing the larger elements from the sorted array to the original one
            nums[i] = array.removeLast()
        }
      // looping through the array by a gap of 2 in between
        for j in stride(from: 0, to: arraySize, by: 2){
           // placing the smaller elements from the sorted array to the original one
            nums[j] = array.removeLast()
        }
    }
}
