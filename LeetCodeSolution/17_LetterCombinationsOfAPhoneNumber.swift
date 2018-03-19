//
//  17_LetterCombinationsOfAPhoneNumber.swift
//  LeetCodeSolution
//
//  Created by apple on 18/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func letterCombinations(_ digits: String) -> [String] {
    guard digits.count > 0 else { return [] }
    let dict = [[""], [""], ["a","b","c"], ["d","e","f"], ["g","h","i"], ["j","k","l"], ["m","n","o"], ["p","q","r","s"], ["t","u","v"], ["w","x","y","z"]]
    
    let arr = Array(digits).map { Int(String($0))! }
    var queue = dict[arr[0]]
    guard arr.count > 1 else { return queue }
    
    for i in 1..<arr.count {
        guard arr[i] >= 2 else { continue }
        let temp = dict[arr[i]]
        let count = queue.count
        
        var j = 0
        while j < count {
            let t = queue.removeFirst()
            for x in temp {
                queue.append(t + x)
            }
            j += 1
        }
    }
    return queue
}

// 简化版
//func letterCombinations(_ digits: String) -> [String] {
//    guard digits.count > 0 else { return [] }
//    let dict = [[""], [""], ["a","b","c"], ["d","e","f"], ["g","h","i"], ["j","k","l"], ["m","n","o"], ["p","q","r","s"], ["t","u","v"], ["w","x","y","z"]]
//
//    let arr = Array(digits).map { Int(String($0))! }.filter { $0 > 1 }
//    var res = dict[arr[0]]
//    guard arr.count > 1 else { return res }
//
//    for i in 1..<arr.count {
//        let temp = dict[arr[i]]
//        res = res.flatMap { r in temp.map { t in r + t }}
//    }
//    return res
//}

