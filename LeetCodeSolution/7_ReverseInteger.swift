//
//  7_ReverseInteger.swift
//  LeetCodeSolution
//
//  Created by apple on 7/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var flag = true
    if x < 0 { flag = false }
    var xb = abs(x)
    var res = 0
    while xb > 9 {
        let t = xb % 10
        res = res * 10 + t
        xb = xb / 10
    }
    if (flag && Int(Int32.max) - res * 10 < xb) || (!flag && abs(Int(Int32.min)) - res * 10 < xb) {
        return 0
    }
    return flag ? res * 10 + xb : (res * 10 + xb) * -1
}
