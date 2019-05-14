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

    open func renewCredentials(for account: ACAccount) -> Future<ACAccountCredentialRenewResult, AnyError> {
        return materialize { self.renewCredentials(for: account, completion: $0) }
    }
    
    open func requestAccessToAccounts(with type: ACAccountType, options: [AnyHashable : Any]? = nil) -> Future<Bool, AnyError> {
        return materialize { self.requestAccessToAccounts(with: type, options: options, completion: $0) }
    }
    
    open func saveAccount(_ account: ACAccount) -> Future<Bool, AnyError> {
        return materialize { self.saveAccount(account, withCompletionHandler: $0) }
    }
    
    open func removeAccount(_ account: ACAccount) -> Future<Bool, AnyError> {
        return materialize { self.removeAccount(account, withCompletionHandler: $0) }
    }

}
