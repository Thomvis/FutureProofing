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

    public func evaluateJavaScript(javaScriptString: String) -> Future<AnyObject, BrightFuturesError<NSError>>{
        return future { self.evaluateJavaScript(javaScriptString, completionHandler: $0) }
    }

}