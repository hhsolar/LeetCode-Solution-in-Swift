//
//  200_NumberOfIslands.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func numIslands(_ grid: [[Character]]) -> Int {
    let m = grid.count
    guard m > 0 else { return 0 }
    let n = grid[0].count
    guard n > 0 else { return 0 }
    
    var checkGrid = Array(repeating: Array(repeating: false, count: n), count: m)
    var res = 0
    for i in 0..<m {
        for j in 0..<n {
            guard !checkGrid[i][j] else { continue }
            if grid[i][j] == "1" {
                res += 1
                numIslandsHelper(grid, &checkGrid, i, j)
            }
        }
    }
    return res
}

func numIslandsHelper(_ grid: [[Character]], _ checkGrid: inout [[Bool]], _ i: Int, _ j: Int) {
    let m = grid.count, n = grid[0].count
    if i < 0 || i >= m || j < 0 || j >= n { return }
    if grid[i][j] == "0" || checkGrid[i][j] { return }
    checkGrid[i][j] = true
    
    numIslandsHelper(grid, &checkGrid, i + 1, j)
    numIslandsHelper(grid, &checkGrid, i - 1, j)
    numIslandsHelper(grid, &checkGrid, i, j + 1)
    numIslandsHelper(grid, &checkGrid, i, j - 1)
}
