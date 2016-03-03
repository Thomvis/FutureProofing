//
//  NSItemProvider.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import Foundation
#if os(iOS)
import MobileCoreServices
#endif
import BrightFutures

extension NSItemProvider {

    public func loadItemForTypeIdentifier(typeIdentifier: String, options: [NSObject: AnyObject]? = nil) -> Future<NSSecureCoding, BrightFuturesError<NSError>> {
        return future { self.loadItemForTypeIdentifier(typeIdentifier, options: options ?? [:], completionHandler: $0) }
    }
    
    public func loadPreviewImageWithOptions(options: [NSObject : AnyObject]? = nil) -> Future<NSSecureCoding, BrightFuturesError<NSError>> {
        return future { self.loadPreviewImageWithOptions(options ?? [:], completionHandler: $0) }
    }

}
     