//
//  lengthOfLongestSubstring.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func LengthOfLongestSubstring(_ s: String) -> Int {
    
    if s.characters.count < 2 { return s.characters.count }
    
    var nonRepeatSubstring = [Character]()
    var maxLength = 1
    
    for c in s.characters {
        if let repeatIndex = nonRepeatSubstring.index(of: c) {
            nonRepeatSubstring.removeSubrange(0..<repeatIndex + 1)
        }
        nonRepeatSubstring.append(c)
        maxLength = max(nonRepeatSubstring.count, maxLength)
    }
    return maxLength
}
