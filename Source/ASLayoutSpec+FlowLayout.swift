//
//  ASLayoutSpec+FlowLayout.swift
//  ASDKFlowLayout
//
//  Created by Jian Liu on 2018/5/3.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import Foundation
import AsyncDisplayKit

extension ASLayoutSpec {
    
    @discardableResult
    public func children(_ children: [ASLayoutElement]) -> Self {
        self.children = children
        return self
    }
}

extension ASLayoutSpec {
    
    public class func spacer() -> ASLayoutSpec {
        return ASLayoutSpec().flexGrow(1)
    }
}

extension ASLayoutSpec {
    
    public func wrap() -> ASWrapperLayoutSpec {
        return ASWrapperLayoutSpec.wrapper(with: self)
    }
    
    public func inset(_ insets: UIEdgeInsets) -> ASInsetLayoutSpec {
        return ASInsetLayoutSpec(insets: insets, child: self)
    }
    
    public func overlay(_ overlay: ASLayoutElement) -> ASOverlayLayoutSpec {
        return ASOverlayLayoutSpec(child: self, overlay: overlay)
    }
    
    public func background(_ background: ASLayoutElement) -> ASBackgroundLayoutSpec {
        return ASBackgroundLayoutSpec(child: self, background: background)
    }
    
    public func center(with centeringOptions: ASCenterLayoutSpecCenteringOptions = [], sizingOptions: ASCenterLayoutSpecSizingOptions = []) -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec(centeringOptions: centeringOptions, sizingOptions: sizingOptions, child: self)
    }
    
    public func ratio(_ ratio: CGFloat) -> ASRatioLayoutSpec {
        return ASRatioLayoutSpec(ratio: ratio, child: self)
    }
    
    public func withRelativePositionHorizontal(_ horizontal: ASRelativeLayoutSpecPosition = .none, vertical: ASRelativeLayoutSpecPosition = .none, sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec.relativePositionLayoutSpec(withHorizontalPosition: horizontal, verticalPosition: vertical, sizingOption: sizing, child: self)
    }
}

extension ASLayoutSpec {
    // MARK: - Sizing
    
    public func width(_ width: ASDimension) -> Self {
        style.width = width
        return self
    }
    
    public func height(_ height: ASDimension) -> Self {
        style.height = height
        return self
    }
    
    public func minWidth(_ minWidth: ASDimension) -> Self {
        style.minWidth = minWidth
        return self
    }
    
    public func maxWidth(_ maxWidth: ASDimension) -> Self {
        style.maxWidth = maxWidth
        return self
    }
    
    public func minHeight(_ minHeight: ASDimension) -> Self {
        style.minHeight = minHeight
        return self
    }
    
    public func maxHeight(_ maxHeight: ASDimension) -> Self {
        style.maxHeight = maxHeight
        return self
    }
    
    // MARK: - Size Helpers
    public func preferredSize(_ preferredSize: CGSize) -> Self {
        style.preferredSize = preferredSize
        return self
    }
    
    public func minSize(_ minSize: CGSize) -> Self {
        style.minSize = minSize
        return self
    }
    
    public func maxSize(_ maxSize: CGSize) -> Self {
        style.maxSize = maxSize
        return self
    }
    
    public func preferredLayoutSize(_ preferredLayoutSize: ASLayoutSize) -> Self {
        style.preferredLayoutSize = preferredLayoutSize
        return self
    }
    
    public func minLayoutSize(_ minLayoutSize: ASLayoutSize) -> Self {
        style.minLayoutSize = minLayoutSize
        return self
    }
    
    public func maxLayoutSize(_ maxLayoutSize: ASLayoutSize) -> Self {
        style.maxLayoutSize = maxLayoutSize
        return self
    }
    
    // MARK: - ASStackLayoutElement
    public func spacingBefore(_ spacingBefore: CGFloat) -> Self {
        style.spacingBefore = spacingBefore
        return self
    }
    
    public func spacingAfter(_ spacingAfter: CGFloat) -> Self {
        style.spacingAfter = spacingAfter
        return self
    }
    
    public func flexGrow(_ flexGrow: CGFloat) -> Self {
        style.flexGrow = flexGrow
        return self
    }
    
    public func flexShrink(_ flexShrink: CGFloat) -> Self {
        style.flexShrink = flexShrink
        return self
    }
    
    public func flexBasis(_ flexBasis: ASDimension) -> Self {
        style.flexBasis = flexBasis
        return self
    }
    
    public func alignSelf(_ alignSelf: ASStackLayoutAlignSelf) -> Self {
        style.alignSelf = alignSelf
        return self
    }
    
    // Experimental
    
    public func ascender(_ ascender: CGFloat) -> Self {
        style.ascender = ascender
        return self
    }
    
    public func descender(_ descender: CGFloat) -> Self {
        style.descender = descender
        return self
    }
    
    // MARK: - ASAbsoluteLayoutElement
    public func layoutPosition(_ layoutPosition: CGPoint) -> Self {
        style.layoutPosition = layoutPosition
        return self
    }
}

