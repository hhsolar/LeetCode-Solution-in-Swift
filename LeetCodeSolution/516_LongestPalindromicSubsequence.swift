//
//  516_LongestPalindromicSubsequence.swift
//  LeetCodeSolution
//
//  Created by apple on 14/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func longestPalindromeSubseq(_ s: String) -> Int {
    let sLen = s.count
    guard sLen > 1 else { return sLen }
    
    let sc = Array(s.characters)
    var dp = Array(repeating: Array(repeating: 0, count: sLen), count: sLen)
    
    for i in 0..<sLen {
        dp[i][i] = 1
        var j = i - 1
        while j >= 0 {
            if sc[i] == sc[j] {
                dp[i][j] = dp[i-1][j+1] + 2
            } else {
                dp[i][j] = max(dp[i-1][j], dp[i][j+1])
            }
            j -= 1
        }
    }
    return dp[sLen-1][0]
}
