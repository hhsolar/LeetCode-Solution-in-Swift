//
//  538_ConvertBSTtoGreaterTree.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func convertBST(_ root: TreeNode?) -> TreeNode? {
    
    convertBSTHelper(root, 0)
    
    return root
}

func convertBSTHelper(_ root: TreeNode?, _ value: Int) -> Int {
    guard let r = root else { return value }
    
    let v = convertBSTHelper(r.right, value)
    r.val += v
    return convertBSTHelper(r.left, r.val)
    
}
