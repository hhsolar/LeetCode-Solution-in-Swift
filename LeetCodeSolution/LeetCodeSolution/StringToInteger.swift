//
//  StringToInteger.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func myAtoi(_ str: String) -> Int {
    
    if str.characters.count == 0 { return 0 }
    
    let cs = Array(str.characters)
    let scalar0 = "0".unicodeScalars
    
    var i = 0
    var flag = true
    var num: Double = 0
    var result = 0
    let max = Int(Int32.max)
    let min = Int(Int32.min)
    
    while i < str.characters.count && cs[i] == " " {
        i += 1
    }
    
    guard i < str.characters.count else {
        return result
    }
    
    if cs[i] == "+" {
        flag = true
        i += 1
    } else if cs[i] == "-" {
        flag = false
        i += 1
    } else if cs[i] < "0" || cs[i] > "9" {
        return result
    }
    
    guard i < str.characters.count else {
        return result
    }
    
    if cs[i] < "0" || cs[i] > "9" {
        return result
    }
    
    while i < str.characters.count {
        if cs[i] >= "0" && cs[i] <= "9" {
            let scalar = String(cs[i]).unicodeScalars
            let temp = Double(scalar[scalar.startIndex].value - scalar0[scalar0.startIndex].value)
            num = num * 10 + temp
        } else {
            break
        }
        i += 1
    }
    
    if !flag {
        num = -1 * num
        if num < Double(min) {
            result = min
        } else {
            result = Int(num)
        }
    } else {
        if num > Double(max) {
            result = max
        } else {
            result = Int(num)
        }
    }
    return result
}



