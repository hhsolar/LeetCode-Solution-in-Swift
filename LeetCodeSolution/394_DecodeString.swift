//
//  394_DecodeString.swift
//  LeetCodeSolution
//
//  Created by apple on 16/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func decodeString(_ s: String) -> String {
    let len = s.count
    guard len > 1 else { return s }
    let sc = Array(s).map { String($0) }
    var i = 0
    return decodeStringHelper(sc, &i)
}

func decodeStringHelper(_ sc: [String], _ i: inout Int) -> String {
    var res = ""
    while i < sc.count, sc[i] != "]" {
        if let n = Int(sc[i]) {
            var num = n
            i += 1
            while Int(sc[i]) != nil {
                num = num * 10 + Int(sc[i])!
                i += 1
            }
            i += 1
            let str = decodeStringHelper(sc, &i)
            while num > 0 {
                res += str
                num -= 1
            }
            i += 1
        } else {
            res += sc[i]
            i += 1
        }
    }
    return res
}
