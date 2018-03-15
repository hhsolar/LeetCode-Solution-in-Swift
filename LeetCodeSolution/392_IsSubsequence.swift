//
//  392_IsSubsequence.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    let sLen = s.count
    let tLen = t.count
    guard sLen > 0 else { return true }
    guard tLen >= sLen else { return false }
    
    let tArr = Array(t.characters)
    let sArr = Array(s.characters)
    var count = 0
    for c in tArr {
        guard count < sLen else { return true }
        if c == sArr[count] {
            count += 1
        }
    }
    return count == sLen
}
