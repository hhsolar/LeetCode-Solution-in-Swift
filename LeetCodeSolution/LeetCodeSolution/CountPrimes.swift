//
//  CountPrimes.swift
//  LeetCodeSolution
//
//  Created by apple on 26/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func countPrimes(_ n: Int) -> Int {
    
    if n < 3 { return 0 }
    
    var flag = Array(repeating: true, count: n)
    var count = 0
    for i in 2..<n {
        if flag[i] { count += 1 }
        for j in 2..<n {
            if i*j < n {
                flag[i*j] = false
            } else {
                break
            }
        }
    }
    return count
}
