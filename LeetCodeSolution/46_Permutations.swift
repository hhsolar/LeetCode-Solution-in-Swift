//
//  46_Permutations.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func permute(_ nums: [Int]) -> [[Int]] {
    let len = nums.count
    guard len > 1 else { return [nums] }
    
    var res = [[nums[0]]]
    permuteHelper(Array(nums.dropFirst()), &res)
    
    return res
}

func permuteHelper(_ nums: [Int], _ res: inout [[Int]]) {
    guard nums.count > 0 else {
        return
    }
    
    var subRes = [[Int]]()
    
    for i in res {
        for j in 0...i.count {
            var t = i
            t.insert(nums[0], at: j)
            subRes.append(t)
        }
    }
    res = subRes
    permuteHelper(Array(nums.dropFirst()), &res)
}
