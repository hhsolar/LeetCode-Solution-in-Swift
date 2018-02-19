//
//  771_JewelsAndStones.swift
//  LeetCodeSolution
//
//  Created by apple on 17/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func numJewelsInStones(_ J: String, _ S: String) -> Int {
    
    guard J.count > 0, S.count > 0 else { return 0 }
    
    let dict = S.characters.frequency
    var res = 0
    for c in J.characters {
        if let x = dict[c] {
            res += x
        }
    }
    return res
}
