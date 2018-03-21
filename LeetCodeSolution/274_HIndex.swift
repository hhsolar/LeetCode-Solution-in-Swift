//
//  274_HIndex.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

// 0(n)

func hIndex(_ citations: [Int]) -> Int {
    let len = citations.count
    guard len > 0 else { return 0 }
    var arr = Array(repeating: 0, count: len + 1)
    
    for i in citations {
        if i > len {
            arr[len] += 1
        } else {
            arr[i] += 1
        }
    }
    var res = 0
    for (i, a) in arr.enumerated().reversed() {
        res += a
        if res >= i { return i }
    }
    return 0
}


// O(nlgn)
//func hIndex(_ citations: [Int]) -> Int {
//    guard citations.count > 0 else { return 0 }
//    if citations.count == 1 { return citations[0] == 0 ? 0 : 1 }
//    
//    let c = citations.sorted(by: >)
//    if c[0] == 0 { return 0 }
//    
//    for i in 1..<c.count {
//        if c[i - 1] >= i, c[i] <= i { return i }
//    }
//    return c.last! >= c.count ? c.count : c.count - 1
//}

