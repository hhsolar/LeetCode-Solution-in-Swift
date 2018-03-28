//
//  LetterCombinationsOfAPhoneNumbe.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

// MARK: BFS
//func letterCombinations(_ digits: String) -> [String] {
//    
//    if digits.characters.count == 0 { return [] }
//    
//    let dict = [[""], [""], ["a","b","c"], ["d","e","f"], ["g","h","i"], ["j","k","l"], ["m","n","o"], ["p","q","r","s"], ["t","u","v"], ["w","x","y","z"]]
//    
//    var queue = [String]()
//    
//    let cs = Array(digits.characters).map {
//        return Int(String($0))!
//    }
//    print(cs)
//    queue.append("")
//
//    for i in 0..<cs.count {
//        if cs[i] < 2 { continue }
//        var j = 0
//        let num = queue.count
//        while j < num {
//            let temp = queue.removeFirst()
//            for c in dict[cs[i]] {
//                queue.append(temp + c)
//            }
//            j += 1
//        }
//    }
//    
//    return queue
//}

// MARK: Recursion

//var len = 0
//var cs = [Int]()
//
//let dict = [[""], [""], ["a","b","c"], ["d","e","f"], ["g","h","i"], ["j","k","l"], ["m","n","o"], ["p","q","r","s"], ["t","u","v"], ["w","x","y","z"]]
//
//func letterCombinations(_ digits: String) -> [String] {
//
//    if digits.characters.count == 0 { return [] }
//
//    len = digits.characters.count
//
//    cs = Array(digits.characters).map {
//        return Int(String($0))!
//    }
//
//    let depth = 0
//
//    let res = dfs(depth, "")
//
//    return res
//}
//
//func dfs(_ depth: Int, _ current: String) -> [String] {
//    var d = depth
//
//    if d > len - 1 { return [current] }
//
//    if cs[d] < 2 {
//        d += 1
//        if d > len - 1 { return [current] }
//    }
//
//    var result = [String]()
//
//    for c in dict[cs[d]] {
//        let temp = dfs(d+1, current + c)
//        result.append(contentsOf: temp)
//    }
//    return result
//}

