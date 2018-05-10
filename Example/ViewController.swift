//
//  ViewController.swift
//  Example
//
//  Created by Jian Liu on 2018/5/10.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import UIKit
import AsyncDisplayKit
import ASDKFlowLayout

class ViewController: UIViewController {
    
    let node = TextNode()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubnode(node)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        node.frame = view.bounds
    }

}

