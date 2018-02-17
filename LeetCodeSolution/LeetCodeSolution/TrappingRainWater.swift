//
//  TrappingRainWater.swift
//  LeetCodeSolution
//
//  Created by apple on 23/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func trap(_ height: [Int]) -> Int {
    var left = 0, right = height.count - 1, water = 0
    
    while left < right {
        var small = min(height[left], height[right])
        if height[left] == small {
            left += 1
            while height[left] < small {
                water += (small - height[left])
                left += 1
            }
        } else if height[right] == small {
            right -= 1
            while height[right] < small {
                water += (small - height[right])
                right -= 1
            }
        }
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
