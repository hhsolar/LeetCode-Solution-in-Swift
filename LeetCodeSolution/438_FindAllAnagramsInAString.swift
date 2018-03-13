//
//  438_FindAllAnagramsInAString.swift
//  LeetCodeSolution
//
//  Created by apple on 2/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    let sLen = s.count, pLen = p.count
    guard pLen < sLen else { return [] }
    
    var indexSet = [Int]()
    let sc = Array(s)
    
    let dict = Array(p).frequency
    
    var i = 0
    while i <= sLen-pLen  {
        if isAnagrams(sc, dict, &i) {
            indexSet.append(i)
            while i+pLen < sLen, sc[i] == sc[i+pLen] {
                indexSet.append(i+1)
                i += 1
            }
        }
        i += 1
    }
    return indexSet
}

func isAnagrams(_ s: [Character], _ dict: Dictionary<Character, Int>, _ i: inout Int) -> Bool {
    var dict = dict
    let pLen = dict.values.reduce(0, +)
    
    for j in i..<i+pLen {
        guard let x = dict[s[j]] else {
            i = j
            return false
        }
        dict[s[j]] = x - 1
    }
    
    for v in dict.values {
        if v != 0 { return false }
    }
    return true
}
