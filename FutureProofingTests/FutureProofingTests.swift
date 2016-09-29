//
//  FutureProofingTests.swift
//  FutureProofingTests
//
//  Created by Thomas Visser on 15/01/15.
//  Copyright (c) 2015 Thomas Visser. All rights reserved.
//

import UIKit
import XCTest
import BrightFutures
import FutureProofing

class FutureProofingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let expectation = self.expectation(description: "task")
        
        let url = URL(string: "http://www.example.com")!
        let session = URLSession(configuration: URLSessionConfiguration.default)
        let (task, f): URLSession.FutureSessionDataTask = session.dataTask(with: url)
        task.resume()
        f.onSuccess { (data, response) in
            expectation.fulfill()
        }
        f.onFailure { error in
            expectation.fulfill()
        }
        
        waitForExpectations(timeout: 20) { error in
             XCTFail("")
        }
    }

    
}
