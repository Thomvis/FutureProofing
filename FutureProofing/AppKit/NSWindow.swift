//
//  NSWindow.swift
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures
import Result

extension NSWindow {

    open func beginSheet(sheetWindow: NSWindow) -> Future<NSModalResponse, NoError> {
        return materialize { self.beginSheet(sheetWindow, completionHandler: $0) }
    }

    open func beginCriticalSheet(sheetWindow: NSWindow) -> Future<NSModalResponse, NoError> {
        return materialize { self.beginCriticalSheet(sheetWindow, completionHandler: $0) }
    }

}
