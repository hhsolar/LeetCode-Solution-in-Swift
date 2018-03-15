//
//  238_ProductOfArrayExceptSelf.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    let len = nums.count
    guard len > 1 else { return nums }
    
    var res = Array(repeating: 1, count: len)
    
    for i in 1..<len {
        res[i] = res[i-1] * nums[i-1]
    }
    var right = 1
    for i in (0..<len-1).reversed() {
        right = right * nums[i+1]
        res[i] = res[i] * right
    }
    return res
}
