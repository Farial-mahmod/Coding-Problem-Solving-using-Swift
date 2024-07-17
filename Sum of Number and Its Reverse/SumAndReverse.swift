/*
Description: Given a non-negative integer num, return true if num can be expressed as the sum of any non-negative integer and its reverse, or false otherwise.

Example 1:

Input: num = 443
Output: true
Explanation: 172 + 271 = 443 so we return true.

Link: https://leetcode.com/problems/sum-of-number-and-its-reverse/description/
*/

// solution using Swift

class Solution {
    func sumOfNumberAndReverse(_ num: Int) -> Bool {
        guard num != 0 else { return true }

        for i in 0..<num {

            var reversedI = String(i).reversed()

            if i + Int(String(reversedI))! == num {
                return true
            }

        }
        return false
    }
}

/*
Example Test Case:

Input: num = 63
Output: false
Explanation: 63 cannot be expressed as the sum of a non-negative integer and its reverse so we return false.
*/
