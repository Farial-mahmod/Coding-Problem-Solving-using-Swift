// Leetcode problem: https://leetcode.com/problems/climbing-stairs

class Solution {
    func climbStairs(_ n: Int) -> Int {
        var totalSteps : Int
        var stepOne = 1
        var stepTwo = 1
        // loop to traverse upto the input 'n'
        for i in 1..<n {
        // currentStep is the sum of the first two steps, being individually one
            totalSteps = stepOne + stepTwo
            stepTwo = stepOne
            stepOne = totalSteps
        }
        return stepOne
    }
}

var solution = Solution()
solution.climbStairs(31)
