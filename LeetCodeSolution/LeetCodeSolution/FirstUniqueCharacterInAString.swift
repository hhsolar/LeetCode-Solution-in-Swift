//
//  FirstUniqueCharacterInAString.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
    var dict = Dictionary<Character, Int>()
    
    let sc = Array(s.characters)
    for i in 0..<s.characters.count {
        if dict[sc[i]] != nil {
            dict[sc[i]] = -1
        } else {
            dict[sc[i]] = i
        }
    }
    for i in 0..<s.characters.count {
        if dict[sc[i]] != -1 { return dict[sc[i]]! }
    }
    
    return -1
}
