//
//  70_ClimbingStairs.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    
    guard n > 1 else { return 1 }
    
    var dp = Array(repeating: 0, count: n + 1)
    dp[0] = 1
    dp[1] = 1
    
    for i in 2..<n+1 {
        dp[i] = dp[i - 1] + dp[i - 2]
    }
    
    return dp[n]
}
