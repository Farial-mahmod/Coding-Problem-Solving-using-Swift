// Statement: Given an integer num, return a string of its base 7 representation.
// Leetcode link: https://leetcode.com/problems/base-7/description/

class Solution {
    func convertToBase7(_ num: Int) -> String {
        // baseSevenString variable holds the base-7 representation of the input
        var baseSevenString = String(num, radix: 7)
        return baseSevenString
    }
}


var baseSevenObject = Solution()
// calling the baseSevenObject object on convertToBase7() method
print(baseSevenObject.convertToBase7(100))
