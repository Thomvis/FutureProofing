//
//  NSNotificationCenter.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import Foundation.NSNotification
import BrightFutures
import Result

extension NSNotificationCenter {

    public class func once(name: String) -> Future<NSNotification, NoError> {
        return NSNotificationCenter.defaultCenter().once(name)
    }

    public func once(name: String) -> Future<NSNotification, NoError> {
        let promise = Promise<NSNotification, NoError>()
        let id = addObserverForName(name, object: nil, queue: nil) { notification in
            promise.success(notification)
        }
        return promise.future.andThen { v in
            self.removeObserver(id)
        }
    }

}

