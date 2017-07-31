//
//  MergeTwoBinaryTree.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
    
    guard !(t1 == nil && t2 == nil) else { return nil }
    
    let head = TreeNode(0)
    
    if let v1 = t1?.val, let v2 = t2?.val {
        head.val = v1 + v2
    } else if let v1 = t1?.val {
        head.val = v1
    } else if let v2 = t2?.val {
        head.val = v2
    }
    
    head.left = mergeTrees(t1?.left, t2?.left)
    head.right = mergeTrees(t1?.right, t2?.right)
    
    return head
}
