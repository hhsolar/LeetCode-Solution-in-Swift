//
//  62_UniquePaths.swift
//  LeetCodeSolution
//
//  Created by apple on 15/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func uniquePaths(_ m: Int, _ n: Int) -> Int {
    guard m > 1 || n > 1 else { return 1 }
    var dp = Array(repeating: Array(repeating: 1, count: n), count: m)
    
    for i in 1..<m {
        for j in 1..<n {
            dp[i][j] = dp[i-1][j] + dp[i][j-1]
        }
    }
    
    return dp[m-1][n-1]
}
