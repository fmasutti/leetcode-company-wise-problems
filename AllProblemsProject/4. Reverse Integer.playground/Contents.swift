//4. Reverse Integer
//Medium
//
//Topics
//Companies
//Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.
//
//Assume the environment does not allow you to store 64-bit integers (signed or unsigned).
//
// 
//
//Example 1:
//
//var x = 123 // <---- uncomment this line! to try example 1
//Output: 321
//Example 2:
//
//var x = -123 // <---- uncomment this line! to try example 2
//Output: -321
//Example 3:
//
var x = -120   // <---- uncomment this line! to try example 3
//Output: 21
// 
//
//Constraints:
//
//-231 <= x <= 231 - 1

class Solution {
    
    // Helper method only return 32bits Integers.
    func returnOnlyValid32bIntegers(number:Int) -> Int {
        if number <= Int32.min ||
            number >= Int32.max {
            return 0
        } else {
            return number
        }
    }
    
    func reverse(_ x: Int) -> Int {
        var numberArray = String(abs(x))
        var index = numberArray.count
        var reversedNumberString = ""
        while index != 0 {
            reversedNumberString.append(numberArray.removeLast())
            index -= 1
        }
        
        if let finalValue = Int(reversedNumberString) {
            // Check if the value initially was positive or negative. + if is valid 32bit Integer
            return returnOnlyValid32bIntegers(number: x > 0 ? finalValue : finalValue * -1)
        } else {
            return 0
        }
    }
}

print(Solution().reverse(x))
