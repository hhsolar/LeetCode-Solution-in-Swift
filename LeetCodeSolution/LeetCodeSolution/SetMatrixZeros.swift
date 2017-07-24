//
//  SetMatrixZeros.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    
    guard matrix.count > 0 else { return }
    
    let m = matrix.count, n = matrix[0].count
    var rowHasZero = false, colHasZero = false
    
    for i in 0..<m {
        if matrix[i][0] == 0 { colHasZero = true }
    }
    
    for j in 0..<n {
        if matrix[0][j] == 0 { rowHasZero = true }
    }
    
    for i in 0..<m {
        for j in 0..<n {
            if matrix[i][j] == 0 {
                matrix[0][j] = 0
                matrix[i][0] = 0
            }
        }
    }
    
    for i in 1..<m {
        if matrix[i][0] == 0 {
            for j in 0..<n {
                matrix[i][j] = 0
            }
        }
    }
    
    for j in 1..<n {
        if matrix[0][j] == 0 {
            for i in 0..<m {
                matrix[i][j] = 0
            }
        }
    }
    
    if rowHasZero {
        for j in 0..<n {
            matrix[0][j] = 0
        }
    }
    
    if colHasZero {
        for i in 0..<m {
            matrix[i][0] = 0
        }
    }
}
