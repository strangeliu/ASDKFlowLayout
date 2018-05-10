//
//  ASAbsoluteLayoutSpec+FlowLayout.swift
//  ASDKFlowLayout
//
//  Created by Jian Liu on 2018/5/3.
//  Copyright © 2018年 com.github.strangeliu. All rights reserved.
//

import Foundation
import AsyncDisplayKit

extension ASAbsoluteLayoutSpec {

    public func sizing(_ sizing: ASAbsoluteLayoutSpecSizing) -> ASAbsoluteLayoutSpec {
        self.sizing = sizing
        return self
    }
}
