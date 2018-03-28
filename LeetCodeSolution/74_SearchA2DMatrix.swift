//
//  74_SearchA2DMatrix.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func searchA2DMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let m = matrix.flatMap { $0 }
    guard m.count > 0 else { return false }
    if target < m.first! || target > m.last! { return false }
    
    let left = 0, right = m.count - 1
    
    return searchMatrixHelper(m, left, right, target)
}

// binary search 注意边界情况
func searchMatrixHelper(_ m: [Int], _ left: Int, _ right: Int, _ target: Int) -> Bool {
    guard right >= left else { return m[left] == target }
    let mid = (right - left) / 2 + left
    
    if target > m[mid] {
        return searchMatrixHelper(m, mid + 1, right, target)
    } else if target < m[mid] {
        return searchMatrixHelper(m, left, mid - 1, target)
    } else {
        return true
    }
}
