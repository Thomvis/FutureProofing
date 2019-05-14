//
//  NSDocumentController
//  FutureProofing
//
//  Created by phimage on 15/07/16.
//  Copyright © 2016 Thomas Visser. All rights reserved.
//

import AppKit
import BrightFutures

extension NSDocumentController {

    open func beginOpenPanel() -> Future<[URL]?, Never> {
        return materialize { self.beginOpenPanel(completionHandler: $0) }
    }

    open func beginOpenPanel(openPanel: NSOpenPanel, forTypes inTypes: [String]?) -> Future<Int, Never> {
        return materialize { self.beginOpenPanel(openPanel, forTypes: inTypes, completionHandler: $0) }
    }

    open func openDocument(withContentsOf url: URL, display displayDocument: Bool) -> Future<(NSDocument?, Bool), AnyError> {
        return materialize { self.openDocument(withContentsOf: url, display: displayDocument, completionHandler: $0) }
    }

    open func reopenDocument(for urlOrNil: URL?, withContentsOf contentsURL: URL, display displayDocument: Bool) -> Future<(NSDocument?, Bool), AnyError> {
        return materialize { self.reopenDocument(for: urlOrNil, withContentsOf: contentsURL, display: displayDocument, completionHandler: $0) }
    }

}
