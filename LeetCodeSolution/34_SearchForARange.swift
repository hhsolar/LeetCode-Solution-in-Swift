//
//  34_SearchForARange.swift
//  LeetCodeSolution
//
//  Created by apple on 26/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation
// 二分法查找范围。 该题可以考虑为查找第一个不小于target和第一个不小于target+1的值的位置

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 0 else { return [-1, -1] }
    if nums.count == 1 { return nums[0] == target ? [0, 0] : [-1, -1] }
    let start = searchRangeHelper(nums, target)
// start >= nums.count表示如果所有值都小于target，最后返回值会右边越界；
// nums[start] != target表示如果所有值都大于target，最后返回值为第一个值。
    if start >= nums.count || nums[start] != target { return [-1, -1] }
    let end = searchRangeHelper(nums, target + 1) - 1
    return [start, end]
}

func searchRangeHelper(_ nums: [Int], _ target: Int) -> Int {
    var left = 0, right = nums.count - 1
    while right >= left {
        let mid = left + (right - left) / 2
        if nums[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return left
}
