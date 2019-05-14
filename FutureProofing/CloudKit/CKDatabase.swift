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
    
    public func fetch(withRecordID recordID: CKRecord.ID) -> Future<CKRecord, AnyError> {
        return materialize { self.fetch(withRecordID: recordID, completionHandler: $0) }
    }

    public func fetch(withRecordZoneID recordZoneID: CKRecordZone.ID) -> Future<CKRecordZone, AnyError> {
        return materialize { self.fetch(withRecordZoneID: recordZoneID, completionHandler: $0) }
    }

    public func fetch(withSubscriptionID subscriptionID: String) -> Future<CKSubscription, AnyError> {
        return materialize { self.fetch(withSubscriptionID: subscriptionID, completionHandler: $0) }
    }

    public func fetchAllRecordZones() -> Future<[CKRecordZone], AnyError> {
        return materialize { self.fetchAllRecordZones(completionHandler: $0) }
    }

    public func fetchAllSubscriptions() -> Future<[CKSubscription], AnyError> {
        return materialize { self.fetchAllSubscriptions(completionHandler: $0) }
    }

    public func save(_ record: CKRecord) -> Future<CKRecord, AnyError> {
        return materialize { self.save(record, completionHandler: $0) }
    }

    public func save(_ recordZone: CKRecordZone) -> Future<CKRecordZone, AnyError> {
        return materialize { self.save(recordZone, completionHandler: $0) }
    }

    public func save(_ subscription: CKSubscription) -> Future<CKSubscription, AnyError> {
        return materialize { self.save(subscription, completionHandler: $0) }
    }

    public func delete(withRecordID recordID: CKRecord.ID) -> Future<CKRecord.ID, AnyError> {
        return materialize { self.delete(withRecordID: recordID, completionHandler: $0) }
    }

    public func delete(withRecordZoneID zoneID: CKRecordZone.ID) -> Future<CKRecordZone.ID, AnyError> {
        return materialize { self.delete(withRecordZoneID: zoneID, completionHandler: $0) }
    }

    public func delete(withSubscriptionID subscriptionID: String) -> Future<String, AnyError> {
        return materialize { self.delete(withSubscriptionID: subscriptionID, completionHandler: $0) }
    }

    public func perform(_ query: CKQuery, inZoneWith zoneID: CKRecordZone.ID? = nil) -> Future<[CKRecord], AnyError> {
        return materialize { self.perform(query, inZoneWith: zoneID, completionHandler: $0) }
    }

    public func perform(_ query: CKQuery, inZoneWith zoneID: CKRecordZone.ID? = nil) -> Future<CKRecord?, AnyError> {
        return materialize { resolve in
            self.perform(query, inZoneWith: zoneID) { records, error in
                resolve(records?.first, error)
            }
        }
    }

    public func fetchUserRecord(_ container: CKContainer = CKContainer.default()) -> Future<CKRecord, AnyError> {
        return container.fetchUserRecordID().flatMap { uid in
            return self.fetch(withRecordID: uid)
        }
    }
}
