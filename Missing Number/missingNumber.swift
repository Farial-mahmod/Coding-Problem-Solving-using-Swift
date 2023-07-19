// Problem Description: Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
// Leetcode problem link: https://leetcode.com/problems/missing-number/

class Solution {
    func missingNumber(_ nums: [Int]) -> Int {

        // 'arraySize' is the count of the array's elements
        var arraySize = nums.count

        for iterator in 0...arraySize {
            // checking if the list doesn't contain the iterating value
            if !nums.contains(iterator){
                return iterator
            }
        }
        return 0
    }
}

var number = Solution()
// executing by calling the method on a Solution type object named 'number'
print(number.missingNumber([0,1]))
