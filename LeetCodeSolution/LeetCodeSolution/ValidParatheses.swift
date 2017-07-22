//
//  ValidParatheses.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation


func isValid(_ s: String) -> Bool {
    
    guard s.characters.count > 1, s.characters.count % 2 == 0 else {
        return false
    }
    
    var stack = [Character]()
    
    for c in s.characters {
        if c == "(" || c == "{" || c == "[" {
            stack.append(c)
        } else if c == ")" {
            if stack.last == "(" {
                stack.removeLast()
            } else {
                return false
            }
        } else if c == "}" {
            if stack.last == "{" {
                stack.removeLast()
            } else {
                return false
            }
        } else if c == "]" {
            if stack.last == "[" {
                stack.removeLast()
            } else {
                return false
            }
        }
    }
    
    if stack.count == 0 {
        return true
    } else {
        return false
    }
}
