//
//  ViewController.swift
//  LeetCodeSolution
//
//  Created by apple on 21/7/2017.
//  Copyright © 2017 greatwall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let s = [1,2,4,5,6,7]
        //        let target = 6
        
//        let nums = [9, 0, -2]
        //        print(threeSum(nums))
//        for c in s {
//            cs.append(Array(c.characters))
//        }
        
        let h = findKthLargest(s, 5000)
        print(h)
    }

}



