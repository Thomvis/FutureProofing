//
//  AVCaptureDevice.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import AVFoundation
import BrightFutures
import Result

extension AVCaptureDevice {
    
    open class func requestAccess(forMediaType mediaType: String) -> Future<Bool, NoError> {
        return  materialize { self.requestAccess(forMediaType: mediaType, completionHandler: $0) }
    }
    
}
 
