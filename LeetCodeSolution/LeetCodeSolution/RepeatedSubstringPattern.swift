//
//  RepeatedSubstringPattern.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func repeatedSubstringPattern(_ s: String) -> Bool {
    
    let n = s.characters.count
    guard n > 1 else { return false }
    
    let sc = Array(s.characters)
    
    for d in (1...n/2).reversed() {
        if n % d == 0 {
            let c = n / d
            let sub = String(Array(sc[0..<d]))
            var newString = sub
            for i in 1..<c {
                newString += sub
            }
            if newString == s { return true }
        }
    }
    return false
    
}
