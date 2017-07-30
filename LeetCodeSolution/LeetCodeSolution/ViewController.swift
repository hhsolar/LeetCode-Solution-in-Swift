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
        
        
        let root = TreeNode(2)
        root.left = TreeNode(5)
        root.left = TreeNode(3)
//        let A = ["EEEEE","EEMEE","EEEEE","EEEEE"]
//        
//        let S = A.map {
//            return Array($0.characters)
//        }
//            
        
        print(findFrequentTreeSum(root))
    }

}



