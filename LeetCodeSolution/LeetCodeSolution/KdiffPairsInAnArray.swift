//
//  KdiffPairsInAnArray.swift
//  LeetCodeSolution
//
//  Created by apple on 29/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func findPairs(_ nums: [Int], _ k: Int) -> Int {
    
    var dict = Dictionary<Int, Int>()
    var count = 0
    for i in nums {
        if dict[i] != nil {
            dict[i]! += 1
        } else {
            dict[i] = 1
        }
    }
    
    for (key, value) in dict {
        if k == 0 && value > 1 { count += 1 }
        if k > 0 &&  dict.keys.contains(key + k) {
            count += 1
        }
    }
    
    return count
}
