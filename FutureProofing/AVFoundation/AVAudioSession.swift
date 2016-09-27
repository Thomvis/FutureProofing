//
//  AVAudioSession.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import AVFoundation
import BrightFutures
import Result

extension AVAudioSession {

    open func requestRecordPermission() -> Future<Bool, NoError> {
        return materialize { self.requestRecordPermission($0) }
    }

}
