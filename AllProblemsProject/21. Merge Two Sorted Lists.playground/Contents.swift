// 21. Merge Two Sorted Lists
//
// You are given the heads of two sorted linked lists list1 and list2.
//
// Merge the two lists into one sorted list. The list should be made by splicing together the nodes of the first two lists.
//
// Return the head of the merged linked list.

// Example 1:
// Input: list1 = [1,2,4], list2 = [1,3,4]
// Output: [1,1,2,3,4,4]
//
// Example 2:
// Input: list1 = [], list2 = []
// Output: []
//
// Example 3:
// Input: list1 = [], list2 = [0]
// Output: [0]
//
// Constraints:
// The number of nodes in both lists is in the range [0, 50].
// -100 <= Node.val <= 100
// Both list1 and list2 are sorted in non-decreasing order.

public class ListNode: CustomStringConvertible {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
    
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

Solution().mergeTwoLists(ListNode(1, ListNode(2, ListNode(4, nil))), ListNode(1, ListNode(3, ListNode(4, nil))))
Solution().mergeTwoLists(nil, ListNode(1, ListNode(3, ListNode(4, nil))))
Solution().mergeTwoLists(ListNode(1, ListNode(2, ListNode(4, nil))), nil)
Solution().mergeTwoLists(nil, nil)

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        
        // If one of the lists is nil, return the other list as the merged result.
        if list1 == nil { return list2 }
        if list2 == nil { return list1 }
        
        // Dummy node to act as the start of the merged list.
        var header = ListNode()
        var pointerList = header
        
        var n1 = list1
        var n2 = list2
        
        // Iterate through both lists while they have elements
        while n1 != nil && n2 != nil {
            guard let val1 = n1?.val, let val2 = n2?.val else { break }
            
            if val1 <= val2 {
                pointerList.next = n1 // Attach the smaller node to the merged list
                n1 = n1?.next // Move to the next node in list1
            } else {
                pointerList.next = n2
                n2 = n2?.next
            }
            pointerList = pointerList.next! // Move the pointer in the merged list
        }
        
        // Attach the remaining nodes of the non-empty list (if any)
        if let n1 = n1 {
            pointerList.next = n1
        }
        if let n2 = n2 {
            pointerList.next = n2
        }
        
        return header.next // Return the merged list (skipping the dummy node)
    }
}

