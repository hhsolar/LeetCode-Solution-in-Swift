//
//  215_KthLargestElementInAnArray.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

// quick sort method to solve the problem

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    let len = nums.count
    guard len > 1 else { return nums[0] }
    var num = nums
    
    return findKthLargestHelper(&num, 0, len - 1, k)
}

func findKthLargestHelper(_ nums: inout [Int], _ l: Int, _ r: Int, _ k: Int) -> Int {
    guard r > l else { return nums[l] }
    
    let mid = nums[l]
    var i = l + 1
    var count = l + 1
    while i <= r {
        if nums[i] > mid {
            (nums[i], nums[count]) = (nums[count], nums[i])
            count += 1
        }
        i += 1
    }
    count -= 1
    (nums[l], nums[count]) = (nums[count], nums[l])
    
    let index = count - l + 1
    if k > index {
        return findKthLargestHelper(&nums, count + 1, r, k - index)
    } else if k < index {
        return findKthLargestHelper(&nums, l, count - 1, k)
    } else {
        return nums[count]
    }
}
