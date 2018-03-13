//
//  28_ImplementStrStr().swift
//  LeetCodeSolution
//
//  Created by apple on 4/3/2018.
//  Copyright © 2018 greatwall. All rights reserved.
//

import Foundation

func strStr(_ haystack: String, _ needle: String) -> Int {
    let hLen = haystack.count, nLen = needle.count
    guard nLen > 0 else { return 0 }
    guard hLen >= nLen else { return -1 }
    
    let hc = Array(haystack), nc = Array(needle)
    var i = 0
    while i <= (hLen-nLen) {
        if hc[i] == nc[0] {
            var j = 1
            while j < nLen {
                if hc[i+j] != nc[j] { break }
                j += 1
            }
            guard j < nLen else { return i }
        }
        i += 1
    }
    return -1
}
