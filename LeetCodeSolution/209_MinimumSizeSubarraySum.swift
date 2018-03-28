//
//  209_MinimumSizeSubarraySum.swift
//  LeetCodeSolution
//
//  Created by apple on 25/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func minSubArrayLen(_ s: Int, _ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    guard nums.count > 1 else { return nums[0] >= s ? 1 : 0 }
    
    var sum = 0
    var left = -1
    var minLen = nums.count + 1
    for i in 0..<nums.count {
        guard nums[i] < s else { return 1 }
        sum += nums[i]
        while sum >= s {
            minLen = min(minLen, i - left)
            left += 1
            sum -= nums[left]
        }
    }
    return minLen > nums.count ? 0 : minLen
}
