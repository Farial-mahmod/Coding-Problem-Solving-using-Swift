// Leetcode link: https://leetcode.com/problems/contains-duplicate/description/
/*
Steps:
    1.turning Int array into Set as Set elements are unique
    2.turning the Set into an Array to match the type
    3.returning true if duplicates are found - else, returning false

Complexity
    Time complexity:
    O(n)O(n)O(n)

    Space complexity:
    O(1)O(1)O(1)
*/ 


class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        // turning Int array into Set as Set elements are unique
        let sets = Set(nums)
        // turning the Set into an Array to match the type
        var unique = Array(sets)
        // returning true if duplicates are found - else, returning false
        return nums.count == unique.count ? false : true
    }

  let solution = Solution()
  
  // call the containsDuplicate() method with arrays to test
  
}
