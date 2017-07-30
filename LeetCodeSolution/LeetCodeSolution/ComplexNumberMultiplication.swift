//
//  ComplexNumberMultiplication.swift
//  LeetCodeSolution
//
//  Created by apple on 29/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func complexNumberMultiply(_ a: String, _ b: String) -> String {
    
    var ac = Array(a.characters)
    var bc = Array(b.characters)
    let al = ac.count, bl = bc.count
    
    var x1 = 0, y1 = 0, x2 = 0, y2 = 0
    
    for i in 0..<al {
        if ac[i] == "+" {
            x1 = Int(String(Array(ac[0...(i-1)])))!
            if ac[i + 1] != "-" {
                y1 = Int(String(Array(ac[(i+1)...(al-2)])))!
            } else {
                y1 = Int(String(Array(ac[(i+2)...(al-2)])))! * -1
            }
        }
    }
    for i in 0..<bl {
        if bc[i] == "+" {
            x2 = Int(String(Array(bc[0...(i-1)])))!
            if bc[i + 1] != "-" {
                y2 = Int(String(Array(bc[(i+1)...(bl-2)])))!
            } else {
                y2 = Int(String(Array(bc[(i+2)...(bl-2)])))! * -1
            }
        }
    }
    
    let x3 = x1 * x2 - y1 * y2, y3 = x1 * y2 + x2 * y1
    return String(x3) + "+" + String(y3) + "i"
}
