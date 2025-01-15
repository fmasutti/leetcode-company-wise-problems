import UIKit

// Just try following cases:
//Example 1:
//
var s = "({})"
//
//Output: true
//
//Example 2:
//
//var s = "()[]{}"
//
//Output: true
//
//Example 3:
//
//var s = "(]"
//
//Output: false
//
//Example 4:
//
//var s = "([])"
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
