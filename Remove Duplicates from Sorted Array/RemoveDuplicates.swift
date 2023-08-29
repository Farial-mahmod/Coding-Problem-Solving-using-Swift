/*
Leetcode link: https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
Description: Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same.
Then return the number of unique elements in nums.
*/

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        // a Set has no duplicates
        nums = Array(Set(nums))
        
        // sorting the modified array
        nums.sort{ $0 < $1 }

        // returning the number of elements 
        return nums.count
    }
}

var solution = Solution()
// call the removeDuplicates() method on the solution object to test arrays 
