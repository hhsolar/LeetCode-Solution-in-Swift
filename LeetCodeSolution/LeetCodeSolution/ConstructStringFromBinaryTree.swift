//
//  ConstructStringFromBinaryTree.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func tree2str(_ t: TreeNode?) -> String {
    
    guard t != nil else { return "" }
    
    let res = String((t?.val)!)
    let l = tree2strHelper(t?.left, true)
    let r = tree2strHelper(t?.right, false)
    if l == "()" && r == "" { return res }
    
    return res + l + r
}

func tree2strHelper(_ t: TreeNode?, _ flag: Bool) -> String {
    if t == nil {
        if flag {
            return "()"
        } else {
            return ""
        }
    }
    
    let s = String((t?.val)!)
    let l = tree2strHelper(t?.left, true)
    let r = tree2strHelper(t?.right, false)
    if l == "()" && r == "" { return "(" + s + ")" }
    return "(" + s + l + r + ")"
}
