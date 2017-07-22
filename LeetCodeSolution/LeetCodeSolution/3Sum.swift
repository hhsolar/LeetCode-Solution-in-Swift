//
//  3Sum.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    
    var sumArray = [[Int]]()
    
    if nums.count < 3 { return sumArray }
    
    let sortedNums = nums.sorted()
    
    for i in 0..<sortedNums.count - 2 {
        if i > 0 && sortedNums[i] == sortedNums[i-1] { continue }
        
        let target = -sortedNums[i]
        var left = i + 1
        var right = sortedNums.count - 1
        
        while right > left {
            if target == sortedNums[left] + sortedNums[right] {
                sumArray.append([-target, sortedNums[left], sortedNums[right]])
                left += 1
                right -= 1
                
                while right > left, sortedNums[left] == sortedNums[left - 1] { left += 1 }
                while right > left, sortedNums[right] == sortedNums[right + 1] { right -= 1}
                
            } else if target < sortedNums[left] + sortedNums[right] {
                right -= 1
            } else if target > sortedNums[left] + sortedNums[right] {
                left += 1
            }
        }
    }
    return sumArray
}
