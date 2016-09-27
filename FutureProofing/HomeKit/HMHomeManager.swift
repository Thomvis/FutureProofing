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

    open func addHomeWithName(_ homeName: String) -> Future<HMHome, AnyError> {
        return materialize { self.addHome(withName: homeName, completionHandler: $0) }
    }

    open func removeHome(_ home: HMHome) -> Future<Void, AnyError> {
        return materialize { self.removeHome(home, completionHandler: $0) }
    }

    open func updatePrimaryHome(_ home: HMHome) -> Future<Void, AnyError> {
        return materialize { self.updatePrimaryHome(home, completionHandler: $0) }
    }

}
