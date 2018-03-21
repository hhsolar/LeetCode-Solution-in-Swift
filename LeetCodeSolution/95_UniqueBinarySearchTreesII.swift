//
//  95_UniqueBinarySearchTreesII.swift
//  LeetCodeSolution
//
//  Created by apple on 21/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func generateTrees(_ n: Int) -> [TreeNode?] {
    guard n > 0 else { return [] }
    return generateTreesHelper(1, n)
}

func generateTreesHelper(_ left: Int, _ right: Int) -> [TreeNode?] {
    guard right > left else {
        return right == left ? [TreeNode(left)] : [nil]
    }
    
    var res: [TreeNode?] = []
    for i in left...right {
        let lTrees = generateTreesHelper(left, i - 1)
        let rTrees = generateTreesHelper(i + 1, right)
        for j in lTrees {
            for k in rTrees {
                let node = TreeNode(i)
                node.left = j
                node.right = k
                res.append(node)
            }
        }
    }
    return res
}
