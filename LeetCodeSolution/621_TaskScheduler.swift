//
//  621_TaskScheduler.swift
//  LeetCodeSolution
//
//  Created by apple on 15/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func leastInterval(_ tasks: [Character], _ n: Int) -> Int {
    guard tasks.count > 0 else { return 0 }
    let values = tasks.frequency.sorted { l, r in l.value > r.value }.map { $0.value }
    var count = 0, i = 0
    let len = values.count
    while i < len, values[i] == values[0] {
        count += 1
        i += 1
    }
    return max(tasks.count, (values[0] - 1) * (n + 1) + count)
}
