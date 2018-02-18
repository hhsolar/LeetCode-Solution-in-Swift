//
//  657_JudgeRouteCircle.swift
//  LeetCodeSolution
//
//  Created by apple on 17/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func judgeCircle(_ moves: String) -> Bool {
    
    var res = (0, 0)
    for s in moves.characters {
        switch s {
        case "U":
            res.1 += 1
        case "D":
            res.1 -= 1
        case "L":
            res.0 -= 1
        case "R":
            res.0 += 1
        default:
            continue
        }
    }
    
    return res.0 == 0 && res.1 == 0
}
