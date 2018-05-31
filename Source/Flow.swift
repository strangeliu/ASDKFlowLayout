//
//  Flow.swift
//  ASDKFlowLayout
//
//  Created by Jian Liu on 2018/5/3.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import Foundation
import AsyncDisplayKit

public struct Flow<Base> {
    
    public let base: Base
    
    public init(base: Base) {
        self.base = base
    }
}

extension ASDisplayNode {
    
    public var flow: Flow<ASDisplayNode> {
        return Flow(base: self)
    }
    
    public func define(_ define: (ASDisplayNode) -> Void) -> ASDisplayNode {
        define(self)
        return self
    }
}

extension ASLayoutSpec {
    
    public var flow: Flow<ASLayoutSpec> {
        return Flow(base: self)
    }
}

extension ASLayoutElement {
    
    @discardableResult
    public func define(_ define: (Self) -> Void) -> Self {
        define(self)
        return self
    }
}
