//
//  BestTimeToBuyAndSellStock.swift
//  LeetCodeSolution
//
//  Created by apple on 24/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    
    guard prices.count > 1 else { return 0 }
    
    var maxNum = 0
    var minNum = Int.max
    
    for p in prices {
        minNum = min(minNum, p)
        maxNum = max(maxNum, p - minNum)
    }
    
    return maxNum
}
