//
//  33_SearchInRotatedSortedArray.swift
//  LeetCodeSolution
//
//  Created by apple on 25/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    let len = nums.count
    guard len > 1 else {
        if len == 0 {
            return -1
        } else {
            return nums[0] == target ? 0 : -1
        }
    }
    
    var left = 0, right = len - 1
    while right >= left {
        let mid = (left + right) / 2
        if nums[mid] == target {
            return mid
        }
        if nums[right] > nums[mid] {
            if target <= nums[right], target > nums[mid] {
                left = mid + 1
            } else {
                right = mid - 1
            }
        } else {
            if target < nums[mid], target >= nums[left] {
                right = mid - 1
            } else {
                left = mid + 1
            }
        }
    }
    return -1
}
