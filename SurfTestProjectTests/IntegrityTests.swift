//
//  IntegrityTests.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import XCTest
@testable import SurfTestProject

class IntegrityTests: XCTestCase {
    
    /// Тест для проверки не отвалился ли файл input-a
    func inputFileTest() {
        var inputDictionary: NSDictionary?
        if let path = NSBundle.mainBundle().pathForResource("input", ofType: "plist") {
            inputDictionary = NSDictionary(contentsOfFile: path)
        }
        XCTAssertNotNil(inputDictionary, "Input dictionary is nil after launch")
        if let dictionary = inputDictionary {
            for element in dictionary {
                debugPrint(element.key)
            }
        }
    }
}
