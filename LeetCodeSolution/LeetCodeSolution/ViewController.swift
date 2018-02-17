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
        
        
//        let root1 = TreeNode(1)
//        root1.left = TreeNode(3)
//        root1.right = TreeNode(2)
//        root1.left?.left = TreeNode(5)
//        
//        let root2 = TreeNode(2)
//        root2.left = TreeNode(1)
//        root2.right = TreeNode(3)
//        root2.left?.left = nil
//        root2.left?.right = TreeNode(4)
//        root2.right?.right = TreeNode(7)
//        let A = ["EEEEE","EEMEE","EEEEE","EEEEE"]
//        
//        let S = A.map {
//            return Array($0.characters)
//        }
//            
//        let r = mergeTrees(root1, root2)
        var n1 = 1, n2 = 2
        print(n1, n2)
        swap(&n1, &n2)
        print(n1, n2)
    }
    
    func swap(_ n1: inout Int, _ n2: inout Int) {
        let temp = n2
        n2 = n1
        n1 = temp
    }

}



