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

    public func reverseGeocodeLocation(location: CLLocation) -> Future<[CLPlacemark], BrightFuturesError<NSError>> {
        return future { self.reverseGeocodeLocation(location, completionHandler: $0) }
    }

    public func geocodeAddressDictionary(addressDictionary: [String: String]) -> Future<[CLPlacemark], BrightFuturesError<NSError>> {
        return future { self.geocodeAddressDictionary(addressDictionary, completionHandler: $0) }
    }
    
    public func geocodeAddressString(addressString: String) -> Future<[CLPlacemark], BrightFuturesError<NSError>> {
        return geocodeAddressString(addressString, region: nil)
    }
    
    public func geocodeAddressString(addressString: String, region: CLRegion?) -> Future<[CLPlacemark], BrightFuturesError<NSError>> {
        return future { self.geocodeAddressString(addressString, inRegion: region, completionHandler: $0) }
    }

}
