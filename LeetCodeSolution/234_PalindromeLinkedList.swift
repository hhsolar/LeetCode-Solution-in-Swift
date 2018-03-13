//
//  234_PalindromeLinkedList.swift
//  LeetCodeSolution
//
//  Created by apple on 4/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func isPalindrome(_ head: ListNode?) -> Bool {
    guard let h = head else { return true }
    guard let hn = h.next else { return true }
    
    var slow = h.next, fast = hn.next
    var count = 1
    while let f = fast, let fn = f.next, let s = slow {
        fast = fn.next
        slow = s.next
        count += 1
    }
    
    guard count > 1 else {
        if let f = fast {
            return h.val == f.val
        } else {
            return h.val == hn.val
        }
    }
    
    var secondHead = reverseList(slow)
    var firstHead = head
    while let f = firstHead, let s = secondHead {
        if f.val != s.val { return false }
        firstHead = f.next
        secondHead = s.next
    }
    
    return true
}
