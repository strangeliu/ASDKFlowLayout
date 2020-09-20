//
//  ASDisplayNode+FlowLayout.swift
//  ASDKFlowLayout
//
//  Created by Jian Liu on 2018/5/3.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import Foundation
import AsyncDisplayKit

extension ASDisplayNode {
    // MARK: - Sizing
    
    @discardableResult
    public func width(_ width: ASDimension) -> Self {
        style.width = width
        return self
    }
    
    @discardableResult
    public func height(_ height: ASDimension) -> Self {
        style.height = height
        return self
    }
    
    @discardableResult
    public func minWidth(_ minWidth: ASDimension) -> Self {
        style.minWidth = minWidth
        return self
    }
    
    @discardableResult
    public func maxWidth(_ maxWidth: ASDimension) -> Self {
        style.maxWidth = maxWidth
        return self
    }
    
    @discardableResult
    public func minHeight(_ minHeight: ASDimension) -> Self {
        style.minHeight = minHeight
        return self
    }
    
    @discardableResult
    public func maxHeight(_ maxHeight: ASDimension) -> Self {
        style.maxHeight = maxHeight
        return self
    }
    
    // MARK: - Size Helpers
    
    @discardableResult
    public func minSize(_ minSize: CGSize) -> Self {
        style.minSize = minSize
        return self
    }
    
    @discardableResult
    public func maxSize(_ maxSize: CGSize) -> Self {
        style.maxSize = maxSize
        return self
    }
    
    @discardableResult
    public func preferredLayoutSize(_ preferredLayoutSize: ASLayoutSize) -> Self {
        style.preferredLayoutSize = preferredLayoutSize
        return self
    }
    
    @discardableResult
    public func minLayoutSize(_ minLayoutSize: ASLayoutSize) -> Self {
        style.minLayoutSize = minLayoutSize
        return self
    }
    
    @discardableResult
    public func maxLayoutSize(_ maxLayoutSize: ASLayoutSize) -> Self {
        style.maxLayoutSize = maxLayoutSize
        return self
    }
    
    // MARK: - ASStackLayoutElement
    @discardableResult
    public func spacingBefore(_ spacingBefore: CGFloat) -> Self {
        style.spacingBefore = spacingBefore
        return self
    }
    
    @discardableResult
    public func spacingAfter(_ spacingAfter: CGFloat) -> Self {
        style.spacingAfter = spacingAfter
        return self
    }
    
    @discardableResult
    public func flexGrow(_ flexGrow: CGFloat) -> Self {
        style.flexGrow = flexGrow
        return self
    }
    
    @discardableResult
    public func flexShrink(_ flexShrink: CGFloat) -> Self {
        style.flexShrink = flexShrink
        return self
    }
    
    @discardableResult
    public func flexBasis(_ flexBasis: ASDimension) -> Self {
        style.flexBasis = flexBasis
        return self
    }
    
    // Experimental
    @discardableResult
    public func ascender(_ ascender: CGFloat) -> Self {
        style.ascender = ascender
        return self
    }
    
    @discardableResult
    public func descender(_ descender: CGFloat) -> Self {
        style.descender = descender
        return self
    }
    
    // MARK: - ASAbsoluteLayoutElement
    @discardableResult
    public func layoutPosition(_ layoutPosition: CGPoint) -> Self {
        style.layoutPosition = layoutPosition
        return self
    }
}
