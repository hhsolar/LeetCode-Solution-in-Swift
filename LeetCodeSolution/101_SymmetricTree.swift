//
//  101_SymmetricTree.swift
//  LeetCodeSolution
//
//  Created by apple on 24/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let r = root else { return true }
    guard !r.isLeafNode else { return true }
    
    return isSymmetricHelper(r.left, r.right)
}

func isSymmetricHelper(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
    if left == nil && right == nil { return true }
    guard let l = left, let r = right else { return false }
    guard l.val == r.val else { return false }
    return isSymmetricHelper(l.left, r.right) && isSymmetricHelper(l.right, r.left)
}
