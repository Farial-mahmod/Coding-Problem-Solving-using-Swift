/*
Description: A valid parentheses string is either empty "", "(" + A + ")", or A + B, where A and B are valid parentheses strings, and + represents string concatenation.
For example, "", "()", "(())()", and "(()(()))" are all valid parentheses strings.
A valid parentheses string s is primitive if it is nonempty, and there does not exist a way to split it into s = A + B, with A and B nonempty valid parentheses strings. Given a valid parentheses string s, consider its primitive decomposition: s = P1 + P2 + ... + Pk, where Pi are primitive valid parentheses strings. Return s after removing the outermost parentheses of every primitive string in the primitive decomposition of s.

Link: https://leetcode.com/problems/remove-outermost-parentheses/description/
*/

// solution in Swift
class Solution {
func removeOuterParentheses(_ S: String) -> String {
// result will get the valid parantheses and will finally be returned
var result = ""
  // to keep a count of the additions and subtractions
var count = 0
  // traversing the given string S
for s in S {
    if s == "(" {
        if count > 0 {
          // appending s only if the count is greater than 0
            result.append(s)
        }
        count += 1
    } else if s == ")" {
        count -= 1
            if count > 0 {
            // appending s only if the count is greater than 0
            result.append(s)
        }
    }
}
        return result
    } }
