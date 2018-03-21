//
//  40_CombinationSumII.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    let c = candidates.filter { $0 <= target }.sorted()
    
    var res: [[Int]] = []
    var ans = [Int]()
    combinationSum2Helper(c, target, 0, &res, &ans)
    
    return res
}

func combinationSum2Helper(_ c: [Int], _ target: Int, _ start: Int, _ res: inout [[Int]], _ ans: inout [Int]) {
    if target < 0 {
        return
    } else if target == 0 {
        res.append(ans)
        return
    } else {
        for i in start..<c.count {
            if i > start, c[i] == c[i-1] { continue }
            ans.append(c[i])
            combinationSum2Helper(c, target - c[i], i + 1, &res, &ans)
            ans.removeLast()
        }
    }
}
