//
//  396_RotateFunction.swift
//  LeetCodeSolution
//
//  Created by apple on 20/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func maxRotateFunction(_ A: [Int]) -> Int {
    let len = A.count
    guard len > 1 else { return 0 }
    
    var last = A.enumerated().reduce(0) { $0 + $1.0 * $1.1 }
    let sum = A.reduce(0, +)
    var maxV = last
    for i in 1..<len {
        let t = last + sum - len * A[len - i]
        maxV = max(maxV, t)
        last = t
    }
    return maxV
}
