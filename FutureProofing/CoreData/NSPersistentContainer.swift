//
//  NSPersistentContainer.swift
//  FutureProofing
//
//  Created by phimage on 29/09/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import CoreData
import BrightFutures

@available(iOS 10.0, *)
@available(OSX 10.12, *)
@available(tvOS 10.0, *)
extension NSPersistentContainer {
    
    open func loadPersistentStores() -> Future<NSPersistentStoreDescription, AnyError> {
        return materialize { self.loadPersistentStores(completionHandler: $0) }
    }

}
