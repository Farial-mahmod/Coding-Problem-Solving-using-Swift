/*
Leetcode link: https://leetcode.com/problems/single-number/description/
Statement: Given a non-empty array of integers nums, every element appears twice except for one. Find that single one. You must implement a solution with a linear runtime complexity and use only constant extra space.
*/
// Time complexity O(n), space complexity O(1)

// Solution one
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        /* ^ is for XOR to compare two duplicates and
        reduce the result to the unique single number */
        nums.reduce(0,^)
    }
}


// Solution two
class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        // 0 to perform XOR operation with each element
        var xorTester = 0
        // looping through the array
        for num in nums {
        // the operation is basically 0 ^ arrayElement
            xorTester = xorTester ^ num
        }
        // returning the single as duplicates are wiped out after XOR
        return xorTester
}
}

// one may test it with arrays such as [2,2,1]
