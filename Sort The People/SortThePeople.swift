/*
Problem Statement: You are given an array of strings names, and an array heights that consists of distinct positive integers. Both arrays are of length n.
For each index i, names[i] and heights[i] denote the name and height of the ith person.
Return names sorted in descending order by the people's heights.
Leetcode link: https://leetcode.com/problems/sort-the-people/description/
*/

import Foundation

class Solution {
    func sortPeople(_ names: [String], _ heights: [Int]) -> [String] {
        // zip() to join two arrays and map{} to detect the String type array
        let result = zip(heights, names)
        .sorted{$0 > $1 }
        .map{ $0.1 }
        return result
    }
}

var solution = Solution()
print(solution.sortPeople(["Mary","John","Emma"], [180,165,170]))
