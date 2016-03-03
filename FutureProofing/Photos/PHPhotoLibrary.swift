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

    public class func requestAuthorizadtionr() -> Future<PHAuthorizationStatus, NoError> {
        return future { PHPhotoLibrary.requestAuthorization($0) }
    }

    public func performChanges(changeBlock: dispatch_block_t) -> Future<Bool, BrightFuturesError<NSError>> {
        return future { self.performChanges(changeBlock, completionHandler: $0) }
    }

}
