//2. Add Two Numbers
//Medium
//
//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
// 
//
//Example 1:
//
//
//Input: l1 = [2,4,3], l2 = [5,6,4]
//Output: [7,0,8]
//Explanation: 342 + 465 = 807.
//Example 2:
//
//Input: l1 = [0], l2 = [0]
//Output: [0]
//Example 3:
//
//Input: l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
//Output: [8,9,9,9,0,0,0,1]
// 
//
//Constraints:
//
//The number of nodes in each linked list is in the range [1, 100].
//0 <= Node.val <= 9
//It is guaranteed that the list represents a number that does not have leading zeros.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

Solution().addTwoNumbers(ListNode(2, ListNode(4, ListNode(3, nil))),
                         ListNode(5, ListNode(6, ListNode(4, nil)))) //[7,0,8]

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1 = l1
        var l2 = l2
        var rootNode: ListNode? = ListNode()
        var currentNode = rootNode
        var hasCarryOver = 0
        
        while l1 != nil ||
                l2 != nil {
            
            var l1value = l1?.val ?? 0
            var l2value = l2?.val ?? 0
            var sum = l1value + l2value + hasCarryOver
            var nextNode: ListNode?
            
            if sum >= 10 {
                nextNode = ListNode(sum - 10, nil)
                hasCarryOver = 1
            } else {
                nextNode = ListNode(sum, nil)
                hasCarryOver = 0
            }
            currentNode?.next = nextNode
            currentNode = nextNode
            
            l1 = l1?.next
            l2 = l2?.next
        }
        
        if hasCarryOver == 1 {
            currentNode?.next = ListNode(hasCarryOver, nil)
        }
        
        return rootNode?.next // as the "root" was just a dummy node at start of the method.
    }
}
