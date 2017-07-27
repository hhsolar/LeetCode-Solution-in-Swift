//
//  VaildAnagram.swift
//  LeetCodeSolution
//
//  Created by apple on 26/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    
    if s.characters.count != t.characters.count { return false }
    if s == "" && t == "" { return true }
    
    var dict = Dictionary<Character, Int>()
    
    let sc = Array(s.characters)
    let tc = Array(t.characters)
    
    for c in sc {
        if dict[c] != nil {
            dict[c]! += 1
        } else {
            dict[c] = 1
        }
    }
    
    for c in tc {
        if dict[c] != nil {
            dict[c]! -= 1
        } else {
            return false
        }
    }
    
    for v in dict.values {
        if v != 0 { return false }
    }
    return true
}
