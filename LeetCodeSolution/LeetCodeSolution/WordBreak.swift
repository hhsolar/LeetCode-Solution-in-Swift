//
//  WordBreak.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    
    guard wordDict.count > 0 else { return false }
    
    let wordSet = Set(wordDict)
    let longestWordLength = wordSet.reduce(0) {
        return max($0, $1.count)
    }
    
    var queryArray = Array(repeating: false, count: s.count + 1)
    
    queryArray[0] = true
    
    for i in 1...s.count {
        for currentWordLength in 1...longestWordLength {
            if i < currentWordLength {
                break
            }
            
            if !queryArray[i - currentWordLength] {
                continue
            }
            
            let currentRange = s.index(s.startIndex, offsetBy: i - currentWordLength)..<s.index(s.startIndex, offsetBy: i)
            let currentSubString = String(s[currentRange])
            if wordSet.contains(currentSubString) {
                queryArray[i] = true
                break
            }
        }
    }
    return queryArray[s.count]
}
