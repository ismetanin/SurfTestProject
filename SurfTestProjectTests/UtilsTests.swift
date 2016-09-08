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
    
    /// Тест для проверки roundUp
    func roundUpTest() {
        XCTAssertEqual(12, 9.roundUp(3))
        XCTAssertEqual(16, 13.roundUp(4))
        XCTAssertEqual(9, 1.roundUp(9))
        XCTAssertEqual(18, 10.roundUp(9))
    }
}