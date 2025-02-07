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

### 9. [Palindrome Number](https://leetcode.com/problems/palindrome-number/description/)

**Description**:  
Given an integer `x`, return `true` if `x` is a palindrome, and `false` otherwise.

A palindrome is a number that reads the same forward and backward.

**Constraints**:
- `-2³¹ <= x <= 2³¹ - 1`

**Examples**:

- Input: `x = 121`  
  Output: `true`  
  Explanation: `121` reads the same forward and backward.

- Input: `x = -121`  
  Output: `false`  
  Explanation: `-121` reads as `121-` from right to left, which is not the same.

- Input: `x = 10`  
  Output: `false`  
  Explanation: `10` reads as `01` from right to left, which is not the same.

**Solution**:  
The solution to this problem is available [HERE](AllProblemsProject/9.%20Palindrome%20Number.playground/Contents.swift).

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
  
### 26. [Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/)

**Description**:  
Given an integer array `nums` sorted in **non-decreasing order**, remove the duplicates **in-place** such that each unique element appears only **once**. The relative order of the elements should be kept the same.

Since it is impossible to change the length of the array in some languages, you must place the result in the first part of the array `nums`. More formally, if there are `k` unique elements after removing the duplicates, then the first `k` elements of `nums` should hold the final result. It does not matter what you leave beyond the first `k` elements.

Return `k` after placing the final result in the first `k` slots of `nums`.

**Constraints**:
- `1 <= nums.length <= 3 * 10⁴`
- `-100 <= nums[i] <= 100`
- `nums` is sorted in **non-decreasing order**.

**Examples**:

- Input: `nums = [1,1,2]`  
  Output: `2, nums = [1,2,_]`  
  Explanation: The function should return `k = 2`, with the first two elements of `nums` being `1` and `2`. The order of elements should be maintained.

- Input: `nums = [0,0,1,1,1,2,2,3,3,4]`  
  Output: `5, nums = [0,1,2,3,4,_,_,_,_,_]`  
  Explanation: The function should return `k = 5`, with the first five elements of `nums` being `0, 1, 2, 3, and 4`.

**Solution**:  
The solution to this problem is available [HERE](AllProblemsProject/26.%20Remove%20Duplicates%20from%20Sorted%20Array.playground/Contents.swift).

---
  
### 27. [Remove Element](https://leetcode.com/problems/remove-element/)

**Description**:  
Given an integer array `nums` and an integer `val`, remove all occurrences of `val` in `nums` **in-place**. The relative order of the elements may be changed.

Since it is impossible to change the length of the array in some languages, you must place the result in the first part of the array `nums`. More formally, if there are `k` elements after removing the duplicates, then the first `k` elements of `nums` should hold the final result. It does not matter what you leave beyond the first `k` elements.

Return `k` after placing the final result in the first `k` slots of `nums`.

**Constraints**:
- `0 <= nums.length <= 100`
- `0 <= nums[i] <= 50`
- `0 <= val <= 100`

**Examples**:

- Input: `nums = [3,2,2,3], val = 3`  
  Output: `2, nums = [2,2,_,_]`  
  Explanation: The function should return `k = 2`, with the first two elements of `nums` being `2`. The order of elements may vary.

- Input: `nums = [0,1,2,2,3,0,4,2], val = 2`  
  Output: `5, nums = [0,1,4,0,3,_,_,_]`  
  Explanation: The function should return `k = 5`, with the first five elements of `nums` being `0, 1, 4, 0, 3`.

**Solution**:  
The solution to this problem is available [HERE](AllProblemsProject/27.%20Remove%20Element.playground/Contents.swift).

---

### 141. [Linked List Cycle](https://leetcode.com/problems/linked-list-cycle/description/)

**Description**:  
Given `head`, the head of a linked list, determine if the linked list has a cycle in it.

There is a cycle in a linked list if there is some node in the list that can be reached again by continuously following the `next` pointer. Internally, `pos` is used to denote the index of the node that tail's `next` pointer is connected to. Note that `pos` is not passed as a parameter.

Return `true` if there is a cycle in the linked list. Otherwise, return `false`.

**Constraints**:
- The number of nodes in the list is in the range `[0, 10⁴]`.
- `-10⁵ <= Node.val <= 10⁵`
- `head` is the head of a linked list.

**Examples**:

- Input: `head = [3,2,0,-4]`, `pos = 1`  
  Output: `true`  
  Explanation: There is a cycle in the linked list where tail connects to the second node.

- Input: `head = [1,2]`, `pos = 0`  
  Output: `true`  
  Explanation: There is a cycle in the linked list where tail connects to the first node.

- Input: `head = [1]`, `pos = -1`  
  Output: `false`  
  Explanation: There is no cycle in the linked list.

**Solution**:  
The solution to this problem is available [HERE](AllProblemsProject/141.%20Linked%20List%20Cycle.playground/Contents.swift).

---

### 2815. [Max Pair Sum in an Array](https://leetcode.com/problems/max-pair-sum-in-an-array/description/)

**Description**:  
You are given an integer array `nums`. You need to find the maximum sum of a pair `(nums[i], nums[j])` such that both numbers have the same maximum digit.

The maximum digit of a number is the largest digit in its decimal representation.

**Constraints**:
- `2 <= nums.length <= 100`
- `1 <= nums[i] <= 10⁴`

**Examples**:

- Input: `nums = [51, 71, 17, 24, 42]`  
  Output: `88`  
  Explanation: The pair `(17, 71)` has the same maximum digit `7`, and their sum is `88`.

- Input: `nums = [1, 2, 3, 4]`  
  Output: `-1`  
  Explanation: No two numbers have the same maximum digit.

- Input: `nums = [10, 20, 30, 40, 50]`  
  Output: `90`  
  Explanation: The pair `(40, 50)` has the same maximum digit `4`, and their sum is `90`.

**Solution**:  
The solution to this problem is available [HERE](AllProblemsProject/2815.%20Max%20Pair%20Sum%20in%20an%20Array.playground/Contents.swift).

---

Feel free to explore, suggest improvements!

## How to Run the Tests

1. Clone the repository:
   ```bash
   git clone https://github.com/fmasutti/leetcode-company-wise-problems.git
