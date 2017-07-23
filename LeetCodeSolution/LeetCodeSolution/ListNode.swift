//
//  ListNode.swift
//  LeetCodeSolution
//
//  Created by apple on 22/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

// Copy from leetCode

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: Comparable { }
 
public func < (lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.val < rhs.val
}
    
public func == (lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.val == rhs.val
}
