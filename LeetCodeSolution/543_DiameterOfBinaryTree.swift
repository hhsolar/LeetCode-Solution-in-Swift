//
//  543_DiameterOfBinaryTree.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    
    guard let r = root else { return 0 }
    
    var max = 0
    
    let left = diameterOfBinaryTreeHelper(r.left, &max)
    let right = diameterOfBinaryTreeHelper(r.right, &max)
    
    return Swift.max(left + right, max)
}

func diameterOfBinaryTreeHelper(_ root: TreeNode?, _ max: inout Int) -> Int {
    guard let r = root else { return 0 }
    let left = diameterOfBinaryTreeHelper(r.left, &max)
    let right = diameterOfBinaryTreeHelper(r.right, &max)
    max = Swift.max(left + right, max)
    return Swift.max(left, right) + 1
}
