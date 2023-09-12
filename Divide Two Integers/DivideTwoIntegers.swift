/*
Leetcode Link: https://leetcode.com/problems/divide-two-integers/
Description: Given two integers dividend and divisor, divide two integers without using multiplication, division, and mod operator.
The integer division should truncate toward zero, which means losing its fractional part. For example, 8.345 would be truncated to 8, and -2.7335 would be truncated to -2.
Return the quotient after dividing dividend by divisor. For this problem, if the quotient is strictly greater than 231 - 1, then return 231 - 1,
and if the quotient is strictly less than -231, then return -231.
*/

class Solution {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        return (dividend/divisor) > Int32.max ? Int(Int32.max) : max(Int(Int32.min), (dividend/divisor))
    }
}

// testing the method
var obj = Solution()
print(obj.divide(15,5))
