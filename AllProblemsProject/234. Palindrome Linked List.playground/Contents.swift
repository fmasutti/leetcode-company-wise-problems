// 234. Palindrome Linked List
// Easy
//
// Given the head of a singly linked list, return true if it is a
// palindrome
//  or false otherwise.
//
//
// Example 1:
// Input: head = [1,2,2,1]
// Output: true
//
// Example 2:
// Input: head = [1,2]
// Output: false
//
// Constraints:
//
// The number of nodes in the list is in the range [1, 105].
// 0 <= Node.val <= 9
//
// Follow up: Could you do it in O(n) time and O(1) space?


public class ListNode: CustomStringConvertible {
    public var val: Int
    public var next: ListNode?
    
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
    
    // "print the node like: 0 -> 1 -> 2"
    public var description: String {
        var result = "\(val)"
        var current = next
        while let node = current {
            result += " -> \(node.val)"
            current = node.next
        }
        return result
    }
}

Solution().isPalindrome(ListNode(1, ListNode(2, ListNode(2, ListNode(1, nil)))))  // true
Solution().isPalindrome(ListNode(1, ListNode(2, nil)))                            // false
Solution().isPalindrome(ListNode(2, ListNode(2, nil)))                            // true

class Solution {
    
    // Helper method that reverse a linked list.
    func reverseNodes(listNodes: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var listNodes = listNodes
        while listNodes != nil {
            let next = listNodes?.next
            listNodes?.next = prev
            prev = listNodes
            listNodes = next
        }
        return prev
    }

    func isPalindrome(_ head: ListNode?) -> Bool {
        var fastPointer = head?.next
        var slowPointer = head
        var head = head
        
        // find middle of the list.
        while fastPointer != nil {
            slowPointer = slowPointer?.next
            fastPointer = fastPointer?.next?.next
        }
        
        
        var current = reverseNodes(listNodes: slowPointer)
        
        while current != nil {
            guard let val1 = current?.val,
                  let val2 = head?.val else { return false }
            if val1 != val2 {
                return false
            }
            current = current?.next
            head = head?.next
        }
        return true
    }
}
