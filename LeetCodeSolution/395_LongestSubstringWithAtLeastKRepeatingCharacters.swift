//
//  395_LongestSubstringWithAtLeastKRepeatingCharacters.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func longestSubstring(_ s: String, _ k: Int) -> Int {
    guard s.count >= k else { return 0 }
    let sc = Array(s).map { String($0) }
    let dict = sc.frequency.filter { $0.value < k }
    guard dict.count > 0 else { return s.count }
    
    var left = 0, right = 0, res = 0
    while right < sc.count {
        if dict.keys.contains(sc[right]) {
            if right > left {
                res = max(res, longestSubstring(sc[left..<right].joined(), k))
            }
            left = right + 1
        }
        right += 1
    }
    return right > left ? max(res, longestSubstring(sc[left..<right].joined(), k)) : res
}
