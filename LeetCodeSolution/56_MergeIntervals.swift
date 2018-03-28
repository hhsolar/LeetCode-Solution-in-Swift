//
//  56_MergeIntervals.swift
//  LeetCodeSolution
//
//  Created by apple on 25/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

public class Interval {
    public var start: Int
    public var end: Int
    public init(_ start: Int, _ end: Int) {
        self.start = start
        self.end = end
    }
}

func merge(_ intervals: [Interval]) -> [Interval] {
    guard intervals.count > 1 else { return intervals }
    let inter = intervals.sorted {l, r in l.start < r.start}
    var left = 0, right = 1
    var res:[Interval] = []
    var temp = Interval(inter[left].start, inter[left].end)
    while right < intervals.count {
        if temp.end < inter[right].start {
            res.append(temp)
            right += 1
            left = right - 1
            temp = Interval(inter[left].start, inter[left].end)
        } else {
            if temp.end < inter[right].end {
                temp.end = inter[right].end
            }
            right += 1
        }
    }
    res.append(temp)
    return res
}
