/*
Leetcode link: https://leetcode.com/problems/capitalize-the-title/description/
Statement: You are given a string title consisting of one or more words separated by a single space, where each word consists of English letters.
Capitalize the string by changing the capitalization of each word such that:
- If the length of the word is 1 or 2 letters, change all letters to lowercase.
- Otherwise, change the first letter to uppercase and the remaining letters to lowercase.
Return the capitalized title.
*/

class Solution {
    func capitalizeTitle(_ title: String) -> String {
        var capitalizedWords = title.components(separatedBy: " ")
    
        for (index, value) in capitalizedWords.enumerated() {
            if value.count <= 2 {
                capitalizedWords[index] = value.lowercased()
            } else {
                capitalizedWords[index] = value.capitalized
            }
        }
        return capitalizedWords.joined(separator: " ")
    }
}

// testing the method below with an instance of Solution
let testerObj = Solution()
print(testerObj.capitalizeTitle("Is it too late now to say sorry"))
