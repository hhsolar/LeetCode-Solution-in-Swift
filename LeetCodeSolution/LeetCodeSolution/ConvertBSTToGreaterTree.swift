//
//  ConvertBSTToGreaterTree.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func convertBST(_ root: TreeNode?) -> TreeNode? {
    
    guard let root = root else { return nil }
    
    _ = reverseInOrder(root, 0)
    
    return root
}

func reverseInOrder(_ node: TreeNode?, _ value: Int) -> Int{
    if let node = node {
        let v = reverseInOrder(node.right, value)
        node.val += v
        return reverseInOrder(node.left, node.val)
    } else {
        return value
    }
}
