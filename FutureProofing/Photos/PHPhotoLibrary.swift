//
//  PHPhotoLibrary.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import BrightFutures
import Photos

extension PHPhotoLibrary {

    open class func requestAuthorizadtionr() -> Future<PHAuthorizationStatus, Never> {
        return materialize { PHPhotoLibrary.requestAuthorization($0) }
    }

    open func performChanges(_ changeBlock: @escaping () -> Swift.Void) -> Future<Bool, AnyError> {
        return materialize { self.performChanges(changeBlock, completionHandler: $0) }
    }

}
