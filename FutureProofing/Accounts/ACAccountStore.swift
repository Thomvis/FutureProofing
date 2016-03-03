//
//  ACAccountStore.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import Accounts
import BrightFutures

extension ACAccountStore {

    public func renewCredentialsForAccount(account: ACAccount) -> Future<ACAccountCredentialRenewResult, BrightFuturesError<NSError>> {
        return future { self.renewCredentialsForAccount(account, completion: $0) }
    }
    
    public func requestAccessToAccountsWithType(type: ACAccountType, options: [String: AnyObject]? = nil) -> Future<Bool, BrightFuturesError<NSError>> {
        return future { self.requestAccessToAccountsWithType(type, options: options, completion: $0) }
    }
    
    public func saveAccount(account: ACAccount) -> Future<Bool, BrightFuturesError<NSError>> {
        return future { self.saveAccount(account, withCompletionHandler: $0) }
    }
    
    public func removeAccount(account: ACAccount) -> Future<Bool, BrightFuturesError<NSError>> {
        return future { self.removeAccount(account, withCompletionHandler: $0) }
    }

}
