//
//  Extension.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

// MARK: - Sequence
extension Sequence where Element: Hashable {
    var frequency : [Element: Int] {
        let frequencyPairs = self.map { ($0, 1) }
        return Dictionary(frequencyPairs, uniquingKeysWith: +)
    }
}

// MARK: - TreeNode
extension TreeNode {
    var isLeafNode: Bool {
        return self.left == nil && self.right == nil
    }
}

// MARK: - Character
extension Character {
    var ascii: UInt32 {
        return self.unicodeScalars.first!.value
    }
    
    init(_ ascii: UInt32) {
        self.init(UnicodeScalar(ascii)!)
    }
}
