//
//  198_HouseRobber.swift
//  LeetCodeSolution
//
//  Created by apple on 24/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    
    guard nums.count > 0 else { return 0 }
    guard nums.count > 1 else { return nums[0] }
    
    var dp = Array(repeating: 0, count: nums.count + 1)
    
    dp[1] = nums.first!
    
    for i in 2...nums.count {
        dp[i] = max(dp[i-2] + nums[i-1], dp[i-1])
    }
    
    return dp.last!
}
