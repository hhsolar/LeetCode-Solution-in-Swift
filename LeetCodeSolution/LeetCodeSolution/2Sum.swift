//
//  2Sum.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict = Dictionary<Int, Int>()
    for index in 0..<nums.count {
        if dict[nums[index]] != nil {
            return [index, dict[nums[index]]!]
        }
        dict[target - nums[index]] = index
    }
    return [Int]()
}
