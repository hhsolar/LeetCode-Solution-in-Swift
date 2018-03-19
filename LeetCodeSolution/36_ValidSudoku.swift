//
//  36_ValidSudoku.swift
//  LeetCodeSolution
//
//  Created by apple on 17/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    let m = board.count, n = board.count
    var rowSets = Array(repeating: Set<Int>(), count: m)
    var colSets = Array(repeating: Set<Int>(), count: n)
    var squreSets = Array(repeating: Set<Int>(), count: (m / 3) * (n / 3))
    
    for i in 0..<m {
        for j in 0..<n {
            if let a = Int(String(board[i][j])) {
                if rowSets[i].contains(a) || colSets[j].contains(a) || squreSets[i/3 * n/3 + j/3].contains(a) { return false }
                rowSets[i].insert(a)
                colSets[j].insert(a)
                squreSets[i/3 * n/3 + j/3].insert(a)
            }
        }
    }
    return true
}
