//
//  537_ComplexNumberMultiplication.swift
//  LeetCodeSolution
//
//  Created by apple on 8/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func complexNumberMultiply(_ a: String, _ b: String) -> String {
    let ai = a.split(separator: "+")
    let bi = b.split(separator: "+")
    
    let a1 = Int(ai.first!)!, a2 = Int(String(ai.last!.dropLast()))!
    let b1 = Int(bi.first!)!, b2 = Int(String(bi.last!.dropLast()))!
    return "\(a1 * b1 - a2 * b2)+\(a1 * b2 + a2 * b1)i"
}
