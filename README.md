# Programming Challenges

This repository contains solutions to various programming problems found on the [LeetCode](https://leetcode.com/) website, based on problems commonly asked in company interviews. The problems are sourced from this [list of company-wise LeetCode problems](https://github.com/hxu296/leetcode-company-wise-problems-2022), which provides a curated set of questions that have been asked in real-life technical interviews at major tech companies.

The goal is to practice and improve problem-solving skills using different data structures and algorithms, with solutions implemented in **Swift**.

Each solution is contained in a dedicated **Playground file**. Swift Playgrounds provide a great environment for testing and running Swift code interactively, making them an ideal choice for these types of challenges.

## Problems Included

### 1. [Valid Parentheses](https://leetcode.com/problems/valid-parentheses/)

**Description**: Given a string `s` containing only the characters '(', ')', '{', '}', '[' and ']', the task is to determine if the input string is valid. The string is considered valid if:

- Open brackets must be closed by the same type of brackets.
- Open brackets must be closed in the correct order.
- Every close bracket has a corresponding open bracket of the same type.

This is the first problem solved in this repository, based on the problems listed in the aforementioned curated repository. The solution can be found in the corresponding Swift Playground file.

---

### 2. [Two Sum](https://leetcode.com/problems/two-sum/description/)

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

The solution can be found in the corresponding Swift Playground file.

---

### 3. [Roman to Integer](https://leetcode.com/problems/roman-to-integer/)

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

The solution to this problem can be found in the corresponding Swift Playground file in this repository.

---

Feel free to explore, suggest improvements!

## How to Run the Tests

1. Clone the repository:
   ```bash
   git clone https://github.com/fmasutti/leetcode-company-wise-problems.git
