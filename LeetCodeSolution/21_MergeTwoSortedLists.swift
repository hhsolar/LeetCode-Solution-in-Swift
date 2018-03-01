//
//  21_MergeTwoSortedLists.swift
//  LeetCodeSolution
//
//  Created by apple on 19/2/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let ll1 = l1 else { return l2 }
    guard let ll2 = l2 else { return l1 }
    
    if ll1.val < ll2.val {
        ll1.next = mergeTwoLists(ll1.next, ll2)
        return ll1
    } else {
        ll2.next = mergeTwoLists(ll1, ll2.next)
        return ll2
    }
}
