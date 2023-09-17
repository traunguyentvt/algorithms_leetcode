import UIKit

//121. Best Time to Buy and Sell Stock

func maxProfit(_ prices: [Int]) -> Int {
    var buy = prices[0], profit = 0
    for i in 1..<prices.count {
        if prices[i] < buy {
            buy = prices[i]
        } else {
            profit = max(profit, prices[i]-buy)
        }
    }
    return profit
}
