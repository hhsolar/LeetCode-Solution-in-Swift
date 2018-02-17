//
//  ValidateBinarySearchTree.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func isValidBST(_ root: TreeNode?) -> Bool {
    guard let root = root else { return true }
    if root.left == nil && root.right == nil { return true }
    
    var list = [Int]()
    
    inOrderTraversal(root, &list)
    
    for i in 1..<list.count {
        if list[i] <= list[i - 1] { return false }
    }
    return true
}

func inOrderTraversal(_ root: TreeNode?, _ list: inout [Int]) {
    guard let root = root else { return }
    
    inOrderTraversal(root.left, &list)
    list.append(root.val)
    inOrderTraversal(root.right, &list)
}
