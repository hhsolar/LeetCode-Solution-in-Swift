//
//  SortCharactersByFrequency.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func frequencySort(_ s: String) -> String {
    guard s.characters.count > 2 else { return s }
    
    let sc = Array(s.characters)
    let n = sc.count
    
    var d = Dictionary<Character, Int>()
    for c in sc {
        if d[c] != nil {
            d[c] = d[c]! + 1
        } else {
            d[c] = 1
        }
    }
    var ss = [(Character, Int)]()
    for (key, value) in d {
        ss.append((key, value))
    }
    let sss = ss.sorted {
        $0.1 > $1.1
    }
    
    var res = ""
    for i in sss {
        res += String(Array(repeating: i.0, count: i.1))
    }
    return res
}
