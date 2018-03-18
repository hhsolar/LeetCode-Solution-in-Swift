//
//  334_IncreasingTripletSubsequence.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func increasingTriplet(_ nums: [Int]) -> Bool {
    guard nums.count > 2 else { return false }
    
    var m1 = Int.max, m2 = Int.max
    
    for i in nums {
        if i <= m1 {
            m1 = i
        } else if i <= m2 {
            m2 = i
        } else {
            return true
        }
    }
    return false
}
