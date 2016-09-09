//
//  ConverterTests.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import XCTest
@testable import SurfTestProject

class ConverterTests: XCTestCase {

    func testConvert() {
        XCTAssertEqual(Converter.convert(0), "ноль")
        XCTAssertEqual(Converter.convert(1), "один")
        XCTAssertEqual(Converter.convert(12), "двенадцать")
        XCTAssertEqual(Converter.convert(322), "триста двадцать два")
        XCTAssertEqual(Converter.convert(1341), "одна тысяча триста сорок один")
        XCTAssertEqual(Converter.convert(11001), "одиннадцать тысяч один")
        XCTAssertEqual(Converter.convert(678987), "шестьсот семьдесят восемь тысяч девятьсот восемьдесят семь")
        XCTAssertEqual(Converter.convert(1111111), "один миллион сто одиннадцать тысяч сто одиннадцать")
        XCTAssertEqual(Converter.convert(59307666), "пятьдесят девять миллионов триста семь тысяч шестьсот шестьдесят шесть")
        XCTAssertEqual(Converter.convert(742543623), "семьсот сорок два миллиона пятьсот сорок три тысячи шестьсот двадцать три")
        XCTAssertEqual(Converter.convert(9123456789), "девять миллиардов сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять")
        XCTAssertEqual(Converter.convert(1123456789), "один миллиард сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять")
         XCTAssertEqual(Converter.convert(11123456789), "одиннадцать миллиардов сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять")
         XCTAssertEqual(Converter.convert(101123456789), "сто один миллиард сто двадцать три миллиона четыреста пятьдесят шесть тысяч семьсот восемьдесят девять")
        XCTAssertEqual(Converter.convert(903413000789), "девятьсот три миллиарда четыреста тринадцать миллионов семьсот восемьдесят девять")
        XCTAssertEqual(Converter.convert(903000000789), "девятьсот три миллиарда семьсот восемьдесят девять")
        XCTAssertEqual(Converter.convert(903000000000), "девятьсот три миллиарда")
        XCTAssertEqual(Converter.convert(903000000001), "девятьсот три миллиарда один")
        XCTAssertEqual(Converter.convert(903000010001), "девятьсот три миллиарда десять тысяч один")
        XCTAssertEqual(Converter.convert(4404), "четыре тысячи четыреста четыре")
    }
}
