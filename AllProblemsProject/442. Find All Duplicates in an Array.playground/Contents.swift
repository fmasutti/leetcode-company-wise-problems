//442. Find All Duplicates in an Array
//Medium
//
//Given an integer array nums of length n where all the integers of nums are in the range [1, n] and each integer appears at most twice, return an array of all the integers that appears twice.
//
//You must write an algorithm that runs in O(n) time and uses only constant auxiliary space, excluding the space needed to store the output
//
// 
//
//Example 1:
//
//Input: nums = [4,3,2,7,8,2,3,1]
//Output: [2,3]
//Example 2:
//
//Input: nums = [1,1,2]
//Output: [1]
//Example 3:
//
//Input: nums = [1]
//Output: []
// 
//
//Constraints:
//
//n == nums.length
//1 <= n <= 105
//1 <= nums[i] <= n
//Each element in nums appears once or twice.

Solution().findDuplicates([1,2,3,3,5,6,7,10,2,30])
Solution().findDuplicates([4,-3,-2,-7,-8,-2,-3,-1])

class Solution {
    
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var nums = nums // "hack as its not in out..."
        var dic = [Int:Int]()
        for number in nums {
            if let cachedValue = dic[number] {
                dic.updateValue(cachedValue + 1, forKey: number)
            } else {
                dic.updateValue(1, forKey: number)
            }
        }
        return dic.filter { $0.value == 2 }.map{ $0.key }
    }
}
