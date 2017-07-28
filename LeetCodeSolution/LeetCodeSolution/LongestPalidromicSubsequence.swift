//
//  LongestPalidromicSubsequence.swift
//  LeetCodeSolution
//
//  Created by apple on 28/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func longestPalindromeSubseq(_ s: String) -> Int {
    guard s.characters.count > 1 else { return s.characters.count }
    var sc = Array(s.characters)
    let n = sc.count - 1

    var dp = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
    
    
    for i in (0...n).reversed() {
        for j in i...n {
            if i == j {
                dp[i][j] = 1
                continue
            }
            if sc[i] == sc[j] {
                dp[i][j] = dp[i+1][j-1] + 2
            } else {
                dp[i][j] = max(dp[i+1][j], dp[i][j-1])
            }
        }
    }
    return dp[0][n]
    
}
