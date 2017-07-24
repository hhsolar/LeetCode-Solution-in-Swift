//
//  RotateImage.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    
    let n = matrix.count - 1
    
    guard n > 0 else { return }
    
    for i in 0...n {
        for j in 0...n/2 {
            (matrix[i][j], matrix[i][n-j]) = (matrix[i][n-j], matrix[i][j])
        }
    }
    
    for i in 0...n {
        for j in 0...(n-i) {
            (matrix[i][j], matrix[n-j][n-i]) = (matrix[n-j][n-i], matrix[i][j])
        }
    }
    
}

// 1  2  3  4    3 2 1  7 4 1
// 5  6  7  8    6 5 4  8 5 2
// 9 10 11 12    9 8 7  9 6 3
//13 14 15 16
