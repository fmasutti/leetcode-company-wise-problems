//2815. Max Pair Sum in an Array
//Easy
//
//You are given an integer array nums. You have to find the maximum sum of a pair of numbers from nums such that the largest digit in both numbers is equal.
//
//For example, 2373 is made up of three distinct digits: 2, 3, and 7, where 7 is the largest among them.
//
//Return the maximum sum or -1 if no such pair exists.
//
//
//Example 1:
//
//Input: nums = [112,131,411]
//
//Output: -1
//
//Explanation:
//
//Each numbers largest digit in order is [2,3,4].
//
//Example 2:
//
//Input: nums = [2536,1613,3366,162]
//
//Output: 5902
//
//Explanation:
//
//All the numbers have 6 as their largest digit, so the answer is 2536 + 3366 = 5902.
//
//Example 3:
//
//Input: nums = [51,71,17,24,42]
//
//Output: 88
//
//Explanation:
//
//Each number's largest digit in order is [5,7,7,4,4].
//
//So we have only two possible pairs, 71 + 17 = 88 and 24 + 42 = 66.
//
// 
//
//Constraints:
//
//2 <= nums.length <= 100
//1 <= nums[i] <= 104

Solution().maxSum([253, 14])                      // -1
Solution().maxSum([112,131,411])                  // -1
Solution().maxSum([2536,1613,3366,162])           // 5902
Solution().maxSum([51,71,17,24,42])               // 88
Solution().maxSum([84,91,18,59,27,9,81,33,17,58]) // 165
Solution().maxSum([8,75,28,35,21,13,21, 12])      // 42

extension Int {
    var maxDigit: Int {
        String(self)
            .map { Int(String($0))! }
            .max() ?? -1
    }
}

class Solution {
    func maxSum(_ nums: [Int]) -> Int {
        return nums.reduce(into: [Int: [Int]]()) { // This reduce create something like: "[8: [8, 28], 5: [35], 3: [13], 2: [21, 21], 7: [75]]
            $0[$1.maxDigit, default: []].append($1)
        }
        .map { $0.value.sorted(by: >) } // "[[75], [21, 21], [13], [28, 8], [35]]
        .map { $0.count > 1 ? ($0[0] + $0[1]) : -1 } // Ignore values that don't have pair
        .max() ?? -1 // Default return value = -1
    }
}
