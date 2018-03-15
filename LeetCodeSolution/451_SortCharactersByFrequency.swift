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
    let dict = Array(s.characters).frequency.sorted{ l, r in l.value > r.value }
    var res = ""
    for d in dict {
        var j = d.value
        while j > 0 {
            res += String(d.key)
            j -= 1
        }
    }
    return res
}
