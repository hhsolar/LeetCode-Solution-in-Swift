//
//  MergeKSortedLists.swift
//  LeetCodeSolution
//
//  Created by apple on 22/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

// MARK: Merge sort

func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    if lists.count == 0 { return nil }
    return mergeSort(lists, start: 0, end: lists.count - 1)
}

func mergeSort(_ lists: [ListNode?], start: Int, end: Int) -> ListNode? {
    
    if start >= end { return lists[start] }
    let mid = start + (end - start) / 2
    let l1 = mergeSort(lists, start: start, end: mid)
    let l2 = mergeSort(lists, start: mid + 1, end: end)
    
    return mergeTwoLists(l1, l2)
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    guard let l1 = l1 else { return l2 }
    guard let l2 = l2 else { return l1 }
    
    if l1.val < l2.val {
        l1.next = mergeTwoLists(l1.next, l2)
        return l1
    }
    
    l2.next = mergeTwoLists(l1, l2.next)
    return l2
    
}

// MARK: Min Heap

//func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//    var heap = Heap<ListNode>() {
//        $0.val < $1.val
//    }
//    
//    for l in lists {
//        if let validList = l {
//            heap.insert(validList)
//        }
//    }
//    
//    if heap.isEmpty { return nil }
//    
//    let dummyNode = ListNode(0)
//    var node = dummyNode
//    while let checkedNode = heap.peak() {
//        node.next = ListNode(checkedNode.val)
//        node = node.next!
//        if let validNode = checkedNode.next {
//            if validNode.val == node.val {
//                heap.replaceHead(value: validNode)
//            } else {
//                heap.remove()
//                heap.insert(validNode)
//            }
//        } else {
//            heap.remove()
//        }
//    }
//    return dummyNode.next
//}
