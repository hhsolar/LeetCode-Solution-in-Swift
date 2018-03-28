//
//  669_TrimABinarySearchTree.swift
//  LeetCodeSolution
//
//  Created by apple on 27/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
    guard let r = root else { return nil }
    if r.val < L {
        return trimBST(r.right, L, R)
    } else if r.val > R {
        return trimBST(r.left, L, R)
    } else {
        r.left = trimBST(r.left, L, R)
        r.right = trimBST(r.right, L, R)
    }
    
    return r
}
