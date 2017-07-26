//
//  ReverseLinkedList.swift
//  LeetCodeSolution
//
//  Created by apple on 25/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {
    
    guard var head = head else { return nil }
    
    guard head.next != nil else { return head }
    
    var newHead = head.next!
    guard head.next!.next != nil else {
        newHead.next = head
        head.next = nil
        return newHead
    }
    
    var temp = ListNode(0)
    let oldHead = head
    while newHead.next != nil {
        temp = newHead
        newHead = newHead.next!
        temp.next = head
        head = temp
    }
    newHead.next = head
    oldHead.next = nil
    
    return newHead
}
