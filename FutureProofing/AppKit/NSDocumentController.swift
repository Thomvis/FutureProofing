//
//  NSDocumentController
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures
import Result

public extension NSDocumentController {

    public func beginOpenPanel() -> Future<[NSURL]?, NoError> {
        return future { self.beginOpenPanelWithCompletionHandler($0) }
    }

    public func beginOpenPanel(openPanel: NSOpenPanel, forTypes inTypes: [String]?) -> Future<Int, NoError> {
        return future { self.beginOpenPanel(openPanel, forTypes: inTypes, completionHandler: $0) }
    }

    public func openDocumentWithContentsOfURL(url: NSURL, display displayDocument: Bool) -> Future<(NSDocument?, Bool), BrightFuturesError<NSError>> {
        return future { self.openDocumentWithContentsOfURL(url, display: displayDocument, completionHandler: $0) }
    }

    public func reopenDocumentForURL(urlOrNil: NSURL?, withContentsOfURL contentsURL: NSURL, display displayDocument: Bool) -> Future<(NSDocument?, Bool), BrightFuturesError<NSError>> {
        return future { self.reopenDocumentForURL(urlOrNil, withContentsOfURL: contentsURL, display: displayDocument, completionHandler: $0) }
    }

}

// TODO move to BrightFutures
private func future<T, U, E>(method: ((T?, U, E?) -> Void) -> Void) -> Future<(T,U), BrightFuturesError<E>> {
    return Future(resolver: { completion -> Void in
        method { valueT, valueU, error in
            if let value = valueT {
                completion(.Success((value, valueU)))
            } else if let error = error {
                completion(.Failure(.External(error)))
            } else {
                completion(.Failure(.IllegalState))
            }
        }
    })
}