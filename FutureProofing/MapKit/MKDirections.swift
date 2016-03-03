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

    public func calculateDirections() -> Future<MKDirectionsResponse, BrightFuturesError<NSError>> {
        return future { self.calculateDirectionsWithCompletionHandler($0) }
    }

    public func calculateETA() -> Future<MKETAResponse, BrightFuturesError<NSError>> {
        return future { self.calculateETAWithCompletionHandler($0) }
    }

}