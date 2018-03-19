//
//  73_SetMatrixZeros.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    let m = matrix.count
    guard m > 0 else { return }
    let n = matrix[0].count
    guard n > 0 else { return }
    
    let rowContainsZero = matrix[0].contains(0)
    let colContainsZero = matrix.map { $0[0] }.contains(0)
    
    for i in 0..<m {
        for j in 0..<n {
            if matrix[i][j] == 0 {
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }
    }
    
    for i in 1..<m {
        if matrix[i][0] == 0 {
            for j in 1..<n { matrix[i][j] = 0 }
        }
    }
    
    for j in 1..<n {
        if matrix[0][j] == 0 {
            for i in 1..<m { matrix[i][j] = 0 }
        }
    }
    
    if rowContainsZero {
        for i in 0..<n { matrix[0][i] = 0 }
    }
    
    if colContainsZero {
        for i in 0..<m { matrix[i][0] = 0 }
    }
}
