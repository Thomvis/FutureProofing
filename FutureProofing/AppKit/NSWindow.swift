//
//  NSWindow.swift
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures

extension NSWindow {

    open func beginSheet(sheetWindow: NSWindow) -> Future<NSApplication.ModalResponse, Never> {
        return materialize { self.beginSheet(sheetWindow, completionHandler: $0) }
    }

    open func beginCriticalSheet(sheetWindow: NSWindow) -> Future<NSApplication.ModalResponse, Never> {
        return materialize { self.beginCriticalSheet(sheetWindow, completionHandler: $0) }
    }

}
