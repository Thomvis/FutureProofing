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

    open func start() -> Future<MKMapSnapshotter.Snapshot, AnyError> {
        return materialize {  self.start(completionHandler: $0)  }
    }

}
