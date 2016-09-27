//
//  CLGeocoder.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import CoreLocation
import BrightFutures

extension CLGeocoder {

    open func reverseGeocodeLocation(_ location: CLLocation) -> Future<[CLPlacemark], AnyError> {
        return materialize { self.reverseGeocodeLocation(location, completionHandler: $0) }
    }

    open func geocodeAddressDictionary(_ addressDictionary: [String: String]) -> Future<[CLPlacemark], AnyError> {
        return materialize { self.geocodeAddressDictionary(addressDictionary, completionHandler: $0) }
    }
    
    open func geocodeAddressString(_ addressString: String) -> Future<[CLPlacemark], AnyError> {
        return geocodeAddressString(addressString, inRegion: nil)
    }
    
    open func geocodeAddressString(_ addressString: String, inRegion region: CLRegion?) -> Future<[CLPlacemark], AnyError> {
        return materialize { self.geocodeAddressString(addressString, in: region, completionHandler: $0) }
    }

}
