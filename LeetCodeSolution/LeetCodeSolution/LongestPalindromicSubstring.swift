//
//  LongestPalindromicSubstring.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

// MARK: DP

func longestPalindrome(_ s: String) -> String {
    
    if s.characters.count < 2 { return s }
    
    let cs = Array(s.characters)
    let temp = Array(repeating: false, count: s.characters.count)
    var dp = Array(repeating: temp, count: s.characters.count)
    var left = 0, right = 0, maxlen = 1
    
    for i in 0..<cs.count {
        for j in 0..<i {
            dp[j][i] = (cs[j] == cs[i] && (i - j < 2 || dp[j + 1][i - 1]))
            if dp[j][i] && maxlen < i - j + 1 {
                maxlen = i - j + 1
                left = j
                right = i
            }
        }
        dp[i][i] = true
    }
    
    return String(Array(cs[left...right]))
}

// MARK: 

//    func longestPalindrome(_ s: String) -> String {
//
//        if s.characters.count < 2 { return s }
//
//        let cs = Array(s.characters)
//
//        var max = String(cs[0])
//        for i in 0..<cs.count - 1 {
//            let even = helper(i, i+1, cs)
//            let odd = helper(i, i, cs)
//            let bigger = even.characters.count > odd.characters.count ? even : odd
//            if bigger.characters.count > max.characters.count { max = bigger }
//        }
//        return max
//    }
//
//    func helper(_ ii: Int,_ jj: Int, _ cs: [Character]) -> String {
//        var subcs = [Character]()
//        var i = ii, j = jj
//        while i >= 0 && j < cs.count {
//            if cs[i] == cs[j] {
//                subcs = Array(cs[i...j])
//            } else {
//                return String(subcs)
//            }
//            i -= 1
//            j += 1
//        }
//        return String(subcs)
//    }
