//
//  ThirdMaximumNumber.swift
//  LeetCodeSolution
//
//  Created by apple on 27/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func thirdMax(_ nums: [Int]) -> Int {
    
    if nums.count == 1 { return nums[0] }
    if nums.count == 2 { return max(nums[0], nums[1]) }
    
    var max1 = Int.min , max2 = Int.min, max3 = Int.min
    for i in 0..<nums.count {
        if nums[i] > max1 {
            max3 = max2
            max2 = max1
            max1 = nums[i]
        } else if nums[i] < max1, nums[i] > max2 {
            max3 = max2
            max2 = nums[i]
        } else if nums[i] < max2, nums[i] > max3 {
            max3 = nums[i]
        }
    }
    for n in nums { if n == max3 { return max3 } }
    return max1
}
