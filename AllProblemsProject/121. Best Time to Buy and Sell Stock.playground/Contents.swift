//121. Best Time to Buy and Sell Stock
//Easy
//
//You are given an array prices where prices[i] is the price of a given stock on the ith day.
//
//You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
//
//Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
//
//Example 1:
//
//Input: prices = [7,1,5,3,6,4]
//Output: 5
//Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
//Note that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.
//Example 2:

//Input: prices = [7,6,4,3,1]
//Output: 0
//Explanation: In this case, no transactions are done and the max profit = 0.
 
//Constraints:

//1 <= prices.length <= 105
//0 <= prices[i] <= 104

Solution().maxProfit([7,1,5,6,6,9])                 // 8
Solution().maxProfit([1,2,3,4,5])                   // 4
Solution().maxProfit([5,4,3,2,1])                   // 0
Solution().maxProfit([7,1,5,6,6,9])                 // 8

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit = 0
        guard var buyPrice = prices.first else {
            return 0
        }
        
        for price in prices {
            var possibleProfit = price - buyPrice
            
            if possibleProfit > profit {
                profit = possibleProfit
            }
            if price < buyPrice {
                buyPrice = price
            }
        }
        return profit
    }
}
