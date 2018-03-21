//
//  113_PathSumII.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
    var res: [[Int]] = []
    var ans: [Int] = []
    pathSumHelper(root, sum, &res, &ans, 0)
    return res
}

func pathSumHelper(_ root: TreeNode?, _ sum: Int, _ res: inout [[Int]], _ ans: inout [Int], _ subSum: Int) {
    guard let r = root else { return }
    if r.isLeafNode {
        if r.val + subSum == sum {
            ans.append(r.val)
            res.append(ans)
            ans.removeLast()
        }
        return
    }
    ans.append(r.val)
    pathSumHelper(r.left, sum, &res, &ans, subSum + r.val)
    pathSumHelper(r.right, sum, &res, &ans, subSum + r.val)
    ans.removeLast()
}
