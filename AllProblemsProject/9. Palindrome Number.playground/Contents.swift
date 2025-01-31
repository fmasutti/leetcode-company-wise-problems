// 9. Palindrome Number
// Easy
//
//
// Given an integer x, return true if x is a
// palindrome
// , and false otherwise.
//
//
//
// Example 1:
//
// Input: x = 121
// Output: true
// Explanation: 121 reads as 121 from left to right and from right to left.
// Example 2:
//
// Input: x = -121
// Output: false
// Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
// Example 3:
//
// Input: x = 10
// Output: false
// Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 

// Constraints:

// -231 <= x <= 231 - 1
 

// Follow up: Could you solve it without converting the integer to a string?

Solution().isPalindrome(123)
Solution().isPalindrome(121)
Solution().isPalindrome(123321)
Solution().isPalindrome(0)

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let originalNumber = x
        var reversedNumber = 0
        var x = x
        while (x > 0) {
            let digit = x % 10;
            reversedNumber = Int(reversedNumber * 10 + digit)
            x = x / 10
        }
        
        if reversedNumber == originalNumber {
            return true
        } else {
            return false
        }
    }
}
