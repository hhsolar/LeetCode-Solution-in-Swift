//
//  80_RemoveDuplicatesFromSortedArrayII.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

// 快指针和慢支针的数字相同或者不相同都会发生交换。只有两者相同并且计数器count达到2以后，交换不发生，只有快指针继续移动，直到快慢指针的数字再次不相同为止

func removeDuplicates(_ nums: inout [Int]) -> Int {
    let len = nums.count
    guard len > 2 else { return len }
    
    var res = 0, count = 1
    for i in 1..<len {
        if nums[res] == nums[i], count == 2 { continue }
        if nums[res] == nums[i] {
            count += 1
        } else {
            count = 1
        }
        res += 1
        (nums[res], nums[i]) = (nums[i], nums[res])
    }
    
    return res + 1
}
