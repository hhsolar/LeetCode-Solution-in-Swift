//
//  ProductOfArrayExeceptSelf.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    guard nums.count > 1 else { return [0] }
    
    if nums.count == 2 {
        return [nums[1], nums[0]]
    }
    
    var count = 0
    var zeroIndex = 0
    for i in 0..<nums.count {
        if nums[i] == 0 {
            count += 1
            zeroIndex = i
        }
    }
    
    var nums = nums
    
    if count > 1 {
        return Array(repeating: 0, count: nums.count)
    } else if count == 1 {
        (nums[zeroIndex], nums[0]) = (nums[0], nums[zeroIndex])
        let valueZero = Array(nums[1...nums.count-1]).reduce(1) {
            return $0 * $1
        }
        var res = Array(repeating: 0, count: nums.count)
        res[zeroIndex] = valueZero
        return res
    }
    
    let product = nums.reduce(1) {
        return $0 * $1
    }
    
    var res = [Int]()
    
    for i in nums {
        res.append(product / i)
    }
    return res
}
