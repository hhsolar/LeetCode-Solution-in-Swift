//
//  377_CombinationSumIV.swift
//  LeetCodeSolution
//
//  Created by apple on 15/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
    var dp = Array(repeating: 0, count: target+1)
    dp[0] = 1
    let nNums = nums.sorted()
    for i in 1...target {
        for a in nNums {
            if i < a { break }
            // 当target很大时，可能的组合个数会非常多，超过Int的最大值
            dp[i] = dp[i] + dp[i-a] > Int32.max ? Int(Int32.max) : dp[i]+dp[i-a]
        }
    }
    return dp[target]
}
