//
//  CKDatabase.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import CloudKit
import BrightFutures

extension CKDatabase {
    
    public func fetchRecordWithID(recordID: CKRecordID) -> Future<CKRecord, BrightFuturesError<NSError>>{
        return future { self.fetchRecordWithID(recordID, completionHandler: $0) }
    }

    public func fetchRecordZoneWithID(recordZoneID: CKRecordZoneID) -> Future<CKRecordZone, BrightFuturesError<NSError>> {
        return future { self.fetchRecordZoneWithID(recordZoneID, completionHandler: $0) }
    }

    public func fetchSubscriptionWithID(subscriptionID: String) -> Future<CKSubscription, BrightFuturesError<NSError>> {
        return future { self.fetchSubscriptionWithID(subscriptionID, completionHandler: $0) }
    }

    public func fetchAllRecordZones() -> Future<[CKRecordZone], BrightFuturesError<NSError>> {
        return future { self.fetchAllRecordZonesWithCompletionHandler($0) }
    }

    public func fetchAllSubscriptions() -> Future<[CKSubscription], BrightFuturesError<NSError>> {
        return future { self.fetchAllSubscriptionsWithCompletionHandler($0) }
    }

    public func save(record: CKRecord) -> Future<CKRecord, BrightFuturesError<NSError>> {
        return future { self.saveRecord(record, completionHandler: $0) }
    }

    public func save(recordZone: CKRecordZone) -> Future<CKRecordZone, BrightFuturesError<NSError>> {
        return future { self.saveRecordZone(recordZone, completionHandler: $0) }
    }

    public func save(subscription: CKSubscription) -> Future<CKSubscription, BrightFuturesError<NSError>> {
        return future { self.saveSubscription(subscription, completionHandler: $0) }
    }

    public func deleteRecordWithID(recordID: CKRecordID) -> Future<CKRecordID, BrightFuturesError<NSError>> {
        return future { self.deleteRecordWithID(recordID, completionHandler: $0) }
    }

    public func deleteRecordZoneWithID(zoneID: CKRecordZoneID) -> Future<CKRecordZoneID, BrightFuturesError<NSError>> {
        return future { self.deleteRecordZoneWithID(zoneID, completionHandler: $0) }
    }

    public func deleteSubscriptionWithID(subscriptionID: String) -> Future<String, BrightFuturesError<NSError>> {
        return future { self.deleteSubscriptionWithID(subscriptionID, completionHandler: $0) }
    }

    public func performQuery(query: CKQuery, inZoneWithID zoneID: CKRecordZoneID? = nil) -> Future<[CKRecord], BrightFuturesError<NSError>> {
        return future { self.performQuery(query, inZoneWithID: zoneID, completionHandler: $0) }
    }

    public func performQuery(query: CKQuery, inZoneWithID zoneID: CKRecordZoneID? = nil) -> Future<CKRecord?, BrightFuturesError<NSError>> {
        return future { resolve in
            self.performQuery(query, inZoneWithID: zoneID) { records, error in
                resolve(records?.first, error)
            }
        }
    }

    public func fetchUserRecord(container: CKContainer = CKContainer.defaultContainer()) -> Future<CKRecord, BrightFuturesError<NSError>> {
        return container.fetchUserRecordID().flatMap { uid in
            return self.fetchRecordWithID(uid)
        }
    }
}
