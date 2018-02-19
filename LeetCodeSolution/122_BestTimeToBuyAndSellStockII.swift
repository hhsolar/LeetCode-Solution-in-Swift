//
//  122_BestTimeToBuyAndSellStockII.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

class BestTimeToBuyAndSellStockII: NSObject {

    func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count > 1 else { return 0 }
        
        var res = 0
        
        for i in 0..<(prices.count - 1) {
            let v =  prices[i + 1] - prices[i]
            if v > 0 {
                res += v
            }
        }
        return res
    }
}

