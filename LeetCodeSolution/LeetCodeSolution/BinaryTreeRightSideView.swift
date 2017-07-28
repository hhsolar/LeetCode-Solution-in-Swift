//
//  BinaryTreeRightSideView.swift
//  LeetCodeSolution
//
//  Created by apple on 28/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let root = root else { return [] }
    
    let node = root
    var a = [node.val]
    
    rightOrder(node, 0, &a)
    
    return a
}

func rightOrder(_ node: TreeNode?, _ level: Int, _ a: inout [Int]) {
    if let node = node {
        if level == a.count {
            a.append(node.val)
        }
        rightOrder(node.right, level + 1, &a)
        rightOrder(node.left, level + 1, &a)
    }
}
