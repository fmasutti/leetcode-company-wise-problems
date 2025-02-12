public class ListNode: CustomStringConvertible {
    public var val: Int
    public var next: ListNode?
    
    public init() { self.val = 0; self.next = nil }
    public init(_ val: Int) { self.val = val; self.next = nil }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next }
    
    // "print the node like: 0->1->2"
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
