//
//  MKMapSnapshotter.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import MapKit
import BrightFutures

extension MKMapSnapshotter {

    public func start() -> Future<MKMapSnapshot, BrightFuturesError<NSError>> {
        return future {  self.startWithCompletionHandler($0)  }
    }

}
