//
//  OptimalDivision.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

// 因为第一个数字一定是被除数，所以要想结果最大那么就得是的除数最小。因此只有一种办法是除数最小的，也就是括号加在第二个数到最后一个数之间。

func optimalDivision(_ nums: [Int]) -> String {
    
    let n = nums.count
    if n == 0 { return "" }
    if n == 1 { return String(nums[0]) }
    if n == 2 { return "\(nums[0])/\(nums[1])" }
    
    var front = String(nums[0]) + "/("
    
    for i in 1..<n-1 {
        front = front + String(nums[i]) + "/"
    }
    front = front + String(nums[n-1]) + ")"
    
    return front
}
