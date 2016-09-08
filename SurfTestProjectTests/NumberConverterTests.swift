//
//  NumberConverterTests.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import XCTest
@testable import SurfTestProject

class NumberConverterTests: XCTestCase {

    func testConvert() {
        XCTAssertEqual(NumberConverter.convert(0), "ноль")
        XCTAssertEqual(NumberConverter.convert(1), "один")
        XCTAssertEqual(NumberConverter.convert(12), "двенадцать")
        XCTAssertEqual(NumberConverter.convert(322), "триста двадцать два")
        XCTAssertEqual(NumberConverter.convert(1341), "тысяча триста сорок один")
        XCTAssertEqual(NumberConverter.convert(11001), "одиннадцать тысяч один")
        XCTAssertEqual(NumberConverter.convert(678987), "шестьсот семьдесят восемь тысяч девятьсот восемьдесят семь")
        XCTAssertEqual(NumberConverter.convert(1111111), "один миллион сто одиннадцать тысяч сто одиннадцать")
        XCTAssertEqual(NumberConverter.convert(59307666), "пятьдесят девять миллонов триста семь тысяч шестьсот шестьдесят шесть")
        XCTAssertEqual(NumberConverter.convert(742543623), "семьсот сорок два миллиона пятьсот сорок три тысячи шестьсот двадцать три")
        XCTAssertEqual(NumberConverter.convert(9123456789), "девять триллионов сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять")
        XCTAssertEqual(NumberConverter.convert(1123456789), "один триллион сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять")
    }
    
}
