//
//  206_ReverseLinkedList.swift
//  LeetCodeSolution
//
//  Created by apple on 18/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    var cur = head
    var pre: ListNode? = nil
    
    while let c = cur {
        let next = c.next
        c.next = pre
        pre = c
        cur = next
    }
    
    return pre
}
