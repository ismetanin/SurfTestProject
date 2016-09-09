//
//  NumberConverter.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

public final class NumberConverter: NSObject {
    
    public static func convert(number: Int) -> String {
        if number == 0 { return "NULL".localized }
        var number = number
        let lenghtOfNumber = number.description.characters.count
        var returnedValue = ""
        
        let helper = NumberConverterHelper()
        for i in 0..<(lenghtOfNumber.roundUp(3)/3) {
            returnedValue = helper.getStringValueOfNumber(number%1000, thousand: i) + helper.getEnding(number%1000, thousand: i) + returnedValue
            if (number/1000 > 0 && number%1000 != 0) { returnedValue = " " + returnedValue }
            number = number/1000
        }
        return returnedValue
    }
    
}

// MARK: NumberConverterHelper
extension NumberConverter {
    private final class NumberConverterHelper {
        func getStringValueOfNumber(number: Int, thousand: Int) -> String {
            if number == 0 {
                return ""
            } else {
                let numberArray = number.description.characters.map{Int(String($0)) ?? 0}
                switch numberArray.count {
                case 1: return getStringValueOfNumberOnes(numberArray[0], thousand: thousand)
                case 2: return getStringValueOfNumberDozen(Int([numberArray[0], numberArray[1]].map({"\($0)"}).joinWithSeparator(""))!, thousand: thousand)
                case 3: return getStringValueOfNumberHundred(number, thousand: thousand)
                default: return ""
                }
            }
        }
        
        func getStringValueOfNumberHundred(number: Int, thousand: Int) -> String {
            switch number {
                case 100...999: return ("HUNDREDS-" + String(number.first())).localized + getSpaceWithNumber(number) + getStringValueOfNumberDozen(number.dropFirst(), thousand: thousand)
                default: return getStringValueOfNumberDozen(number.dropFirst(), thousand: thousand)
            }
        }
        
        func getStringValueOfNumberDozen(number: Int, thousand: Int) -> String {
            switch number {
            case 10...19: return ("DOZENS-" + String(number)).localized
            case 20...99: return ("DOZENS-" + String(number.first())).localized + getSpaceWithNumber(number) + getStringValueOfNumberOnes(number.dropFirst(), thousand: thousand)
            default: return getStringValueOfNumberOnes(number.dropFirst(), thousand: thousand)
            }
        }
        
        func getStringValueOfNumberOnes(number: Int, thousand: Int) -> String {
            if thousand == 1 { return ("ONES-" + String(number) + "1").localized }
            else { return ("ONES-" + String(number)).localized }
        }
        
        func getEnding(number: Int, thousand: Int) -> String {
            let decim = number.dropFirst()
            let one = decim.dropFirst()
            var space = ""
            if number == 0 { return "" }
            if thousand != 0 { space = " " }
            if (number >= 10 && number <= 19) || (decim >= 11 && decim <= 19) {
                return space + ("ENDING-" + String(thousand)).localized }
            else if  one == 0 || (one > 4 && one <= 9) || number == 100 { return space + ("ENDING-" + String(thousand)).localized }
            else if one == 1 { return space + ("ENDING-" + String(thousand) + "0").localized }
            else if one > 1 && one < 5 { return space + ("ENDING-" + String(thousand) + "1").localized }
            else { return "" }
        }
        
        func getSpaceWithNumber(number: Int) -> String {
            if number.dropFirst().first() != 0 { return " " }
            else { return "" }
        }
    }
}
