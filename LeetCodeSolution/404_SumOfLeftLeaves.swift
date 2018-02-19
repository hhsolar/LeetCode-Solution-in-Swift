//
//  404_SumOfLeftLeaves.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let r = root else { return 0 }
    return sumOfLeftLeavesHelper(r.left, true) + sumOfLeftLeavesHelper(r.right, false)
}

func sumOfLeftLeavesHelper(_ root: TreeNode?, _ isLeft: Bool) -> Int {
    guard let r = root else { return 0 }
    if isLeft, r.isLeafNode { return r.val }
    
    return sumOfLeftLeavesHelper(r.left, true) + sumOfLeftLeavesHelper(r.right, false)
} 
