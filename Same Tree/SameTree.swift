/*
Leetcode link: https://leetcode.com/problems/same-tree/
Description: Given the roots of two binary trees p and q, write a function to check if they are the same or not. Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
*/

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */

class Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if(p == nil && q == nil) {return true}
        if(p == nil || q==nil) {return false}
        if(p!.val != q!.val) {return false}
        return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right)
    }
}

// a test can be produced with p=[1,2] and q=[1,nil,2]
