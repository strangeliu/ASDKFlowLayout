//
//  ASStackLayoutSpec+FlowLayout.swift
//  ASDKFlowLayout
//
//  Created by Jian Liu on 2018/5/3.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import Foundation
import AsyncDisplayKit

extension ASStackLayoutSpec {
    
    public func spacing(_ spacing: CGFloat) -> ASStackLayoutSpec {
        self.spacing = spacing
        return self
    }
    
    public func justifyContent(_ justifyContent: ASStackLayoutJustifyContent) -> ASStackLayoutSpec {
        self.justifyContent = justifyContent
        return self
    }
    
    public func alignItems(_ alignItems: ASStackLayoutAlignItems) -> ASStackLayoutSpec {
        self.alignItems = alignItems
        return self
    }
}
