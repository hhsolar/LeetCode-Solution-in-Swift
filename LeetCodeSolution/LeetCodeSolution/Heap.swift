//
//  Heap.swift
//  LeetCodeSolution
//
//  Created by apple on 22/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import Foundation

/**
 *  A heap is a type of tree data structure with 2 characteristics:
 *  1. Parent nodes are either greater or less than each of their children (called max heaps and min heaps respectively)
 *  2. Only the top item is accessible (greatest or smallest)
 *
 *  This results in a data structure that stores n item in O(n) space. Both insertion and deletion take O(lg(n)) time (amortized)
 */

protocol HeapProtocol {
    associatedtype Value
    mutating func insert(_ value: Value)
    mutating func remove() -> Value?
    func peak() -> Value?
    var count: Int { get }
    var isEmpty: Bool { get }
}

public struct Heap<T: Comparable> : HeapProtocol {
    
    typealias Value = T
    
    fileprivate var mem: [T]
    
    fileprivate var isOrderedBefore: (T, T) -> Bool
    
    // Init with sorting method
    init(sort: @escaping (T, T) -> Bool) {
        self.isOrderedBefore = sort
        self.mem = [T]()
    }
    
    // Init with sorting method and an array
    init(array: [T], sort: @escaping (T, T) -> Bool) {
        self.init(sort: sort)
        mem.reserveCapacity(array.count)
        for value in array {
            insert(value)
        }
    }
    
    public var isEmpty: Bool {
        return mem.isEmpty
    }
    
    public var count: Int {
        return mem.count
    }
    
    public static func  arrayIsMaxHeap(_ array: [T]) -> Bool {
        if array.count == 0 {
            return false
        }
        for i in 0..<array.count {
            let leftChild = i * 2 + 1
            let rightChild = i * 2 + 2
            if leftChild < array.endIndex {
                if array[leftChild] > array[i] {
                    return false
                }
            }
            if rightChild < array.endIndex {
                if array[rightChild] > array[i] {
                    return false
                }
            }
        }
        return true
    }
    
    public mutating func insert(_ value: T) {
        mem.append(value)
        shiftUp(index: mem.count - 1)
    }
    
    @discardableResult public mutating func remove() -> T? {
        if self.isEmpty {
            return nil
        }
        
        let removedValue = mem[0]
        (mem[0], mem[count - 1]) = (mem[count - 1], mem[0])
        mem.removeLast()
        
        shiftDown()
        
        return removedValue
    }
    
    public func peak() -> T? {
        guard self.count > 0 else { return nil }
        return mem[0]
    }
    
    public mutating func replaceHead(value: T) {
        mem[0] = value
    }
    
    fileprivate func parentIndex(childIndex: Int) -> Int {
        return (childIndex - 1) / 2
    }
    
    fileprivate func firstChildIndex(_ index: Int) -> Int {
        return index * 2 + 1
    }
    
    @inline(__always) fileprivate func validIndex(_ index: Int) -> Bool {
        return index < mem.endIndex
    }
    
    fileprivate mutating func shiftUp(index: Int) {
        var currentIndex = index
        var currentParentIndex = parentIndex(childIndex: index)
        while currentIndex > 0 && isOrderedBefore(mem[currentIndex], mem[currentParentIndex]) {
            (mem[currentParentIndex], mem[currentIndex]) = (mem[currentIndex], mem[currentParentIndex])
            currentIndex = currentParentIndex
            currentParentIndex = parentIndex(childIndex: currentIndex)
        }
    }
    
    fileprivate mutating func shiftDown(index: Int = 0) {
        var parentIndex = index
        var leftChildIndex = firstChildIndex(parentIndex)
        
        while (validIndex(leftChildIndex)) {
            let rightChildIndex = leftChildIndex + 1
            var highestIndex = leftChildIndex
            
            if validIndex(rightChildIndex) {
                let left = mem[leftChildIndex]
                let right = mem[rightChildIndex]
                highestIndex = (isOrderedBefore(left, right)) ? leftChildIndex : rightChildIndex
            }
            
            let parent = mem[parentIndex]
            let biggerChild = mem[highestIndex]
            if isOrderedBefore(parent, biggerChild) {
                return
            }
            
            (mem[parentIndex], mem[highestIndex]) = (mem[highestIndex], mem[parentIndex])
            
            parentIndex = highestIndex
            leftChildIndex = firstChildIndex(parentIndex)
        }
    }
}
