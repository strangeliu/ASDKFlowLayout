//
//  TestNode.swift
//  Example
//
//  Created by Jian Liu on 2018/5/10.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import Foundation
import ASDKFlowLayout
import AsyncDisplayKit

class TextNode: ASDisplayNode {
    
    let background: ASDisplayNode = {
        let node = ASDisplayNode()
        node.backgroundColor = UIColor.red.withAlphaComponent(0.5)
        node.style.preferredSize = CGSize(width: 200, height: 300)
        return node
    }()
    
    let label: ASTextNode = {
        let node = ASTextNode()
        node.attributedText = NSAttributedString(string: "node.attributedText = NSAttributedString(string:")
        return node
    }()
    
    override init() {
        super.init()
        automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return background.center().overlay(label.center())
    }
    
    
    
    
    
    
}
