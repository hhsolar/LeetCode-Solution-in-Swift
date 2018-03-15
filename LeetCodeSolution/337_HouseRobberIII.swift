//
//  337_HouseRobberIII.swift
//  LeetCodeSolution
//
//  Created by apple on 14/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func rob(_ root: TreeNode?) -> Int {
    let res = robHelper(root)
    return max(res.0, res.1)
}

func robHelper(_ root: TreeNode?) -> (Int, Int) {
    guard let r = root else { return (0, 0) }
    
    let left = robHelper(r.left)
    let right = robHelper(r.right)
    
    let a = max(left.0, left.1) + max(right.0, right.1)
    let b = left.0 + right.0 + r.val
    return (a, b)
}
