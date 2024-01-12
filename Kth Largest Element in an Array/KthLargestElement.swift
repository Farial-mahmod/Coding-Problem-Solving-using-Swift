/*
Given an integer array nums and an integer k, return the kth largest element in the array. Note that it is the kth largest element in the sorted order, not the kth distinct element.
Example:
Input: nums = [3,2,1,5,6,4], k = 2
Output: 5
Constraints:
1 <= k <= nums.length <= 105
-104 <= nums[i] <= 104
Leetcode link: https://leetcode.com/problems/kth-largest-element-in-an-array/description/
*/

// Solution in Swift

class Solution {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var sortedNums = nums.sorted {$0 > $1}
        return sortedNums[k-1]
    }
}
