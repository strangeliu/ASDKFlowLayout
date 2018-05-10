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
    
    public func center(with centeringOptions: ASCenterLayoutSpecCenteringOptions = .XY, sizingOptions: ASCenterLayoutSpecSizingOptions = []) -> ASCenterLayoutSpec {
        return ASCenterLayoutSpec(centeringOptions: centeringOptions, sizingOptions: sizingOptions, child: self)
    }
    
    public func ratio(_ ratio: CGFloat) -> ASRatioLayoutSpec {
        return ASRatioLayoutSpec(ratio: ratio, child: self)
    }
    
    public func relativePosition(horizontal: ASRelativeLayoutSpecPosition = .none, vertical: ASRelativeLayoutSpecPosition = .none, sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec.relativePositionLayoutSpec(withHorizontalPosition: horizontal, verticalPosition: vertical, sizingOption: sizing, child: self)
    }
}

extension ASDisplayNode {
    // MARK: - Sizing
    
    public func width(_ width: ASDimension) -> ASDisplayNode {
        style.width = width
        return self
    }
    
    public func height(_ height: ASDimension) -> ASDisplayNode {
        style.height = height
        return self
    }
    
    public func minWidth(_ minWidth: ASDimension) -> ASDisplayNode {
        style.minWidth = minWidth
        return self
    }
    
    public func maxWidth(_ maxWidth: ASDimension) -> ASDisplayNode {
        style.maxWidth = maxWidth
        return self
    }
    
    public func minHeight(_ minHeight: ASDimension) -> ASDisplayNode {
        style.minHeight = minHeight
        return self
    }
    
    public func maxHeight(_ maxHeight: ASDimension) -> ASDisplayNode {
        style.maxHeight = maxHeight
        return self
    }
    
    // MARK: - Size Helpers
    public func preferredSize(_ preferredSize: CGSize) -> ASDisplayNode {
        style.preferredSize = preferredSize
        return self
    }
    
    public func minSize(_ minSize: CGSize) -> ASDisplayNode {
        style.minSize = minSize
        return self
    }
    
    public func maxSize(_ maxSize: CGSize) -> ASDisplayNode {
        style.maxSize = maxSize
        return self
    }
    
    public func preferredLayoutSize(_ preferredLayoutSize: ASLayoutSize) -> ASDisplayNode {
        style.preferredLayoutSize = preferredLayoutSize
        return self
    }
    
    public func minLayoutSize(_ minLayoutSize: ASLayoutSize) -> ASDisplayNode {
        style.minLayoutSize = minLayoutSize
        return self
    }
    
    public func maxLayoutSize(_ maxLayoutSize: ASLayoutSize) -> ASDisplayNode {
        style.maxLayoutSize = maxLayoutSize
        return self
    }
    
    // MARK: - ASStackLayoutElement
    public func spacingBefore(_ spacingBefore: CGFloat) -> ASDisplayNode {
        style.spacingBefore = spacingBefore
        return self
    }
    
    public func spacingAfter(_ spacingAfter: CGFloat) -> ASDisplayNode {
        style.spacingAfter = spacingAfter
        return self
    }
    
    public func flexGrow(_ flexGrow: CGFloat) -> ASDisplayNode {
        style.flexGrow = flexGrow
        return self
    }
    
    public func flexShrink(_ flexShrink: CGFloat) -> ASDisplayNode {
        style.flexShrink = flexShrink
        return self
    }
    
    public func flexBasis(_ flexBasis: ASDimension) -> ASDisplayNode {
        style.flexBasis = flexBasis
        return self
    }
    
    public func alignSelf(_ alignSelf: ASStackLayoutAlignSelf) -> ASDisplayNode {
        style.alignSelf = alignSelf
        return self
    }
    
    // Experimental
    
    public func ascender(_ ascender: CGFloat) -> ASDisplayNode {
        style.ascender = ascender
        return self
    }
    
    public func descender(_ descender: CGFloat) -> ASDisplayNode {
        style.descender = descender
        return self
    }
    
    // MARK: - ASAbsoluteLayoutElement
    public func layoutPosition(_ layoutPosition: CGPoint) -> ASDisplayNode {
        style.layoutPosition = layoutPosition
        return self
    }
}
