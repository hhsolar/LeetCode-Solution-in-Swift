//
//  213_HouseRobberII.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func rob2(_ nums: [Int]) -> Int {
    let len = nums.count
    switch len {
    case 0:
        return 0
    case 1:
        return nums.first!
    case 2:
        return nums[0] > nums[1] ? nums[0] : nums[1]
    default:
        let a = robHelper(Array(nums[1..<len-1]))
        let b = robHelper(Array(nums[1..<len]))
        return max(a, b)
    }
}

func robHelper(_ nums: [Int]) -> Int {
    var dp = Array(repeating: 0, count: nums.count + 1)
    dp[1] = nums[0]
    for i in 2...nums.count {
        dp[i] = max(dp[i-2] + nums[i-1], dp[i-1])
    }
    return dp.last!
}
