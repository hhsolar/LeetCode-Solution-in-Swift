//
//  14_LongestCommonPrefix.swift
//  LeetCodeSolution
//
//  Created by apple on 4/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    let len = strs.count
    switch len {
    case 0:
        return ""
    case 1:
        return strs.first!
    default:
        var prefix = strs[0]
        for i in 1..<len {
            while !strs[i].hasPrefix(prefix) {
                prefix = String(prefix.dropLast())
            }
        }
        return prefix
    }
}
