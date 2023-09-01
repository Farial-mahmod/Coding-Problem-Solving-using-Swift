/*
Leetcode link: https://leetcode.com/problems/length-of-last-word/description/
Description: Given a string s consisting of words and spaces, return the length of the last word in the string. A word is a maximal substring consisting of non-space characters only.
*/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        // removing the extra whitespaces at first
        var whitespaceRemoved = s.trimmingCharacters(in: .whitespacesAndNewlines)
        // capturing the in-sentence space-separated words
        let separatedStr = whitespaceRemoved.components(separatedBy: .whitespaces)
        // detecting the last word, else an empty string
        let lastStr = separatedStr.last ?? ""
        // returning the length by using the count property
        return lastStr.count
    }
}

// taking an instance of the Solution class
let solution = Solution()

// calling the lengthOfLastWord() with an argument
print(solution.lengthOfLastWord("I am sorry"))
