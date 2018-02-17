//
//  Dungeon.swift
//  LeetCodeSolution
//
//  Created by apple on 9/1/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

/*
 Your previous Plain Text content is preserved below:
 
 PREMISE
 You're a hero hunting for treasure in a dungeon. Unfortunately, the dungeon is riddled with traps of varying deadliness. Your objective is to find the treasure in the least amount of steps without losing all your health.
 CONSTRAINTS
 * Dungeon represented by an NxM array of characters
 * Starting location of 0,0
 * Starting health of 5
 * Death occurs when you are at 0 health
 * ' ' is an empty space that can be walked through. 0,0 is always empty.
 * 'X' is an impassable wall.
 * A digit [0-9] is a trap, where the value is the amount of damage it does.
 * 'T' is the treasure. There is exactly 1 of them in the dungeon
 * Orthogonal traversal only (up, down, left, right)
 PROBLEM
 Write a program that, given a dungeon, returns the minimum number of steps to reach the treasure. If there is no solution, return -1.
 EXAMPLE
 ```
 dungeon = [
 [ ' ', 'X' ],
 [ '3', 'T' ]
 ]
 # Min number of steps
 Solution: 2
 ```
 
 */

import Foundation

var dungeon: [[String]] = [
    [ " ", "X" ],
    [ "3", "T" ]
]

struct position {
    var y: Int
    var x: Int
}

var health = 5

func findT() -> Int {
    guard dungeon.count > 0 else { return -1 }
    guard dungeon[0].count > 0 else { return -1 }
    
    var res = -1
    
    var queue = [position(y: 0, x: 0)]
    var visited = Array(repeating: Array(repeating: false, count: n), count: m)
    
    while queue.count != 0 {
        let p = queue.first!
        
        if dungeon[p.y][p.x] == " " {
            res += 1
        } else if dungeon[p.y][p.x] == "T" {
            return res
        }
        
        addAroundPostion(p.y - 1, p.x, &queue, &visited)
        addAroundPostion(p.y + 1, p.x, &queue, &visited)
        addAroundPostion(p.y, p.x - 1, &queue, &visited)
        addAroundPostion(p.y, p.x + 1, &queue, &visited)
        
    }
    return -1
}

func addAroundPostion(_ y: Int, _ x: Int, _ queue: inout [position], _ visited: inout [[Bool]]) {
    if y < 0 || x < 0 || y >= dungeon.count || x >= dungeon[0].count { return }
    visited[y][x] = true
    if dungeon[y][x] == " " || dungeon[y][x] == "T" {
        queue.append(position(y: y, x: x))
    } else if Int(dungeon[y][x]) != nil {
        if health - Int(dungeon[y][x])! > 0 {
            queue.append(position(y: y, x: x))
        }
    }
}

