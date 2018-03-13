//
//  204_CountPrimes.swift
//  LeetCodeSolution
//
//  Created by apple on 7/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func countPrimes(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    var isPrimes = Array(repeating: true, count: n)
    var count = 0
    for i in 2..<n {
        if isPrimes[i] {
            count += 1
            var j = 2
            while j * i < n {
                isPrimes[j * i] = false
                j += 1
            }
        }
    }
    return count
}
