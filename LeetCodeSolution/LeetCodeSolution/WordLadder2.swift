//
//  WordLadder2.swift
//  LeetCodeSolution
//
//  Created by apple on 24/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation
//
//var wordSet = Set<String>()
//var ladders = [[String]]()
//
//func findLadders(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> [[String]] {
//    
//    for w in wordList { wordSet.insert(w) }
//    
//    guard wordSet.contains(endWord) else { return [] }
//    
//    wordSet.remove(beginWord)
//    
//    var queue = [String](), level = 1, flag = false
//    
//    queue.append(beginWord)
//    
//    while queue.count > 0 {
//        
//        for _ in 0..<queue.count {
//            let w = queue.removeFirst()
//            let neighbors = findNeighbors(w, level)
//            for n in neighbors {
//                if n == endWord {
//                    flag = true
//                }
//            }
//        }
//        
//        if flag {
//            for i in 0..<ladders.count {
//                ladders[i].insert(beginWord, at: 0)
//            }
//            return ladders
//        }
//        level += 1
//    }
//    return []
//}
//
//func findNeighbors(_ word: String, _ level: Int) -> [String] {
//    var neighbors = [String]()
//    let alpahabetArray = Array("abcdefghijklmnopqrstuvwxyz".characters)
//    
//    for index in 0..<word.characters.count {
//        
//        var wordString = Array(word.characters)
//        for i in 0..<alpahabetArray.count {
//            if wordString[index] == alpahabetArray[i] { continue }
//            wordString[index] = alpahabetArray[i]
//            let newWord = String(wordString)
//            if wordSet.contains(newWord) {
//                neighbors.append(newWord)
//                for i in 0..<ladders.count {
//                    if ladders[i].count > 0, ladders[i][level - 1] == word {
//                        ladders[i].append(newWord)
//                    } else if ladders[i].count == 0 {
//                        ladders.append([newWord])
//                    } else if ladders[i].count > 0, ladders[i][level - 1] != word {
//                        ladders.remove(at: index)
//                    }
//                }
//            }
//        }
//    }
//    return neighbors
//}
