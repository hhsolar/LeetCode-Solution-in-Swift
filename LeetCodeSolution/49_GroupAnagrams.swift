//
//  49_GroupAnagrams.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dict = Dictionary<String, Int>()
    var res = [[String]]()
    for str in strs {
        let s = String(str.sorted())
        if let i = dict[s] {
            res[i].append(str)
        } else {
            let list = [str]
            res.append(list)
            dict[s] = res.count - 1
        }
    }
    return res
}
