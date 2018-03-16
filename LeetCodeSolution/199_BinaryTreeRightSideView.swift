//
//  199_BinaryTreeRightSideView.swift
//  LeetCodeSolution
//
//  Created by apple on 15/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let r = root else { return [] }
    var res = [r.val]
    let level = 0
    
    rightSideViewHelper(r.right, level + 1, &res)
    rightSideViewHelper(r.left, level + 1, &res)
    return res
}

func rightSideViewHelper(_ root: TreeNode?, _ level: Int, _ res: inout [Int]) {
    guard let r = root else { return }
    if level == res.count {
        res.append(r.val)
    }
    rightSideViewHelper(r.right, level + 1, &res)
    rightSideViewHelper(r.left, level + 1, &res)
}
