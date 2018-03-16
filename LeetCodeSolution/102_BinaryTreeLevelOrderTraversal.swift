//
//  102_BinaryTreeLevelOrderTraversal.swift
//  LeetCodeSolution
//
//  Created by apple on 15/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var res = [[Int]]()
    levelOrderHelper(root, 0, &res)
    return res
}

func levelOrderHelper(_ root: TreeNode?, _ level: Int, _ res: inout [[Int]]) {
    guard let r = root else { return }
    if res.count <= level { res.append([]) }
    res[level].append(r.val)
    levelOrderHelper(r.left, level + 1, &res)
    levelOrderHelper(r.right, level + 1, &res)
}
