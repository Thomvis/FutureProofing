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

    open func loadItem(forTypeIdentifier typeIdentifier: String, options: [AnyHashable: Any]? = nil) -> Future<NSSecureCoding, AnyError> {
        return materialize { self.loadItem(forTypeIdentifier: typeIdentifier, options: options ?? [:], completionHandler: $0) }
    }
    
    open func loadPreviewImage(options: [AnyHashable: Any]? = nil) -> Future<NSSecureCoding, AnyError> {
        return materialize { self.loadPreviewImage(options: options ?? [:], completionHandler: $0) }
    }

}
     
