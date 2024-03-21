/*
Description: Implement pow(x, n), which calculates x raised to the power n (i.e., xn).

Link: https://leetcode.com/problems/powx-n/description/
*/

// solution in Swift

import Foundation

class Solution {
    func myPow(_ x: Double, _ n: Int) -> Double {
      // both x and n need to within the range of Swift's Double and Int types' limits respectively
      // pow() is part of Swift and requires no extra library to be imported
        return pow(x, Double(n))
    }
}
