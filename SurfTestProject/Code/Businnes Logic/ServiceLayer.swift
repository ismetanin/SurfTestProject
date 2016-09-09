//
//  ServiceLayer.swift
//  SurfTestProject
//
//  Created by Ivan Smetanin on 09.09.16.
//  Copyright © 2016 Ivan Smetanin. All rights reserved.
//

import Foundation

class ServiceLayer {
    
    static let serviceLayer = ServiceLayer()
    
    var numbersService: NumbersService!
    
    init() {
        self.numbersService = NumbersService(dao: NumbersDAO())
    }
}