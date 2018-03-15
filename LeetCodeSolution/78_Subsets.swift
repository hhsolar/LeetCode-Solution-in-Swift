//
//  78_Subsets.swift
//  LeetCodeSolution
//
//  Created by apple on 14/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func subsets(_ nums: [Int]) -> [[Int]] {
    let len = nums.count
    guard len > 0 else { return [[]] }
    
    var res: [[Int]] = [[]]
    
    subsetHelper(nums, &res)
    
    return res
}

func subsetHelper(_ nums: [Int], _ res: inout [[Int]]) {
    guard nums.count > 0 else { return }
    let n = res
    for i in n {
        var t = i
        t.append(nums[0])
        res.append(t)
    }
    subsetHelper(Array(nums.dropFirst()), &res)
}
