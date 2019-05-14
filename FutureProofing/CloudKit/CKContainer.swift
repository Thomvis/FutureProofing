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

    public func accountStatus() -> Future<CKAccountStatus, AnyError> {
        return materialize { self.accountStatus(completionHandler: $0) }
    }

    public func requestApplicationPermission(_ applicationPermissions: CKContainer.Application.Permissions) -> Future<CKContainer.Application.PermissionStatus, AnyError> {
        return materialize { self.requestApplicationPermission(applicationPermissions, completionHandler: $0) }
    }

    public func status(forApplicationPermission applicationPermissions: CKContainer.Application.Permissions) -> Future<CKContainer.Application.PermissionStatus, AnyError> {
        return materialize { self.status(forApplicationPermission: applicationPermissions, completionHandler: $0) }
    }

#if !os(tvOS)
    public func discoverAllContactUserInfos() -> Future<[CKDiscoveredUserInfo], AnyError> {
        return materialize { self.discoverAllContactUserInfos(completionHandler: $0) }
    }
#endif

    public func discoverUserInfo(withEmailAddress email: String) -> Future<CKDiscoveredUserInfo, AnyError> {
        return materialize { self.discoverUserInfo(withEmailAddress: email, completionHandler: $0) }
    }

    public func discoverUserInfo(withUserRecordID recordID: CKRecord.ID) -> Future<CKDiscoveredUserInfo, AnyError> {
        return materialize { self.discoverUserInfo(withUserRecordID: recordID, completionHandler: $0) }
    }

    public func fetchUserRecordID() -> Future<CKRecord.ID, AnyError> {
        return materialize { self.fetchUserRecordID(completionHandler: $0) }
    }

}
