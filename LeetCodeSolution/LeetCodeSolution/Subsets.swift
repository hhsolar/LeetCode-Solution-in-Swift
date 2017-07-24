//
//  Subsets.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func subsets(_ nums: [Int]) -> [[Int]] {
    
    guard nums.count > 0 else { return [nums] }
    
    var set = [[Int]]()
    
    var i = 0
    while i < nums.count {
        subsetsHelper(nums[i], &set)
        i += 1
    }
    
    set.append([])
    return set
}

func subsetsHelper(_ num: Int, _ numSet: inout [[Int]]) {
    var set = [[Int]]()
    for item in numSet {
        var i = item
        i.append(num)
        set.append(i)
    }
    numSet += set
    numSet.append([num])
}
