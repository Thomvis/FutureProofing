//
//  NSAnimationContext.swift
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures
import Result

extension NSAnimationContext {

    open class func runAnimationGroup(changes: (NSAnimationContext) -> Void)  -> Future<Void, NoError> {
        return materialize { self.runAnimationGroup(changes, completionHandler: $0) }
    }

}
