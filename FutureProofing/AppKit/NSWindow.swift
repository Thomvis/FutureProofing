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

public extension NSWindow {
    
    public func beginSheet(sheetWindow: NSWindow) -> Future<NSModalResponse, NoError> {
        return future { self.beginSheet(sheetWindow, completionHandler: $0) }
    }

    public func beginCriticalSheet(sheetWindow: NSWindow) -> Future<NSModalResponse, NoError> {
        return future { self.beginCriticalSheet(sheetWindow, completionHandler: $0) }
    }

}