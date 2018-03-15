//
//  125_ValidPalindrome.swift
//  LeetCodeSolution
//
//  Created by apple on 7/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isPalindrome(_ s: String) -> Bool {
    guard s.count > 1 else { return true }
    
    let al = Character("a").ascii
    let zl = Character("z").ascii
    
    let res = s.lowercased().filter { val in
        guard Int(String(val)) == nil else { return true }
        let n = val.ascii
        return n >= al && n <= zl
    }
    return res == String(res.reversed())
}
