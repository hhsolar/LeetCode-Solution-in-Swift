//
//  240_SearchA2DMatrixII.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let m = matrix.count
    guard m > 0 else { return false }
    let n = matrix[0].count
    guard n > 0 else { return false }
    guard target >= matrix[0][0], target <= matrix[m-1][n-1] else { return false }
    
    var i = 0
    var j = n - 1
    while true {
        if matrix[i][j] > target {
            j -= 1
            if j < 0 { return false }
        } else if matrix[i][j] < target {
            i += 1
            if i == m { return false }
        } else {
            return true
        }
    }
}
