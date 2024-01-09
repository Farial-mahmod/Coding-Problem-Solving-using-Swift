/*
Description: Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target. You may assume that each input would have exactly one solution, and you may not use the same element twice.
You can return the answer in any order.
Link: https://leetcode.com/problems/two-sum/
*/

// solution in Swift using Hashmap
// time complexity: O(n)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap = [Int: Int]()
        var size = nums.count

        for i in 0 ..< size {
            var remainder = target - nums[i]
            if hashmap.keys.contains(remainder) {
                return [i, hashmap[remainder]!]
            } else {
                hashmap[nums[i]] = i
            }
        }
        return []
    }
}

/*
// below is a naive solution with time complexity O(n*n)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        let size = nums.count
        for num in 0 ..< size {
            for next in num + 1 ..< size {
                if nums[num] + nums[next] == target {
                    return [num, next]
                }
            }
        }
        return []
    }
}
*/

