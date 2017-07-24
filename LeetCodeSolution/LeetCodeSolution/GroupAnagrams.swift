//
//  GroupAnagrams.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation


// MARK: HashMap

func groupAnagrams(_ strs: [String]) -> [[String]] {
    
    guard strs.count > 1 else { return [strs] }
    
    var distributeStr = Dictionary<String, [String]>()
    for s in strs {
        let sorted = String(s.characters.sorted{ $0 < $1 })
        if distributeStr[sorted] != nil {
            distributeStr[sorted]!.append(s)
        } else {
            distributeStr[sorted] = [s]
        }
    }
    var result = [[String]]()
    for subStrs in distributeStr.values {
        result.append(subStrs)
    }
    return result
    
}
