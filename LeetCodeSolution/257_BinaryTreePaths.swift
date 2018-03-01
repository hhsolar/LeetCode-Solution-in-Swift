//
//  257_BinaryTreePaths.swift
//  LeetCodeSolution
//
//  Created by apple on 19/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    var res = [String]()
    
    guard let r = root else { return res }
    
    let str = "\(r.val)"
    
    guard !r.isLeafNode else { return [str] }
    
    if let strL = binaryTreePathsHelper(r.left, str) {
        res.append(contentsOf: strL)
    }
    
    if let strR = binaryTreePathsHelper(r.right, str) {
        res.append(contentsOf: strR)
    }
    
    return res
}

func binaryTreePathsHelper(_ root: TreeNode?, _ s: String) -> [String]? {
    var res = [String]()
    guard let r = root else { return nil }
    
    let str = s + "->\(r.val)"
    guard !r.isLeafNode else { return [str] }
    
    if let strL = binaryTreePathsHelper(r.left, str) {
        res.append(contentsOf: strL)
    }
    
    if let strR = binaryTreePathsHelper(r.right, str) {
        res.append(contentsOf: strR)
    }
    return res
}
