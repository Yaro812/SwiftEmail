//
//  SwiftEmailTests.swift
//  SwiftEmailTests
//
//  Created by Yaroslav Pasternak on 25/09/2018.
//  Copyright © 2018 Thorax. All rights reserved.
//

import XCTest
@testable import SwiftEmail

class SwiftEmailTests: XCTestCase {

    func testEmail() {
        let email = EmailAddress(string: "test@example.com")
        XCTAssertNotNil(email)
    }
    
    func testString_true() {
        XCTAssertTrue("test@example.com".isValidEmail)
    }
    
    func testString_false() {
        XCTAssertFalse("test@example@test.com".isValidEmail)
    }

}
