//
//  283_MoveZeros.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {
    var second = 0
    for first in 0..<nums.count {
        guard second < nums.count else { return }
        if nums[first] == 0 {
            continue
        }
        while second < nums.count, nums[second] != 0 {
            second += 1
        }
        if first > second {
            let temp = nums[first]
            nums[first] = nums[second]
            nums[second] = temp
        }
    }
}
