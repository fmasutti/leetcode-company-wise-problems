# Programming Challenges

This repository contains solutions to various programming problems found on the [LeetCode](https://leetcode.com/) website, based on problems commonly asked in company interviews. The problems are sourced from this [list of company-wise LeetCode problems](https://github.com/hxu296/leetcode-company-wise-problems-2022), which provides a curated set of questions that have been asked in real-life technical interviews at major tech companies.

The goal is to practice and improve problem-solving skills using different data structures and algorithms, with solutions implemented in **Swift**.

Each solution is contained in a dedicated **Playground file**. Swift Playgrounds provide a great environment for testing and running Swift code interactively, making them an ideal choice for these types of challenges.

## Problems Included

### 1. [Two Sum](https://leetcode.com/problems/two-sum/description/)

**Description**: Given an array of integers `nums` and an integer `target`, you need to find two numbers from the array such that their sum equals the `target`. The solution should return the indices of the two numbers. You may assume that each input would have exactly one solution, and you may not use the same element twice.

- **Input**: 
  - An array of integers `nums`
  - An integer `target`
- **Output**: 
  - A list of indices of the two numbers that add up to the target.

**Example**:
  
  Input: `nums = [2, 7, 11, 15], target = 9`
  
  Output: `[0, 1]`
  
  Explanation: The numbers at indices 0 and 1 (`2` and `7`) add up to `9`.

This problem is one of the most common coding interview questions, testing your ability to use hash maps for efficient lookups.

**Solution**:    
The solution to this problem is available [HERE](AllProblemsProject/1.%20Two%20Sum.playground/Contents.swift)

---

### 2. [Add Two Numbers](https://leetcode.com/problems/add-two-numbers/description/)

**Description**:  
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order, and each of their nodes contains a single digit. Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

**Constraints**:
- The number of nodes in each linked list is in the range `[1, 100]`.
- `0 <= Node.val <= 9`
- It is guaranteed that the list represents a number that does not have leading zeros.

**Examples**:

- Input: `l1 = [2,4,3], l2 = [5,6,4]`  
  Output: `[7,0,8]`  
  Explanation: 342 + 465 = 807.

- Input: `l1 = [0], l2 = [0]`  
  Output: `[0]`

- Input: `l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]`  
  Output: `[8,9,9,9,0,0,0,1]`

**Solution**:  
The solution to this problem is available [HERE](AllProblemsProject/2.%20Add%20Two%20Numbers.playground/Contents.swift).

---

### 7. [Reverse Integer](https://leetcode.com/problems/reverse-integer/)

**Description**:  
Given a signed 32-bit integer `x`, reverse its digits. If reversing `x` causes the value to go outside the signed 32-bit integer range `[-2³¹, 2³¹ - 1]`, return `0`.

**Constraints**:
- The input `x` is a signed 32-bit integer.
- The reversed result must also fit within the signed 32-bit range.

**Examples**:

- Input: `x = 123`  
  Output: `321`

- Input: `x = -123`  
  Output: `-321`

- Input: `x = 120`  
  Output: `21`

- Input: `x = 0`  
  Output: `0`

**Solution**:    
The solution to this problem is available [HERE](AllProblemsProject/7.%20Reverse%20Integer.playground/Contents.swift)

---

### 8. [String to Integer (atoi)](https://leetcode.com/problems/string-to-integer-atoi/)

**Description**:  
Implement the `myAtoi(string s)` function, which converts a string to a 32-bit signed integer (similar to the C/C++ `atoi` function). The algorithm follows these steps:

1. Read in and ignore any leading whitespace.
2. Check if the next character is `'-'` or `'+'`. This determines if the final result is negative or positive. Assume the result is positive if neither is present.
3. Read in the next characters until the next non-digit character or the end of the input is reached. Convert these digits into an integer.
4. If no digits were read, return `0`.
5. Clamp the integer value so that it remains in the range `[-2³¹, 2³¹ - 1]`. Specifically:
   - If the integer is less than `-2³¹`, return `-2³¹`.
   - If the integer is greater than `2³¹ - 1`, return `2³¹ - 1`.
6. Ignore any characters after the last digit of the integer.

**Constraints**:
- `0 <= s.length <= 200`
- `s` consists of English letters, digits, `' '`, `'+'`, `'-'`, and `'.'`.

**Examples**:

- Input: `s = "42"`  
  Output: `42`

- Input: `s = "   -42"`  
  Output: `-42`  
  Explanation: The first non-whitespace character is `'-'`, which makes the number negative. The rest of the string is `"42"`.

- Input: `s = "4193 with words"`  
  Output: `4193`  
  Explanation: Conversion stops at the first non-digit character.

- Input: `s = "words and 987"`  
  Output: `0`  
  Explanation: The first non-whitespace character is not a valid number.

- Input: `s = "-91283472332"`  
  Output: `-2147483648`  
  Explanation: The number is less than `-2³¹`, so it is clamped to `-2147483648`.

**Solution**:    
The solution to this problem is available [HERE](AllProblemsProject/8.%20String%20to%20Integer%20(atoi).playground/Contents.swift)

---

### 13. [Roman to Integer](https://leetcode.com/problems/roman-to-integer/)

**Description**:  
Given a Roman numeral, convert it to an integer. Roman numerals are represented by seven different symbols:

| Symbol | Value |
|--------|-------|
| I      | 1     |
| V      | 5     |
| X      | 10    |
| L      | 50    |
| C      | 100   |
| D      | 500   |
| M      | 1000  |

The numerals follow these rules:
- Symbols are typically written from largest to smallest, left to right.
- However, when a smaller symbol appears before a larger symbol, it indicates subtraction. Examples:
  - `IV = 4` (5 - 1)
  - `IX = 9` (10 - 1)

**Examples**:

- Input: `s = "III"`  
  Output: `3`  
  Explanation: `III = 1 + 1 + 1 = 3`

- Input: `s = "LVIII"`  
  Output: `58`  
  Explanation: `L = 50, V = 5, III = 3`

- Input: `s = "MCMXCIV"`  
  Output: `1994`  
  Explanation: `M = 1000, CM = 900, XC = 90, IV = 4`

**Solution**:    
The solution to this problem is available [HERE](AllProblemsProject/13.%20Roman%20to%20Integer.playground/Contents.swift)

---

### 20. [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)

**Description**: Given a string `s` containing only the characters '(', ')', '{', '}', '[' and ']', the task is to determine if the input string is valid. The string is considered valid if:

- Open brackets must be closed by the same type of brackets.
- Open brackets must be closed in the correct order.
- Every close bracket has a corresponding open bracket of the same type.

**Solution**:    
The solution to this problem is available [HERE](AllProblemsProject/20.%20Valid%20Parentheses.playground/Contents.swift)

---

Feel free to explore, suggest improvements!

## How to Run the Tests

1. Clone the repository:
   ```bash
   git clone https://github.com/fmasutti/leetcode-company-wise-problems.git
