//
//  279_PerfectSquares.swift
//  LeetCodeSolution
//
//  Created by apple on 17/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

// 根据四平方和定理
func numSquares(_ n: Int) -> Int {
    guard n > 1 else { return n }
    var m = n
    while m % 4 == 0 { m = m / 4 }
    guard m % 8 != 7 else { return 4 }
    for i in 0...m where i * i <= m {
        let j = Int(sqrt(Double(m - i * i)))
        if i * i + j * j == m {
            guard i > 0, j > 0 else { return 1 }
            return 2
        }
    }
    return 3
}

// dp算法
//     func numSquares(_ n: Int) -> Int {
//         var dp = [0]

//         while dp.count <= n {
//             let m = dp.count
//             var val = Int.max
//             for i in 1...m where i * i <= m {
//                 val = min(val, dp[m - i * i] + 1)
//             }
//             dp.append(val)
//         }
//         return dp.last!
//     }
