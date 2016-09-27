//
//  WKWebView.swift
//  FutureProofing
//
//  Created by phimage on 24/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import Foundation
import WebKit
import BrightFutures

extension WKWebView {

    open func evaluateJavaScript(_ javaScriptString: String) -> Future<Any, AnyError> {
        return materialize { self.evaluateJavaScript(javaScriptString, completionHandler: $0) }
    }

}
