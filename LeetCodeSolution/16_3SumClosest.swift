//
//  16_3SumClosest.swift
//  LeetCodeSolution
//
//  Created by apple on 26/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    let n = nums.sorted()
    var res = nums.prefix(3).reduce(0, +)
    var diff = abs(res - target)
    
    for i in 0..<n.count - 2 {
        var sum = 0
        var left = i + 1
        var right = n.count - 1
        while right > left {
            sum = n[i] + n[left] + n[right]
            guard sum != target else { return sum }
            if abs(sum - target) < diff {
                diff = abs(sum - target)
                res = sum
            }
            if sum > target {
                right -= 1
            } else {
                left += 1
            }
        }
    }
    return res
}
