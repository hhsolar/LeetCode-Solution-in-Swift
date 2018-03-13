//
//  413_ArithmeticSlices.swift
//  LeetCodeSolution
//
//  Created by apple on 12/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func numberOfArithmeticSlices(_ A: [Int]) -> Int {
    let count = A.count
    guard count > 2 else { return 0 }
    
    var dp = Array(repeating: 0, count: count + 1)
    
    dp[3] = (A[2]-A[1] == A[1]-A[0]) ? 1: 0
    
    var diff = A[2]-A[1]
    var num = dp[3] == 1 ? 1 : 0
    
    for i in 3..<count {
        let d = A[i]-A[i-1]
        if d == diff {
            num += 1
        } else {
            num = 0
            diff = d
        }
        dp[i+1] = num + dp[i]
    }
    
    return dp[count]
}
