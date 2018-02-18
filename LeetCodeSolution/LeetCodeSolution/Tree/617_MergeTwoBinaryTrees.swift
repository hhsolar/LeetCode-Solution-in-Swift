//
//  617_MergeTwoBinaryTrees.swift
//  LeetCodeSolution
//
//  Created by apple on 17/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
    
    guard let tree1 = t1 else { return t2 }
    guard let tree2 = t2 else { return t1 }
    
    let tree = TreeNode(tree1.val + tree2.val)
    tree.left = mergeTrees(tree1.left, tree2.left)
    tree.right = mergeTrees(tree1.right, tree2.right)
    
    return tree
}
