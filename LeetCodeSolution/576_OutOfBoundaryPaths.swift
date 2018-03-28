//
//  576_OutOfBoundaryPaths.swift
//  LeetCodeSolution
//
//  Created by apple on 27/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func findPaths(_ m: Int, _ n: Int, _ N: Int, _ i: Int, _ j: Int) -> Int {
    guard N > 0 else { return 0 }
    var dp = Array(repeating: Array(repeating: Array(repeating: 0, count: n), count: m), count: N + 1)
    let mod = 1000000007
    
    for k in 1...N {
        for y in 0..<m {
            for x in 0..<n {
                let top = y == 0 ? 1 : dp[k-1][y-1][x]
                let bottom = y == m - 1 ? 1 : dp[k-1][y+1][x]
                let left = x == 0 ? 1 : dp[k-1][y][x-1]
                let right = x == n - 1 ? 1 : dp[k-1][y][x+1]
                dp[k][y][x] = (top + bottom + left + right) % mod
            }
        }
    }
    return dp[N][i][j]
}
