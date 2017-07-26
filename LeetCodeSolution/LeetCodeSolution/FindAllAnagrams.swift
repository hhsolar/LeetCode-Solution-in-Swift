//
//  FindAllAnagrams.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

var pLen = 0

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    
    guard p.characters.count < s.characters.count else { return [] }
    
    var indexSet = [Int]()
    pLen = p.characters.count
    let sLen = s.characters.count
    let sc = Array(s.characters)
    let pc = Array(p.characters)

    var dict = Dictionary<Character, Int>()
    for i in pc {
        if let e = dict[i] {
            dict[i] = e + 1
        } else {
            dict[i] = 1
        }
    }
    
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
    
    for j in i..<i+pLen {
        if let x = dict[s[j]] {
            dict[s[j]] = x - 1
        } else {
            i = j
            return false
        }
    }
    
    for v in dict.values {
        if v != 0 { return false}
    }
    return true
}
