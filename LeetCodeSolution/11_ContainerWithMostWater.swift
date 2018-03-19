//
//  11_ContainerWithMostWater.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    var i = 0, j = height.count - 1
    var res = 0
    while i < j {
        res = max(res, min(height[i], height[j]) * (j - i))
        if height[i] > height[j] {
            j -= 1
        } else {
            i += 1
        }
    }
    return res
}
