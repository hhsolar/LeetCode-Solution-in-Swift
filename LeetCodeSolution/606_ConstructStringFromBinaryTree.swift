//
//  606_ConstructStringFromBinaryTree.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func tree2str(_ t: TreeNode?) -> String {
    guard let root = t else { return "" }
    
    let res = "\(root.val)"
    let left = tree2strHelper(root.left, true)
    let right = tree2strHelper(root.right, false)
    
    if left == "()" && right == "" {
        return res
    } else {
        return res + left + right
    }
}

func tree2strHelper(_ t: TreeNode?, _ isLeft: Bool) -> String {
    guard let root = t else {
        if isLeft {
            return "()"
        } else {
            return ""
        }
    }
    
    let res = "\(root.val)"
    let left = tree2strHelper(root.left, true)
    let right = tree2strHelper(root.right, false)
    
    if left == "()" && right == "" {
        return "(\(res))"
    } else {
        return "(\(res + left + right))"
    }
}
