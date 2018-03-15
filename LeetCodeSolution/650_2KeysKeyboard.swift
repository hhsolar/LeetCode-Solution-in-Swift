//
//  650_2KeysKeyboard.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func minSteps(_ n: Int) -> Int {
    guard n > 1 else { return 0 }
    
    var res = 0
    var num = n
    while true {
        var flag = true
        let end = Int(sqrt(Double(num)))
        if end > 1 {
            for i in 2...end {
                if num % i == 0 {
                    res += i
                    num = num / i
                    flag = false
                    break
                }
            }
        }
        if flag {
            res += num
            return res
        }
    }
}
