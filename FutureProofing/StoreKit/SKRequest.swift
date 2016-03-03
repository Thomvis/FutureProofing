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

    public func future() -> Future<SKProductsResponse, NSError> {
        let promisable = PromisableDelegate()
        self.delegate = promisable
        promisable.retainCycle = promisable
        start()
        return promisable.promise.future
    }

}

private class PromisableDelegate: NSObject, SKProductsRequestDelegate {
    let promise = Promise<SKProductsResponse, NSError>()
    var retainCycle: PromisableDelegate?
    
    #if os(iOS)
    @objc func request(request: SKRequest, didFailWithError error: NSError) {
        promise.failure(error)
        retainCycle = nil
    }
    #else
    @objc func request(request: SKRequest, didFailWithError error: NSError?) {
        promise.failure(error ?? NSError(domain: SKErrorDomain, code: SKErrorUnknown, userInfo: nil)  )
        retainCycle = nil
    }
    #endif

    @objc func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        promise.success(response)
        retainCycle = nil
    }

}
