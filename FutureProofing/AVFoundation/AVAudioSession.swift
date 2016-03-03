//
//  AVAudioSession.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import AVFoundation
import BrightFutures

extension AVAudioSession {

    public func requestRecordPermission() -> Future<Bool, NoError> {
        return future { self.requestRecordPermission($0) }
    }

}
