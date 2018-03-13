//
//  20_ValidParentheses.swift
//  LeetCodeSolution
//
//  Created by apple on 2/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isValid(_ s: String) -> Bool {
    let len = s.count
    guard len % 2 == 0 else { return false }
    
    var stack = [Character]()
    
    let sc = Array(s)
    
    for c in sc {
        switch c {
        case ")":
            guard let last = stack.popLast(), last == "(" else { return false }
        case "}":
            guard let last = stack.popLast(), last == "{" else { return false }
        case "]":
            guard let last = stack.popLast(), last == "[" else { return false }
        default:
            stack.append(c)
        }
    }
    return stack.count == 0 ? true : false
}
