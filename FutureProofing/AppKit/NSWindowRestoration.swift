//
//  NSWindowRestoration.swift
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures
import Result

public extension NSWindowRestoration {

    public static func restoreWindowWithIdentifier(identifier: String, state: NSCoder) -> Future<NSWindow?, BrightFuturesError<NSError>> {
        return future { self.restoreWindowWithIdentifier(identifier, state: state, completionHandler: $0) }
    }

}