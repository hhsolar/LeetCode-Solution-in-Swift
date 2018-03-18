//
//  90_SubsetsII.swift
//  LeetCodeSolution
//
//  Created by apple on 17/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 0 else { return [] }
    let num = nums.sorted() // 注意需要排序
    var res: [[Int]] = [[], [num[0]]]
    
    if num.count > 1 {
        subsetsWithDipHelper(Array(num.dropFirst()), num[0], 1, &res)
    }
    
    return res
}

func subsetsWithDipHelper(_ nums: [Int], _ last: Int, _ lastLen: Int, _ res: inout [[Int]]) {
    guard nums.count > 0 else { return }
    let len = res.count
    for i in 0..<len {
        if nums[0] == last, i < lastLen { continue } // 扩展时要去掉重复的数组，需要记录上次扩展前的res长度
        var t = res[i]
        t.append(nums[0])
        res.append(t)
    }
    subsetsWithDipHelper(Array(nums.dropFirst()), nums[0], len, &res)
}
