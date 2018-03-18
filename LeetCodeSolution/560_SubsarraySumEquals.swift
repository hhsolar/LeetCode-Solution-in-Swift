//
//  560_SubsarraySumEquals.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    // let subSum = (0...nums.count).map { nums.prefix(upTo: $0).reduce(0, +) }
    
    var res = 0, sum = 0
    var dict = [0 : 1]
    for i in 0..<nums.count {
        sum += nums[i]
        if let v = dict[sum - k] {
            res += v
        }
        if let v = dict[sum] {
            dict[sum] = v + 1
        } else {
            dict[sum] = 1
        }
    }
    return res
}
