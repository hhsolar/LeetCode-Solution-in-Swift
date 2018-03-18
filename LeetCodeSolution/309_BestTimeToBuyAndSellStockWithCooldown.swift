//
//  309_BestTimeToBuyAndSellStockWithCooldown.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

//关系式: buy[i] = max(sell[i-2] - price, buy[i-1])
//       sell[i] = max(buy[i-1] + price, sell[i-1])

func maxProfit(_ prices: [Int]) -> Int {
    guard prices.count > 1 else { return 0 }
    
    var sell = 0, perSell = 0, buy = Int.min, perBuy = 0
    
    for price in prices {
        perBuy = buy
        buy = max(perSell - price, perBuy)
        perSell = sell
        sell = max(perSell, perBuy + price)
    }
    return sell
}
