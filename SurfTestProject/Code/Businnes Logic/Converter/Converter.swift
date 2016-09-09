//
//  Converter.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation
import NumberConverter

// Обёртка для NumberConverter
class Converter {
    static func convert(number: Int) -> String {
        return NumberConverter.convert(number)
    }
}