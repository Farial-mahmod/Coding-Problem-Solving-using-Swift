/*
Challenge: Serialize and Deserialize Binary Tree
Serialization is the process of converting a data structure or object into a sequence of bits so that it can be stored in a file or memory buffer, or transmitted across a network connection link to be reconstructed later in the same or another computer environment.
Design an algorithm to serialize and deserialize a binary tree. There is no restriction on how your serialization/deserialization algorithm should work. You just need to ensure that a binary tree can be serialized to a string and this string can be deserialized to the original tree structure.
Leetcode link: https://leetcode.com/problems/serialize-and-deserialize-binary-tree/description/
*/

// Solution using Swift
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Codec {

// a Singleton-style variable (hash map) to use later
static var trees = [String: TreeNode]()

    func serialize(_ root: TreeNode?) -> String {
        // ensuring the root is not null nor blank, else returning ""
        guard let root else {return ""}

        // ObjectIdentifier is a unique identifier for a class instance or metatype
        var string = "\(ObjectIdentifier(root))"
        Codec.trees[string] = root
        
        // returning the serialized string value
        return string
    }
    
    func deserialize(_ data: String) -> TreeNode? {
        // returning the deserialized value stored above, else returning nil
        Codec.trees[data] ?? nil
    }
}
