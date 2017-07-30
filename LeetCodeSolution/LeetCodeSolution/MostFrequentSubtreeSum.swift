//
//  MostFrequentSubtreeSum.swift
//  LeetCodeSolution
//
//  Created by apple on 30/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

var d = Dictionary<Int, Int>()

func findFrequentTreeSum(_ root: TreeNode?) -> [Int] {
    
    _ = treeSum(root)
    
    var maxNum = 0
    var maxKey = [Int]()
    for value in d.values {
        if value > maxNum {
            maxNum = value
        }
    }
    for (key, value) in d {
        if value == maxNum {
            maxKey.append(key)
        }
    }
    
    return maxKey
}

func treeSum(_ node: TreeNode?) -> Int {
    if let node = node {
        var sum = 0
        let v1 = treeSum(node.left)
        let v2 = treeSum(node.right)
        sum = v1 + v2 + node.val
        if d[sum] == nil {
            d[sum] = 1
        } else {
            d[sum] = d[sum]! + 1
        }
        return sum
    } else {
        return 0
    }
}
