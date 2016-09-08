//
//  NumberConverter.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

final class NumberConverter: NSObject {
    
    static func convert(number: Int) -> String {
        if number == 0 { return Numbers.Ones.null }
        var number = number
        let helper = NumberConverterHelper()
        let lenghtOfNumber = number.description.characters.count
        var returnedValue = ""
//        debugPrint(helper.getStringValueOfNumberHundred(890))
        for i in 0..<(lenghtOfNumber.roundUp(3)/3) {
            returnedValue = helper.getStringValueOfNumber((number%1000), thousand: i) + helper.getEnding(number, thousand: i) + returnedValue
            number = number/1000
        }
        return returnedValue
    }
    
}

// MARK: NumberConverterHelper
extension NumberConverter {
    
    private final class NumberConverterHelper {
        func getStringValueOfNumber(number: Int, thousand: Int) -> String {
            var returnedValue = ""
            switch thousand {
                case 0: returnedValue = getStringValueOfNumberFirstThousand(number)
                case 1: returnedValue = getStringValueOfNumberSecondThousand(number)
                case 2: returnedValue = getStringValueOfNumberThirdThousand(number)
                case 3: returnedValue = getStringValueOfNumberFourthThousand(number)
                case 4: returnedValue = getStringValueOfNumberFiveThousand(number)
                default: break
            }
            return returnedValue
        }
        
        func getStringValueOfNumberHundred(number: Int) -> String {
            switch number {
                case 100...199: return Numbers.Hundreds.hundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 200...299: return Numbers.Hundreds.twoHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 300...399: return Numbers.Hundreds.threeHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 400...499: return Numbers.Hundreds.fourHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 500...599: return Numbers.Hundreds.fiveHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 600...699: return Numbers.Hundreds.sixHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 700...799: return Numbers.Hundreds.sevenHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 800...899: return Numbers.Hundreds.eightHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                case 900...999: return Numbers.Hundreds.nineHundred + " " + getStringValueOfNumberDozen(number.dropFirst())
                default: return ""
            }
        }
        
        func getStringValueOfNumberDozen(number: Int) -> String {
            switch number {
            case 10: return Numbers.Dozens.ten
            case 11: return Numbers.Dozens.eleven
            case 12: return Numbers.Dozens.twelve
            case 13: return Numbers.Dozens.thirteen
            case 14: return Numbers.Dozens.fourteen
            case 15: return Numbers.Dozens.fiveteen
            case 16: return Numbers.Dozens.sixteen
            case 17: return Numbers.Dozens.seventeen
            case 18: return Numbers.Dozens.eighteen
            case 19: return Numbers.Dozens.nineteen
            case 20: return Numbers.Dozens.twenty
            case 20...29: return Numbers.Dozens.twenty + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 30...39: return Numbers.Dozens.thirty + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 40...49: return Numbers.Dozens.forty + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 50...59: return Numbers.Dozens.fifty + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 60...69: return Numbers.Dozens.sixty + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 70...79: return Numbers.Dozens.seventy + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 80...89: return Numbers.Dozens.eighty + " " + getStringValueOfNumberOnes(number.dropFirst())
            case 90...99: return Numbers.Dozens.ninety + " " + getStringValueOfNumberOnes(number.dropFirst())
            default: return ""
            }
        }
        
        func getStringValueOfNumberOnes(number: Int) -> String {
            switch number {
            case 1: return Numbers.Ones.one
            case 2: return Numbers.Ones.two
            case 3: return Numbers.Ones.three
            case 4: return Numbers.Ones.four
            case 5: return Numbers.Ones.five
            case 6: return Numbers.Ones.six
            case 7: return Numbers.Ones.seven
            case 8: return Numbers.Ones.eight
            case 9: return Numbers.Ones.nine
            default: return ""
            }
        }
        
        func getStringValueOfNumberFirstThousand(number: Int) -> String {
            if number == 0 {
                return ""
            } else {
                let numberArray = number.description.characters.map{Int(String($0)) ?? 0}
                switch numberArray.count {
                case 1: return getStringValueOfNumberOnes(numberArray[0])
                case 2: return getStringValueOfNumberDozen(Int([numberArray[0], numberArray[1]].map({"\($0)"}).joinWithSeparator(""))!)
                case 3: return getStringValueOfNumberHundred(number)
                default: return ""
                }
            }
        }
        
        func getStringValueOfNumberSecondThousand(number: Int) -> String {
            if number == 0 {
                return ""
            } else {
                let numberArray = number.description.characters.map{Int(String($0)) ?? 0}
                switch numberArray.count {
                case 1: return getStringValueOfNumberOnes(numberArray[0])
                case 2: return getStringValueOfNumberDozen(Int([numberArray[0], numberArray[1]].map({"\($0)"}).joinWithSeparator(""))!)
                case 3: return getStringValueOfNumberHundred(number)
                default: return ""
                }
            }
        }
        
        func getStringValueOfNumberThirdThousand(number: Int) -> String {
            if number == 0 {
                return ""
            } else {
                let numberArray = number.description.characters.map{Int(String($0)) ?? 0}
                switch numberArray.count {
                case 1: return getStringValueOfNumberOnes(numberArray[0])
                case 2: return getStringValueOfNumberDozen(Int([numberArray[0], numberArray[1]].map({"\($0)"}).joinWithSeparator(""))!)
                case 3: return getStringValueOfNumberHundred(number)
                default: return ""
                }
            }
        }
        
        func getStringValueOfNumberFourthThousand(number: Int) -> String {
            if number == 0 {
                return ""
            } else {
                let numberArray = number.description.characters.map{Int(String($0)) ?? 0}
                switch numberArray.count {
                case 1: return getStringValueOfNumberOnes(numberArray[0])
                case 2: return getStringValueOfNumberDozen(Int([numberArray[0], numberArray[1]].map({"\($0)"}).joinWithSeparator(""))!)
                case 3: return getStringValueOfNumberHundred(number)
                default: return ""
                }
            }
        }
        
        func getStringValueOfNumberFiveThousand(number: Int) -> String {
            if number == 0 {
                return ""
            } else {
                let numberArray = number.description.characters.map{Int(String($0)) ?? 0}
                switch numberArray.count {
                case 1: return getStringValueOfNumberOnes(numberArray[0])
                case 2: return getStringValueOfNumberDozen(Int([numberArray[0], numberArray[1]].map({"\($0)"}).joinWithSeparator(""))!)
                case 3: return getStringValueOfNumberHundred(number)
                default: return ""
                }
            }
        }
        
        func getEnding(number: Int, thousand: Int) -> String {
            let dozen = number%100
            if (dozen == 0 || (dozen > 4 && dozen < ) || (dozen >= 11 && dozen <= 14))
            {
                
            }
            return "     "
        }
    }
}
