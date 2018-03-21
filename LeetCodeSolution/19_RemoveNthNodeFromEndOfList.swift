//
//  19_RemoveNthNodeFromEndOfList.swift
//  LeetCodeSolution
//
//  Created by apple on 19/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard head != nil else { return nil }
    var first = head
    var i = 0
    while i < n {
        first = first!.next
        i += 1
    }
    guard first != nil else { return head!.next }
    var second = head
    while first!.next != nil {
        first = first!.next
        second = second!.next
    }
    let temp = second!.next
    second!.next = temp!.next
    temp!.next = nil
    return head
}
