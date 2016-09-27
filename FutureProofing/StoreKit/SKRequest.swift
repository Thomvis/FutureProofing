//
//  SKRequest.swift
//  FutureProofing
//
//  Created by phimage on 20/01/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//
import StoreKit
import BrightFutures

extension SKRequest {

    open func future() -> Future<SKProductsResponse, SKError> {
        let promisable = PromisableDelegate()
        self.delegate = promisable
        promisable.retainCycle = promisable
        start()
        return promisable.promise.future
    }

}

fileprivate class PromisableDelegate: NSObject, SKProductsRequestDelegate {
    let promise = Promise<SKProductsResponse, SKError>()
    var retainCycle: PromisableDelegate?

    @objc func request(_ request: SKRequest, didFailWithError error: Error) {
        if let error = error as? SKError {
            promise.failure(error)
        }
        else {
            promise.failure(SKError(_nsError:NSError(domain: SKErrorDomain, code: SKError.unknown.rawValue, userInfo: nil)))
        }
        retainCycle = nil
    }

    @objc func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        promise.success(response)
        retainCycle = nil
    }

}
