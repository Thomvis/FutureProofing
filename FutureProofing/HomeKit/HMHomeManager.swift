//
//  HMHomeManager.swift
//  FutureProofing
//
//  Created by phimage on 24/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import BrightFutures
import HomeKit

extension HMHomeManager {

    public func addHomeWithName(homeName: String) -> Future<HMHome, BrightFuturesError<NSError>> {
        return future { self.addHomeWithName(homeName, completionHandler: $0) }
    }

    public func removeHome(home: HMHome) -> Future<Void, NSError> {
        return future { self.removeHome(home, completionHandler: $0) }
    }

    public func updatePrimaryHome(home: HMHome) -> Future<Void, NSError> {
        return future { self.updatePrimaryHome(home, completionHandler: $0) }
    }

}
