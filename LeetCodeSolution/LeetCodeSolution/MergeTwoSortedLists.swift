//
//  MergeTwoSortedLists.swift
//  LeetCodeSolution
//
//  Created by apple on 22/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    if l1 == nil && l2 == nil {
        return nil
    } else if l1 == nil && l2 != nil {
        return l2
    } else if l1 != nil && l2 == nil {
        return l1
    }
    
    var n1 = l1
    var n2 = l2
    
    var flag = (n1?.val)! < (n2?.val)! ? true : false
    var n = ListNode(0)
    if flag {
        n = n1!
        n1 = n1?.next
    } else {
        n = n2!
        n2 = n2?.next
    }
    let head = n
    
    while n1 != nil || n2 != nil {
        
        if n1 == nil {
            n.next = n2
            break
        } else if n2 == nil {
            n.next = n1
            break
        }
        
        flag = (n1?.val)! < (n2?.val)! ? true : false
        if flag {
            n.next = n1
            n1 = n1?.next
        } else {
            n.next = n2
            n2 = n2?.next
        }
        n = n.next!
    }
    
    return head
}
