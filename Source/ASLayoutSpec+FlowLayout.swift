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
    
    public func children(_ children: [ASLayoutElement]) -> ASLayoutSpec {
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
    
    public func width(_ width: ASDimension) -> ASLayoutSpec {
        style.width = width
        return self
    }
    
    public func height(_ height: ASDimension) -> ASLayoutSpec {
        style.height = height
        return self
    }
    
    public func minWidth(_ minWidth: ASDimension) -> ASLayoutSpec {
        style.minWidth = minWidth
        return self
    }
    
    public func maxWidth(_ maxWidth: ASDimension) -> ASLayoutSpec {
        style.maxWidth = maxWidth
        return self
    }
    
    public func minHeight(_ minHeight: ASDimension) -> ASLayoutSpec {
        style.minHeight = minHeight
        return self
    }
    
    public func maxHeight(_ maxHeight: ASDimension) -> ASLayoutSpec {
        style.maxHeight = maxHeight
        return self
    }
    
    // MARK: - Size Helpers
    public func preferredSize(_ preferredSize: CGSize) -> ASLayoutSpec {
        style.preferredSize = preferredSize
        return self
    }
    
    public func minSize(_ minSize: CGSize) -> ASLayoutSpec {
        style.minSize = minSize
        return self
    }
    
    public func maxSize(_ maxSize: CGSize) -> ASLayoutSpec {
        style.maxSize = maxSize
        return self
    }
    
    public func preferredLayoutSize(_ preferredLayoutSize: ASLayoutSize) -> ASLayoutSpec {
        style.preferredLayoutSize = preferredLayoutSize
        return self
    }
    
    public func minLayoutSize(_ minLayoutSize: ASLayoutSize) -> ASLayoutSpec {
        style.minLayoutSize = minLayoutSize
        return self
    }
    
    public func maxLayoutSize(_ maxLayoutSize: ASLayoutSize) -> ASLayoutSpec {
        style.maxLayoutSize = maxLayoutSize
        return self
    }
    
    // MARK: - ASStackLayoutElement
    public func spacingBefore(_ spacingBefore: CGFloat) -> ASLayoutSpec {
        style.spacingBefore = spacingBefore
        return self
    }
    
    public func spacingAfter(_ spacingAfter: CGFloat) -> ASLayoutSpec {
        style.spacingAfter = spacingAfter
        return self
    }
    
    public func flexGrow(_ flexGrow: CGFloat) -> ASLayoutSpec {
        style.flexGrow = flexGrow
        return self
    }
    
    public func flexShrink(_ flexShrink: CGFloat) -> ASLayoutSpec {
        style.flexShrink = flexShrink
        return self
    }
    
    public func flexBasis(_ flexBasis: ASDimension) -> ASLayoutSpec {
        style.flexBasis = flexBasis
        return self
    }
    
    public func alignSelf(_ alignSelf: ASStackLayoutAlignSelf) -> ASLayoutSpec {
        style.alignSelf = alignSelf
        return self
    }
    
    // Experimental
    
    public func ascender(_ ascender: CGFloat) -> ASLayoutSpec {
        style.ascender = ascender
        return self
    }
    
    public func descender(_ descender: CGFloat) -> ASLayoutSpec {
        style.descender = descender
        return self
    }
    
    // MARK: - ASAbsoluteLayoutElement
    public func layoutPosition(_ layoutPosition: CGPoint) -> ASLayoutSpec {
        style.layoutPosition = layoutPosition
        return self
    }
}

