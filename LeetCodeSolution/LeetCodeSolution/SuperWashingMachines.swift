//
//  SuperWashingMachines.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func findMinMoves(_ machines: [Int]) -> Int {
    guard machines.count > 1 else { return 0 }
    
    let sum = machines.reduce(0) {
        $0 + $1
    }
    if sum % machines.count != 0 { return -1 }
    
    let avg = sum / machines.count
    
    var res = 0, acc = 0
    
    for i in machines {
        acc += i - avg
        res = max(res, max((i - avg), abs(acc)))
    }
    return res
    
}
