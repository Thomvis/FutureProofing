//
//  BrightFuturePath.swift
//  FutureProofing
//
//  Created by phimage on 26/09/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import Foundation
import BrightFutures
import Result

// TODO move to BrightFutures if relevant?

// MARK: AnyError to allow materialize generique error
public struct AnyError: Error {
    public let cause: Error
    
    public init(cause: Error) {
        self.cause = cause
    }
}

extension AnyError: ErrorProtocolConvertible {
    
    public static func error(from error: Swift.Error) -> AnyError {
        return AnyError(cause: error)
    }
}

// MARK: materialize with generic error using AnyError
public func materialize<T>(_ scope: ( @escaping (T?, Error?) -> Void) -> Void) -> Future<T, AnyError> {
    return Future { complete in
        scope { val, err in
            if let val = val {
                complete(.success(val))
            } else if let err = err {
                complete(.failure(AnyError(cause: err)))
            }
        }
    }
}

public func materialize<T>(_ scope: ( @escaping (T) -> Void) -> Void) -> Future<T, NoError> {
    return Future { complete in
        scope { val in
            complete(.success(val))
        }
    }
}

public func materialize(_ scope: ( @escaping (Error?) -> Void) -> Void) -> Future<Void, AnyError> {
    return Future { complete in
        scope { err in
            if let err = err {
                complete(.failure(AnyError(cause: err)))
            } else {
                complete(.success())
            }
        }
    }
}

public func materialize<T, U>(_ scope: ( @escaping (T?, U, Error?) -> Void) -> Void) -> Future<(T?,U), AnyError> {
    return Future(resolver: { completion -> Void in
        scope { valueT, valueU, error in
            if let error = error {
                completion(.failure(AnyError(cause: error)))
            } else {
                completion(.success((valueT, valueU)))
            }
        }
    })
}


