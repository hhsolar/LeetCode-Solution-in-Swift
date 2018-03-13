//
//  168_ExcelSheetColumnTitle.swift
//  LeetCodeSolution
//
//  Created by apple on 6/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func convertToTitle(_ n: Int) -> String {
    var num = n
    let a = Character("A").ascii - 1
    
    var res = ""
    while num > 0 {
        let x = num % 26
        num = num / 26
        guard x > 0 else {
            res.insert("Z", at: res.startIndex)
            num -= 1
            continue
        }
        res.insert(Character(UInt32(x) + a), at: res.startIndex)
    }
    
    return res
}
