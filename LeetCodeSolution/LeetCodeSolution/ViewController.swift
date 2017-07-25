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
        
        var cs = [[Character]]()
        let s = ["11110","11010","11000","00000"]        //        print(nums.sorted())
        //        print(threeSum(nums))
        for c in s {
            cs.append(Array(c.characters))
        }
        
        print(numIslands(cs))
    }

}

