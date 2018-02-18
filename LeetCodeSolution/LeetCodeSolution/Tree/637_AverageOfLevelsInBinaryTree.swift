//
//  637_AverageOfLevelsInBinaryTree.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func averageOfLevels(_ root: TreeNode?) -> [Double] {
    
    var res = [Double]()
    guard let tree = root else { return res }
    
    var queue: Queue = [tree]
    var lastLevelLen = 1
    
    while !queue.isEmpty {
        let levelTotal = Double(queue.reduce(0) { total, t in total + t.val })
        res.append(levelTotal / Double(lastLevelLen))
        
        for _ in 0..<lastLevelLen {
            let q = queue.dequeue()!
            if let left = q.left { queue.enqueue(left) }
            if let right = q.right { queue.enqueue(right) }
        }
        
        lastLevelLen = queue.count
    }
    return res
}

// Answer without queue structure
//func averageOfLevels(_ root: TreeNode?) -> [Double] {
//    guard let root = root else { return [] }
//
//    var queue = [root], ans: [Double] = []
//    while queue.count > 0 {
//        var tempQueue: [TreeNode] = []
//        var sum = 0, count = 0
//        for node in queue {
//            sum += node.val
//            count += 1
//            if let left = node.left {
//                tempQueue.append(left)
//            }
//            if let right = node.right {
//                tempQueue.append(right)
//            }
//        }
//        ans.append(Double(sum) / Double(count))
//        queue = tempQueue
//    }
//
//    return ans
//}

