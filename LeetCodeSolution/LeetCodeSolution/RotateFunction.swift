//
//  RotateFunction.swift
//  LeetCodeSolution
//
//  Created by apple on 28/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func maxRotateFunction(_ A: [Int]) -> Int {
    
    guard A.count > 1 else { return 0 }
    
    let n = A.count
    var sumValues = Array(repeating: 0, count: n)
    
    let sum = A.reduce(0) {
        $0 + $1
    }

    for i in 0..<n {
        sumValues[0] += i * A[i]
    }
    
    for i in 1..<n {
        sumValues[i] = sumValues[i - 1] + sum - n * A[n - i]
    }
    
    var maxValue = Int.min
    for k in sumValues {
        if k > maxValue { maxValue = k }
    }
    
    return maxValue
}
