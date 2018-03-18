//
//  75_SortColors.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func sortColors(_ nums: inout [Int]) {
    let len = nums.count
    
    var start = 0, end = len - 1
    var i = 0
    // 注意循环的upper bound是可变的
    while i <= end, start < end {
        if nums[i] < 1 {
            (nums[start], nums[i]) = (nums[i], nums[start])
            start += 1
        } else if nums[i] > 1 {
            (nums[end], nums[i]) = (nums[i], nums[end])
            end -= 1
            i -= 1
        }
        i += 1
    }
}
