//
//  206_ReverseLinkedList.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    
    guard let h = head else { return nil }
    guard let n = h.next else { return h }
    
    var a = n.next
    var b = n
    var c = h
    h.next = nil
    
    while a != nil {
        b.next = c
        c = b
        b = a!
        a = a!.next
    }
    b.next = c
    
    return b
    
}
