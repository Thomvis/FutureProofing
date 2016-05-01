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
    
    public class func requestAccessForMediaType(mediaType: String) -> Future<Bool, NoError> {
        return  future { self.requestAccessForMediaType(mediaType, completionHandler: $0) }
    }
    
}
 