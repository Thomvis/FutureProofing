//
//  NSPersistentStoreCoordinator.swift
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
extension NSPersistentStoreCoordinator {
    
    open func addPersistentStore(with storeDescription: NSPersistentStoreDescription) -> Future<NSPersistentStoreDescription, AnyError> {
        return materialize { self.addPersistentStore(with: storeDescription, completionHandler: $0) }
    }

}
