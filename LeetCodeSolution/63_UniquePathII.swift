//
//  63_UniquePathII.swift
//  LeetCodeSolution
//
//  Created by apple on 21/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
    let m = obstacleGrid.count
    guard m > 0 else { return 1 }
    let n = obstacleGrid[0].count
    guard n > 0 else { return 1 }
    
    var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
    guard obstacleGrid[0][0] == 0, obstacleGrid[m-1][n-1] == 0 else { return 0 }
    dp[0][0] = 1
    
    for j in 1..<n {
        if obstacleGrid[0][j] == 1 {
            break
        } else {
            dp[0][j] = 1
        }
    }
    
    for i in 1..<m {
        if obstacleGrid[i][0] == 1 {
            break
        } else {
            dp[i][0] = 1
        }
    }
    
    for i in 1..<m {
        for j in 1..<n {
            if obstacleGrid[i][j] == 1 {
                continue
            } else {
                dp[i][j] = dp[i-1][j] + dp[i][j-1]
            }
        }
    }
    return dp[m-1][n-1]
}
