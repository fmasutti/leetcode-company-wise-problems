//4. Reverse Integer
//Medium
//
//Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
//
//Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
//
// 
//
//Example 1:
//
//Input: x = 123
//Output: 321
//Example 2:
//
//Input: x = -123
//Output: -321
//Example 3:
//
//Input: x = 120
//Output: 21
// 
//
//Constraints:
//
//-231 <= x <= 231 - 1

// Examples:
Solution().reverse(123)                 // 321
Solution().reverse(-123)                // -321
Solution().reverse(-120)                // -21
Solution().reverse(-121231231231231233) // 0
Solution().reverse(91830912823)         // 0

class Solution {
    func reverse(_ x: Int) -> Int {
        var numberArray = String(abs(x))
        var index = numberArray.count
        var reversedNumberString = ""
        while index != 0 {
            reversedNumberString.append(numberArray.removeLast())
            index -= 1
        }
        
        let finalValue = Int(reversedNumberString) ?? Int.max
        if finalValue >= Int32.max {
            return 0
        } else {
            return x > 0 ? finalValue : finalValue * -1
        }
    }
}
