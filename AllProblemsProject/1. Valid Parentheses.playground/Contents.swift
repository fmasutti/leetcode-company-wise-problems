//1. Valid Parentheses
//Easy
//
//Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//
//An input string is valid if:
//
//Open brackets must be closed by the same type of brackets.
//Open brackets must be closed in the correct order.
//Every close bracket has a corresponding open bracket of the same type.


//Example 1:
//
var s = "({})" // <---- uncomment this line! to try example 1
//
//Output: true
//
//Example 2:
//
//var s = "()[]{}" // <---- uncomment this line! to try example 2
//
//Output: true
//
//Example 3:
//
//var s = "(]" // <---- uncomment this line! to try example 3
//
//Output: false
//
//Example 4:
//
//var s = "([])" // <---- uncomment this line! to try example 4
//Output: true

class Solution {
    func isValid(_ s: String) -> Bool {
        let characters = Array(s)
        var openBrackets = [Character]();
        for character in characters {
            if  character == "(" ||
                character == "[" ||
                character == "{" {
                openBrackets.append(character)
            } else {
                if getOpenBracket(closeBracket: character) == openBrackets.last {
                    openBrackets.removeLast()
                } else {
                    return false
                }
            }
        }
        return openBrackets.isEmpty
    }
    
    func getOpenBracket(closeBracket: Character) -> Character {
        if closeBracket == ")" { return "(" }
        if closeBracket == "]" { return "[" }
        if closeBracket == "}" { return "{" }
        return Character("")
    }
}

Solution().isValid(s)
