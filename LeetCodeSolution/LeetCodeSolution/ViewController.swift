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
        
        
        //        let nums = [-2,0,3,-1,4,0,3,4,1,1,1,-3,-5,4,0]
        //        let target = 6
        
//        let nums = [9, 0, -2]
        //        print(threeSum(nums))
//        for c in s {
//            cs.append(Array(c.characters))
//        }
        
        let n1 = ListNode(1)
        let n2 = ListNode(2)
        let n3 = ListNode(3)
        n1.next = n2
        n2.next = n3
        
        let h = reverseList(n1)
        
        print(h?.val, h?.next?.val, h?.next?.next?.val)
    }

}

