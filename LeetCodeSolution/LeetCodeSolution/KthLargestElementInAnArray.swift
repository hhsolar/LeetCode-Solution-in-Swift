//
//  KthLargestElementInAnArray.swift
//  LeetCodeSolution
//
//  Created by apple on 26/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

var myNums = [Int]()

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    
    let len = nums.count
    
    myNums = nums
    
    let start = 0
    let end = len - 1
    
    return quickSort(start, end, k)
    
}

func quickSort(_ start: Int, _ end: Int, _ kth: Int) -> Int {
    let mid = myNums[end - start]
    
    (myNums[end - start], myNums[end]) = (myNums[end], myNums[end - start])
    
    
    //    print(Array(myNums[start...end]))
    var left = start, right = end - 1
    while (left < right) {
        while myNums[left] > mid && left < right {
            left += 1
        }
        while myNums[right] <= mid && left < right {
            right -= 1
        }
        (myNums[right], myNums[left]) = (myNums[left], myNums[right])
    }
    if myNums[left] < myNums[end] {
        (myNums[end], myNums[left]) = (myNums[left], myNums[end])
    }
    
    if kth > left + 1 {
        return quickSort(left + 1, end, kth)
    } else if kth < left + 1 {
        return quickSort(start, left, kth)
    } else {
        return smallest(start, left)
    }
}

func smallest(_ start: Int, _ end: Int) -> Int {
    var m = myNums[start]
    for i in start...end {
        if myNums[i] < m { m = myNums[i] }
    }
    return m
}



