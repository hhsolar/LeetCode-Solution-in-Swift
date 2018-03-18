//
//  96_UniqueBinarySearchTree.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

// 根据Catalan number

func numTrees(_ n: Int) -> Int {
    guard n > 0 else { return 0 }
    var dp = Array(repeating: 0, count: n+1)
    dp[0] = 1
    dp[1] = 1
    for i in 2...n {
        for j in 0..<i {
            dp[i] += dp[j] * dp[i-j-1]
        }
    }
    return dp[n]
}
