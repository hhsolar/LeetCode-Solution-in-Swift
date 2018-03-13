//
//  414_ThirdMaximumNumber.swift
//  LeetCodeSolution
//
//  Created by apple on 5/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func thirdMax(_ nums: [Int]) -> Int {
    let count = nums.count
    if count == 1 {
        return nums.first!
    } else if count == 2 {
        return max(nums[0], nums[1])
    }
    
    var max1 = Int.min, max2 = Int.min, max3 = Int.min
    for n in nums {
        if n > max1 {
            max3 = max2
            max2 = max1
            max1 = n
        } else if n > max2, n < max1 {
            max3 = max2
            max2 = n
        } else if n > max3, n < max2 {
            max3 = n
        }
    }
    for n in nums {
        if max3 == n { return max3 }
    }
    return max1
}
