//
//  CKContainer.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import CloudKit
import BrightFutures

extension CKContainer {

    public func accountStatusd() -> Future<CKAccountStatus, BrightFuturesError<NSError>> {
        return future { self.accountStatusWithCompletionHandler($0) }
    }

    public func requestApplicationPermission(applicationPermissions: CKApplicationPermissions) -> Future<CKApplicationPermissionStatus, BrightFuturesError<NSError>> {
        return future { self.requestApplicationPermission(applicationPermissions, completionHandler: $0) }
    }

    public func statusForApplicationPermission(applicationPermissions: CKApplicationPermissions) -> Future<CKApplicationPermissionStatus, BrightFuturesError<NSError>> {
        return future { self.statusForApplicationPermission(applicationPermissions, completionHandler: $0) }
    }

#if !os(tvOS)
    public func discoverAllContactUserInfos() -> Future<[CKDiscoveredUserInfo], BrightFuturesError<NSError>> {
        return future { self.discoverAllContactUserInfosWithCompletionHandler($0) }
    }
#endif

    public func discoverUserInfo(email email: String) -> Future<CKDiscoveredUserInfo, BrightFuturesError<NSError>> {
        return future { self.discoverUserInfoWithEmailAddress(email, completionHandler: $0) }
    }

    public func discoverUserInfo(recordID recordID: CKRecordID) -> Future<CKDiscoveredUserInfo, BrightFuturesError<NSError>> {
        return future { self.discoverUserInfoWithUserRecordID(recordID, completionHandler: $0) }
    }

    public func fetchUserRecordID() -> Future<CKRecordID, BrightFuturesError<NSError>> {
        return future { self.fetchUserRecordIDWithCompletionHandler($0) }
    }

}
