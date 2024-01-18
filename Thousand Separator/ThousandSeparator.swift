/*
Description: Given an integer n, add a dot (".") as the thousands separator and return it in string format.
Link: https://leetcode.com/problems/thousand-separator/description/
*/

// solution in Swift

class Solution {
    func thousandSeparator(_ n: Int) -> String {
        var givenNumber = String(n)
        var count = givenNumber.count - 3

        while count > 0 {
        givenNumber.insert(".", at: givenNumber.index(givenNumber.startIndex, offsetBy: count))
        count -= 3
        }
    return givenNumber
    }
}
