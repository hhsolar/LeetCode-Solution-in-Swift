//
//  387_FirstUniqueCharacterInAString.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func firstUniqChar(_ s: String) -> Int {
    
    guard s != "" else { return -1 }
    guard s.characters.count > 1 else { return 0 }
    
    var dict = [Character: Int]()
    
    for (index, c) in s.characters.enumerated() {
        if dict[c] != nil {
            dict[c] = -1
        } else {
            dict[c] = index
        }
    }
    
    for value in dict.values.sorted() {
        if value != -1 {
            return value
        }
    }
    return -1
}
