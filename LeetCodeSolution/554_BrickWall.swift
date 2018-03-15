//
//  554_BrickWall.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func leastBricks(_ wall: [[Int]]) -> Int {
    let wallH = wall.count
    guard wallH > 0 else { return 0 }
    guard wall.first!.count > 0 else { return 0 }
    
    var dict = Dictionary<Int, Int>()
    for layer in wall {
        var len = 0
        for i in 0..<layer.count-1 {
            len += layer[i]
            if let val = dict[len] {
                dict[len] = val + 1
            } else {
                dict[len] = 1
            }
        }
    }
    let maxV = Array(dict.values).reduce(0) { res, i in max(res, i) }
    return wallH - maxV
}
