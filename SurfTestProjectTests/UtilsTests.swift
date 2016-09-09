//
//  UtilsTests.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import XCTest
@testable import SurfTestProject

class UtilsTests: XCTestCase {
    
    func roundUpTest() {
        XCTAssertEqual(12, 9.roundUp(3))
        XCTAssertEqual(16, 13.roundUp(4))
        XCTAssertEqual(9, 1.roundUp(9))
        XCTAssertEqual(18, 10.roundUp(9))
    }
    
    func dropFirstTest() {
        XCTAssertEqual(12413, 712413.dropFirst())
        XCTAssertEqual(9, 9.dropFirst())
        XCTAssertEqual(13, 913.dropFirst())
        XCTAssertEqual(12, 312.dropFirst())

    }
    
    func firstTest() {
        XCTAssertEqual(1, 11.first())
        XCTAssertEqual(2, 21.first())
        XCTAssertEqual(3, 321.first())
        XCTAssertEqual(9, 9123311.first())

    }
    
    func legthTest() {
        XCTAssertEqual(2, 1.length())
        XCTAssertEqual(2, 11.length())
        XCTAssertEqual(3, 554.length())
        XCTAssertEqual(4, 1110.length())
        XCTAssertEqual(5, 54311.length())
        XCTAssertEqual(6, 346311.length())
        XCTAssertEqual(7, 5311231.length())
    }
}
