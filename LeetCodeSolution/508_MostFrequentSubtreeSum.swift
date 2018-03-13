//
//  508_MostFrequentSubtreeSum.swift
//  LeetCodeSolution
//
//  Created by apple on 12/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func findFrequentTreeSum(_ root: TreeNode?) -> [Int] {
    guard let r = root else { return [] }
    var dict = Dictionary<Int, Int>()
    _ = treeSum(r, &dict)
    
    let maxV = dict.values.reduce(0) { res, val in max(res, val) }
    let res = dict.filter { d in d.value == maxV }
    return Array(res.keys)
}

func treeSum(_ root: TreeNode?, _ dict: inout Dictionary<Int, Int>) -> Int {
    guard let r = root else { return 0 }
    
    var sum = r.val
    sum += treeSum(r.left, &dict)
    sum += treeSum(r.right, &dict)
    
    if let num = dict[sum] {
        dict[sum] = num + 1
    } else {
        dict[sum] = 1
    }
    return sum
}
