//
//  addTwoNumber.swift
//  aa
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

func AddTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    return helper(l1, l2, 0)
}

func helper(_ l1: ListNode?, _ l2: ListNode?, _ carrier: Int) -> ListNode? {
    if l1 == nil && l2 == nil && carrier == 0 {
        return nil
    } else if l1 == nil && l2 == nil && carrier != 0 {
        return ListNode(carrier)
    }

    var value = carrier
    let result = ListNode(value)

    if let l = l1 {
        value += l.val
    }

    if let ll = l2 {
        value += ll.val
    }

    result.val = value % 10

    if l1 != nil || l2 != nil {
        let more = helper(l1 == nil ? nil : l1?.next, l2 == nil ? nil : l2?.next, value >= 10 ? 1 : 0)
        result.next = more
    }
    return result
}

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
