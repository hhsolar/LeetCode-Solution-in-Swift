//
//  PascalsTriangle.swift
//  LeetCodeSolution
//
//  Created by apple on 24/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func getRow(_ rowIndex: Int) -> [Int] {
    
    guard rowIndex > 0 else { return [1] }
    
    var rowN = Array(repeating: 0, count: rowIndex + 1)
    
    rowN[0] = 1
    for i in 1..<rowIndex+1 {
        for j in (1...i).reversed() {
            rowN[j] += rowN[j - 1]
        }
    }
    return rowN
    
}
