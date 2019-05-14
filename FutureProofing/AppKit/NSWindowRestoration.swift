//
//  NSWindowRestoration.swift
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures

extension NSWindowRestoration {

    public static func restoreWindow(withIdentifier identifier: NSUserInterfaceItemIdentifier, state: NSCoder) -> Future<NSWindow?, AnyError> {
        return materialize { self.restoreWindow(withIdentifier: identifier, state: state, completionHandler: $0) }
    }

}
