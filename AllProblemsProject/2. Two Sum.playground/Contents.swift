//2. Two Sum
//Easy
//
//Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//
//You can return the answer in any order.

//Example 1:
//
//Input: 
var nums = [2,7,11,15]; var target = 9
//Output: [0,1]
//Explanation: Because nums[0] + nums[1] == 9, we return [0, 1].
//Example 2:
//var nums = [3,2,4]; var target = 6     // <---- uncomment this line! to try example 2
//Output: [1,2]
//Example 3:
//
//Input: nums = [3,3], target = 6        // <---- uncomment this line! to try example 3
//Output: [0,1]

class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int :Int]()
        for (index, value) in nums.enumerated() {
            if let storedValue = map[target - value] {
                return [storedValue, index]
            } else {
                map.updateValue(index, forKey: value)
            }
        }
        return []
    }
}

Solution().twoSum(nums, target)
