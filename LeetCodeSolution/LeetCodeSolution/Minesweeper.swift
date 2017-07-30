//
//  Minesweeper.swift
//  LeetCodeSolution
//
//  Created by apple on 29/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func updateBoard(_ board: [[Character]], _ click: [Int]) -> [[Character]] {
    
    guard board.count > 0, board[0].count > 0 else { return [[]] }
    guard click.count == 2 else { return board }
    
    var res = board
    
    updateBoardlHelper(&res, click)
    
    return res
}

func updateBoardlHelper(_ res: inout [[Character]], _ click: [Int]) {
    var count = 0
    let m = res.count, n = res[0].count
    let y = click[0], x = click[1]
    if res[y][x] == "M" {
        res[y][x] = "X"
    } else if res[y][x] == "E" {
        for i in -1..<2 {
            for j in -1..<2 {
                let ny = y + i, nx = x + j
                if ny < 0 || nx < 0 || ny >= m || nx >= n { continue }
                if res[ny][nx] == "M" {
                    count += 1
                }
            }
        }
        
        if count > 0 {
            let temp = String(count)
            res[y][x] = Array(temp.characters)[0]
        } else if count == 0 {
            res[y][x] = "B"
            for i in -1..<2 {
                for j in -1..<2 {
                    let ny = y + i, nx = x + j
                    if ny < 0 || nx < 0 || ny >= m || nx >= n { continue }
                    if res[ny][nx] == "E" {
                        updateBoardlHelper(&res, [ny, nx])
                    }
                }
            }
        }
    }
}
