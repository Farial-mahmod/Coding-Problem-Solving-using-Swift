/*
Description: Best Time to Buy and Sell Stock IV - You are given an integer array prices where prices[i] is the price of a given stock on the ith day, and an integer k.
Find the maximum profit you can achieve. You may complete at most k transactions: i.e. you may buy at most k times and sell at most k times.
Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

Example:

Input: k = 2, prices = [2,4,1]
Output: 2
Explanation: Buy on day 1 (price = 2) and sell on day 2 (price = 4), profit = 4-2 = 2.

Link: https://leetcode.com/problems/best-time-to-buy-and-sell-stock-iv/description/?envType=problem-list-v2&envId=ex4emows

*/

// solution using Swift

class Solution {
    func maxProfit(_ k: Int, _ prices: [Int]) -> Int {
        var bought = Array(repeating: Int.min, count: k + 1)
        var sold = Array(repeating: Int.min, count: k + 1)
        
        sold[0] = 0

        for price in prices {
            for i in 0..<k {
                bought[i+1] = max(bought[i+1], sold[i] - price)
                sold[i+1] = max(sold[i+1], bought[i+1] + price)
            }
        }
        return sold.max() ?? 0
    }
}
