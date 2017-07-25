//
//  SubmissionDetails.swift
//  LeetCodeSolution
//
//  Created by apple on 24/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    
    guard let root = root else { return [] }
    
    var queue = [(TreeNode, Int)]()
    
    var list = [[Int]]()
    
    queue.append((root, 0))
    
    while queue.count > 0 {
        let node = queue.removeFirst()
        if list.count < node.1 + 1 {
            list.append([node.0.val])
        } else {
            list[node.1].append(node.0.val)
        }
        
        if let left = node.0.left {
            queue.append((left, node.1 + 1))
        }
        if let right = node.0.right {
            queue.append((right, node.1 + 1))
        }
    }
    
    return list
    
}
