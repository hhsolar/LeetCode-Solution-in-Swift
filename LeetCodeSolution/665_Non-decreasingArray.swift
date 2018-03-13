//
//  665_Non-decreasingArray.swift
//  LeetCodeSolution
//
//  Created by apple on 8/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func checkPossibility(_ nums: [Int]) -> Bool {
    let count = nums.count
    guard count > 2 else { return true }
    var n = nums
    
    var altered = true
    for i in 1..<count {
        if n[i] < n[i-1] {
            guard altered else { return false }
            if i == 1 || n[i] >= n[i-2] {
                n[i-1] = n[i]
            } else {
                n[i] = n[i-1]
            }
            altered = false
        }
    }
    
    return true
}
