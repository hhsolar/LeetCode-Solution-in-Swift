//
//  88_MergeSortArray.swift
//  LeetCodeSolution
//
//  Created by apple on 4/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    guard n > 0 else { return }
    
    var mi = m - 1, ni = n - 1, mni = m + n - 1
    while mi >= 0, ni >= 0 {
        if nums1[mi] > nums2[ni] {
            nums1[mni] = nums1[mi]
            mi -= 1
        } else {
            nums1[mni] = nums2[ni]
            ni -= 1
        }
        mni -= 1
    }
    
    while ni >= 0 {
        nums1[ni] = nums2[ni]
        ni -= 1
    }
    
}
