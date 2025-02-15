//141. Linked List Cycle
//Easy
//
//Given head, the head of a linked list, determine if the linked list has a cycle in it.
//
//There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the next pointer. Internally, pos is used to denote the index of the node that tail's next pointer is connected to. Note that pos is not passed as a parameter.
//
//Return true if there is a cycle in the linked list. Otherwise, return false.
//
//Example 1:
//
//
//Input: head = [3,2,0,-4], pos = 1
//Output: true
//Explanation: There is a cycle in the linked list, where the tail connects to the 1st node (0-indexed).
//Example 2:
//
//
//Input: head = [1,2], pos = 0
//Output: true
//Explanation: There is a cycle in the linked list, where the tail connects to the 0th node.
//Example 3:
//
//
//Input: head = [1], pos = -1
//Output: false
//Explanation: There is no cycle in the linked list.
// 
//
//Constraints:
//
//The number of the nodes in the list is in the range [0, 104].
//-105 <= Node.val <= 105
//pos is -1 or a valid index in the linked-list.

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

Solution().hasCycle(ListNode(0, ListNode(1, ListNode(2, ListNode(3, nil)))))

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var slowNodeIt = head
        var fastNodeIt = head?.next
        while fastNodeIt?.next != nil {
            if let validSlowIt = slowNodeIt,
               let validFastit = fastNodeIt {
                // Compare using memory position of the obj.
                if ((Unmanaged.passUnretained(validSlowIt).toOpaque()) ==   Unmanaged.passUnretained(validFastit).toOpaque()) {
                    return true
                }
            }
            slowNodeIt = slowNodeIt?.next
            fastNodeIt = fastNodeIt?.next?.next
        }
        return false
    }
}
