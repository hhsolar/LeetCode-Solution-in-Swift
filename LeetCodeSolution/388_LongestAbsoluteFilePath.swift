//
//  388_LongestAbsoluteFilePath.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func lengthLongestPath(_ input: String) -> Int {
    guard input.count > 0, input.contains(".") else { return 0 }
    let arr = input.split(separator: "\n").map { String($0) }
    
    var stack: [Int] = []
    var maxV = 0
    var lastCount = -1, lastStr = ""
    for val in arr {
        var count = 0
        while val[val.index(val.startIndex, offsetBy: count)] == "\t" { count += 1 }
//        if val.prefix(4) == "    " { count += 4 }   // 为跑过leetCode的一个测试特例加的语句
        if count <= lastCount {
            if lastStr.contains(".") {
                maxV = max(maxV, stack.reduce(0, +))
            }
            while lastCount >= count {
                stack.removeLast()
                lastCount -= 1
            }
        }
        stack.append(val.count - count + 1)
        lastCount = count
        lastStr = val
    }
    return lastStr.contains(".") ? max(maxV, stack.reduce(0, +)) - 1 : maxV - 1
}
