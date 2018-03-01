//
//  459_RepeatedSubstringPattern.swift
//  LeetCodeSolution
//
//  Created by apple on 25/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func repeatedSubstringPattern(_ s: String) -> Bool {
    let n = s.count
    guard n > 1 else { return false }
    
    for d in (1...n/2).reversed() where n % d == 0 {
        let c = n / d
        let sub = String(s.prefix(d))
        var newString = sub
        for _ in 1..<c {
            newString += sub
        }
        if newString == s { return true }
    }
    return false
}
