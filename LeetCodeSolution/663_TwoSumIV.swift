//
//  663_TwoSumIV.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
    
    var set: Set<Int> = Set()
    return findTargetHelper(root, k, &set)
    
}

func findTargetHelper(_ root: TreeNode?, _ k: Int, _ set: inout Set<Int>) -> Bool {
    guard let r = root else { return false }
    if set.contains(k - r.val) {
        return true
    } else {
        set.insert(r.val)
    }
    return findTargetHelper(r.left, k, &set) || findTargetHelper(r.right, k, &set)
}

