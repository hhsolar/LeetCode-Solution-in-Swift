//
//  wordLadder.swift
//  LeetCodeSolution
//
//  Created by apple on 24/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    
    var queue = [String]()
    
    queue.append(beginWord)
    
    var wordSet = Set<String>()
    for w in wordList {
        wordSet.insert(w)
    }
    var level = 1
    while queue.count > 0 {
        for _ in 0..<queue.count {
            let word = queue.removeFirst()
            if word == endWord { return level }
            for n in findNeighbors(word, &wordSet) {
                queue.append(n)
            }
        }
        level += 1
    }
    return 0
}

func findNeighbors(_ word: String, _ wordList: inout Set<String>) -> [String] {
    var neighbors = [String]()
    let alpahabetArray = Array("abcdefghijklmnopqrstuvwxyz".characters)
    
    for index in 0..<word.characters.count {
        
        var sc = Array(word.characters)
        for i in 0..<alpahabetArray.count {
            if sc[index] == alpahabetArray[i] { continue }
            sc[index] = alpahabetArray[i]
            let newWord = String(sc)
            if wordList.contains(newWord) {
                neighbors.append(newWord)
                wordList.remove(newWord)
            }
        }
    }
    return neighbors
}

