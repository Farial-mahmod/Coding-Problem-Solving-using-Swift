/* Statement: Given an integer array nums and an integer val, remove all occurrences of val in nums in-place. The order of the elements may be changed. Then return the number of elements in nums which are not equal to val.
Leetcode link: https://leetcode.com/problems/remove-element/
*/

import Foundation

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    // looping through the given array called nums
    for _ in nums {
        if let i = nums.firstIndex(of: val){
          // removing the matched values at specific locations within the array
            nums.remove(at: i)
        }
    }
        return nums.count
    }
}

var solution = Solution()
// the value of nums array may be changed
var nums = [3,2,2,3]
print(solution.removeElement(&nums, 3))
