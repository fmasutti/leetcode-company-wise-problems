//206. Reverse Linked List
//Easy
//
//Given the head of a singly linked list, reverse the list, and return the reversed list.
//
//Example 1:
//Input: head = [1,2,3,4,5]
//Output: [5,4,3,2,1]
//
//Example 2:
//Input: head = [1,2]
//Output: [2,1]
//
//Example 3:
//Input: head = []
//Output: []
//
//Constraints:
//
//The number of nodes in the list is the range [0, 5000].
//-5000 <= Node.val <= 5000

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

var listNode = ListNode(0, ListNode(1, ListNode(2, nil)))
print(listNode)
print(Solution().reverseList(listNode)!)

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var current = head
        
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        
        return prev
    }
}
