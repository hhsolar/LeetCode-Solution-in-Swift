//
//  47_PermutationsII.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func permuteUnique(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 1 else { return [nums] }
    let n = nums.sorted()
    
    var res: [[Int]] = []
    var ans: [Int] = []
    permuteUniqueHelper(n, &res, &ans)
    return res
}

func permuteUniqueHelper(_ nums: [Int], _ res: inout [[Int]], _ ans: inout [Int]) {
    guard nums.count > 0 else {
        res.append(ans)
        return
    }
    
    var n = nums
    var t = n.remove(at: 0)
    ans.append(nums[0])
    permuteUniqueHelper(n, &res, &ans)
    ans.removeLast()
    
    for i in 1..<nums.count {
        if nums[i] == nums[i - 1] { continue }
        n = nums
        t = n.remove(at: i)
        ans.append(t)
        permuteUniqueHelper(n, &res, &ans)
        ans.removeLast()
    }
}
