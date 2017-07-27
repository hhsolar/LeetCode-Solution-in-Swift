//
//  TwoSumInputArraySorted.swift
//  LeetCodeSolution
//
//  Created by apple on 26/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    
    guard numbers.count > 1 else { return [] }
    
    var left = 0
    var right = numbers.count - 1
    
    while left < right {
        if numbers[left] + numbers[right] < target {
            left += 1
        } else if numbers[left] + numbers[right] > target {
            right -= 1
        } else {
            return [left+1, right+1]
        }
    }
    return []
}
