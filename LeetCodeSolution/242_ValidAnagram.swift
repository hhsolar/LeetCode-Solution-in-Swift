//
//  242_ValidAnagram.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.characters.count == t.characters.count else { return false }
    
    var dict = s.characters.frequency
    
    for c in t.characters {
        if let d = dict[c], d > 0 {
            dict[c] = d - 1
        } else {
            return false
        }
    }
    
    for value in dict.values {
        if value != 0 { return false }
    }
    return true
}

