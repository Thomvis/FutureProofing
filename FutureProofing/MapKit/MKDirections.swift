//
//  MKDirections.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import MapKit
import BrightFutures

extension MKDirections {

    open func calculate() -> Future<MKDirectionsResponse, AnyError> {
        return materialize { self.calculate(completionHandler: $0) }
    }

    open func calculateETA() -> Future<MKETAResponse, AnyError> {
        return materialize { self.calculateETA(completionHandler:$0) }
    }

}
