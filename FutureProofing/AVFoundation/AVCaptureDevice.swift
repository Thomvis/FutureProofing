//
//  AVCaptureDevice.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import AVFoundation
import BrightFutures

extension AVCaptureDevice {
    
    open class func requestAccess(for mediaType: AVMediaType) -> Future<Bool, Never> {
        return  materialize { self.requestAccess(for: mediaType, completionHandler: $0) }
    }
    
}
 
