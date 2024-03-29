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
    
    public class func flexibleSpace(_ flexGrow: CGFloat = 1) -> ASLayoutSpec {
        return ASLayoutSpec().af_flexGrow(flexGrow)
    }
    
    public class func fixedSpace(_ space: CGFloat) -> ASLayoutSpec {
        return ASLayoutSpec().define({ layout in
            layout.style.preferredSize = CGSize(width: space, height: space)
        })
    }
}

extension ASLayoutElement {
    
    public func wrap() -> ASWrapperLayoutSpec {
        return ASWrapperLayoutSpec.wrapper(with: self)
    }
    
    public func insets(_ insets: UIEdgeInsets) -> ASInsetLayoutSpec {
        return ASInsetLayoutSpec(insets: insets, child: self)
    }
    
    public func insets(top: CGFloat, left: CGFloat, bottom: CGFloat, right: CGFloat) -> ASInsetLayoutSpec {
        return insets(UIEdgeInsets(top: top, left: left, bottom: bottom, right: right))
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
    
    @discardableResult public func ratio(_ ratio: CGFloat) -> ASRatioLayoutSpec {
        return ASRatioLayoutSpec(ratio: ratio, child: self)
    }
    
    public func relativePosition(horizontal: ASRelativeLayoutSpecPosition = .none, vertical: ASRelativeLayoutSpecPosition = .none, sizing: ASRelativeLayoutSpecSizingOption = []) -> ASRelativeLayoutSpec {
        return ASRelativeLayoutSpec.relativePositionLayoutSpec(withHorizontalPosition: horizontal, verticalPosition: vertical, sizingOption: sizing, child: self)
    }
}

extension ASLayoutElement {
    // MARK: - Sizing
    
    @discardableResult
    public func width(_ width: ASDimension) -> Self {
        style.width = width
        return self
    }
    
    @discardableResult
    public func styleHeight(_ height: ASDimension) -> Self {
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
    public func af_preferredSize(_ preferredSize: CGSize) -> Self {
        style.preferredSize = preferredSize
        return self
    }
    
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
    public func af_spacingBefore(_ spacingBefore: CGFloat) -> Self {
        style.spacingBefore = spacingBefore
        return self
    }
    
    @discardableResult
    public func af_spacingAfter(_ spacingAfter: CGFloat) -> Self {
        style.spacingAfter = spacingAfter
        return self
    }
    
    @discardableResult
    public func af_flexGrow(_ flexGrow: CGFloat) -> Self {
        style.flexGrow = flexGrow
        return self
    }
    
    @discardableResult
    public func af_flexShrink(_ flexShrink: CGFloat) -> Self {
        style.flexShrink = flexShrink
        return self
    }
    
    @discardableResult
    public func flexBasis(_ flexBasis: ASDimension) -> Self {
        style.flexBasis = flexBasis
        return self
    }
    
    @discardableResult
    public func af_alignSelf(_ alignSelf: ASStackLayoutAlignSelf) -> Self {
        style.alignSelf = alignSelf
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

extension Array where Element: ASLayoutElement {
    
    public func wrap() -> ASWrapperLayoutSpec {
        return ASWrapperLayoutSpec.wrapper(with: self)
    }
}

extension ASDimension: ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: UInt) {
        self = ASDimension(unit: .points, value: CGFloat(value))
    }
    
    public init(floatLiteral value: Double) {
        self = ASDimension(unit: .points, value: CGFloat(value))
    }
}
