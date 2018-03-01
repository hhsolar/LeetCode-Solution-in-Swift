//
//  53_MaximumSubarray.swift
//  LeetCodeSolution
//
//  Created by apple on 24/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    
    guard nums.count > 0 else { return 0 }
    
    return maxSubArrayHelper(nums, 0, nums.count - 1)
}

func maxSubArrayHelper(_ nums: [Int], _ left: Int, _ right: Int) -> Int {
    guard right > left else { return nums[left] }
    let mid = left + (right - left) / 2
    let lm = maxSubArrayHelper(nums, left, mid - 1)
    let rm = maxSubArrayHelper(nums, mid + 1, right)
    
    var temp = nums[mid]
    var mm = temp
    
    for i in (left..<mid).reversed() {
        temp += nums[i]
        mm = max(temp, mm)
    }
    
    temp = mm
    for i in (mid+1)...right {
        temp += nums[i]
        mm = max(temp, mm)
    }
    
    return max(mm, max(lm, rm))
}
