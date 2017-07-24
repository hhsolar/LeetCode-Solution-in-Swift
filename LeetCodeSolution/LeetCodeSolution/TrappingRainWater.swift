//
//  TrappingRainWater.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func trap(_ height: [Int]) -> Int {
    var level = 0, water = 0, l = 0, r = (height.count - 1), lower = 0
    while l < r {
        if height[l] > height[r] {
            lower = height[r]
            r -= 1
        } else {
            lower = height[l]
            l -= 1
        }
        level = max(level, lower)
    }
    return water
    
}


//func trap(_ height: [Int]) -> Int {
//    
//    guard height.count > 1 else {
//        return 0
//    }
//    
//    var trapHeight = Array(repeating: 0, count: height.count)
//    
//    var max = 0
//    var maxIndex = 0
//    for (index, value) in height.enumerated() {
//        if value > max {
//            max = value
//            maxIndex = index
//        }
//    }
//    
//    var maxIndex2 = 0
//    for (index, value) in height.reversed().enumerated() {
//        if value == max {
//            maxIndex2 = height.count - 1 - index
//        }
//    }
//    
//    var subMax = 0
//    var i = 0
//    while i < maxIndex {
//        if height[i] > subMax {
//            subMax = height[i]
//            while i < maxIndex, height[i] <= subMax {
//                trapHeight[i] = subMax - height[i]
//                i += 1
//            }
//            i -= 1
//        }
//        i += 1
//    }
//    i = height.count - 1
//    subMax = 0
//    
//    while i > maxIndex2 {
//        if height[i] > subMax {
//            subMax = height[i]
//            while i > maxIndex2, height[i] <= subMax {
//                trapHeight[i] = subMax - height[i]
//                i -= 1
//            }
//            i += 1
//        }
//        i -= 1
//    }
//    
//    if maxIndex != maxIndex2 {
//        for j in maxIndex..<maxIndex2 {
//            trapHeight[j] = max - height[j]
//        }
//    }
//    
//    return trapHeight.reduce(0) { $0 + $1 }
//}
