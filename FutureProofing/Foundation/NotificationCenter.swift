//
//  NotificationCenter.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import Foundation.NSNotification
import BrightFutures
import Result

extension NotificationCenter {

    open class func once(_ name: Notification.Name) -> Future<Notification, NoError> {
        return NotificationCenter.default.once(name)
    }

    open func once(_ name: Notification.Name) -> Future<Notification, NoError> {
        let promise = Promise<Notification, NoError>()
        let id = addObserver(forName: name, object: nil, queue: nil) { notification in
            promise.success(notification)
        }
        return promise.future.andThen { v in
            self.removeObserver(id)
        }
    }

}

