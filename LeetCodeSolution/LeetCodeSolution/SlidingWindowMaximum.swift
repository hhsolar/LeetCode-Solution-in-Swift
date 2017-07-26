//
//  SlidingWindowMaximum.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    
    let len = nums.count
    
    guard len > 0 else { return [] }
    
    guard k > 0 else { return [] }
    
    if k == 1 { return nums }
    
    var res = [Int]()
    
    var queue = [Int]()
    
    for i in 0..<len {
        if i - k >= 0 {
            if !queue.isEmpty && nums[i-k] == queue.first {
                queue.removeFirst()
            }
        }
        while !queue.isEmpty && nums[i] > queue.last! {
            queue.removeLast()
        }
        queue.append(nums[i])
        if i - k + 1 >= 0 {
            res.append(queue[0])
        }
    }
    return res
}
