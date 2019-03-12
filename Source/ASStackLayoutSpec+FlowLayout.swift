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
    
    public func flexWrap(_ wrap: Bool) -> ASStackLayoutSpec {
        self.flexWrap = wrap ? .wrap : .noWrap
        return self
    }
    
    public func lineSpacing(_ lineSpacing: CGFloat) -> ASStackLayoutSpec {
        self.lineSpacing = lineSpacing
        return self
    }
}

extension ASStackLayoutSpec {
    
    @discardableResult
    public func addItem<Element: ASLayoutElement>(_ item: Element) -> Element {
        if var children = children {
            children.append(item)
            self.children = children
        } else {
            children = [item]
        }
        return item
    }
    
    @discardableResult
    public func addItem(_ creator: () -> ASLayoutElement) -> Self {
        addItem(creator())
        return self
    }
    
    @discardableResult
    public func addItems(_ items: [ASLayoutElement]) -> Self {
        if var children = children {
            children += items
            self.children = children
        } else {
            children = items
        }
        return self
    }
    
    @discardableResult
    public func invert() -> Self {
        if let children = children {
            self.children = children.reversed()
        }
        return self
    }
    
    @discardableResult
    public func addStack(_ direction: ASStackLayoutDirection) -> ASStackLayoutSpec {
        let stack = ASStackLayoutSpec()
        stack.direction = direction
        addItem(stack)
        return stack
    }
    
    @discardableResult
    public func addFlexibleSpace() -> Self {
        addItem(ASLayoutSpec.flexibleSpace())
        return self
    }
    
    @discardableResult
    public func addFixedSpace(_ space: CGFloat) -> Self {
        addItem(ASLayoutSpec.fixedSpace(space))
        return self
    }
}
