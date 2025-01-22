//3. Roman to Integer
//Easy
//
//Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.
//
//Symbol       Value
//I             1
//V             5
//X             10
//L             50
//C             100
//D             500
//M             1000
//For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
//
//Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:
//
//I can be placed before V (5) and X (10) to make 4 and 9.
//X can be placed before L (50) and C (100) to make 40 and 90.
//C can be placed before D (500) and M (1000) to make 400 and 900.
//Given a roman numeral, convert it to an integer.
//
//Constraints:
//
//1 <= s.length <= 15
//s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
//It is guaranteed that s is a valid roman numeral in the range [1, 3999].

// Examples:
Solution().romanToInt("III")     // 3
Solution().romanToInt("LVIII")   // 58
Solution().romanToInt("MCMXCIV") // 1994

class Solution {
    let mapRomanSymbols: [Character: Int] = ["I": 1,
                                             "V": 5,
                                             "X": 10,
                                             "L": 50,
                                             "C": 100,
                                             "D": 500,
                                             "M": 1000]
    let mapRomanPairSymbols: [String] = ["IV", "IX", "XL", "XC", "CD", "CM"]
    func valueFromSymbol(prevCharacter: Character, currentCharacter: Character) -> Int? {
        var possibleRomanSymbol = String("\(prevCharacter)\(currentCharacter)")
        if mapRomanPairSymbols.contains(possibleRomanSymbol) {
            // If we do find the pair, we should subtract with the prev value * 2
            // as it was added already at total on prev interation.
            if let valueFromMap1 = mapRomanSymbols[prevCharacter],
               let valueFromMap2 = mapRomanSymbols[currentCharacter] {
                return valueFromMap2 - valueFromMap1 * 2
            }
        }
        // If cant find pair, we just sum into the total!
        if let valueFromMap = mapRomanSymbols[currentCharacter] {
            return valueFromMap
        }
        return nil
    }
    
    func romanToInt(_ s: String) -> Int {
        var total = 0
        var lastCharacter = Character("!") // just init with some invalid Roman symbol
        for (index, character) in s.enumerated() {
            if let valueFromMap = valueFromSymbol(prevCharacter: lastCharacter, currentCharacter: character)  {
                total += valueFromMap
            }
            lastCharacter = character
        }
        return total
    }
}
