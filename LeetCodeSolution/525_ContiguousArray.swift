//
//  525_ContiguousArray.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func findMaxLength(_ nums: [Int]) -> Int {
    let len = nums.count
    guard len > 1 else { return 0 }
    
    var dict = [0 : -1]
    var count = 0
    var res = 0
    for i in 0..<len {
        count = nums[i] == 0 ? count - 1 : count + 1
        if let index = dict[count] {
            res = max(res, i - index)
        } else {
            dict[count] = i
        }
    }
    return res
}
