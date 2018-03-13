//
//  38_CountAndSay.swift
//  LeetCodeSolution
//
//  Created by apple on 27/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func countAndSay(_ n: Int) -> String {
    guard n > 0 else { return "" }
    var str = "1"
    guard n > 1 else { return str }
    
    for _ in 2...n {
        let sc = Array(str.characters)
        var letter = sc[0]
        var count = 0, j = 0
        str = ""
        while j < sc.count {
            if sc[j] == letter {
                count += 1
            } else {
                str += "\(count)\(letter)"
                letter = sc[j]
                count = 1
            }
            j += 1
        }
        str += "\(count)\(letter)"
    }
    return str
}

