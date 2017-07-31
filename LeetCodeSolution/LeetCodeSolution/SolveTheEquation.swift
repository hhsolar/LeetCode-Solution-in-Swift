//
//  SolveTheEquation.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func solveEquation(_ equation: String) -> String {
    
    let s = Array(equation.characters)
    
    var l = [[Character]](), r = [[Character]](), ei = 0
    
    for i in 0..<s.count {
        if s[i] == "=" {
            ei = i
            break
        }
    }
    
    var last = 0
    for i in 0..<ei {
        if s[i] == "+" {
            l.append(Array(s[last..<i]))
            last = i + 1
        } else if s[i] == "-" {
            l.append(Array(s[last..<i]))
            last = i
        }
    }
    l.append(Array(s[last..<ei]))
    
    last = ei + 1
    for i in ei+1..<s.count {
        if s[i] == "+" {
            r.append(Array(s[last..<i]))
            last = i + 1
        } else if s[i] == "-" {
            r.append(Array(s[last..<i]))
            last = i
        }
    }
    r.append(Array(s[last..<s.count]))
    
    var lx = [Int](), lc = [Int](), rx = [Int](), rc = [Int]()
    for i in l {
        if !i.isEmpty, i.last! == "x" {
            var ii = i
            ii.removeLast()
            if ii.count == 0 {
                lx.append(1)
            } else if String(ii) == "-" {
                lx.append(-1)
            } else {
                lx.append(Int(String(ii))!)
            }
            
        } else if !i.isEmpty {
            lc.append(Int(String(i))!)
        }
    }
    for i in r {
        if !i.isEmpty, i.last! == "x" {
            var ii = i
            ii.removeLast()
            if ii.count == 0 {
                rx.append(1)
            } else if String(ii) == "-" {
                rx.append(-1)
            } else {
                rx.append(Int(String(ii))!)
            }
        } else if !i.isEmpty {
            rc.append(Int(String(i))!)
        }
    }
    
    let sumlx = lx.reduce(0) { return $0 + $1 }
    let sumlc = lc.reduce(0) { return $0 + $1 }
    let sumrx = rx.reduce(0) { return $0 + $1 }
    let sumrc = rc.reduce(0) { return $0 + $1 }
    
    let c = sumrc - sumlc
    let x = sumlx - sumrx
    if x != 0, c != 0 {
        return "x=" + String(c/x)
    } else if x == 0, c == 0 {
        return "Infinite solutions"
    } else if x != 0, c == 0 {
        return "x=0"
    } else {
        return "No solution"
    }
}
