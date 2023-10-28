/*
Description: Given the head of a singly linked list, return the middle node of the linked list. If there are two middle nodes, return the second middle node.
Link: https://leetcode.com/problems/middle-of-the-linked-list/
Input: head = [1,2,3,4,5]
Output: [3,4,5]
*/
 public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
  }

// using Floyd's Tortoise Hare algorithm to solve this challenge
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        var fastPointer = head
        var slowPointer = head
        while(fastPointer?.next != nil){
            fastPointer = fastPointer?.next?.next
            slowPointer = slowPointer?.next
        }
        return slowPointer
    }
}

/*
Sample test result:
Input: head = [1,2,3,4,5]
Output: [3,4,5]
*/
