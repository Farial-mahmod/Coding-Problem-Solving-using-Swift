/*
Description: Given a string s and an array of strings words, determine whether s is a prefix string of words. A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some positive k no larger than words.length.
Return true if s is a prefix string of words, or false otherwise.
Link: https://leetcode.com/problems/check-if-string-is-a-prefix-of-array/description/
*/

// program solution in Swift
class Solution {
    func isPrefixString(_ s: String, _ words: [String]) -> Bool {

        var stringWords = String()

        for i in words {
            // adding 1 and checking to see if already has matched, else adding another
            stringWords += i
            // returning as soon as the so far added prefix 'stringWords' has matched 's'
            if s == stringWords {
                return true
            } 
        }
        // when no prefix has matched at the end of traversing loop
        return false
    }
}

/* 
Testcases below:

Input: s = "Quranhasmessages", words = ["Quran","has","messages","mysterious"]
Output: true
Explanation: s can be made by concatenating "Quran", "has", and "messages" together.

Input: s = "iloveleetcode", words = ["i","love","leetcode","apples"]
Output: true
*/
