//
//  572_SubtreeOfAnotherTree.swift
//  LeetCodeSolution
//
//  Created by apple on 19/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isSubtree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
    guard let ss = s else { return false }
    return isSameTree(s, t) || isSubtree(ss.left, t) || isSubtree(ss.right, t)
}

func isSameTree(_ s: TreeNode?, _ t: TreeNode?) -> Bool {
    if s == nil && t == nil { return true }
    guard let ss = s, let tt = t else { return false }
    return ss.val == tt.val && isSameTree(ss.left, tt.left) && isSameTree(ss.right, tt.right)
}
