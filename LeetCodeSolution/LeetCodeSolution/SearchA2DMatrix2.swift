//
//  SearchA2DMatrix2.swift
//  LeetCodeSolution
//
//  Created by apple on 26/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let a = matrix.flatMap { $0 }
    if a.count == 0 { return false }
    
    if target < a.first! || target > a.last! { return false }
    
    let m = matrix.count
    let n = matrix[0].count
    
    var i = 0
    var j = n - 1
    while true {
        if matrix[i][j] > target {
            j -= 1
            if j < 0 { return false }
        } else if matrix[i][j] < target {
            i += 1
            if i >= m { return false }
        } else {
            return true
        }
    }
}
