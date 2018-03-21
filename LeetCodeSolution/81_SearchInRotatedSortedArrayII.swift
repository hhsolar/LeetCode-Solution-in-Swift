//
//  81_SearchInRotatedSortedArrayII.swift
//  LeetCodeSolution
//
//  Created by apple on 20/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Bool {
    let len = nums.count
    guard len > 0 else { return false }
    
    var left = 0, right = len - 1
    
    while left <= right {
        let mid = (left + right) / 2
        if nums[mid] == target { return true }
        if nums[mid] < nums[right] {
            if target > nums[mid], target <= nums[right] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        } else if nums[mid] > nums[right] {
            if target >= nums[left], target < nums[mid] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        } else {
            right -= 1
        }
    }
    return false
}
