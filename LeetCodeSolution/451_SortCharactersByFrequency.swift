//
//  451_SortCharactersByFrequency.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func frequencySort(_ s: String) -> String {
    guard s.count > 1 else { return s }
    let dict = Array(s.characters).frequency
    let arr = zip(Array(dict.values), Array(dict.keys)).sorted(by: >)
    var res = ""
    for i in arr {
        var j = i.0
        while j > 0 {
            res += String(i.1)
            j -= 1
        }
    }
    return res
}
