//
//  69_Sqrt(x).swift
//  LeetCodeSolution
//
//  Created by apple on 5/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func mySqrt(_ x: Int) -> Int {
    guard x > 0 else { return 0 }
    guard x > 3 else { return 1 }
    
    var left = 0, right = x
    while right > left {
        let mid = left + (right - left) / 2
        if x / mid < mid {   // 考虑找到大于x的平方根的下界
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left - 1
}
