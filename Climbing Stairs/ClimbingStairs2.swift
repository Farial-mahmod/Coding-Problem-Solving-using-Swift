class Solution {
    func climbStairs(_ n: Int) -> Int {
    if n == 1 {
        return 1
    }
    else if n == 2 {
        return 2
    }

    return climbStairs(n - 1) + climbStairs(n - 2)

    for i in 3..<n {
    climbStairs(i)
    }
}
}

let solution = Solution()
solution.climbStairs(37)

