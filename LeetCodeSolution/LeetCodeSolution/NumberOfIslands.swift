//
//  NumberOfIslands.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

var m = 0, n = 0
var g = [[Character]](), visited = [[Bool]]()

func numIslands(_ grid: [[Character]]) -> Int {
    
    guard grid.count > 0 else { return 0 }
    
    g = grid
    m = grid.count
    n = grid[0].count
    var res = 0
    
    visited = Array(repeating: Array(repeating: false, count: n), count: m)
    
    for i in 0..<m {
        for j in 0..<n {
            if visited[i][j] == true { continue }
            
            if grid[i][j] == "1" {
                check(i, j)
                res += 1
            }
        }
    }
    return res
}


func check(_ yIndex: Int, _ xIndex: Int) {
    if yIndex < 0 || xIndex < 0 || yIndex >= m || xIndex >= n { return }
    if g[yIndex][xIndex] == "0" || visited[yIndex][xIndex] { return }
    visited[yIndex][xIndex] = true
    
    
    check(yIndex - 1, xIndex)
    check(yIndex + 1, xIndex)
    check(yIndex, xIndex - 1)
    check(yIndex, xIndex + 1)
}
