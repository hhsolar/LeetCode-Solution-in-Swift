//
//  SearchA2DMatrix.swift
//  LeetCodeSolution
//
//  Created by apple on 26/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let a = matrix.flatMap{ $0 }
    guard !a.isEmpty else { return false }
    
    if target < a.first! || target > a.last! { return false }
    
    return binarySearch(a, target)
}

func binarySearch(_ a: [Int], _ target: Int) -> Bool {
    
    let i = (a.count - 1) / 2
    
    if a.count == 1 {
        if a[i] == target {
            return true
        } else {
            return false
        }
    }
    
    if a.count == 2 {
        if a[i] == target || a[i+1] == target {
            return true
        } else {
            return false
        }
    }
    
    if a[i] > target {
        return binarySearch(Array(a[0...i-1]), target)
    } else if a[i] < target {
        return binarySearch(Array(a[i+1...a.count-1]), target)
    } else {
        return true
    }
}




