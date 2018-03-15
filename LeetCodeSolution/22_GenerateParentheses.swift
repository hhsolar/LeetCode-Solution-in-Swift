//
//  22_GenerateParentheses.swift
//  LeetCodeSolution
//
//  Created by apple on 13/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func generateParenthesis(_ n: Int) -> [String] {
    guard n > 0 else { return [] }
    
    var res = [String]()
    generateParenthesisHelper(n, n, "", &res)
    
    return res
}

func generateParenthesisHelper(_ left: Int, _ right: Int, _ s: String, _ res: inout [String]) {
    guard left >= 0 && right >= 0 && right >= left else { return }
    if left == 0, right == 0 {
        res.append(s)
        return
    }
    generateParenthesisHelper(left - 1, right, s + "(", &res)
    generateParenthesisHelper(left, right - 1, s + ")", &res)
}
