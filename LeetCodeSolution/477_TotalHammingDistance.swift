//
//  477_TotalHammingDistance.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func totalHammingDistance(_ nums: [Int]) -> Int {
    let len = nums.count
    guard len > 1 else { return 0 }
    
    var total = 0
    for i in 0..<32 {
        var count = 0
        for j in 0..<len {
            count += (nums[j] >> i) & 1
        }
        total += count * (len - count)
    }
    return total
}
