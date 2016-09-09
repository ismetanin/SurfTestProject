//
//  Int+MathHelp.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 08.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

extension Int {
    /// Округляет число до ближайшего верхнего кратного
    func roundUp(divisor: Int) -> Int {
        let rem = self % divisor
        return rem == 0 ? self : self + divisor - rem
    }
    
    /// Удаляет первую цифру в числе
    func dropFirst() -> Int {
        let numbersArray = self.description.characters.map{Int(String($0)) ?? 0}
        if numbersArray.count > 1 {
            let returnedValue = numbersArray.dropFirst().map({"\($0)"}).joinWithSeparator("")
            return Int(returnedValue)!
        } else {
            return self
        }
    }
    
    /// Возвращает первую цифру в числе
    func first() -> Int {
        let numbersArray = self.description.characters.map{Int(String($0)) ?? 0}
        if numbersArray.count > 1 { return numbersArray.first! }
        else { return self }
    }
    
    /// Возвращает количество цифер в числе
    func length() -> Int {
        return self.description.characters.map{Int(String($0)) ?? 0}.count
    }
    
}